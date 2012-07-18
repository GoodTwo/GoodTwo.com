using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using goodtooDraft.App_Code;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Xml;
using System.IO;
using System.Xml.Serialization;
using WebServices;

public partial class Funds_EULAConfirmation : System.Web.UI.Page
{
    SqlConnection conn = null;
    SqlDataReader rdr = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlCommand cmd;
            int eventId = 0;
            eventId = 0;
            if (Request.QueryString["id"] != null)
            {
                int.TryParse(Request.QueryString["id"], out eventId);
            }

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
            cmd = new SqlCommand("CharityEvent_GetCharityEvent", conn);

            // 2. set the command object so it knows
            //    to execute a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new SqlParameter("@CharityEventId", eventId));

            // execute the command
            rdr = cmd.ExecuteReader();

            if (rdr.HasRows)
            {
                rdr.Read();
                FundDefaultsHandler handler = new FundDefaultsHandler(rdr);
                litSchoolFundraiserLogo.Text = handler.LiteralLogoText;
            }
        }
    }
    protected void validate(object sender, EventArgs e)
    {
        int eventId = 0;
        if (Page.IsValid)
        {
            SqlConnection conn = null;

            try
            {
                // create and open a connection object
                conn = new SqlConnection(ConfigurationManager.ConnectionStrings["goodtwoDbConnectionString1"].ConnectionString);
                conn.Open();

                eventId = 0;
                if (Request.QueryString["id"] != null)
                {
                    int.TryParse(Request.QueryString["id"], out eventId);
                }
                else
                {
                    Response.Redirect("NewFund.aspx");
                }

                // 1.  create a command object identifying
                //     the stored procedure
                SqlCommand cmd = new SqlCommand("CharityEvent_TimeStampEvent", conn);

                // 2. set the command object so it knows
                //    to execute a stored procedure
                cmd.CommandType = CommandType.StoredProcedure;
                                        
                DateTime now = DateTime.Now;

                // 4. add parameter to command, which
                //    will be passed to the stored procedure
                cmd.Parameters.Add(new SqlParameter("@CharityEventId", eventId));
                cmd.Parameters.Add(new SqlParameter("@EULATimeStamp", now));

                // execute the command
                cmd.ExecuteNonQuery();

                Administration admin = new Administration();
                CharityEvents fund = admin.GetEventById(eventId);

                // TODO
                // JKovacik: Mail is not configured correctly as of 06/30/2011; deactivate to avoid timeout and address in next release
                //mailEvent(fund.UserName,
                //fund.Email,
                //fund.PhoneNumber,
                //fund.Title,
                //fund.CauseName,
                //fund.Logo,
                //fund.Photo,
                //fund.Video,
                //fund.Tagline,
                //fund.Body,
                //fund.WebSite,
                //fund.Goal,
                //fund.EndDate != null ? (DateTime)fund.EndDate : DateTime.MaxValue,
                //fund.State,
                //fund.City,
                //fund.PaymentName,
                //fund.PaymentAddress,
                //fund.UserId, eventId, now);
            }
            catch (Exception ex)
            {
                Response.Write(@"<script type='text/javascript' language='javascript'>alert('The following errors have occurred: \n" + ex.Message + " (" + ex.InnerException + "):" + ex.StackTrace + " .');</script>");
                Session["ErrorMsg"] = (Session["ErrorMsg"] == null) ? ex.Message + " (InnerException: " + ex.InnerException + ")\n" : Session["ErrorMsg"].ToString() + ex.Message + " (InnerException: " + ex.InnerException + ")\n";
                ErrHandler.WriteError(ex.Message + " (InnerException: " + ex.InnerException + ")");
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
                Response.Redirect("Fund.aspx?id=" + eventId);
            }
        }
    }
    
    private bool mailEvent(string name, string email, string phone, string title, string cause, string logoPath, string photo, string video, string tagline, string body, string website, decimal goalNum, DateTime endDate, string state, string city, string paymentName, string paymentAddress, Guid userId, int eventId, DateTime now)
    {
        MailMessage msg = new MailMessage("fundraisers@goodtwo.com", goodtooDraft.App_Code.GoodTwoConstants.fundraiserMailingAddress);
        StringBuilder bb = new StringBuilder();
        msg.Subject = "New Fundraiser";

        bb.AppendLine("EventId:         " + eventId);
        bb.AppendLine("UserId:          " + userId.ToString());
        bb.AppendLine("User Name:       " + name);
        bb.AppendLine("Email Address:   " + email);
        bb.AppendLine("Phone Number:    " + phone);
        bb.AppendLine("Title:           " + title);
        bb.AppendLine("Cause Name:      " + cause);
        bb.AppendLine("Logo:            " + logoPath);
        bb.AppendLine("Photo:           " + photo);
        bb.AppendLine("Video:           " + video);
        bb.AppendLine("TagLine:         " + tagline);
        bb.AppendLine("Body:            " + body);
        bb.AppendLine("Website:         " + website);
        bb.AppendLine("Goal:            " + String.Format("{0:C}", goalNum));
        bb.AppendLine("End Date:        " + endDate.ToString());
        bb.AppendLine("State:           " + state);
        bb.AppendLine("City:            " + city);
        bb.AppendLine("Payment Name:    " + paymentName);
        bb.AppendLine("Payment Address: " + paymentAddress);
        bb.AppendLine("EULATimeStamp:   " + now);
        msg.Body = bb.ToString();

        SmtpClient sc = new SmtpClient(goodtooDraft.App_Code.GoodTwoConstants.smtpServer);
        if (!goodtooDraft.App_Code.GoodTwoConstants.castleServer)
            sc.Credentials = new System.Net.NetworkCredential(goodtooDraft.App_Code.GoodTwoConstants.smtpUserName, goodtooDraft.App_Code.GoodTwoConstants.smtpPassword);

        try
        {
            sc.Send(msg);
            return true;
        }
        catch (Exception e)
        {
            //Session["ErrorMsg"] = (Session["ErrorMsg"] == null) ? "UserName = " + goodtooDraft.App_Code.GoodTwoConstants.smtpUserName + ", Password = " + goodtooDraft.App_Code.GoodTwoConstants.smtpPassword + "\n" : Session["ErrorMsg"].ToString() + "UserName = " + goodtooDraft.App_Code.GoodTwoConstants.smtpUserName + ", Password = " + goodtooDraft.App_Code.GoodTwoConstants.smtpPassword + "\n";
            //Session["ErrorMsg"] = (Session["ErrorMsg"] == null) ? e.Message + " (InnerException: " + e.InnerException + ")\n" : Session["ErrorMsg"].ToString() + e.Message + " (InnerException: " + e.InnerException + ")\n";
            ErrHandler.WriteError(e.Message + " (InnerException: " + e.InnerException + ")");
            return false;
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
                ((XmlNode[])(product.CustomField2))[0].InnerText = eventID.ToString();

            }
            Products.Items[i] = product;
            i++;
        }
        if (Products.Items.Count() > 0)
        {
            MemoryStream ms = new MemoryStream();

            XmlWriterSettings settings = new XmlWriterSettings();
            settings.ConformanceLevel = ConformanceLevel.Auto;
            XmlWriter writer = XmlWriter.Create(ms, settings);

            XmlSerializer serializer = new XmlSerializer(typeof(goodtooDraft.Products.xmldata));
            serializer.Serialize(writer, Products);
            ms.Seek(0, 0);
            StreamReader sr = new StreamReader(ms);

            //Importing to Volusion Database
            goodtooDraft.App_Code.XMLPostManager postManager = new goodtooDraft.App_Code.XMLPostManager();

            string importURL = goodtooDraft.App_Code.Utils.GetAPIPostURL(goodtooDraft.App_Code.ImportMode.InsertUpdate); //change from Insert to Insert/Update

            postManager.SendXMLToURL(importURL, sr.ReadToEnd());
        }
    }
    protected void RadioButtonCustomDomValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = ((RadioButton)source).Checked;
    }
    /*
    private bool mailEvent(CharityEvent eve, int id)
    {
        MailMessage msg = new MailMessage(eve.Email, GoodTwoConstants.fundraiserMailingAddress);
        StringBuilder bb = new StringBuilder();
        msg.Subject = "New Fundraiser";

        bb.AppendLine("EventId:         " + id);
        bb.AppendLine("User Name:       " + eve.UserName);
        bb.AppendLine("Email Address:   " + eve.Email);
        bb.AppendLine("Phone Number:    " + eve.PhoneNumber);
        bb.AppendLine("Title:           " + eve.Title);
        bb.AppendLine("Cause Name:      " + eve.CauseName);
        bb.AppendLine("Logo:            " + eve.Logo);
        bb.AppendLine("Photo:           " + eve.Photo);
        bb.AppendLine("Video:           " + eve.Video);
        bb.AppendLine("TagLine:         " + eve.Tagline);
        bb.AppendLine("Body:            " + eve.Body);
        bb.AppendLine("Website:         " + eve.WebSite);
        bb.AppendLine("Goal:            " + eve.Goal);
        bb.AppendLine("End Date:        " + eve.EndDate);
        bb.AppendLine("State:           " + eve.State);
        bb.AppendLine("City:            " + eve.City);
        bb.AppendLine("Payment Name:    " + eve.PaymentName);
        bb.AppendLine("Payment Address: " + eve.PaymentAddress);
        bb.AppendLine("UserId:          " + eve.UserId);
        bb.AppendLine("EULATimeStamp:   " + eve.EULATimeStamp);
        msg.Body = bb.ToString();

        SmtpClient sc = new SmtpClient(GoodTwoConstants.smtpServer);
        try
        {
            sc.Send(msg);
            return true;
        }
        catch (Exception e)
        {
        	ErrHandler.WriteError(e.Message + " (InnerException: " + e.InnerException + ")");
            Console.WriteLine("Failed to send email: " + e.Message + " (" + e.InnerException + ")");
            return false;
        }

    }
     * */
}