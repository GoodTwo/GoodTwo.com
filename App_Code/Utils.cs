using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;
using System.Xml.Serialization;
using System.Configuration;
using System.Reflection;
using System.ComponentModel;
using System.Text;
using System.IO;
using System.Web.UI;
using System.Xml.XPath;

namespace goodtooDraft.App_Code
{
    /// <summary>
    /// Import Options
    /// </summary>
    public enum ImportMode
    {
        [Description("Insert")]
        Insert,
        [Description("Insert-Update")]
        InsertUpdate,
        [Description("Insert-Truncate")]
        InsertTruncate,
        [Description("Update")]
        Update,
        [Description("Delete")]
        Delete
    }

    /// <summary>
    /// Export options
    /// </summary>
    public enum EDIName
    {
        [Description(@"Generic\Orders")]
        Orders,
        [Description(@"Generic\Products")]
        Products,
        [Description(@"Generic\Customers")]
        Customers,
        [Description(@"Generic\All_Products")]
        AllProducts,
        [Description(@"Generic\Featured_Products")]
        FeaturedProducts,
        [Description(@"Generic\Categories")] //Not supported by API
        Categories
    }

    //public class PoliticalUtils : Utils
    //{
    //    public static readonly string VOLUSION_BASE_API = ConfigurationManager.AppSettings["KVOLUSION2_BASE_API"];
    //    public static readonly string VOLUSION_USER = ConfigurationManager.AppSettings["KVOLUSION_USER"];
    //    public static readonly string VOLUSION_PASSWORD = ConfigurationManager.AppSettings["KVOLUSION_PASSWORD"];

    //}

    public class Utils
    {
        public static readonly string VOLUSION_BASE_API = ConfigurationManager.AppSettings["KVOLUSION_BASE_API"];
        public static readonly string VOLUSION_USER = ConfigurationManager.AppSettings["KVOLUSION_USER"];
        public static readonly string VOLUSION_PASSWORD = ConfigurationManager.AppSettings["KVOLUSION_PASSWORD"];

        /// <summary>
        /// Gets the API URL to post to
        /// </summary>
        /// <param name="importMode">The impost Mode option</param>
        /// <returns>The API URL as string</returns>
        /// 
        /*
         * 
         * 
         * 
         */ 
        public static string GetAPIPostURL(ImportMode importMode)
        {
            return string.Format("{0}?Login={1}&EncryptedPassword={2}&Import={3}", VOLUSION_BASE_API, VOLUSION_USER, VOLUSION_PASSWORD, GetEnumDescription(importMode));
        }

        /// <summary>
        /// Gets the API URL For generic exports
        /// </summary>
        /// <param name="eDIName"></param>
        /// <returns></returns>
        public static string GetAPIGenericURL(EDIName eDIName)
        {
            return string.Format("{0}?Login={1}&EncryptedPassword={2}&EDI_Name={3}&SELECT_Columns=*", VOLUSION_BASE_API, VOLUSION_USER, VOLUSION_PASSWORD, GetEnumDescription(eDIName));
        }

        public static string GetAPIGenericWhereURL(EDIName eDIName, string selectColumns, string whereColumn, string whereValue)
        {
            return string.Format("{0}?Login={1}&EncryptedPassword={2}&EDI_Name={3}&SELECT_Columns={4}&WHERE_Column={5}&WHERE_Value={6}", 
                VOLUSION_BASE_API, VOLUSION_USER, VOLUSION_PASSWORD, GetEnumDescription(eDIName), selectColumns, whereColumn, whereValue);
        }

        /// <summary>
        /// Gets the Description tag value from an enum
        /// </summary>
        /// <param name="value">The enum</param>
        /// <returns>The Description dag value as a string</returns>
        public static string GetEnumDescription(Enum value)
        {
            FieldInfo fi = value.GetType().GetField(value.ToString());
            DescriptionAttribute[] attributes = (DescriptionAttribute[])fi.GetCustomAttributes(typeof(DescriptionAttribute), false);
            return (attributes.Length > 0) ? attributes[0].Description : value.ToString();
        }

