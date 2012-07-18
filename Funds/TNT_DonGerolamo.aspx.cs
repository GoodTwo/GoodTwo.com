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
//using goodtwoDbModel;

public partial class Funds_tnt_dongerolamo : System.Web.UI.Page
{
    //goodtwoDbEntities1 db = new goodtwoDbEntities1();
    SqlConnection conn = null;
    SqlDataReader rdr = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        /*I am assuming that once an event creation form is filled out
         * * the user will be directed to "Fund.aspx?id=eventId" 
         * * where eventId is the unique ID given to that event
         * */
        int productCount;
        int supporters = 0;
        List<int> supporterList; // Used to keep track of distinct supporters
        float pledges = 0;
        int orderCount = 0;
        int customerId, o_productId, p_productId;
        MemoryStream ms = null;

        int eventId = 28; //Hardcoded for now

        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["goodtwoDbConnectionString1"].ConnectionString);
        conn.Open();

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

        /*
        var events = from ev in db.CharityEvents
                     where ev.CharityEventId == eventId
                     select ev;
        if (events.Count() == 0)
        {
            Response.Write(@"<script language='javascript'>alert('Could not find the indicated event.'); window.location.href = '../index.aspx';</script>");
            Response.Write(@"<script language='javascript'>alert('Could not find the indicated event.');</script>");
            return;
        }
        CharityEvent eve = (CharityEvent)events.First();
        */
        //Save end date in hidden field (to be used latter in the countdown javascript)
        hiddenEndDate.InnerHtml = String.Format("{0:MM/dd/yyyy}", (DateTime)rdr["EndDate"]);

        //Build the query string
        string productsURL = Utils.GetAPIGenericWhereURL(EDIName.Products, "*", GoodTwoConstants.productFundField, rdr["CharityEventId"].ToString());

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

            if (productCount > 0)
            {
                // This loop is necessary at the moment because of limitations to Volusion's API  
                goodtooDraft.Orders.xmldata orders = Utils.getAllOrders();
                foreach (goodtooDraft.Products.xmldataProducts product in products.Items) // For every product
                {
                    p_productId = int.Parse(((XmlNode[])(product.ProductID))[0].InnerText);
                    foreach (goodtooDraft.Orders.xmldataOrders order in orders.Items) // For every order
                    {
                        foreach(goodtooDraft.Orders.xmldataOrdersOrderDetails od in order.OrderDetails)
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

        }
        catch (Exception ex) {
 	        ErrHandler.WriteError(ex.Message + " (InnerException: " + ex.InnerException + ")"); 
            throw new Exception("Could not calculate event statistics.", ex); 
        }
        finally
        {
            if (ms != null)
                ms.Close();
        }
    }
}