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
using WebServices;

public partial class Products : System.Web.UI.Page
{
    private int productCount
    {
        get
        {
            if(ViewState["productCount"] != null)
            {
                return (int)ViewState["productCount"];
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["productCount"] = value;
        }
    }
    int EventId;
    private List<goodtooDraft.Products.xmldataProducts> selectedProductsList;
    private List<goodtooDraft.Products.xmldataProducts> selectedProductsListFiltered = new List<goodtooDraft.Products.xmldataProducts>();
    Dictionary<string, CheckBox> productsDic = new Dictionary<string,CheckBox>();
    Dictionary<string, goodtooDraft.Products.xmldataProducts> productsArray = new Dictionary<string,goodtooDraft.Products.xmldataProducts>();

    protected void Page_Load(object sender, EventArgs e)
    {
        MemoryStream ms = new MemoryStream();
        int productCounter = 0;
        //Build the query string
        EventId = 0;
        if (Request.QueryString["id"] != null)
        {
            int.TryParse(Request.QueryString["id"], out EventId);
        }
        else
        {
            Response.Redirect("NewFund.aspx");
        }

        goodtooDraft.Products.xmldata selectedProducts = goodtooDraft.App_Code.Utils.GetProductSearchResults(goodtooDraft.App_Code.GoodTwoConstants.productFundField, EventId.ToString());
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

        Administration admin = new Administration();
        CharityEvents fund = admin.GetEventById(EventId);
        string selectedState = fund.State;

        List<goodtooDraft.Products.xmldataProducts> productList;
        try
        {
            if (!String.IsNullOrEmpty(selectedState))
            {
                productList = goodtooDraft.App_Code.Utils.GetRelevantProducts(selectedState, this.Page);
            }
            else
            {
                productList = goodtooDraft.App_Code.Utils.GetProductSearchResults(goodtooDraft.App_Code.GoodTwoConstants.productRegionField, goodtooDraft.App_Code.GoodTwoConstants.nationalRegionCode).Items.ToList<goodtooDraft.Products.xmldataProducts>();
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
                    if ((((XmlNode[])(selectedProduct.ProductCode))[0].InnerText.ToString().Equals((((XmlNode[])(product.ProductCode))[0].InnerText) + "*" + EventId.ToString())
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

            foreach (KeyValuePair<string, CheckBox> cursor in productsDic)
            {                              
                if (cursor.Value.Checked)
                {
                    goodtooDraft.Products.xmldataProducts product = productsArray[cursor.Key];
                    tempProductList.Add(product);
                }
            }
            listOfProducts.Items = tempProductList.ToArray();

            List<goodtooDraft.Products.xmldataProducts> importList = new List<goodtooDraft.Products.xmldataProducts>();

            //If List Is null, the Event has no products to import, so redirect the to the EditFunds.aspx page to add Products...
            if (listOfProducts != null)
            {
                foreach (goodtooDraft.Products.xmldataProducts product in listOfProducts.Items)
                {
                    //Make a copy of the current product
                    goodtooDraft.Products.xmldataProducts copiedProduct = goodtooDraft.App_Code.Utils.makeProductCopy(product, EventId.ToString());

                    if (copiedProduct.DoNotAllowBackOrders == null)
                    {
                        XmlNode[] node = new XmlNode[1];
                        XmlDocument doc = new XmlDocument();
                        copiedProduct.DoNotAllowBackOrders = node;
                        ((XmlNode[])(copiedProduct.CustomField2))[0] = doc.CreateNode(XmlNodeType.Text, null, null);
                    }
                    ((XmlNode[])(copiedProduct.DoNotAllowBackOrders))[0].InnerText = "Y";
                    importList.Add(copiedProduct);
                }
                listOfProducts.Items = importList.ToArray<goodtooDraft.Products.xmldataProducts>();
                goodtooDraft.App_Code.Utils.importProducts(listOfProducts);

                Response.Redirect("EULAConfirmation.aspx?id=" + EventId, false);
            }            
        }
    }
}