        /// <summary>
        /// Serialize a product object to XML
        /// </summary>
        /// <param name="product">The product</param>
        /// <returns>XML String</returns>
        public static string GetProductXML(goodtooDraft.Products.xmldata product)
        {
            StringBuilder productSb = new StringBuilder();
            try
            {
                XmlWriter writer = XmlWriter.Create(productSb);
                XmlSerializer serializer = new XmlSerializer(typeof(goodtooDraft.Products.xmldata));
                serializer.Serialize(writer, product);
            }
            catch (Exception e)
            {
                ErrHandler.WriteError(e.Message + " (InnerException: " + e.InnerException + ")");
                throw new Exception("Cannot serialize product", e);
            }

            return productSb.ToString().Replace("<?xml version=\"1.0\" encoding=\"utf-16\"?>", string.Empty);
        }

        //Get all the orders
        public static Orders.xmldata getAllOrders()
        {
            string ordersURL = Utils.GetAPIGenericWhereURL(EDIName.Orders, "*", GoodTwoConstants.orderEmptyField, "0");
            MemoryStream ms = null;
            try
            {
                XMLPostManager manager = new XMLPostManager();
                XmlDocument doc = manager.GetXMLFromURL(ordersURL);
                XmlNodeList nodeList = doc.GetElementsByTagName(GoodTwoConstants.queryErrorTagName);
                //If the  query fails cause of a malformed query string the query error tag will be found
                if(nodeList.Count > 0)
                {
                    string queryStatus = nodeList[0].ChildNodes[0].InnerText;
                    string errorMsg = nodeList[0].ChildNodes[1].InnerText;
                    throw new Exception("QueryStatus: "+queryStatus+" Error Message: "+errorMsg);
                }
                
                ms = new MemoryStream();
                doc.Save(ms);
                ms.Seek(0, 0);
                
                XmlReaderSettings settings = new XmlReaderSettings();
                settings.ConformanceLevel = ConformanceLevel.Auto;
                XmlReader xr = XmlReader.Create(ms, settings);

                XmlSerializer xs = new XmlSerializer(typeof(goodtooDraft.Orders.xmldata));
                return (goodtooDraft.Orders.xmldata)xs.Deserialize(xr);
            }
            finally
            {
                if (ms != null)
                    ms.Close();
            }
        }

        public static string GetVirtualPath(string physicalPath, string serverPath)
        {
            string rootpath = serverPath;
            physicalPath = physicalPath.Replace(rootpath, "");
            physicalPath = physicalPath.Replace("\\", "/");
            return "~/" + physicalPath;
        }

        public static string GetVirtualPath(string physicalPath, Page page)
        {
            string rootpath = page.Server.MapPath("~/");
            physicalPath = physicalPath.Replace(rootpath, "");
            physicalPath = physicalPath.Replace("\\", "/");
            return "~/" + physicalPath;
        }

        public static List<string> GetRegionList(string state, Page page)
        {
            List<string> regionList = new List<string>();
            XmlTextReader xr = new XmlTextReader(page.MapPath("../RegionCodeList.xml"));
            
            while (xr.Read())
            {
                if ((xr.NodeType == XmlNodeType.Element) && (xr.Name == "Region"))
                {
                    //StateList.Items.Add(new ListItem(xr.GetAttribute("Name"), xr.GetAttribute("Code")));
                    string regionCode = xr.GetAttribute("Code");
                    while ((xr.Read()) && (!((xr.NodeType == XmlNodeType.EndElement) && (xr.Name == "Region"))))
                    {
                        if ((xr.NodeType == XmlNodeType.Element) && (xr.Name == "State"))
                        {
                            if (xr.GetAttribute("Code").Equals(state))
                            {
                                regionList.Add(regionCode);
                                break;
                            }
                        }
                    }
                }
            }

            return regionList;
        }

