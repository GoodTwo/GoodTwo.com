using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Serialization;
using goodtooDraft.App_Code;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Text.RegularExpressions;
using System.Web.Security;

public partial class Funds_Fund : System.Web.UI.Page
{
    SqlConnection conn = null;
    SqlDataReader rdr = null;
    protected void Page_Load(object sender, EventArgs e)
    {

        /*I am assuming that once an event creation form is filled out
         * * the user will be directed to "Fund.aspx?id=eventId" 
         * * where eventId is the unique ID given to that event
         * */
        int productCount = 0;
        int supporters = 0;
        List<int> supporterList; // Used to keep track of distinct supporters
        float pledges = 0;
        int orderCount = 0;
        int customerId, o_productId, p_productId;
        MemoryStream ms = null;
        int eventId = 0;

        //Find the correct event from the passed eventId
        var query = Request.QueryString["id"];
        if ((query == null) || (!int.TryParse(query, out eventId)))
        {
            Response.Redirect("~/index.aspx", true);
        }
        MembershipUser member = Membership.GetUser();
        Guid userid = member != null ? member.ProviderUserKey != null ? (Guid)member.ProviderUserKey : Guid.Empty : Guid.Empty;

        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["goodtwoDbConnectionString1"].ConnectionString);
        try
        {
            conn.Open();
        }
        catch (Exception ex)
        {
            Session["ErrorMsg"] = (Session["ErrorMsg"] == null) ? ex.Message + " (InnerException: " + ex.InnerException + ")\n" : Session["ErrorMsg"].ToString() + ex.Message + " (InnerException: " + ex.InnerException + ")\n";
            ErrHandler.WriteError(ex.Message + " (InnerException: " + ex.InnerException + ")");
            Response.Redirect("~/ErrorPage.aspx", true);
        }

        // 1.  create a command object identifying
        //     the stored procedure
        SqlCommand cmd = new SqlCommand("CharityEvent_GetCharityEvent", conn);

        // 2. set the command object so it knows
        //    to execute a stored procedure
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.Add(new SqlParameter("@CharityEventId", eventId));

        // execute the command
        rdr = cmd.ExecuteReader();

        if (!rdr.HasRows)
        {
            Response.Write(@"<script language='javascript'>alert('Could not find the indicated event.'); window.location.href = '../index.aspx';</script>");
            //Response.Write(@"<script language='javascript'>alert('Could not find the indicated event.');</script>");
            return;
        }

        rdr.Read();

        //Fill out event page
        IntroFundLogo.Src = GetVirtualPath((String)rdr["Logo"]);
        IntroFundLogo.Attributes.Add("Style", "height:160px; width:160px;vertical-align:top");



        IntroFundTitle.InnerHtml = (String)rdr["Title"];
        IntroFundState.InnerHtml = (String)rdr["State"];
        IntroFundCity.InnerHtml = (String)rdr["City"];
        IntroFundTagline.InnerHtml = (String)rdr["Tagline"];
        if ((rdr["Video"] != null) && !(rdr["Video"] is DBNull) && ((String)rdr["Video"] != null) && ((String)rdr["Video"] != ""))
        {
            mediaSection.Style.Remove("display");
            LeftFundMedia.Style.Remove("display");
            LeftFundMedia.InnerHtml = "<iframe title=\"YouTube video player\" width=\"300\" height=\"190\" src=\"" + (String)rdr["Video"] + "\" frameborder=\"0\" allowfullscreen></iframe>";
            //LeftFundMedia.InnerHtml = @"<object width='391' height='313'><param name='movie' value='" + (String)rdr["Video"] + "'></param><param name='allowFullScreen' value='true'></param><param name='allowscriptaccess' value='always'></param><embed src='" + (String)rdr["Video"] + "' type='application/x-shockwave-flash'allowscriptaccess='always' allowfullscreen='true' width='391' height='313'></embed></object>";
        }
        else if ((rdr["Photo"] != null) && !(rdr["Photo"] is DBNull) && (GetVirtualPath((String)rdr["Photo"]) != null) && (GetVirtualPath((String)rdr["Photo"]) != ""))
        {
            mediaSection.Style.Remove("display");
            LeftPhoto.Style.Remove("display");
            //LeftPhoto.Attributes.Add("Style", "height:300px; width:300px");
            LeftPhoto.Src = GetVirtualPath((String)rdr["Photo"]);
        }

