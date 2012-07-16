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
public partial class Funds_EditFund : System.Web.UI.Page
{
    SqlConnection conn = null;
    SqlDataReader rdr = null;
    private string logoPathVariable
    {
        get
        {
            if (ViewState["Logo"] != null)
                return (string)ViewState["Logo"];
            else
                return null;

        }
        set
        {
            ViewState["Logo"] = value;
        }
    }
    private string photoPathVariable
    {
        get
        {
            if (ViewState["Photo"] != null)
                return (string)ViewState["Photo"];
            else
                return null;

        }
        set
        {
            ViewState["Photo"] = value;
        }
    
    }
    public string Strip(string text)
    {
        return Regex.Replace(text, @"<(.|\n)*?>", string.Empty).Replace("&nbsp;", "");
    }
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
    public string ReplaceBrWithNewLine(string s)
    {
        return s.Replace("<br />", Environment.NewLine).Replace("<br/>", Environment.NewLine).Replace("<br>", Environment.NewLine).Replace("<BR />", Environment.NewLine).Replace("<BR>", Environment.NewLine).Replace("<BR/>", Environment.NewLine);
    }
    public string ReplaceNewLineWithBr(string s)
    {
        return s.Replace(Environment.NewLine, "<br />");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (!Page.IsPostBack)
        {
                    
            MembershipUser m = Membership.GetUser();
            Guid userid = (Guid)m.ProviderUserKey;
            //Populate the state selection list
            XmlTextReader xr = new XmlTextReader(MapPath("../RegionsXmlList.xml"));
            bool firstSet = false;
            while (xr.Read())
            {
                if ((xr.NodeType == XmlNodeType.Element) && (xr.Name == "State"))
                {
                    StateList.Items.Add(new ListItem(xr.GetAttribute("Name"), xr.GetAttribute("Code")));
                    if (!firstSet)
                    {
                        firstSet = true;
                        while ((xr.Read()) && (!((xr.NodeType == XmlNodeType.EndElement) && (xr.Name == "State"))))
                        {
                            if ((xr.NodeType == XmlNodeType.Element) && (xr.Name == "City"))
                            {
                                CityList.Items.Add(new ListItem(xr.GetAttribute("Name"), xr.GetAttribute("Code")));
                            }
                        }
                    }
                }
            }
            
            
           
            int eventId = 0;

            //Find the correct event from the passed eventId
            var query = Request.QueryString["id"];
            if ((query == null) || (!int.TryParse(query, out eventId)))
            {
                Response.Redirect("~/index.aspx", true);
            }
            eventID = eventId;
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
            NameTextBox.Text = (string)rdr["UserName"];
            EmailTextBox.Text = (string)rdr["Email"];
            PhoneTextBox.Text = (string)rdr["PhoneNumber"];
            TitleTextBox.Text = (string)rdr["Title"];
            TaglineTextBox.Text = (string)rdr["TagLine"];
            CauseNameTextBox.Text = (string)rdr["CauseName"];
            BodyTextBox.Text = Strip(ReplaceBrWithNewLine((string)rdr["Body"]));
            if ((rdr["WebSite"] != null) && !(rdr["WebSite"] is DBNull))
                WebSiteTextBox.Text = (string)rdr["Website"];
            else
                WebSiteTextBox.Text = "";
            GoalTextBox.Text = ((Decimal)rdr["Goal"]).ToString("#0.00");

            PaymentNameTextBox.Text = (string)rdr["PaymentName"];
            PaymentAddressTextBox.Text = (string)rdr["PaymentAddress"];
            if ((rdr["Video"] != null) && !(rdr["Video"] is DBNull))
                VideoTextBox.Text = (string)rdr["Video"];
            else
                VideoTextBox.Text = "";

            
            switch((string)rdr["State"])
            {
                case "MA":
                    StateList.SelectedIndex = 0;
                    setCity("MA");
                    break;

                case "CT":
                    StateList.SelectedIndex = 1;
                    setCity("CT");
                    break;

                case "RI":
                    StateList.SelectedIndex = 2;
                    setCity("RI");
                    break;

                case "VT":
                    StateList.SelectedIndex = 3;
                    setCity("VT");
                    break;

                case "ME":
                    StateList.SelectedIndex = 4;
                    setCity("ME");
                    break;

                case "DC":
                    StateList.SelectedIndex = 5;
                    setCity("DC");
                    break;

                case "FL":
                    StateList.SelectedIndex = 6;
                    setCity("FL");
                    break;

                case "NY":
                    StateList.SelectedIndex = 7;
                    setCity("NY");
                    break;

                case "IL":
                    StateList.SelectedIndex = 8;
                    setCity("IL");
                    break;

                case "CA":
                    StateList.SelectedIndex = 9;
                    setCity("CA");
                    break;
            }
            StateList.SelectedValue = String.Empty;
            
            //CityList.SelectedValue = (string)rdr["City"];
            CityHiddenField.Value = (string)rdr["City"];
            EndDateTextBox.Text = ((DateTime)rdr["EndDate"]).ToString("MM/dd/yyyy");

            logoPathVariable = (string)rdr["Logo"];
            photoPathVariable = (string)rdr["Photo"];
        }
        else
        {
            Response.Write(Request.Form[CityHiddenField.Value]);
            Page.Validate();
        }
    }


    protected void StateList_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Get selected state
        string state = StateList.SelectedValue;

