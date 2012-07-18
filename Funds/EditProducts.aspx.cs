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

public partial class Funds_EditProducts : System.Web.UI.Page
{
    private int eventID
    {
        get
        {
            if (ViewState["eventID"] != null)
                return (int)ViewState["eventID"];
            else
                return 0;
        }
        set
        {
            ViewState["eventID"] = value;
        }
    }

    //private goodtooDraft.Products.xmldata selectedProducts;
    private List<goodtooDraft.Products.xmldataProducts> selectedProductsList;
    private List<goodtooDraft.Products.xmldataProducts> selectedProductsListFiltered = new List<goodtooDraft.Products.xmldataProducts>();
    private goodtooDraft.Products.xmldata products;
    Dictionary<string, CheckBox> productsDic = new Dictionary<string, CheckBox>();
    Dictionary<string, goodtooDraft.Products.xmldataProducts> productsArray = new Dictionary<string, goodtooDraft.Products.xmldataProducts>();
    SqlConnection conn = null;
    SqlDataReader rdr = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        MembershipUser m = Membership.GetUser();
        Guid userid = (Guid)m.ProviderUserKey;
        int productCounter = 0;

        int eventId = 0;

        //Find the correct event from the passed eventId
        var query = Request.QueryString["id"];
        if ((query == null) || (!int.TryParse(query, out eventId)))
        {
            Response.Redirect("~/index.aspx", true);
        }

        //Create eventID to be used in entire class scope
        eventID = eventId;