        LeftCauseName.InnerHtml = (String)rdr["CauseName"];
        LeftFundBody.InnerHtml = (String)rdr["Body"];
        if ((rdr["WebSite"] != null) && !(rdr["WebSite"] is DBNull) && ((String)rdr["WebSite"] != null) && ((String)rdr["WebSite"] != ""))
        {
            LeftFundWebSite.InnerHtml = "<a class='visitSite' href='" + (String)rdr["WebSite"] + "'>visit website &raquo;</a>";
            LeftFundWebSite.Style.Remove("display");
        }

        bool userIsOwner = false;
        if (userid != (Guid)rdr["UserId"])
        {
            userIsOwner = false;
        }
        else if (Guid.Empty == (Guid)rdr["UserId"])
        {
            Response.Redirect("../index.aspx", false);
            return;
        }
        else
        {
            userIsOwner = true;
            //EditEvent.Disabled = false;
            //EditEvent.Visible = true;
        }
        //Save end date and eventId in hidden field (to be used latter in the countdown javascript)
        hiddenEndDate.InnerHtml = String.Format("{0:MM/dd/yyyy}", (DateTime)rdr["EndDate"]);
        hiddenIsOwner.Value = userIsOwner ? eventId.ToString() : "-1";

        //Build the query string
        //string productsURL = Utils.GetAPIGenericURL(EDIName.Products);
        string productsURL = Utils.GetAPIGenericWhereURL(EDIName.Products, "*", GoodTwoConstants.productFundField, eventId.ToString());
        try
        {
            XMLPostManager manager = new XMLPostManager(); // Handles the Volusion API call
            XmlDocument doc = manager.GetXMLFromURL(productsURL); // Get the results of the query in xml format
            ms = new MemoryStream();
            doc.Save(ms);
            ms.Seek(0, 0);

            // Setup the xml reader
            XmlReaderSettings settings = new XmlReaderSettings();
            settings.ConformanceLevel = ConformanceLevel.Auto;
            XmlReader xr = XmlReader.Create(ms, settings);

            // Deserialize the xml product list
            XmlSerializer xs = new XmlSerializer(typeof(goodtooDraft.Products.xmldata));
            goodtooDraft.Products.xmldata products = (goodtooDraft.Products.xmldata)xs.Deserialize(xr);

            productCount = (products.Items == null) ? 0 : products.Items.Count();

            supporterList = new List<int>();

            //code to redirect user to edit if product count is 0
            if (productCount > 0)
            {
                // This loop is necessary at the moment because of limitations to Volusion's API  
                goodtooDraft.Orders.xmldata orders = Utils.getAllOrders();
                foreach (goodtooDraft.Products.xmldataProducts product in products.Items) // For every product
                {
                    p_productId = int.Parse(((XmlNode[])(product.ProductID))[0].InnerText);
                    foreach (goodtooDraft.Orders.xmldataOrders order in orders.Items) // For every order
                    {
                        foreach (goodtooDraft.Orders.xmldataOrdersOrderDetails od in order.OrderDetails)
                        {
                            o_productId = int.Parse(((XmlNode[])(od.ProductID))[0].InnerText);

                            // If this order is an order for this product
                            if (o_productId == p_productId)
                            {
                                orderCount++;
                                customerId = int.Parse(((XmlNode[])(order.CustomerID))[0].InnerText);
                                if (!supporterList.Contains(customerId))
                                {
                                    supporterList.Add(customerId);
                                    supporters++;
                                }
                                float quantity = float.Parse(((XmlNode[])(od.Quantity))[0].InnerText);
                                float costOfDeal = float.Parse(((XmlNode[])(product.ProductPrice))[0].InnerText);
                                float vendorPrice = float.Parse(((XmlNode[])(product.Vendor_Price))[0].InnerText); //Check for null value
                                pledges += ((costOfDeal - vendorPrice) / 2.0f) * quantity;
                            }
                        }
                    }
                }
            }

            // Set the text of labels on the page to the calculated data
            ProductCount.Text = productCount.ToString();
            SupporterCount.Text = supporters.ToString();
            PledgeCount.Text = String.Format("{0:C}", pledges);
            GoalCount.Text = String.Format("{0:C}", (decimal)rdr["Goal"]);

            Regex rx;
            Match m;
            if (productCount > 0)
            {
                PlaceHolder1.Visible = true;
                HtmlGenericControl ul = new HtmlGenericControl("ul");
                PlaceHolder1.Controls.Add(ul);
                ul.Attributes.Add("clientidmode", "static");
                ul.Attributes.Add("runat", "server");
                ul.Attributes.Add("id", "merchantList");

                for (int i = 0; i < productCount; i++)// For every product
                {
                    goodtooDraft.Products.xmldataProducts product = products.Items[i];
                    //If DONOTALLOWBACKORDER !=Y, do not display this product that is associated with this event.
                    if (((XmlNode[])(product.DoNotAllowBackOrders))[0].InnerText != "Y")
                        continue;
                    HtmlGenericControl li = new HtmlGenericControl("li");


                    if (i == 0)
                        li.Attributes.Add("class", "first");
                    HtmlGenericControl div = new HtmlGenericControl("div");
                    li.Controls.Add(div);
                    HtmlGenericControl h3 = new HtmlGenericControl("h3");
                    div.Controls.Add(h3);

                    // Get product name
                    string productName = ((XmlNode[])(product.ProductName))[0].InnerText;
                    if (productName.Trim().Equals(""))
                        continue;
                    rx = new Regex(@"(\d+)%\s+off\s+-\s+(.+)");
                    m = rx.Match(productName);
                    if (!m.Success)
                        continue;
                    string productDiscount = m.Groups[1].Value; // Extract percent saved
                    productName = m.Groups[2].Value;
                    h3.InnerText = productName;

                    //Get product image
                    //string productImagePath = ((XmlNode[])(product.CustomField3))[0].InnerText;
                    string productImagePath = MapPath("hillel-main.jpg");
                    if (!File.Exists(productImagePath))
                        continue;
                    HtmlImage productImage = new HtmlImage();
                    div.Controls.Add(productImage);
                    productImage.Attributes.Add("Style", "height:170px; width:200px;");
                    productImage.Alt = productName + " image";
                    productImage.Src = GetVirtualPath(productImagePath);

                    //Price section
                    string productPrice = ((XmlNode[])(product.ProductPrice))[0].InnerText;
                    productPrice = float.Parse(productPrice).ToString("#0");
                    if (productPrice.Trim().Equals(""))
                        continue;
                    string productYouSave = (float.Parse(productPrice) / (float.Parse(productDiscount) / 100f) - float.Parse(productPrice)).ToString("#0");
                    HtmlGenericControl pPrices = new HtmlGenericControl("p");
                    div.Controls.Add(pPrices);
                    pPrices.Attributes.Add("class", "prices");
                    pPrices.InnerHtml = @"Price: $" + productPrice + @"<br />Discount: " + productDiscount + @"%<br />You Save: $" + productYouSave;

                    //Buy paragraph
                    if (!(product.ProductDescription_AbovePricing == null))//why do some of the products have null exception.
                    {
                        string productDescription_AbovePricing = ((XmlNode[])(product.ProductDescription_AbovePricing))[0].InnerText;
                    }
                    string productCode = ((XmlNode[])(product.ProductCode))[0].InnerText;

                    //Split eventID from productCode...
                    string[] productCodeArray = productCode.Split('*');
                    productCode = productCodeArray[0];
                    if (productCode.Trim().Equals(""))
                        continue;

                    HtmlGenericControl pBuyLink = new HtmlGenericControl("p");
                    div.Controls.Add(pBuyLink);
                    pBuyLink.Attributes.Add("class", "buyNowHolder");
                    float vendorPrice = float.Parse(((XmlNode[])(product.Vendor_Price))[0].InnerText);
                    string productPledge = ((float.Parse(productPrice) - vendorPrice) / 2f).ToString();
                    pBuyLink.InnerHtml = @" <a href=""http://store.goodtwo.com/ShoppingCart.asp?ProductCode=" + productCode + @""" class=""buyNow"" target=""_new"">More Info</a>" + " $" + productPledge + " will be donated to this cause";

                    //Product discription section
                    HtmlGenericControl pDesc = new HtmlGenericControl("p");
                    div.Controls.Add(pDesc);
                    pDesc.Attributes.Add("class", "description");
                    string productDescription = ((XmlNode[])(product.ProductDescription))[0].InnerText;
                    rx = new Regex(@"<H2>Description</H2>[^<]*<p>(.*)");
                    m = rx.Match(productDescription);
                    //rx = new Regex(@".*<H2>The Company</H2>[^<]*<P><strong>([^<]*)</strong><br>[\s\\n]*([^<]*)<br>[\s\\n]*([^<]*)<br>[\s\\n]*(<[^>]*><br>[^<]*</a>)<br>[\s\\n]*(<[^>]*>[^>]*>[^>]*>).*<H2>Description</H2>[^<]*<p>(.*)<H2>Reviews</H2>");
                    //m = rx.Match(productDescription);
                    //if (!m.Success)
                    //     continue;
                    productDescription = m.Groups[1].Value;
                    if (productDescription.Substring(productDescription.Length - 4, 4).Equals("</p>"))
                        productDescription = productDescription.Substring(0, productDescription.Length - 4);
                    pDesc.InnerHtml = productDescription + @" <a href=""http://store.goodtwo.com/ProductDetails.asp?ProductCode=" + productCode + @""" target=""_new"">More Info</a>";

                    //rx = new Regex(@".*<H2>The Company</H2>[^<]*<P><strong>([^<]*)</strong><br>[\s\\n]*([^<]*)<br>[\s\\n]*([^<]*)<br>[\s\\n]*(<[^>]*><br>[^<]*</a>)<br>[\s\\n]*(<[^>]*>[^>]*>[^>]*>)");
                    //m = rx.Match(productDescription);
                    //if (!m.Success)
                    //    continue;
                    HtmlTable table = new HtmlTable();
                    div.Controls.Add(table);
                    HtmlTableRow tr1 = new HtmlTableRow();
                    table.Rows.Add(tr1);
                    HtmlTableCell tdTitle = new HtmlTableCell();
                    tr1.Cells.Add(tdTitle);
                    tdTitle.InnerHtml = productName;
                    HtmlTableRow tr2 = new HtmlTableRow();
                    table.Rows.Add(tr2);
                    HtmlTableCell tdStreet = new HtmlTableCell();
                    tr2.Cells.Add(tdStreet);
                    tdStreet.Attributes.Add("class", "firstTD");
                    tdStreet.InnerHtml = m.Groups[2].Value;
                    HtmlTableCell tdMap = new HtmlTableCell();
                    tr2.Cells.Add(tdMap);
                    tdMap.InnerHtml = m.Groups[4].Value;
                    HtmlTableRow tr3 = new HtmlTableRow();
                    table.Rows.Add(tr3);
                    HtmlTableCell tdAddress = new HtmlTableCell();
                    tr3.Cells.Add(tdAddress);
                    tdAddress.InnerHtml = m.Groups[3].Value;
                    HtmlTableCell tdLink = new HtmlTableCell();
                    tr2.Cells.Add(tdLink);
                    tdLink.InnerHtml = m.Groups[5].Value;

                    ul.Controls.Add(li);
                }
            }
            else if (userIsOwner)
            {

                PlaceHolder1.Visible = true;
                PlaceHolder1.Controls.Add(new LiteralControl("<br /> <p>You have no products selected, edit the event to add them.</p>"));
                //PlaceHolder1.Controls.Add(new LiteralControl("<br /> <a style=\"color: #8c1c17; font-size: 14px; font-weight: bold; text-decoration: none; margin-top: -15px; display: block; margin-left: 5px;\" id=\"editNoProduct\"  href=\"EditFund.aspx?id=" + eventId + "\"> Edit Event </a>"));
            }
            else
            {
                Response.Redirect("../index.aspx", false);
                return;
            }

        }
        catch (Exception ex)
        {
            ErrHandler.WriteError(ex.Message + " (InnerException: " + ex.InnerException + ")");
            throw new Exception("Could not calculate event statistics.", ex);
        }
        finally
        {
            if (ms != null)
                ms.Close();
        }
    }

    private string GetVirtualPath(string physicalPath)
    {
        if (physicalPath.StartsWith("http"))
        {
            return physicalPath;
        }
        string rootpath = Server.MapPath("~/");
        physicalPath = physicalPath.Replace(rootpath, "");
        physicalPath = physicalPath.Replace("\\", "/");
        return "~/" + physicalPath;
    }

    class OrderCustomerEqualityComparer : IEqualityComparer<goodtooDraft.Orders.xmldataOrders>
    {
        public bool Equals(goodtooDraft.Orders.xmldataOrders o1, goodtooDraft.Orders.xmldataOrders o2)
        {
            if ((int)o1.CustomerID == (int)o2.CustomerID)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        public int GetHashCode(goodtooDraft.Orders.xmldataOrders o)
        {
            int hCode = (int)o.OrderID ^ (int)o.CustomerID ^ (int)o.PaymentMethodID;
            return hCode.GetHashCode();
        }
    }
}