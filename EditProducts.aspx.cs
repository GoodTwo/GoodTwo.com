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

    private goodtooDraft.Products.xmldata selectedProducts;
    private goodtooDraft.Products.xmldata products;
    Dictionary<string, CheckBox> productsDic = new Dictionary<string, CheckBox>();
    Dictionary<string, goodtooDraft.Products.xmldataProducts> productsArray = new Dictionary<string, goodtooDraft.Products.xmldataProducts>();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        int productCounter = 0;
        MemoryStream ms= null; 
        MemoryStream ms2 = null;
 
        int eventId = 0;

        //Find the correct event from the passed eventId
        var query = Request.QueryString["id"];
        if ((query == null) || (!int.TryParse(query, out eventId)))
        {
            Response.Redirect("~/index.aspx", true);
        }

        //Create eventID to be used in entire class scope
        eventID = eventId;

        ////get products that the user has already picked to check them while dynamically generating products////////

        string selectedProductsURL = Utils.GetAPIGenericWhereURL(EDIName.Products, "*", GoodTwoConstants.productFundField, eventID.ToString());
        // Utils.GetAPIGenericURL(EDIName.Products);

        try
        {
            ms = new MemoryStream();
            XMLPostManager manager = new XMLPostManager(); // Handles the Volusion API call
            XmlDocument doc = manager.GetXMLFromURL(selectedProductsURL); // Get the results of the query in xml format

            doc.Save(ms);
            ms.Seek(0, 0);

            // Setup the xml reader
            XmlReaderSettings settings = new XmlReaderSettings();
            settings.ConformanceLevel = ConformanceLevel.Auto;
            XmlReader xr = XmlReader.Create(ms, settings);

            // Deserialize the xml product list
            XmlSerializer xs = new XmlSerializer(typeof(goodtooDraft.Products.xmldata));
            selectedProducts = (goodtooDraft.Products.xmldata)xs.Deserialize(xr);
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
        // }
        //Build the query string
        string productsURL = Utils.GetAPIGenericWhereURL(EDIName.Products, "*", GoodTwoConstants.productSelectAllField, "0");
        //string productsURL = Utils.GetAPIGenericWhereURL(EDIName.Products, "*", "p.ProductCode", "testBill");
        // Utils.GetAPIGenericURL(EDIName.Products);
        try
        {

            ms2 = new MemoryStream();
            XMLPostManager manager = new XMLPostManager(); // Handles the Volusion API call
            XmlDocument doc = manager.GetXMLFromURL(productsURL); // Get the results of the query in xml format

            doc.Save(ms2);
            ms2.Seek(0, 0);

            // Setup the xml reader
            XmlReaderSettings settings = new XmlReaderSettings();
            settings.ConformanceLevel = ConformanceLevel.Auto;
            XmlReader xr = XmlReader.Create(ms2, settings);

            // Deserialize the xml product list
            XmlSerializer xs = new XmlSerializer(typeof(goodtooDraft.Products.xmldata));
            products = (goodtooDraft.Products.xmldata)xs.Deserialize(xr);

            int productCount = (products.Items == null) ? 0 : products.Items.Count();



            Regex rx;
            Match m;
            if (productCount > 0)
            {
                PlaceHolder1.Visible = true;
                HtmlTable checktable = new HtmlTable();
                PlaceHolder1.Controls.Add(checktable);

                for (int i = 0; i < productCount; i++)// For every product
                {
                    goodtooDraft.Products.xmldataProducts product = products.Items[i];

                    /*
                     * 
                     * Logic here for regional/state/national product filters...
                     * if the City that the customer picks matches this products Regional/National/State requirements
                     * the display the product.
                     * else
                     * continue;
                     */ 
  

                    //FIX THIS!!<--some checkboxes are turning blank...
                    //some of the products probably not showing because of RegularExpression validation..


                    //adding productID and the product object to Key/Value Dictionary...
                    productsArray.Add(((XmlNode[])(product.ProductID))[0].InnerText, product);

                    //making table for each product with an associated CheckBox...
                    HtmlTableRow Row = new HtmlTableRow();
                        
                    checktable.Controls.Add(Row);
                    HtmlTableCell checkboxCell = new HtmlTableCell();
                    Row.Cells.Add(checkboxCell);
                    checkboxCell.Attributes.Add("Style", "vertical-align:middle; padding:0px 10px 0px 60px");
                    CheckBox chkbox = new CheckBox();
                       
                    checkboxCell.Controls.Add(chkbox);
                        
                    HtmlTableCell productCell = new HtmlTableCell();
                    productCell.Attributes.Add("Style", "padding:0px 0px 3px 0px");
                    Row.Cells.Add(productCell);
                    HtmlGenericControl ul = new HtmlGenericControl("ul");
                    ul.Attributes.Add("clientidmode", "static");
                    ul.Attributes.Add("runat", "server");
                    ul.Attributes.Add("id", "merchantList");
                    productCell.Controls.Add(ul);
                        
                        
                    string clientID = ((XmlNode[])(product.ProductID))[0].InnerText;

                    //Has this product added to the event already? If so..is it currently displaying?...
                    if (selectedProducts != null && selectedProducts.Items != null && selectedProducts.Items.Count() > 0  )
                    {
                        chkbox.Checked = false;
                        foreach (goodtooDraft.Products.xmldataProducts selectedProduct in selectedProducts.Items)
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
                    }
                    chkbox.ID = "chk_" + clientID;
                    //chkbox.Attributes.Add("onclick", "isChecked('" + chkbox.ClientID + "')");
                    productsDic.Add(((XmlNode[])(product.ProductID))[0].InnerText, chkbox);

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
                    productImage.Attributes.Add("Style", "height:185px; width:200px;");
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
                    string productDescription_AbovePricing;
                    if (product.ProductDescription_AbovePricing != null)
                        productDescription_AbovePricing = ((XmlNode[])(product.ProductDescription_AbovePricing))[0].InnerText;
                    else
                        productDescription_AbovePricing = "NULL";
                    string productCode = ((XmlNode[])(product.ProductCode))[0].InnerText;

                    //Split eventID from productCode...
                    string[] productCodeArray = productCode.Split('*');
                    productCode = productCodeArray[0];
                    if (productCode.Trim().Equals(""))
                        continue;

                    HtmlGenericControl pBuyLink = new HtmlGenericControl("p");
                    pBuyLink.Attributes.Add("class", "buyNowHolder");
                    float vendorPrice = float.Parse(((XmlNode[])(product.Vendor_Price))[0].InnerText);
                    string productPledge = ((float.Parse(productPrice) - vendorPrice) / 2f).ToString();
                    pBuyLink.InnerHtml = @" <a href=""http://store.goodtwo.com/ShoppingCart.asp?ProductCode=" + productCode + @""" class=""buyNow"" target=""_new"">More Info</a>" + " $" + productPledge + " will be donated to this cause";
                    div.Controls.Add(pBuyLink);

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
                    //Product Name
                    HtmlTableCell tdTitle = new HtmlTableCell();
                    tr1.Cells.Add(tdTitle);
                    tdTitle.InnerHtml = productName;

                    //Address (Street)
                    HtmlTableRow tr2 = new HtmlTableRow();
                    table.Rows.Add(tr2);
                    HtmlTableCell tdStreet = new HtmlTableCell();
                    tr2.Cells.Add(tdStreet);
                    tdStreet.Attributes.Add("class", "firstTD");
                    tdStreet.InnerHtml = m.Groups[2].Value;

                    //Location
                    HtmlTableCell tdMap = new HtmlTableCell();
                    tr2.Cells.Add(tdMap);
                    tdMap.InnerHtml = m.Groups[4].Value;
                    HtmlTableRow tr3 = new HtmlTableRow();
                    table.Rows.Add(tr3);

                    //Address (City/State)
                    HtmlTableCell tdAddress = new HtmlTableCell();
                    tr3.Cells.Add(tdAddress);
                    tdAddress.InnerHtml = m.Groups[3].Value;
                    //WebLink
                    HtmlTableCell tdLink = new HtmlTableCell();
                    tr2.Cells.Add(tdLink);
                    tdLink.InnerHtml = m.Groups[5].Value;

                    ul.Controls.Add(li);
                }
            }
            pCounter.Value = productCounter.ToString();
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
        string rootpath = Server.MapPath("~/");
        physicalPath = physicalPath.Replace(rootpath, "");
        physicalPath = physicalPath.Replace("\\", "/");
        return "~/" + physicalPath;
    }

    private int getCounter(int counter)
    {
        foreach (var cursor1 in productsDic)
        {
            if (!cursor1.Value.Checked)
            {
                if (selectedProducts.Items == null) continue;
                foreach (goodtooDraft.Products.xmldataProducts selectedProducts1 in selectedProducts.Items)
                {
                    if (((XmlNode[])(selectedProducts1.ProductCode))[0].InnerText.ToString().Equals((((XmlNode[])(productsArray[cursor1.Key].ProductCode))[0].InnerText) + "*" + eventID.ToString()))
                    {
                        ++counter;
                    }
                }
            }
            else
            {
                counter++;
            }
        }
        return counter;
    }

    protected void validateCheckBoxes(object sender, ServerValidateEventArgs e)
    {
        int counter = 0;
        foreach (var cursor in productsDic)
        {
            //if checkbox is not checked, if customer has already selected this product to be displayed, turn it off..
            if (cursor.Value.Checked)
                counter++;
        }
            if (counter > 0 && counter < 4)
                e.IsValid = true;
            else
                e.IsValid = false;
     
                
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        if (Page.IsValid)
        {
            //create array counter for the use of assigning the updated products and new products to be inserted...
            int counter = 0;
            counter = getCounter(counter);

            goodtooDraft.Products.xmldata listOfProducts = new goodtooDraft.Products.xmldata();
            listOfProducts.Items = new goodtooDraft.Products.xmldataProducts[counter];
            int i = 0;

            foreach (var cursor in productsDic)
            {
                //if checkbox is not checked, if customer has already selected this product to be displayed, turn it off..
                if (!cursor.Value.Checked)
                {
                    if (selectedProducts.Items == null) continue;
                    foreach (goodtooDraft.Products.xmldataProducts selectedProducts1 in selectedProducts.Items)
                    {
                        if (((XmlNode[])(selectedProducts1.ProductCode))[0].InnerText.ToString().Equals((((XmlNode[])(productsArray[cursor.Key].ProductCode))[0].InnerText) + "*" + eventID.ToString()))
                        {
                            //turning off..
                            ((XmlNode[])(selectedProducts1.DoNotAllowBackOrders))[0].InnerText = "N";
                            //store selectedProduct to be updated and turned off...
                            listOfProducts.Items[i] = selectedProducts1;
                            i++;
                            break;
                        }
                    }
                }
                else
                {
                    if (selectedProducts.Items != null)
                    {
                        //Check if the productCode is already one of the products that was chosen previously, if it is, just add the selected item back in the listOfProducts
                        foreach (goodtooDraft.Products.xmldataProducts selectedProducts1 in selectedProducts.Items)
                            if (((XmlNode[])(selectedProducts1.ProductCode))[0].InnerText.ToString().Equals((((XmlNode[])(productsArray[cursor.Key].ProductCode))[0].InnerText) + "*" + eventID.ToString()))
                            {
                                ((XmlNode[])(selectedProducts1.DoNotAllowBackOrders))[0].InnerText = "Y";
                                //store product to be updated...
                                listOfProducts.Items[i] = selectedProducts1;
                                //Since the code has reached this point, it has found a match which means none of the other selections are going to match, so break..
                                break;

                            }
                            else
                            {
                                //If the productCode is not already selected, make a copy of the product and store in listOfProducts.
                                goodtooDraft.Products.xmldataProducts copiedProduct = productsArray[cursor.Key];
                                //turning on...
                                ((XmlNode[])(copiedProduct.DoNotAllowBackOrders))[0].InnerText = "Y";
                                //store copied product to be Imported...
                                listOfProducts.Items[i] = copiedProduct;
                            }
                      
                    }
                    i++;
                }
            }

            importProducts(listOfProducts, eventID.ToString());
            Response.Redirect("Fund.aspx?id=" + eventID);
        }
    }
    

    private void importProducts(goodtooDraft.Products.xmldata listOfProducts, string eventID)
    {
        int i = 0;
        goodtooDraft.Products.xmldata Products = new goodtooDraft.Products.xmldata();
        Products.Items = new goodtooDraft.Products.xmldataProducts[listOfProducts.Items.Count()];
        //Foreach product in listOfProducts.Items...
        foreach (goodtooDraft.Products.xmldataProducts product in listOfProducts.Items)
        {//check for donotallowbackordervalues
            if (product == null) continue;
            //if product does not contain the eventID, append it...(using ")
            if (!((XmlNode[])(product.ProductCode))[0].InnerText.ToString().Contains("*" + eventID))
                ((XmlNode[])(product.ProductCode))[0].InnerText = (((XmlNode[])(product.ProductCode))[0].InnerText).ToString() + "*" + eventID;

            //add eventID to CustomField2
            if (product.CustomField2 == null)
            {
                XmlNode[] node = new XmlNode[1];
                XmlDocument doc = new XmlDocument();
                product.CustomField2 = node;
                ((XmlNode[])(product.CustomField2))[0] = doc.CreateNode(XmlNodeType.Text, null, null);
                ((XmlNode[])(product.CustomField2))[0].InnerText = eventID.ToString();
            }
            else
            {
                //if product.CustomField2 does not equal the eventID, place the eventID in the field.
                if(!((XmlNode[])(product.CustomField2))[0].InnerText.ToString().Equals(eventID.ToString()))
                    ((XmlNode[])(product.CustomField2))[0].InnerText = eventID.ToString();

            }
            Products.Items[i] = product;
            i++;
        }
        if (Products.Items.Count() > 0)
        {
            //Serialize the the XML Product(s) data to be imported..//
            MemoryStream ms = new MemoryStream();

            XmlWriterSettings settings = new XmlWriterSettings();
            settings.ConformanceLevel = ConformanceLevel.Auto;
            XmlWriter writer = XmlWriter.Create(ms, settings);

            XmlSerializer serializer = new XmlSerializer(typeof(goodtooDraft.Products.xmldata));
            serializer.Serialize(writer, Products);
            ms.Seek(0, 0);
            StreamReader sr = new StreamReader(ms);

            //Importing to Volusion Database//
            XMLPostManager postManager = new XMLPostManager();
            string importURL = Utils.GetAPIPostURL(ImportMode.InsertUpdate);
            postManager.SendXMLToURL(importURL, sr.ReadToEnd());
        }
    }
}