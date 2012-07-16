using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;
using goodtooDraft.Products;
using System.Web.UI.WebControls;
using System.Xml;
using System.Text.RegularExpressions;
using System.IO;
using System.Web.UI;
using goodtooDraft.App_Code;

/// <summary>
/// Summary description for RenderLogic
/// </summary>
public class RenderLogic
{
    public const string product_name_regex = @"(\d+)%\s+off\s+(?:-|"")\s+(.+)";
    public const string product_description_regex = @"<H2>Description</H2>[^<]*<p>(.*)";
    //public const string product_info_regex = @"<H2>The Company</H2>[^<]*<P>\s*(?:<b>|<strong>)\s*([^<]*)(?:</b>|</strong>)\s*<br\s?\\?>\s*(?:<em[^<]*</em>\s*<br\s?\\?>\s*)?([^<]*)<br\s?\\?>\s*([^<]*)<br\s?\\?>\s*<SPAN\s*style=""FONT-WEIGHT:\s*bold"">\s*<br\s?\\?>\s*<A\s*href\s*=\s*""([^""]*)""\s*[^<]*</A>\s*<br\s?\\?>\s*<A\s*href\s*=\s*""([^""]*)""";
    public const string product_company_regex = @"<H2>The Company</H2>[^<]*<P>[^<]*(?:(?:<b>\s*([^<]*)</b>)|(?:<strong>\s*([^<]*)</strong>))";
    public const string product_address1_regex = @"<H2>The Company</H2>[^<]*<P>[^<]*(?:(?:<b>\s*[^<]*</b>)|(?:<strong>\s*[^<]*</strong>))[^<]*<br\s*\/?>(?:\s*<em>[^<]*</em>)?\s*([^<]*)<br\s*\/?>";
    public const string product_address2_regex = @"<H2>The Company</H2>[^<]*<P>[^<]*(?:(?:<b>\s*[^<]*</b>)|(?:<strong>\s*[^<]*</strong>))[^<]*<br\s*\/?>(?:\s*<em>[^<]*</em>)?\s*[^<]*<br\s*\/?>\s*([^<]*)<br\s*\/?>";
    public const string product_map_regex = @"<A\s*href\s*=\s*""([^""]*)""\s*target\s*=\s*""_new""\s*>(?:\s*<br\s?\\?>)?\s*Map/Directions\s*(?:(?:\?\?)|(?:&raquo;))(?:\s*</SPAN>)?\s*</A>";
    public const string product_web_regex = @"<A\s*href\s*=\s*""([^""]*)""\s*target\s*=\s*""_new""\s*>(?:\s*<br\s?\\?>)?\s*Visit Website\s*(?:(?:\?\?)|(?:&raquo;))(?:\s*</SPAN>)?\s*</A>";

    public static HtmlTableCell AddCheckBoxTableCell(HtmlTableRow row)
    {
        HtmlTableCell checkboxCell = new HtmlTableCell();
        row.Cells.Add(checkboxCell);
        checkboxCell.Attributes.Add("Style", "vertical-align:middle; padding:0px 10px 0px 60px");
        CheckBox chkbox = new CheckBox();
        checkboxCell.Controls.Add(chkbox);

        return checkboxCell;
    }

    public static HtmlTableCell AddProductTableCell(HtmlTableRow row, xmldataProducts product, bool first, Page page, bool enableBuyLink)
    {
        HtmlTableCell productCell = new HtmlTableCell();
        productCell.Attributes.Add("Style", "padding:0px 0px 3px 0px");

        HtmlGenericControl ul = new HtmlGenericControl("ul");
        ul.Attributes.Add("clientidmode", "static");
        ul.Attributes.Add("runat", "server");
        ul.Attributes.Add("id", "merchantList");
        productCell.Controls.Add(ul);

        if (AddProductListItem(ul, product, first, page, enableBuyLink, ""))
        {
            row.Cells.Add(productCell);
            return productCell;
        }

        return null;        
    }

    public static bool AddProductListItem(HtmlGenericControl productList, xmldataProducts product, bool first, Page page, bool enableBuyLink, string storeUrl)
    {
        HtmlGenericControl li = new HtmlGenericControl("li");
        if (first)
            li.Attributes.Add("class", "first");
        HtmlGenericControl div = new HtmlGenericControl("div");
        li.Controls.Add(div);
        productList.Controls.Add(li);

        // Call fill method
        return AddProductControls(div, product, page, enableBuyLink, storeUrl);        
    }