        // Check if user is owner of event
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
            Response.Write(@"<script language='javascript'>alert('Could not find the indicated event.'); window.location.href = '../Funds.aspx?id=" + eventId + "';</script>");
            return;
        }
        rdr.Read();
        if (((Guid)rdr["UserId"]) != userid)
        {
            Response.Redirect("../index.aspx", false);
            return;
        }

        ////get products that the user has already picked to check them while dynamically generating products////////
        //selectedProducts = Utils.GetProductSearchResults(GoodTwoConstants.productFundField, eventID.ToString());

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

        string selectedState = (Session["SelectedState"] != null) ? ((String)Session["SelectedState"]).Trim() : String.Empty;

        List<goodtooDraft.Products.xmldataProducts> productList;
        goodtooDraft.Products.xmldata productItems;
        try
        {
            if (!String.IsNullOrEmpty(selectedState))
            {
                productList = Utils.GetRelevantProducts(selectedState, this.Page);
            }
            else
            {
                productItems = Utils.GetProductSearchResults(GoodTwoConstants.productRegionField, GoodTwoConstants.nationalRegionCode);
                if (productItems.Items != null)
                    productList = productItems.Items.ToList<goodtooDraft.Products.xmldataProducts>();
                else
                    productList = new List<goodtooDraft.Products.xmldataProducts>();
            }
        }
        catch (Exception ex)
        {
            ErrHandler.WriteError(ex.Message + " (InnerException: " + ex.InnerException + ")");
            throw new Exception("Could not calculate event statistics.", ex);
        }

        HtmlTable checktable;
        if (productList.Count > 0)
        {
            PlaceHolder1.Visible = true;
            checktable = new HtmlTable();
            PlaceHolder1.Controls.Add(checktable);
            pCounter.Value = productList.Count.ToString();

            foreach (goodtooDraft.Products.xmldataProducts product in productList)
            {
                //adding productID and the product object to Key/Value Dictionary...
                productsArray.Add(((XmlNode[])(product.ProductID))[0].InnerText, product);

                //making table for each product with an associated CheckBox...
                HtmlTableRow Row = new HtmlTableRow();

                HtmlTableCell chkCell = RenderLogic.AddCheckBoxTableCell(Row);
                CheckBox chkbox = (CheckBox)chkCell.Controls[0];

                if (RenderLogic.AddProductTableCell(Row, product, productList[0].Equals(product), this.Page, false) == null)
                    continue;

                string clientID = ((XmlNode[])(product.ProductID))[0].InnerText;

                //Has this product added to the event already? If so..is it currently displaying?...
                chkbox.Checked = false;
                foreach (goodtooDraft.Products.xmldataProducts selectedProduct in selectedProductsList)
                {
                    /*If the selectedProduct.ProductCode equals the (product.ProductCode(*???)) of the current product 
                        * and they currently have it displaying in their funds page (DoNotAllowBackOrders == "Y")
                        * that means the user has already selected it so set chkbox.Checked = true
                        */
                    if ((((XmlNode[])(selectedProduct.ProductCode))[0].InnerText.ToString().Equals((((XmlNode[])(product.ProductCode))[0].InnerText) + "*" + eventID.ToString())
                        && ((XmlNode[])(selectedProduct.DoNotAllowBackOrders))[0].InnerText.Equals("Y")))
                    {
                        chkbox.Checked = true;
                        productCounter++;
                    }
                }
                chkbox.ID = "chk_" + clientID;
                productsDic.Add(((XmlNode[])(product.ProductID))[0].InnerText, chkbox);

                checktable.Controls.Add(Row);
            }
        }
    }

    protected void validateCheckBoxesMore(object sender, ServerValidateEventArgs e)
    {
        int counter = 0;
        foreach (var cursor in productsDic)
        {
            //if checkbox is not checked, if customer has already selected this product to be displayed, turn it off..
            if (cursor.Value.Checked)
            {
                counter++;
                if (counter > 3)
                {
                    e.IsValid = false;
                    return;
                }
            }
        }
        e.IsValid = true;
    }
    protected void validateCheckBoxesZero(object sender, ServerValidateEventArgs e)
    {
        foreach (var cursor in productsDic)
        {
            //if checkbox is not checked, if customer has already selected this product to be displayed, turn it off..
            if (cursor.Value.Checked)
            {
                e.IsValid = true;
                return;
            }
        }
        e.IsValid = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {
            List<goodtooDraft.Products.xmldataProducts> tempProductList = new List<goodtooDraft.Products.xmldataProducts>();

            goodtooDraft.Products.xmldata listOfProducts = new goodtooDraft.Products.xmldata();

            //goodtooDraft.Products.xmldata clear = Utils.GetProductSearchResults(GoodTwoConstants.productFundField, "46750");
            //foreach (goodtooDraft.Products.xmldataProducts product in clear.Items)
            //{
                //if (product.DoNotAllowBackOrders == null)
                //{
                //    XmlNode[] node = new XmlNode[1];
                //    XmlDocument doc = new XmlDocument();
                //    product.DoNotAllowBackOrders = node;
                //    ((XmlNode[])(product.CustomField2))[0] = doc.CreateNode(XmlNodeType.Text, null, null);
                //}
                //if (product.DoNotAllowBackOrders != null)
                //    ((XmlNode[])(product.DoNotAllowBackOrders))[0].InnerText = "N";
                //{
                //    XmlNode[] node = new XmlNode[1];
                //    XmlDocument doc = new XmlDocument();
                //    product.CustomField4 = node;
                //    ((XmlNode[])(product.CustomField4))[0] = doc.CreateNode(XmlNodeType.Text, null, null);
                //}
                //if (product.CustomField4 != null)
                //    ((XmlNode[])(product.CustomField4))[0].InnerText = "0";
                //if (product.CustomField2 == null)
                //{
                //    XmlNode[] node = new XmlNode[1];
                //    XmlDocument doc = new XmlDocument();
                //    product.CustomField2 = node;
                //    ((XmlNode[])(product.CustomField2))[0] = doc.CreateNode(XmlNodeType.Text, null, null);
                //}
                //if (product.CustomField2 != null)
                //    ((XmlNode[])(product.CustomField2))[0].InnerText = "0";
                
            //    if (((XmlNode[])(product.ProductCode))[0].InnerText.ToString().Contains("*46750"))
            //    {
            //        if (product.CustomField4 != null)
            //        {
            //            try
            //            {
            //                ((XmlNode[])(product.CustomField4))[0].InnerText = "";
            //            }
            //            catch 
            //            {
            //                XmlNode[] node = new XmlNode[1];
            //                XmlDocument doc = new XmlDocument();
            //                product.CustomField4 = node;
            //                ((XmlNode[])(product.CustomField4))[0] = doc.CreateNode(XmlNodeType.Text, null, null);

            //                ((XmlNode[])(product.CustomField4))[0].InnerText = "";
            //            }
            //        }
            //        if (((XmlNode[])(product.ProductCode))[0].InnerText.ToString().Contains("*46750*46750"))
            //        {
            //            if (product.CustomField2 != null)
            //                ((XmlNode[])(product.CustomField2))[0].InnerText = "";
            //        }
            //    }
            //    else
            //    {
            //        if (product.CustomField2 != null)
            //            ((XmlNode[])(product.CustomField2))[0].InnerText = "";
            //    }
            //}
            //importProducts(clear);

            foreach (KeyValuePair<string, CheckBox> cursor in productsDic)
            {
                //Make a copy of the current product
                goodtooDraft.Products.xmldataProducts copiedProduct = Utils.makeProductCopy(productsArray[cursor.Key], eventID.ToString());

                if (copiedProduct.DoNotAllowBackOrders == null)
                {
                    XmlNode[] node = new XmlNode[1];
                    XmlDocument doc = new XmlDocument();
                    copiedProduct.DoNotAllowBackOrders = node;
                    ((XmlNode[])(copiedProduct.CustomField2))[0] = doc.CreateNode(XmlNodeType.Text, null, null);
                }

                goodtooDraft.Products.xmldataProducts origProductCopy = null;
                ProductIdComparer comparer = new ProductIdComparer();
                foreach(goodtooDraft.Products.xmldataProducts product in selectedProductsList)
                {
                    if(comparer.Equals(copiedProduct, product))
                    {
                        origProductCopy = product;
                        break;
                    }
                }
                if (cursor.Value.Checked)
                {
                    //turning on...
                    if (origProductCopy == null)
                    {                        
                        ((XmlNode[])(copiedProduct.DoNotAllowBackOrders))[0].InnerText = "Y";
                        tempProductList.Add(copiedProduct);
                    }
                    else if (((XmlNode[])(origProductCopy.DoNotAllowBackOrders))[0].InnerText == "N")
                    {
                        ((XmlNode[])(origProductCopy.DoNotAllowBackOrders))[0].InnerText = "Y";
                        tempProductList.Add(origProductCopy);
                    }
                }
                else
                {
                    //turning off..
                    if ((origProductCopy != null) && (((XmlNode[])(origProductCopy.DoNotAllowBackOrders))[0].InnerText == "Y"))
                    {
                        ((XmlNode[])(origProductCopy.DoNotAllowBackOrders))[0].InnerText = "N";
                        tempProductList.Add(origProductCopy);
                    }
                }
            }
            foreach (goodtooDraft.Products.xmldataProducts selectedProduct in selectedProductsList)
            {
                // Turn off if it is not on page
                if (!productsArray.Values.Contains(selectedProduct, new ProductIdComparer()))
                {
                    if (((XmlNode[])(selectedProduct.DoNotAllowBackOrders))[0].InnerText == "Y")
                    {
                        ((XmlNode[])(selectedProduct.DoNotAllowBackOrders))[0].InnerText = "N";
                        tempProductList.Add(selectedProduct);
                    }
                }
            }
            listOfProducts.Items = tempProductList.ToArray();

            Utils.importProducts(listOfProducts);
            Response.Redirect("Fund.aspx?id=" + eventID);
        }
    }
}