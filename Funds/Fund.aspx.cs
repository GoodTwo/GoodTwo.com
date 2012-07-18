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

    private void SubstituteFromDatabase(ref string source)
    {
        if (source == null) { return; }

        string lineBreak = "%0A";
        string url = "";
        try { url = HttpContext.Current.Request.Url.AbsoluteUri; }
        catch { } 

        if (url == null || url == "") { return; }

        source = source.Replace("\\n", lineBreak);
        source = source.Replace("[EVENT-URL]", url);

        Regex re = new Regex(@"\[COL:(.*?)\]", RegexOptions.IgnoreCase);

        MatchCollection matches = re.Matches(source);

        for (int i = 0; i < matches.Count; i++)
        {
            string key = matches[i].Value;
            string ind = matches[i].Groups[1].Value;
            try
            {
                source = source.Replace(key, rdr[ind].ToString());
            }
            catch { } 
        }
    }

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

        Session["SelectedState"] = (String)rdr["State"];
        IntroFundState.InnerHtml = (String)rdr["State"];
        IntroFundCity.InnerHtml = (String)rdr["City"];
        IntroFundTagline.InnerHtml = StringUtils.ReplaceGarbageChars((String)rdr["Tagline"]);
        if ((rdr["Video"] != null) && !(rdr["Video"] is DBNull) && ((String)rdr["Video"] != null) && ((String)rdr["Video"] != ""))
        {
            mediaSection.Style.Remove("display");
            LeftFundMedia.Style.Remove("display");
            string video = (String)rdr["Video"];
            Regex replaceWidth = new Regex(@"width=""\d*""");
            Regex replaceHeight = new Regex(@"height=""\d*""");
            video = replaceWidth.Replace(video, @"width=""391""");
            video = replaceHeight.Replace(video, @"height=""313""");
            //Regex regexWidth = new Regex(@"(?:(width)=""(\d*)"")|(?:(height)=""(\d*)"")|(?:(src)=""([^\s]*)"")");
            //Match m = regexWidth.Match((String)rdr["Video"]);
            //LeftFundMedia.InnerHtml = "<iframe title=\"YouTube video player\" width=\"391\" height=\"313\" src=\"" + (String)rdr["Video"] + "\" frameborder=\"0\" allowfullscreen></iframe>"; ;
            //LeftFundMedia.InnerHtml = "<iframe title=\"YouTube video player\" width=\"391\" height=\"313\" src=\"" + (String)rdr["Video"] + "\" frameborder=\"0\" allowfullscreen></iframe>";
            //LeftFundMedia.InnerHtml = @"<object width='391' height='313'><param name='movie' value='" + (String)rdr["Video"] + "'></param><param name='allowFullScreen' value='true'></param><param name='allowscriptaccess' value='always'></param><embed src='" + (String)rdr["Video"] + "' type='application/x-shockwave-flash'allowscriptaccess='always' allowfullscreen='true' width='391' height='313'></embed></object>";
            LeftFundMedia.InnerHtml = HttpUtility.HtmlDecode(video);
        }
        else if ((rdr["Photo"] != null) && !(rdr["Photo"] is DBNull) && (GetVirtualPath((String)rdr["Photo"]) != null) && (GetVirtualPath((String)rdr["Photo"]) != ""))
        {
            mediaSection.Style.Remove("display");
            LeftPhoto.Style.Remove("display");
            //LeftPhoto.Attributes.Add("Style", "height:300px; width:300px");
            LeftPhoto.Src = GetVirtualPath((String)rdr["Photo"]);
        }

        string causeName = StringUtils.ReplaceGarbageChars((String)rdr["CauseName"]);
        LeftCauseName.InnerHtml = causeName;

        bool teamEmpty = (rdr["TeamName"] == null || rdr["TeamName"].ToString().Trim() == "");
        litTeamName.Text = teamEmpty ? "" : string.Format(" ({0})", rdr["TeamName"].ToString());

        LeftFundBody.InnerHtml = StringUtils.ReplaceGarbageChars((String)rdr["Body"]);
        if ((rdr["WebSite"] != null) && !(rdr["WebSite"] is DBNull) && ((String)rdr["WebSite"] != null) && ((String)rdr["WebSite"] != ""))
        {
            LeftFundWebSite.InnerHtml = "<a class='visitSite' target='_blank' href='" + (String)rdr["WebSite"] + "'>visit website &raquo;</a>";
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
        List<goodtooDraft.Products.xmldataProducts> selectedProductsList;
        List<goodtooDraft.Products.xmldataProducts> selectedProductsListFiltered = new List<goodtooDraft.Products.xmldataProducts>();

        goodtooDraft.Products.xmldata selectedProducts = Utils.GetProductSearchResults(GoodTwoConstants.productFundField, eventId.ToString());
        if (selectedProducts.Items != null)
            selectedProductsList = selectedProducts.Items.ToList<goodtooDraft.Products.xmldataProducts>();
        else
            selectedProductsList = new List<goodtooDraft.Products.xmldataProducts>();
        // Filter to only grab the product copies
        foreach (goodtooDraft.Products.xmldataProducts product in selectedProductsList)
        {
            if (((XmlNode[])(product.ProductCode))[0].InnerText.ToString().Contains("*"))
                selectedProductsListFiltered.Add(product);
        }
        selectedProductsList = selectedProductsListFiltered;

        FundDefaultsHandler handler = new FundDefaultsHandler(rdr);

        string productsURL = Utils.GetAPIGenericWhereURL(EDIName.Products, "*", GoodTwoConstants.productFundField, eventId.ToString());

        // 
        // Create MAILTO Anchor
        // 

        // <a href="mailto:?subject=A Quick Test&body=Please help me out at http://www.goodtwo.com!">Email</a>

        string eGiftID = "";

        try { eGiftID = rdr["egiftid"].ToString(); }
        catch { }

        

        string subject = handler.FundEmailSubject;
        string body = handler.FundEmailBody;
        handler.BuildCssLocation(((GoodTwo.Site)Master).CSSLink);               
        SubstituteFromDatabase(ref subject);
        SubstituteFromDatabase(ref body);

        litEmail.Text = "<a href=\"mailto:?subject=" + subject + "&body=" + body + "\">Email</a>";

        litFBComments.Text = "<script src=\"http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1\"></script><fb:comments xid=\"" +
            "GoodTwo_" + eventId.ToString() +
            "\" numposts=\"10\" width=\"370\" publish_feed=\"true\"></fb:comments>";

        litFBLink.Text = "<a href=\"http://www.facebook.com/sharer/sharer.php?u=http://www.goodtwo.com/Funds/Fund.aspx?id=" + eventId.ToString() +
            "\" target=\"_new\">Facebook</a>";

        string causePlus = causeName.Replace(" ", "+");

        string twitURL = "https://twitter.com/intent/tweet?source=webclient&text=When+you+buy+one+of+these+@good_two+deals,+" + causePlus +
            "+gets+a+donation!+http://www.goodtwo.com/Funds/Fund.aspx?id=" + eventId.ToString() + "+#goodtwo+#donate";

        litTwitterLink.Text = "<a href=\"" + twitURL + "\" target=\"_new\">Twitter</a>";

        try
        {
            supporterList = new List<int>();

            //code to redirect user to edit if product count is 0
            if (selectedProductsList.Count > 0)
            {
                PlaceHolder1.Visible = true;
                HtmlGenericControl ul = new HtmlGenericControl("ul");
                PlaceHolder1.Controls.Add(ul);
                ul.Attributes.Add("clientidmode", "static");
                ul.Attributes.Add("runat", "server");
                ul.Attributes.Add("id", "merchantList");

                // This loop is necessary at the moment because of limitations to Volusion's API  

                goodtooDraft.Orders.xmldata orders = Utils.getAllOrders();
                
                foreach (goodtooDraft.Products.xmldataProducts product in selectedProductsList) // For every product
                {
                    //If DONOTALLOWBACKORDER !=Y, do not display this product that is associated with this event.
                    if (((XmlNode[])(product.DoNotAllowBackOrders))[0].InnerText != "Y")
                        continue;

                    if (!RenderLogic.AddProductListItem(ul, product, selectedProductsList[0].Equals(product), this.Page, true, handler.AlternateBuyURL))
                        continue;

                    productCount++;
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
            else if (userIsOwner)
            {

                PlaceHolder1.Visible = true;
                PlaceHolder1.Controls.Add(new LiteralControl("<br /> <table><tr><td style='padding-left:20px; vertical-align:top;'>You have no products selected, edit the event to add them.</td><td style='width:160px;'><a class='editFundBtn' href='EditFund.aspx?id=" + eventId + "'></a></td></tr></table>"));
                //PlaceHolder1.Controls.Add(new LiteralControl("<br /> <a style=\"color: #8c1c17; font-size: 14px; font-weight: bold; text-decoration: none; margin-top: -15px; display: block; margin-left: 5px;\" id=\"editNoProduct\"  href=\"EditFund.aspx?id=" + eventId + "\"> Edit Event </a>"));
            }
            else
            {
                Response.Redirect("../index.aspx", false);
                return;
            }            

            // Set the text of labels on the page to the calculated data
            ProductCount.Text = productCount.ToString();
            SupporterCount.Text = supporters.ToString();
            PledgeCount.Text = String.Format("{0:C}", pledges);
            GoalCount.Text = String.Format("{0:C}", (decimal)rdr["Goal"]);
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