        XmlDataSource cityDataSource = new XmlDataSource();
        cityDataSource.ID = "citySource";
        cityDataSource.DataFile = MapPath("../RegionsXmlList.xml");
        cityDataSource.XPath = "RegionList/StateList/State[@Code='" + state + "']/CityList/City";
        CityList.DataSource = cityDataSource;
        CityList.DataBind();
    }

    private void setCity(string value)
    {
        string state = value;

        XmlDataSource cityDataSource = new XmlDataSource();
        cityDataSource.ID = "citySource";
        cityDataSource.DataFile = MapPath("../RegionsXmlList.xml");
        cityDataSource.XPath = "RegionList/StateList/State[@Code='" + state + "']/CityList/City";
        CityList.DataSource = cityDataSource;
        CityList.DataBind();
    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
       

        if (Page.IsValid)
        {

            string name = NameTextBox.Text;
            string email = EmailTextBox.Text;
            string phone = PhoneTextBox.Text;
            string title = TitleTextBox.Text;
            string cause = CauseNameTextBox.Text;
            string logoPath = null;
            string photoPath = null; 
            string video = VideoTextBox.Text;
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
            //string city = CityList.SelectedItem.Text;
            string city = CityHiddenField.Value;
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
                        Response.Write(@"<script language='javascript'>alert('The following errors have occurred: \n" + ex.Message + " (" + ex.InnerException + ") .');</script>");
                        ErrHandler.WriteError(ex.Message + " (InnerException: " + ex.InnerException + ")");
                        return;
                    }

                }
                else
                {
                    logoPath = logoPathVariable;
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
                        Response.Write(@"<script language='javascript'>alert('The following errors have occurred: \n" + ex.Message + " (" + ex.InnerException + ") .');</script>");
                        ErrHandler.WriteError(ex.Message + " (InnerException: " + ex.InnerException + ")");
                        return;
                    }
                }
                else
                {
                    photoPath = photoPathVariable;
                }

                // create and open a connection object
                conn = new SqlConnection(ConfigurationManager.ConnectionStrings["goodtwoDbConnectionString1"].ConnectionString);
                conn.Open();

                // 1.  create a command object identifying
                //     the stored procedure
                SqlCommand cmd = new SqlCommand("CharityEvent_UpdateCharity", conn);

                // 2. set the command object so it knows
                //    to execute a stored procedure
                cmd.CommandType = CommandType.StoredProcedure;

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
                cmd.Parameters.Add(new SqlParameter("@UserId", (Guid)m.ProviderUserKey));
                cmd.Parameters.Add(new SqlParameter("@UserName", name));
                cmd.Parameters.Add(new SqlParameter("@Email", email));
                cmd.Parameters.Add(new SqlParameter("@PhoneNumber", phone));
                cmd.Parameters.Add(new SqlParameter("@CauseName", cause));
                cmd.Parameters.Add(new SqlParameter("@Video", video));
                cmd.Parameters.Add(new SqlParameter("@PaymentName", paymentName));
                cmd.Parameters.Add(new SqlParameter("@PaymentAddress", paymentAddress));
                cmd.Parameters.Add(new SqlParameter("@CharityEventId", eventID));
                Administration admin = new Administration();
                CharityEvents incEvent = admin.GetEventById(eventID);

                if (incEvent.EULATimeStamp.HasValue)
                {
                    cmd.Parameters.Add(new SqlParameter("@EULATimeStamp", incEvent.EULATimeStamp.Value));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@EULATimeStamp", DBNull.Value));
                }
                cmd.Parameters.Add(new SqlParameter("@egiftId", incEvent.egiftid));
                // execute the command
                cmd.ExecuteScalar();
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
                if (conn != null)
                {
                    conn.Close();
                }
            }
            //Redirect to update landing page
            Administration administration = new Administration();
            CharityEvents Event = administration.GetEventById(eventID);
            if (Event.EULATimeStamp.HasValue)
            {
                Response.Redirect("EditProducts.aspx?id=" + eventID, false);
            }
            else
            {
                Response.Redirect("Products.aspx?id=" + eventID, false);
            }
        }
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

    protected override void Render(System.Web.UI.HtmlTextWriter writer)
    {
        
        
        Page.ClientScript.RegisterHiddenField("CityHiddenField","Portland");
        Page.ClientScript.RegisterHiddenField(CityHiddenField.Value, "Hartford");
        Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "Boston");
        Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "Hartford");
        Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "Providence");
        Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "Washington");
        Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "Los Angeles");
        Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "Chicago");
        Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "New York");
        Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "Miami");
        Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "Providence");
        Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "Burlington");
        
        //Page.ClientScript.RegisterForEventValidation("CityList");
      
        
        this.Page.ClientScript.RegisterForEventValidation(StateList.SelectedValue, "MA");
        this.Page.ClientScript.RegisterForEventValidation(StateList.SelectedValue, "CT");
        this.Page.ClientScript.RegisterForEventValidation(StateList.SelectedValue, "RI");
        this.Page.ClientScript.RegisterForEventValidation(StateList.SelectedValue, "VT");
        this.Page.ClientScript.RegisterForEventValidation(StateList.SelectedValue, "ME");
        this.Page.ClientScript.RegisterForEventValidation(StateList.SelectedValue, "DC");
        this.Page.ClientScript.RegisterForEventValidation(StateList.SelectedValue, "FL");
        this.Page.ClientScript.RegisterForEventValidation(StateList.SelectedValue, "NY");
        this.Page.ClientScript.RegisterForEventValidation(StateList.SelectedValue, "IL");
        this.Page.ClientScript.RegisterForEventValidation(StateList.SelectedValue, "LA");
        base.Render(writer);
    } 
}