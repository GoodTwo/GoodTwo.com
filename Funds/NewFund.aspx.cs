using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using goodtooDraft.App_Code;
using System.Xml;
using System.Xml.Serialization;
using System.Net.Mail;
using System.Text;
using System.Web.Security;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Web.UI.WebControls.DomValidators;
using System.Configuration;
using System.Data;
using WebServices;

public partial class Funds_NewFund : System.Web.UI.Page
{
    public string ReplaceNewLineWithBr(string s)
    {
        return s.Replace(Environment.NewLine, "<br />");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        /*
        string script;
        if (Page.IsPostBack)
        {
            script = "var isPostBack = true;";
        }
        else
        {
            script = "var isPostBack = false;";
        }
        Page.ClientScript.RegisterStartupScript(GetType(), "IsPostBack", script, true);
        */
    
        //Populate the state selection list
        if (!Page.IsPostBack)
        {
            MembershipUser m = Membership.GetUser();
            Guid userid = (Guid)m.ProviderUserKey;
            Administration admin = new Administration();
            int? id = admin.CheckForFund(userid);
            if (id.HasValue)
            {
                Response.Redirect("fund.aspx?id=" + id.Value);
            }
           
            //Populate the state selection list
            XmlTextReader xr = new XmlTextReader(MapPath("../RegionsXmlList.xml"));
            //bool firstSet = false;
            while (xr.Read())
            {
                if ((xr.NodeType == XmlNodeType.Element) && (xr.Name == "State"))
                {
                    StateList.Items.Add(new ListItem(xr.GetAttribute("Name"), xr.GetAttribute("Code")));
                    //if (!firstSet)
                    //{
                    //    firstSet = true;
                    //    while ((xr.Read()) && (!((xr.NodeType == XmlNodeType.EndElement) && (xr.Name == "State"))))
                    //    {
                    //        if ((xr.NodeType == XmlNodeType.Element) && (xr.Name == "City"))
                    //        {
                    //            CityList.Items.Add(new ListItem(xr.GetAttribute("Name"), xr.GetAttribute("Code")));
                    //        }
                    //    }
                    //}
                }
            }
        }
        else
        {
            Page.Validate();
        }
    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        //SqlConnection conn = null;
        //int eventId;

        if (Page.IsValid)
        {
            string name = NameTextBox.Text;
            string email = EmailTextBox.Text;
            string phone = PhoneTextBox.Text;
            string title = TitleTextBox.Text;
            string cause = CauseNameTextBox.Text;
            string logoPath = null;
            string photoPath = null;
            //string video = VideoTextBox.Text;
            string video = HtmlVideoTextBox.Text;
            string tagline = TaglineTextBox.Text;
            string body = ReplaceNewLineWithBr(BodyTextBox.Text);
            string website = WebSiteTextBox.Text;
            string goal = GoalTextBox.Text;
            decimal goalNum;
            if (!decimal.TryParse(goal, out goalNum))
                goalNum = 0;
            string endDateText = EndDateTextBox.Text;
            DateTime endDate;
            if (!DateTime.TryParse(endDateText, out endDate))
                endDate = DateTime.Now;
            string state = StateList.SelectedValue;

            string city = CityTextBox.Text;
            //string city = CityHiddenField.Value;
            string paymentName = PaymentNameTextBox.Text;
            string paymentAddress = PaymentAddressTextBox.Text;
            MembershipUser m = Membership.GetUser();      

            try
            {
                if (LogoUpload.HasFile)
                {
                    string file = Path.GetFileName(LogoUpload.FileName);
                    logoPath = Path.Combine(Server.MapPath("~"), "Images");//title.Replace(' ', '_') + @"\";
                    //if (!Directory.Exists(logoPath))
                    //    Directory.CreateDirectory(logoPath);

                    logoPath = Path.Combine(logoPath, file);
                    //save the file to the server
                    try
                    {
                        LogoUpload.PostedFile.SaveAs(logoPath);
                    }
                    catch (Exception ex)
                    {
                        Response.Write(@"<script language='javascript'>alert('The following errors have occurred: \n" + ex.Message.Replace('\'', '\"') + " (" + ex.InnerException.Message.Replace('\'', '\"') + ") .');</script>");
                        ErrHandler.WriteError(ex.Message + " (InnerException: " + ex.InnerException + ")");
                        return;
                    }
                    
                }
                if (PhotoUpload.HasFile)
                {
                    string file = Path.GetFileName(PhotoUpload.FileName);

                    photoPath = Path.Combine(Server.MapPath("~"), "Images");//title.Replace(' ', '_') + @"\";
                    //if (!Directory.Exists(photoPath))
                    //    Directory.CreateDirectory(photoPath);

                    photoPath = Path.Combine(photoPath, file);

                    //save the file to the server
                    try
                    {
                        PhotoUpload.SaveAs(photoPath);
                    }
                    catch (Exception ex)
                    {
                        Response.Write(@"<script language='javascript'>alert('The following errors have occurred: \n" + ex.Message.Replace('\'', '\"') + " (" + ex.InnerException.Message.Replace('\'', '\"') + ") .');</script>");
                        ErrHandler.WriteError(ex.Message + " (InnerException: " + ex.InnerException + ")");
                        return;
                    }
                }

                int eventId = createFund(name,
             email,
             phone,
             title,
             cause,
             logoPath,
             photoPath,
             video,
             tagline,
             body,
             website,
             goalNum,
             endDateText,
             endDate,
             state,
             city,
             paymentName,
             paymentAddress);

                if(eventId != -1)
                    Response.Redirect("Products.aspx?id=" + eventId.ToString());                
            }
            catch (Exception ex)
            {
                ErrHandler.WriteError(ex.Message + " (InnerException: " + ex.InnerException + ")");
                //Response.Write(@"<script language='javascript'>alert('The following errors have occurred: \n" + ex.Message + " (" + ex.InnerException + ") .');</script>"); 
                //Console.WriteLine(ex.Message);
                //return;
            }
            finally
            {
                /*
                if (conn != null)
                {
                    conn.Closed();
                }
                 * */
            }
        }
    }