    public static bool AddProductControls(HtmlGenericControl productContainer, xmldataProducts product, Page page, bool enableBuyLink, string altBuyUrl)
    {
        Regex rx;
        Match m = null;
        
        HtmlGenericControl h3 = new HtmlGenericControl("h3");
        productContainer.Controls.Add(h3);  

        // Get product title
        string productName = (product.CustomField3 != null) ? ((XmlNode[])(product.CustomField3))[0].InnerText : String.Empty;
        if (String.IsNullOrEmpty(productName))
        {
            productName = (product.ProductName != null) ? StringUtils.ReplaceGarbageChars(((XmlNode[])(product.ProductName))[0].InnerText) : String.Empty;
            rx = new Regex(product_name_regex);
            m = rx.Match(productName);
            if (!m.Success)
                return false;
            productName = m.Groups[2].Value;
        }
        productName = StringUtils.ReplaceGarbageChars(productName.Trim());
        if (productName.Equals(""))
            return false;
        h3.InnerText = productName;

        string productDiscount = (product.VAT_Percentage != null) ? ((XmlNode[])(product.VAT_Percentage))[0].InnerText : String.Empty;
        float productDiscountNum;
        if (!float.TryParse(productDiscount, out productDiscountNum))
        {
            if (m == null)
                return false;
            productDiscount = m.Groups[1].Value; // Extract percent saved
            if (!float.TryParse(productDiscount, out productDiscountNum))
            {
                return false;
            }
        }

        //Get product image
        string productImageURL = (product.PhotoURL_Large != null) ? ((XmlNode[])(product.PhotoURL_Large))[0].InnerText : String.Empty;
        if (String.IsNullOrEmpty(productImageURL))
        {
            productImageURL = page.MapPath("hillel-main.jpg");
            if (!File.Exists(productImageURL))
                return false;
            productImageURL = Utils.GetVirtualPath(productImageURL, page);
        }
        HtmlImage productImage = new HtmlImage();
        productContainer.Controls.Add(productImage);
        productImage.Attributes.Add("Style", "height:185px; width:200px;");
        productImage.Alt = productName + " image";
        productImage.Src = productImageURL;

        //Price section
        string productPrice = (product.ProductPrice != null) ? ((XmlNode[])(product.ProductPrice))[0].InnerText : String.Empty;
        float productPriceNum;
        if (!float.TryParse(productPrice, out productPriceNum))
            return false;
        productPrice = productPriceNum.ToString("#0");
        if (productPrice.Trim().Equals(""))
            return false;

        string productYouSave = ((productDiscountNum / 100f) > 0) ? ((productPriceNum * productDiscountNum) / (100f - productDiscountNum)).ToString("#0") : (0f).ToString("#0");
        HtmlGenericControl pPrices = new HtmlGenericControl("p");
        productContainer.Controls.Add(pPrices);
        pPrices.Attributes.Add("class", "prices");
        pPrices.InnerHtml = @"Price: $" + productPrice + @"<br />Discount: " + productDiscount + @"%<br />You Save: $" + productYouSave;

        //Buy paragraph
        string productCode = ((XmlNode[])(product.ProductCode))[0].InnerText;

        //Split eventID from productCode...
        //string[] productCodeArray = productCode.Split('*');
        //productCode = productCodeArray[0];
        //if (productCode.Trim().Equals(""))
        //    return false;

        HtmlGenericControl pBuyLink = new HtmlGenericControl("p");
        pBuyLink.Attributes.Add("class", "buyNowHolder");
        string vendorPrice = (product.Vendor_Price != null) ? ((XmlNode[])(product.Vendor_Price))[0].InnerText : String.Empty;
        float vendorPriceNum;
        if (!float.TryParse(vendorPrice, out vendorPriceNum))
            return false;
        string productPledge = ((productPriceNum - vendorPriceNum) / 2f).ToString("C");
        if (enableBuyLink)
        {
            if (altBuyUrl == "")
            {
                pBuyLink.InnerHtml = @" <a href=""http://store.goodtwo.com/ShoppingCart.asp?ProductCode=" + productCode + @""" class=""buyNow"" target=""_new""></a>" + " " + productPledge + " will be donated to this cause";

            }
            else
            {
                pBuyLink.InnerHtml = @" <a href=""" + altBuyUrl + @""" class=""buyNow"" target=""_new""></a>" + " " + productPledge + " will be donated to this cause";
            }
        }
        else
        {
            pBuyLink.InnerHtml = @" <a class=""buyNow"" target=""_new""></a>" + " " + productPledge + " will be donated to this cause";
        }
        productContainer.Controls.Add(pBuyLink);

        //Product discription section
        HtmlGenericControl pDesc = new HtmlGenericControl("div");
        productContainer.Controls.Add(pDesc);
        pDesc.Attributes.Add("class", "description");
        string allProductInfo = (product.ProductDescription != null) ? StringUtils.ReplaceGarbageChars(((XmlNode[])(product.ProductDescription))[0].InnerText.Trim()) : String.Empty;
        string productDescription = (product.ProductDescriptionShort != null) ? ((XmlNode[])(product.ProductDescriptionShort))[0].InnerText.Trim() : String.Empty;
        if (String.IsNullOrEmpty(productDescription))
        {
            rx = new Regex(product_description_regex);
            m = rx.Match(allProductInfo);
            if (!m.Success)
                return false;
            productDescription = m.Groups[1].Value;
            if (productDescription.Substring(productDescription.Length - 4, 4).Equals("</p>"))
                productDescription = productDescription.Substring(0, productDescription.Length - 4);
        }
        productDescription = StringUtils.ReplaceGarbageChars(productDescription);
        pDesc.InnerHtml = productDescription + @" <a href=""http://store.goodtwo.com/ProductDetails.asp?ProductCode=" + productCode + @""" target=""_new"">More Info</a>";

        HtmlTable table = new HtmlTable();
        table.Width = "100%";
        table.CellPadding = 3;
        productContainer.Controls.Add(table);

        HtmlTableRow tr;
        HtmlTableCell td;

        m = null;
        // Company Name
        string companyName = (product.ProductKeywords != null) ? ((XmlNode[])(product.ProductKeywords))[0].InnerText.Trim() : String.Empty;
        if (String.IsNullOrEmpty(companyName))
        {
            rx = new Regex(product_company_regex, RegexOptions.IgnoreCase);
            m = rx.Match(allProductInfo);
            if (m.Success)
            {
                companyName = !String.IsNullOrEmpty(m.Groups[1].Value) ? m.Groups[1].Value : m.Groups[2].Value; 
            }
        }
        companyName = StringUtils.ReplaceGarbageChars(companyName);
        if (!String.IsNullOrEmpty(companyName))
        {
            tr = new HtmlTableRow();
            table.Rows.Add(tr);

            td = new HtmlTableCell();
            tr.Cells.Add(td);
            td.Attributes.Add("style", "color:#283b7d;");
            td.InnerHtml = companyName;

            td = new HtmlTableCell();
            tr.Cells.Add(td);
        }

        //Address (Street)
        string street = (product.Photo_AltText != null) ? ((XmlNode[])(product.Photo_AltText))[0].InnerText.Trim() : String.Empty;
        if (String.IsNullOrEmpty(street))
        {
            rx = new Regex(product_address1_regex, RegexOptions.IgnoreCase);
            m = rx.Match(allProductInfo);
            if (m.Success)
            {
                street = m.Groups[1].Value;
            }
        }
        street = StringUtils.ReplaceGarbageChars(street);

        //Location
        string location = (product.TechSpecs != null) ? ((XmlNode[])(product.TechSpecs))[0].InnerText.Trim() : String.Empty;
        if (String.IsNullOrEmpty(location))
        {
            rx = new Regex(product_map_regex, RegexOptions.IgnoreCase);
            m = rx.Match(allProductInfo);
            if (m.Success)
            {
                location = m.Groups[1].Value;
            }
        }
        location = StringUtils.ReplaceGarbageChars(location);

        if (!String.IsNullOrEmpty(street) || !String.IsNullOrEmpty(location))
        {
            tr = new HtmlTableRow();
            table.Rows.Add(tr);

            td = new HtmlTableCell();
            tr.Cells.Add(td);
            td.Attributes.Add("class", "firstTD");

            if (!String.IsNullOrEmpty(street))
            {
                td.InnerHtml = street;
            }

            td = new HtmlTableCell();
            tr.Cells.Add(td);

            if (!String.IsNullOrEmpty(location))
            {
                td.InnerHtml = @" <a href=""" + location + @""" target=""_new"">Map/Directions &raquo;</a>";
            }
        }

        //Address (City/State)
        string cityState = (product.Photo_SubText != null) ? ((XmlNode[])(product.Photo_SubText))[0].InnerText.Trim() : String.Empty;
        if (String.IsNullOrEmpty(cityState))
        {
            rx = new Regex(product_address2_regex, RegexOptions.IgnoreCase);
            m = rx.Match(allProductInfo);
            if (m.Success)
            {
                cityState = m.Groups[1].Value;
            }
        }
        cityState = StringUtils.ReplaceGarbageChars(cityState);

        //WebLink
        string webLink = (product.ProductFeatures != null) ? ((XmlNode[])(product.ProductFeatures))[0].InnerText.Trim() : String.Empty;
        if (String.IsNullOrEmpty(webLink))
        {
            rx = new Regex(product_web_regex, RegexOptions.IgnoreCase);
            m = rx.Match(allProductInfo);
            if (m.Success)
            {
                webLink = m.Groups[1].Value;
            }
        }
        webLink = StringUtils.ReplaceGarbageChars(webLink);

        if (!String.IsNullOrEmpty(cityState) || !String.IsNullOrEmpty(webLink))
        {
            tr = new HtmlTableRow();
            table.Rows.Add(tr);

            td = new HtmlTableCell();
            tr.Cells.Add(td);

            if (!String.IsNullOrEmpty(cityState))
            {
                td.InnerHtml = cityState;
            }

            td = new HtmlTableCell();
            tr.Cells.Add(td);

            if (!String.IsNullOrEmpty(webLink))
            {

                td.InnerHtml = @" <a href=""" + webLink + @""" target=""_new"">Visit Website &raquo;</a>";
            }
        }

        return true;
    }    
}