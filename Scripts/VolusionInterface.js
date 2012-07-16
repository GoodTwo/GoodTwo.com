ImportMode = {
    Insert: "Insert",
    InsertUpdate: "Insert-Update",
    InsertDescription: "Insert - Truncate",
    InsertTruncate: "Update",
    Update: "Delete"
}

EDIName = {
        Orders : "Generic\Orders",
        Products : "Generic\Products",
        Customers : "Generic\Customers",
        AllProducts : "Generic\All_Products",
        FeaturedProducts : "Generic\Featured_Products",
        Categories : "Generic\Categories"
}

var VOLUSION_BASE_API = "http://www.goodtwo.com/net/WebService.aspx";
var VOLUSION_USER = "khash@khash.com";
var VOLUSION_PASSWORD = "649FDCDDCFA2CE2C0720D6CC8142EC6A3A23335A1DB36E6B678C1B91E42196C4";

function GetAPIPostURL(importMode) {
return VOLUSION_BASE_API + "?Login=" + VOLUSION_USER + "&EncryptedPassword=" + VOLUSION_PASSWORD + "&Import=" + importMode;
}

/// <summary>
        /// Gets the API URL to post to
        /// </summary>
        /// <param name="importMode">The impost Mode option</param>
        /// <returns>The API URL as string</returns>
function GetAPIGenericURL(eDIName) {
return VOLUSION_BASE_API + "?Login=" + VOLUSION_USER + "&EncryptedPassword=" + VOLUSION_PASSWORD + "&EDI_Name=" + eDIName + "&SELECT_Columns=*";
}

function GetAPIGenericWhereURL(eDIName, selectColumns, whereColumn, whereValue) {
return VOLUSION_BASE_API + "?Login=" + VOLUSION_USER + "&EncryptedPassword=" + VOLUSION_PASSWORD + "&EDI_Name=" + eDIName + "&SELECT_Columns=" + selectColumns + "&WHERE_Column=" + whereColumn + "&WHERE_Value=" + whereValue;
}

function() { return         //Get all the orders
        public static Orders.xmldata getAllOrders()
        {
            string ordersURL = Utils.GetAPIGenericWhereURL(EDIName.Orders, "o.OrderID,o.PaymentAmount", GoodTwoConstants.orderEmptyField, "0");
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