    private int createFund(string name,
            string email,
            string phone,
            string title,
            string cause,
            string logoPath,
            string photoPath,
            string video,
            string tagline,
            string body,
            string website,
            decimal goalNum,
            string endDateText,
            DateTime endDate,
            string state,
            string city,
            string paymentName,
            string paymentAddress)
    {
        SqlConnection conn = null;
        int eventId;

        try
        {
            // create and open a connection object
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["goodtwoDbConnectionString1"].ConnectionString);
            conn.Open();
            
            // 1.  create a command object identifying
            //     the stored procedure
            SqlCommand cmd = new SqlCommand("CharityEvent_Insert", conn);

            // 2. set the command object so it knows
            //    to execute a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // 5. grab session values
                          
            MembershipUser m = Membership.GetUser();
            Guid userId = (Guid)m.ProviderUserKey;
            DateTime now = DateTime.Now;

            // 4. add parameter to command, which
            //    will be passed to the stored procedure
            cmd.Parameters.Add(new SqlParameter("@Logo", logoPath));
            cmd.Parameters.Add(new SqlParameter("@Tagline", tagline));
            cmd.Parameters.Add(new SqlParameter("@Body", body));
            cmd.Parameters.Add(new SqlParameter("@Photo", photoPath));
            cmd.Parameters.Add(new SqlParameter("@Title", title));
            cmd.Parameters.Add(new SqlParameter("@City", city));
            cmd.Parameters.Add(new SqlParameter("@State", state));
            cmd.Parameters.Add(new SqlParameter("@WebSite", website));
            cmd.Parameters.Add(new SqlParameter("@Goal", goalNum));
            cmd.Parameters.Add(new SqlParameter("@EndDate", endDate));
            cmd.Parameters.Add(new SqlParameter("@UserId", userId));
            cmd.Parameters.Add(new SqlParameter("@UserName", name));
            cmd.Parameters.Add(new SqlParameter("@Email", email));
            cmd.Parameters.Add(new SqlParameter("@PhoneNumber", phone));
            cmd.Parameters.Add(new SqlParameter("@CauseName", cause));
            cmd.Parameters.Add(new SqlParameter("@Video", video));
            cmd.Parameters.Add(new SqlParameter("@PaymentName", paymentName));
            cmd.Parameters.Add(new SqlParameter("@PaymentAddress", paymentAddress));
            cmd.Parameters.Add(new SqlParameter("@EULATimeStamp", now));

            // execute the command
            eventId = Convert.ToInt32(cmd.ExecuteScalar());
            return eventId;
        }
        catch (Exception ex)
        {
            ErrHandler.WriteError(ex.Message + " (InnerException: " + ex.InnerException + ")");
            return -1;
        }
        finally
        {            
            if (conn != null)
            {
                conn.Close();
            }
        }
    }

    public override void Validate()
    {
        base.Validate();
    }
    
    protected void TaglineCustomDomValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string[] numOfWords = args.Value.Split(new char[] { ' ' });
        args.IsValid = numOfWords.Length <= 50;

    }

    protected void BodyCustomDomValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string[] numOfWords = args.Value.Split(new char[] { ' ' });
        args.IsValid = numOfWords.Length <= 250;
    }

    
   
}