        public static List<goodtooDraft.Products.xmldataProducts> GetRelevantProducts(string state, Page page)
        {
            List<goodtooDraft.Products.xmldataProducts> productList = new List<goodtooDraft.Products.xmldataProducts>();
            goodtooDraft.Products.xmldata productItems;
            // Search for state code
            try
            {
                productItems = GetProductSearchResults(GoodTwoConstants.productRegionField, state);
                if (productItems.Items != null)
                {
                    productList.AddRange(productItems.Items.ToList<goodtooDraft.Products.xmldataProducts>());
                }
            }
            catch (Exception ex)
            {
            }

            // Search for region codes
            foreach (string regionCode in Utils.GetRegionList(state, page))
            {
                try
                {
                    productItems = GetProductSearchResults(GoodTwoConstants.productRegionField, regionCode);
                    if (productItems.Items != null)
                    {
                        productList.AddRange(productItems.Items.ToList<goodtooDraft.Products.xmldataProducts>());
                    }
                }
                catch (Exception ex)
                {
                }
            }

            // Search for national code
            try
            {
                productItems = GetProductSearchResults(GoodTwoConstants.productRegionField, GoodTwoConstants.nationalRegionCode);
                if (productItems.Items != null)
                {
                    productList.AddRange(productItems.Items.ToList<goodtooDraft.Products.xmldataProducts>());
                }
            }
            catch (Exception ex)
            {
            }

            return productList;
        }

        public static goodtooDraft.Products.xmldata GetProductSearchResults(string field, string value)
        {
            goodtooDraft.Products.xmldata productList = new goodtooDraft.Products.xmldata();
            MemoryStream ms = null;
            XMLPostManager manager = new XMLPostManager(); // Handles the Volusion API call

            // Search for state code
            string productsURL = Utils.GetAPIGenericWhereURL(EDIName.Products, GoodTwoConstants.searchFields, field, value);
            try
            {
                ms = new MemoryStream();
                XmlDocument doc = manager.GetXMLFromURL(productsURL); // Get the results of the query in xml format

                doc.Save(ms);
                ms.Seek(0, 0);

                // Setup the xml reader
                XmlReaderSettings settings = new XmlReaderSettings();
                settings.ConformanceLevel = ConformanceLevel.Auto;
                XmlReader xr = XmlReader.Create(ms, settings);

                // Deserialize the xml product list
                XmlSerializer xs = new XmlSerializer(typeof(goodtooDraft.Products.xmldata));
                productList = (goodtooDraft.Products.xmldata)xs.Deserialize(xr);
            }
            catch (Exception ex)
            {
                ErrHandler.WriteError(ex.Message + " (InnerException: " + ex.InnerException + ")");
                throw new Exception("Could not query for products.", ex);
            }
            finally
            {
                if (ms != null)
                    ms.Close();
            }

            return productList;
        }

