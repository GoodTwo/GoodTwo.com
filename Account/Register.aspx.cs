using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebServices;

public partial class Account_Register : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        LoginHyperLink.NavigateUrl = "Login.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];

        if (Request.QueryString["PMC"] != null)
        {
            RegisterUserWizardStep.Controls[0].FindControl("PMCData").Visible = true;
            RegistrationWelcome.InnerHtml = "Welcome to the PMC GoodTwo sign-up page! Creating your GoodTwo campaign is simple. Just create an account log-in by filling in the information below. Then, fill in your profile (eGift) ID/PMC ID below the PMC logo (if it’s not already filled in for you). You’ll be brought directly to your fundraising page, where you can choose your deals and make any changes to your page by clicking the “EDIT PAGE” button.";

            if (Request.QueryString["egiftid"] != null)
            {
                if (!IsPostBack)
                {
                    ((TextBox)RegisterUserWizardStep.Controls[0].FindControl("PMCData").FindControl("EGIFTID")).Text = Request.QueryString["egiftid"];
                }
            }
        }
        else if (Request.QueryString["Jimmy"] != null)
        {
            RegisterUserWizardStep.Controls[0].FindControl("JimmyData").Visible = true;
            RegistrationWelcome.InnerHtml = "Welcome to the Boston Marathon® Jimmy Fund Walk GoodTwo sign-up page! Creating your GoodTwo campaign is simple. Just create an account log-in by filling in the information below. Then, <b>fill in your Walker ID</b> above the Jimmy Fund and Dana-Farber logos (if it’s not already filled in for you). You’ll be brought directly to your fundraising page. After filling out your information, you'll be able to choose your deals.";

            if (Request.QueryString["egiftid"] != null)
            {
                if (!IsPostBack)
                {
                    ((TextBox)RegisterUserWizardStep.Controls[0].FindControl("JimmyData").FindControl("JimmyEgiftID")).Text = Request.QueryString["egiftid"];
                }
            }
        }
        else if (Request.QueryString["event"] != null)
        {
            string strEvent = Request.QueryString["event"].ToString();

            string litText = "";
            string litBase = "<img alt=\"{0}\" src=\"{1}\" style=\"width: 180px\" />";

            if (string.Compare(strEvent, Constants.SchoolFundraisers, true) == 0)
            {
                RegisterUserWizardStep.Controls[0].FindControl("schoolFundraiserData").Visible = true;
                
                litText = string.Format(litBase, "School Fundraisers", "../Images/JSCFundraisingLogo.jpg");
                RegistrationWelcome.InnerHtml = "Welcome to the School Fundraisers GoodTwo sign-up page! Creating your GoodTwo campaign is simple. Just create an account log-in by filling in the information below. You’ll be brought directly to your fundraising page, where you can choose your deals and make any changes to your page by clicking the “EDIT PAGE” button.";

                ((Literal)RegisterUserWizardStep.Controls[0].FindControl("schoolFundraiserData").FindControl("litSchoolFundraiserLogo")).Text = litText;
            }
            else
            {
                RegisterUserWizardStep.Controls[0].FindControl("programData").Visible = true;
                
                if (string.Compare(strEvent, Constants.CCFATeamChallenge2011, true) == 0)
                {
                    litText = string.Format(litBase, "Crohn’s & Colitis Foundation", "../Images/CCFATeamChallenge2011logo.jpg");
                    RegistrationWelcome.InnerHtml = "Welcome to the Crohn's & Colitis Foundation's Team Challenge GoodTwo sign-up page! Creating your GoodTwo campaign is simple. Just create an account log-in by filling in the information below. You’ll be brought directly to your fundraising page, where you can choose your deals and make any changes to your page by clicking the “EDIT PAGE” button.";
                }
                else if (string.Compare(strEvent, Constants.ALABikeTrek2011, true) == 0)
                {
                    litText = string.Format(litBase, "American Lung Association", "../Images/ALABikeTrek2011Logo.jpg");
                    RegistrationWelcome.InnerHtml = "Welcome to the Autumn Escape Bike Trek GoodTwo sign-up page! Creating your GoodTwo campaign is simple. Just create an account log-in by filling in the information below. You’ll be brought directly to your fundraising page, where you can choose your deals and make any changes to your page by clicking the “EDIT PAGE” button.";
                }
                else if (string.Compare(strEvent, Constants.AmDiabStepOut2011, true) == 0)
                {
                    litText = string.Format(litBase, "American Diabetes Association", "../Images/ADAStepOut2011Logo.jpg");
                    RegistrationWelcome.InnerHtml = "Welcome to the ADA Step Out GoodTwo sign-up page! Creating your GoodTwo campaign is simple. Just create an account log-in by filling in the information below. You’ll be brought directly to your fundraising page, where you can choose your deals and make any changes to your page by clicking the “EDIT PAGE” button.";
                }


                ((Literal)RegisterUserWizardStep.Controls[0].FindControl("programData").FindControl("litProgramLogo")).Text = litText;
            }
        }
        else
        {
            RegistrationWelcome.InnerHtml = "Welcome to the GoodTwo sign-up page! Creating your GoodTwo campaign is simple. Just create an account log-in by filling in the information below. You’ll be brought directly to your fundraising page, where you can choose your deals and make any changes to your page by clicking the “EDIT PAGE” button.";
            //IsPMCRegistration.Value = "false";
        }

    }

    protected void RegisterUser_CreatedUser(object sender, EventArgs e)
    {
        FormsAuthentication.SetAuthCookie(RegisterUser.UserName, false /* createPersistentCookie */);
        if (Request.QueryString["PMC"] != null)
        {
            string eGiftId = ((TextBox)RegisterUserWizardStep.Controls[0].FindControl("PMCData").FindControl("EGIFTID")).Text;
            Administration admin = new Administration();
            CharityEvents Event = admin.GetEventByEgiftId(eGiftId);
            if (Event != null && Event.UserId == Guid.Empty)
            {
                Response.Redirect("EGIFTIDRegister.aspx?egiftid=" + eGiftId);
                return;
            }
        }
        else if (Request.QueryString["Jimmy"] != null)
        {
            string eGiftId = ((TextBox)RegisterUserWizardStep.Controls[0].FindControl("JimmyData").FindControl("JimmyEgiftID")).Text;
            Administration admin = new Administration();

            Response.Redirect("../Funds/EditFund.aspx?Jimmy=yes&egiftid=" + eGiftId);
            return;

        }
        else if (Request.QueryString["event"] != null)
        {
            string strEvent = Request.QueryString["event"].ToString();
            Response.Redirect("../Funds/EditFund.aspx?event=" + strEvent);
            return;
        }

        string continueUrl = RegisterUser.ContinueDestinationPageUrl;
        if (String.IsNullOrEmpty(continueUrl))
        {
            continueUrl = "~/";
        }
        Response.Redirect(continueUrl);
    }

    protected void EGIFTIDValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = true;
        if (Request.QueryString["PMC"] != null)
        {
            string eGiftId = ((TextBox)RegisterUserWizardStep.Controls[0].FindControl("PMCData").FindControl("EGIFTID")).Text;
            Administration admin = new Administration();
            CharityEvents Event = admin.GetEventByEgiftId(eGiftId);
            if (Event == null)
            {
                args.IsValid = false;
            }
        }
    }

    protected void EGIFTIDAvailableValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = true;
        if (Request.QueryString["PMC"] != null)
        {
            string eGiftId = ((TextBox)RegisterUserWizardStep.Controls[0].FindControl("PMCData").FindControl("EGIFTID")).Text;
            Administration admin = new Administration();
            CharityEvents Event = admin.GetEventByEgiftId(eGiftId);
            if ((Event != null) && (Event.UserId != Guid.Empty))
            {
                args.IsValid = false;
            }
        }
    }

    protected void JimmyFundIDAvailableValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = true;
        if (Request.QueryString["Jimmy"] != null)
        {
            string eGiftId = ((TextBox)RegisterUserWizardStep.Controls[0].FindControl("JimmyData").FindControl("JimmyEgiftID")).Text;
            if (!string.IsNullOrEmpty(eGiftId.Trim()))
            {
                Administration admin = new Administration();
                CharityEvents Event = admin.GetEventByEgiftId(eGiftId, "Jimmy");
                if (Event != null)
                {
                    args.IsValid = false;
                }
            }
        }
    }
}
