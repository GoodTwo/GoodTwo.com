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

    public string teamstyle;

    private string ProgramNameVariable
    {
        get
        {
            if (ViewState["ProgramName"] != null)
                return (string)ViewState["ProgramName"];
            else
                return null;

        }
        set
        {
            ViewState["ProgramName"] = value;
        }
    }

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

    protected void Page_Load(object sender, EventArgs e)
    {
        teamstyle = "display:none";
        if (!Page.IsPostBack)
        {
                    
            MembershipUser m = Membership.GetUser();
            Guid userid = (Guid)m.ProviderUserKey;
            //Populate the state selection list
            XmlTextReader xr = new XmlTextReader(MapPath("../RegionsXmlList.xml"));
            //bool firstSet = false;
            while (xr.Read())
            {
                if ((xr.NodeType == XmlNodeType.Element) && (xr.Name == "State"))
                {
                    StateList.Items.Add(new ListItem(xr.GetAttribute("Name"), xr.GetAttribute("Code")));
                }
            }
            SqlCommand cmd;
            int eventId = 0;
            if (Request.QueryString["Jimmy"] != null)
            {
                Administration admin = new Administration();
                CharityEvents Event = admin.GetEventByEgiftId(Request.QueryString["egiftid"], "Jimmy");
                if ((Event != null) && (Event.UserId != Guid.Empty))
                {
                    eventId = Event.CharityEventId;
                }
                else
                {
                    // CREATE A QUICK ENTRY ON THE FLY TO EDIT

                    // create and open a connection object
                    conn = new SqlConnection(ConfigurationManager.ConnectionStrings["goodtwoDbConnectionString1"].ConnectionString);
                    conn.Open();

                    // 1.  create a command object identifying
                    //     the stored procedure
                    cmd = new SqlCommand("CharityEvent_Insert", conn);

                    // 2. set the command object so it knows
                    //    to execute a stored procedure
                    cmd.CommandType = CommandType.StoredProcedure;

                    // 5. grab session values

                    DateTime now = DateTime.Now;

                    // 4. add parameter to command, which
                    //    will be passed to the stored procedure
                    cmd.Parameters.Add(new SqlParameter("@Logo", ""));
                    cmd.Parameters.Add(new SqlParameter("@Tagline", ""));
                    cmd.Parameters.Add(new SqlParameter("@Body", ""));
                    cmd.Parameters.Add(new SqlParameter("@Photo", ""));
                    cmd.Parameters.Add(new SqlParameter("@Title", ""));
                    cmd.Parameters.Add(new SqlParameter("@City", ""));
                    cmd.Parameters.Add(new SqlParameter("@State", ""));
                    cmd.Parameters.Add(new SqlParameter("@WebSite", ""));
                    cmd.Parameters.Add(new SqlParameter("@Goal", ""));
                    cmd.Parameters.Add(new SqlParameter("@EndDate", now));
                    cmd.Parameters.Add(new SqlParameter("@UserId", userid));
                    cmd.Parameters.Add(new SqlParameter("@UserName", ""));
                    cmd.Parameters.Add(new SqlParameter("@Email", ""));
                    cmd.Parameters.Add(new SqlParameter("@PhoneNumber", ""));
                    cmd.Parameters.Add(new SqlParameter("@CauseName", ""));
                    cmd.Parameters.Add(new SqlParameter("@Video", ""));
                    cmd.Parameters.Add(new SqlParameter("@PaymentName", ""));
                    cmd.Parameters.Add(new SqlParameter("@PaymentAddress", ""));
                    cmd.Parameters.Add(new SqlParameter("@EULATimeStamp", DBNull.Value));
                    cmd.Parameters.Add(new SqlParameter("@ProgramName", "Jimmy"));
                    cmd.Parameters.Add(new SqlParameter("@EGiftID", Request.QueryString["egiftid"]));

                    // execute the command
                    eventId = Convert.ToInt32(cmd.ExecuteScalar());
                }
            }
            else if (Request.QueryString["event"] != null)
            {
                // create and open a connection object
                conn = new SqlConnection(ConfigurationManager.ConnectionStrings["goodtwoDbConnectionString1"].ConnectionString);
                conn.Open();

                // 1.  create a command object identifying
                //     the stored procedure
                cmd = new SqlCommand("CharityEvent_Insert", conn);

                // 2. set the command object so it knows
                //    to execute a stored procedure
                cmd.CommandType = CommandType.StoredProcedure;

                // 5. grab session values

                DateTime now = DateTime.Now;

                // 4. add parameter to command, which
                //    will be passed to the stored procedure
                cmd.Parameters.Add(new SqlParameter("@Logo", ""));
                cmd.Parameters.Add(new SqlParameter("@Tagline", ""));
                cmd.Parameters.Add(new SqlParameter("@Body", ""));
                cmd.Parameters.Add(new SqlParameter("@Photo", ""));
                cmd.Parameters.Add(new SqlParameter("@Title", ""));
                cmd.Parameters.Add(new SqlParameter("@City", ""));
                cmd.Parameters.Add(new SqlParameter("@State", ""));
                cmd.Parameters.Add(new SqlParameter("@WebSite", ""));
                cmd.Parameters.Add(new SqlParameter("@Goal", ""));
                cmd.Parameters.Add(new SqlParameter("@EndDate", now));
                cmd.Parameters.Add(new SqlParameter("@UserId", userid));
                cmd.Parameters.Add(new SqlParameter("@UserName", ""));
                cmd.Parameters.Add(new SqlParameter("@Email", ""));
                cmd.Parameters.Add(new SqlParameter("@PhoneNumber", ""));
                cmd.Parameters.Add(new SqlParameter("@CauseName", ""));
                cmd.Parameters.Add(new SqlParameter("@Video", ""));
                cmd.Parameters.Add(new SqlParameter("@PaymentName", ""));
                cmd.Parameters.Add(new SqlParameter("@PaymentAddress", ""));
                cmd.Parameters.Add(new SqlParameter("@EULATimeStamp", DBNull.Value));
                cmd.Parameters.Add(new SqlParameter("@ProgramName", Request.QueryString["event"]));
                cmd.Parameters.Add(new SqlParameter("@EGiftID", ""));

                // execute the command
                eventId = Convert.ToInt32(cmd.ExecuteScalar());
            }
            else
            {
                //Find the correct event from the passed eventId
                var query = Request.QueryString["id"];
                if ((query == null) || (!int.TryParse(query, out eventId)))
                {
                    Response.Redirect("~/index.aspx", true);
                }
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
            cmd = new SqlCommand("CharityEvent_GetCharityEvent", conn);

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

            FundDefaultsHandler handler = new FundDefaultsHandler(rdr);

            EditFundMessage.InnerHtml = handler.EditFundMessage;

            handler.set_BodyTextBox(BodyLabel, BodyTextBox);
            
            handler.set_CauseNameTextBox(CauseNameLabel, CauseNameExampleLabel, CauseNameTextBox);
            handler.set_TeamNameEditControls(txtTeamName, lblTeamName);
            handler.set_CityTextBox(CityLabel, CityTextBox);
            handler.set_EmailTextBox(EmailTextBoxLabel, EmailTextBox);
            handler.set_EndDateTextBox(EndDateLabel, EndDateTextBox);
            handler.set_GoalTextBox(GoalLabel, GoalTextBox);
            handler.set_WebSiteTextBox(WebSiteLabel, WebSiteTextBox);
            handler.set_HtmlVideoTextBox(HtmlVideoLabel, HtmlVideoTextBox);
            handler.set_NameTextBox(NameTextBoxLabel, NameTextBox);
            handler.set_PaymentAddressTextBox(PaymentAddressLabel, PaymentAddressTextBox);
            handler.set_PaymentNameTextBox(PaymentNameLabel, PaymentNameTextBox);
            handler.set_PhoneTextBox(PhoneTextBoxLabel, PhoneTextBox);
            handler.set_StateList(StateLabel, StateList);
            handler.set_TaglineTextBox(TaglineLabel, TaglineTextBox);
            
            handler.set_TitleTextBox(TitleLabel, TitleExampleLabel, TitleTextBox);
            handler.set_LogoUpload(LogoLabel, LogoUpload);
            handler.set_PhotoUploadLabel(PhotoUploadLabel);
            handler.BuildCssLocation(((GoodTwo.Site)Master).CSSLink);

            litSchoolFundraiserLogo.Text = handler.LiteralLogoText;

            if (txtTeamName.Visible)
            {
                teamstyle = "height: 49px";
            }

            logoPathVariable = handler.logoPathVariable;
            photoPathVariable = handler.photoPathVariable;
            ProgramNameVariable = handler.ProgramName;
        }
        else
        {
            //Response.Write(Request.Form[CityHiddenField.Value]);
            Page.Validate();
        }
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

            string teamName = "";
            if (txtTeamName.Visible) { teamName = txtTeamName.Text; }

            string logoPath = null;
            string photoPath = null; 
            //string video = VideoTextBox.Text;
            string video = HtmlVideoTextBox.Text;
            string tagline = TaglineTextBox.Text;
            string body = FundDefaultsHandler.ReplaceNewLineWithBr(BodyTextBox.Text);
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
                cmd.Parameters.Add(new SqlParameter("@TeamName", teamName));
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
                cmd.Parameters.Add(new SqlParameter("@ProgramName", ProgramNameVariable));
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
        
        
        //Page.ClientScript.RegisterHiddenField("CityHiddenField","Portland");
        //Page.ClientScript.RegisterHiddenField(CityHiddenField.Value, "Hartford");
        //Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "Boston");
        //Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "Hartford");
        //Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "Providence");
        //Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "Washington");
        //Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "Los Angeles");
        //Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "Chicago");
        //Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "New York");
        //Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "Miami");
        //Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "Providence");
        //Page.ClientScript.RegisterForEventValidation(CityHiddenField.Value, "Burlington");
        
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