        public static goodtooDraft.Products.xmldataProducts makeProductCopy(goodtooDraft.Products.xmldataProducts product, string eventID)
        {
            if (product != null)
            {
                //if product does not contain the eventID, append it...(using ")
                if (!((XmlNode[])(product.ProductCode))[0].InnerText.ToString().Contains("*" + eventID))
                    ((XmlNode[])(product.ProductCode))[0].InnerText = ((XmlNode[])(product.ProductCode))[0].InnerText + "*" + eventID;

                //add eventID to CustomField2
                if (product.CustomField2 == null)
                {
                    XmlNode[] node = new XmlNode[1];
                    XmlDocument doc = new XmlDocument();
                    product.CustomField2 = node;
                    ((XmlNode[])(product.CustomField2))[0] = doc.CreateNode(XmlNodeType.Text, null, null);
                }
                //if product.CustomField2 does not equal the eventID, place the eventID in the field.
                if (!((XmlNode[])(product.CustomField2))[0].InnerText.ToString().Equals(eventID.ToString()))
                    ((XmlNode[])(product.CustomField2))[0].InnerText = eventID.ToString();

                //clear CustomField4
                product.CustomField4 = null;

                //clear StockHistory since it cannot be imported into Volusion
                product.StockStatus = null;

                //clear Accessories
                product.Accessories = null;

                //copy options
                if (product.Options_Cloned_From_ProductID == null)
                {
                    XmlNode[] node = new XmlNode[1];
                    XmlDocument doc = new XmlDocument();
                    product.Options_Cloned_From_ProductID = node;
                    ((XmlNode[])(product.Options_Cloned_From_ProductID))[0] = doc.CreateNode(XmlNodeType.Text, null, null);
                }
                ((XmlNode[])(product.Options_Cloned_From_ProductID))[0].InnerText = ((XmlNode[])(product.ProductID))[0].InnerText;

                //if (product.CustomField4 == null)
                //{
                //    XmlNode[] node = new XmlNode[1];
                //    XmlDocument doc = new XmlDocument();
                //    product.CustomField4 = node;
                //    ((XmlNode[])(product.CustomField4))[0] = doc.CreateNode(XmlNodeType.Text, null, null);
                //}
                //try
                //{
                //    ((XmlNode[])(product.CustomField4))[0].InnerText = "";
                //}
                //catch
                //{
                //    XmlNode[] node = new XmlNode[1];
                //    XmlDocument doc = new XmlDocument();
                //    product.CustomField4 = node;
                //    ((XmlNode[])(product.CustomField4))[0] = doc.CreateNode(XmlNodeType.Text, null, null);

                //    ((XmlNode[])(product.CustomField4))[0].InnerText = "";
                //}
            }

            return product;
        }

        public static void importProducts(goodtooDraft.Products.xmldata listOfProducts)
        {
            if (listOfProducts.Items.Count() > 0)
            {
                //Serialize the the XML Product(s) data to be imported..//
                MemoryStream ms = new MemoryStream();

                XmlWriterSettings settings = new XmlWriterSettings();
                settings.ConformanceLevel = ConformanceLevel.Auto;
                XmlWriter writer = XmlWriter.Create(ms, settings);

                XmlSerializer serializer = new XmlSerializer(typeof(goodtooDraft.Products.xmldata));
                serializer.Serialize(writer, listOfProducts);
                ms.Seek(0, 0);
                StreamReader sr = new StreamReader(ms);

                //Importing to Volusion Database//
                XMLPostManager postManager = new XMLPostManager();
                string importURL = Utils.GetAPIPostURL(ImportMode.InsertUpdate);
                postManager.SendXMLToURL(importURL, sr.ReadToEnd());
            }
        }
    }

    public class StringUtils
    {
        public static string ReplaceGarbageChars(string s)
        {
            return s.Replace("???", "'").Replace(" â€“ ", " - ").Replace("â€“", "\"").Replace("Â»", "&raquo;").Replace(" â€™ ", " - ").Replace("â€™", "'").Replace("Â", "").Replace("â€¦", ";").Replace("â€”", ",").Replace("â€¢", "-").Replace("Ã©", "&eacute;");
        }
    }

    public class StringTrimComparer : IEqualityComparer<string>
    {

        public bool Equals(string x, string y)
        {
            return x.Trim().ToUpper().Equals(y.Trim().ToUpper());
        }

        public int GetHashCode(string obj)
        {
            throw new NotImplementedException();
        }
    }

    public class ProductIdComparer : IEqualityComparer<goodtooDraft.Products.xmldataProducts>
    {

        public bool Equals(goodtooDraft.Products.xmldataProducts x, goodtooDraft.Products.xmldataProducts y)
        {
            return ((XmlNode[])(x.ProductCode))[0].InnerText.ToString().Equals((((XmlNode[])(y.ProductCode))[0].InnerText));
        }

        public int GetHashCode(goodtooDraft.Products.xmldataProducts obj)
        {
            throw new NotImplementedException();
        }
    }
}