using System;
using System.Configuration;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;


/*
 * Although these object referenced here are currently within the scope of the page, the object has been 
 * written in this way so that it can be moved to a business logic library in future revisions.
 */

public enum Programs
{
    Default,
    PMC,
    Jimmy,
    AmericanLungAssociationAutumnEscapeBikeTrek2011,
    AmericanDiabetesAssociationTheBostonStepOut2011,
    CCFATeamChallenge2011,
    SchoolFundraisers,
    Political_DanWinslow,
}

public class FundDefaultsHandler
{
    private SqlDataReader rdr;
    private bool firstTime;
    private Programs program;
    private string eGiftId;

    public FundDefaultsHandler(SqlDataReader reader)
    {
        rdr = reader;

        DateTime tempTimeStamp;
        firstTime = true;
        eGiftId = "";

        if (rdr["EULATimeStamp"] != null && DateTime.TryParse(rdr["EULATimeStamp"].ToString(), out tempTimeStamp)) { firstTime = false; }

        // Determine Special Case Programs

        if ((rdr["egiftid"] != null) && (rdr["egiftid"] != DBNull.Value) && (!String.IsNullOrEmpty((String)rdr["egiftid"])))
        {
            // Default 
            program = Programs.PMC;
            eGiftId = rdr["egiftid"].ToString();

            if (rdr["ProgramName"] != null)
            {
                if (rdr["ProgramName"] != DBNull.Value)
                {
                    if (!string.IsNullOrEmpty(rdr["ProgramName"].ToString()))
                    {
                        switch (rdr["ProgramName"].ToString().ToUpperInvariant())
                        {
                            case "JIMMY":
                                program = Programs.Jimmy;
                                break;
                            default:
                                program = Programs.Default;
                                break;
                        }
                    }
                }
            }
        }
        else if ((rdr["programName"] != null) && (rdr["programName"] != DBNull.Value) && (!String.IsNullOrEmpty((String)rdr["programName"])))
        {
            String ProgramName = rdr["ProgramName"].ToString();

                if(String.Compare(ProgramName, Constants.ALABikeTrek2011, true) == 0)
                {
                    program = Programs.AmericanLungAssociationAutumnEscapeBikeTrek2011;
                }
                else if(String.Compare(ProgramName,  Constants.AmDiabStepOut2011, true) == 0)
                {
                    program = Programs.AmericanDiabetesAssociationTheBostonStepOut2011;
                }
                else if (String.Compare(ProgramName, Constants.CCFATeamChallenge2011, true) == 0)
                {
                    program = Programs.CCFATeamChallenge2011;
                }
                else if (String.Compare(ProgramName, Constants.SchoolFundraisers, true) == 0)
                {
                    program = Programs.SchoolFundraisers;
                }
                else if (String.Compare(ProgramName, Constants.Political_DanWinslow, true) == 0)
                {
                    program = Programs.Political_DanWinslow;
                }
                else
                {
                    program = Programs.Default;
                }
            
        }
        else
        {
            program = Programs.Default;
        }
    }
    public void BuildCssLocation(System.Web.UI.HtmlControls.HtmlLink link)
    {
        switch (program)
        {
            case Programs.CCFATeamChallenge2011:
                link.Href = "~/Styles/CCFATeamChallenge2011/sitewide.css";
                break;
            default:
                link.Href = "~/Styles/sitewide.css";
                break;
        }
    }
    public string ProgramName
    {
        get
        {
            switch (program)
            {
                case Programs.Jimmy:
                    return "Jimmy";
                case Programs.AmericanLungAssociationAutumnEscapeBikeTrek2011:
                    return Constants.ALABikeTrek2011;
                case Programs.AmericanDiabetesAssociationTheBostonStepOut2011:
                    return Constants.AmDiabStepOut2011;
                case Programs.CCFATeamChallenge2011:
                    return Constants.CCFATeamChallenge2011;
                case Programs.SchoolFundraisers:
                    return Constants.SchoolFundraisers;
                case Programs.Political_DanWinslow:
                    return Constants.Political_DanWinslow;
                default:
                    return "";
            }
        }
    }

    public string EditFundMessage
    {
        get
        {
            switch (program)
            {
                case Programs.PMC:
                    return (firstTime ?
                        "We’ve pulled information from your PMC Fundraising page to your GoodTwo page in the fields below. Please fill in any fields that are required (*) and empty at this time. Please note that you do not need to upload a logo, photo or video unless you want to make changes. Payments will be sent directly to the PMC offices and credited to your fundraising account by PMC ID."
                        :
                        "Please fill in any fields that are required (*) and empty at this time. Please note that you do not need to upload a logo, photo or video unless you want to make changes. Payments will be sent directly to the PMC offices and credited to your fundraising account by PMC ID."
                        );
                case Programs.Jimmy:
                    return (firstTime ?
                        "Please fill in any fields that are required (*) and empty at this time. Please note that you are not required to upload a photo or video."
                        :
                        "Please fill in any fields that are required (*) and empty at this time. Please note that you do not need to upload a photo or video unless you want to make changes."
                        );
                default:
                    return "Please fill in any fields that are required (*) and empty at this time. Please note that you do not need to upload a logo, photo or video unless you want to make changes.";
            }
        }
    }

    public void set_NameTextBox(Label lbl, TextBox ctrl)
    {
        ctrl.Text = (string)rdr["UserName"];
        ctrl.Enabled = true;
        lbl.Text = "Your Name:";
    }

    public void set_EmailTextBox(Label lbl, TextBox ctrl)
    {
        ctrl.Text = (string)rdr["Email"];
        ctrl.Enabled = true;
        lbl.Text = "Email:";
    }

    public void set_PhoneTextBox(Label lbl, TextBox ctrl)
    {
        ctrl.Text = (string)rdr["PhoneNumber"];
        ctrl.Enabled = true;
        lbl.Text = "Phone Number:";
    }

    public void set_TitleTextBox(Label lbl,  Label exampleLbl, TextBox ctrl)
    {
        ctrl.Text = (string)rdr["Title"];
        ctrl.Enabled = true;
        lbl.Text = "Fundraiser Title:";
        exampleLbl.Text = "(ex.: &quot;John's Marathon Fundraiser&quot;)";
        switch (program)
        {
            case Programs.SchoolFundraisers:
                lbl.Text = "Name Your Fundraiser:";
                exampleLbl.Text = "(ex.: &quot;JFK School's Playground Fundraiser&quot;)";
                break;
        }
    }

    public void set_TaglineTextBox(Label lbl, TextBox ctrl)
    {
        lbl.Text = "Short Description of Your Cause:";
        
        switch (program)
        {
            case Programs.Jimmy:
                ctrl.Text = "The Boston Marathon® Jimmy Fund Walk is a one-day event that unites thousands of walkers, volunteers, and sponsors for one mission: raising funds to help Dana-Farber Cancer Institute conquer all forms of cancer.";
                ctrl.Enabled = false;
                lbl.Text = "About the Cause";
                break;
            case Programs.AmericanLungAssociationAutumnEscapeBikeTrek2011:
                ctrl.Text = "The mission of the American Lung Association is to save lives by improving lung health and preventing lung disease and we do that through education, research and advocacy.";
                ctrl.Enabled = false;
                break;
            case Programs.AmericanDiabetesAssociationTheBostonStepOut2011:
                ctrl.Text = "The Boston Step Out: Walk to Stop Diabetes, which will be held on October 22nd at the Boston Common, is one of the American Diabetes Association’s largest signature events. Proceeds from this event will assist the American Diabetes Association in achieving its mission: to prevent and cure diabetes and to improve the lives of all people affected by diabetes.";
                ctrl.Enabled = false;
                break;
            case Programs.CCFATeamChallenge2011:
                ctrl.Text = "Team Challenge is the Crohn’s & Colitis Foundation’s half marathon training and fundraising program that prepares participants of all abilities to run or walk 13.1 miles while helping to find a cure for Crohn’s disease and ulcerative colitis, two chronic and often debilitating digestive diseases that impact 1.4 million Americans.";
                ctrl.Enabled = false;
                break;
            case Programs.SchoolFundraisers:
                ctrl.Text = (string)rdr["TagLine"];
                ctrl.Enabled = true;
                lbl.Text = "Mission Statement of School or Group:";                
                break;
            default:
                ctrl.Text = (string)rdr["TagLine"];
                ctrl.Enabled = true;
                break;
        }
    }

    

    public void set_CauseNameTextBox(Label lbl, Label exampleLbl, TextBox ctrl)
    {
        lbl.Text = "Cause Name:";
        exampleLbl.Text = "(ex.: &quot;Leukemia &amp; Lymphoma Society&quot;)";
        switch (program)
        {
            case Programs.Jimmy:
                ctrl.Text = "Boston Marathon® Jimmy Fund Walk";
                ctrl.Enabled = false;
                break;
            case Programs.AmericanLungAssociationAutumnEscapeBikeTrek2011:
                ctrl.Text = "American Lung Association Autumn Escape Bike Trek";
                ctrl.Enabled = false;
                break;
            case Programs.AmericanDiabetesAssociationTheBostonStepOut2011:
                ctrl.Text = "The Boston Step Out: Walk to Stop Diabetes";
                ctrl.Enabled = false;
                break;
            case Programs.CCFATeamChallenge2011:
                ctrl.Text = "Team Challenge New England";
                ctrl.Enabled = false;
                
                break;
            case Programs.SchoolFundraisers:
                ctrl.Text = (string)rdr["CauseName"];
                ctrl.Enabled = true;
                lbl.Text = "School or Group Name:";
                exampleLbl.Text = "(ex.: &quot;JFK Elementary PTO&quot;)";
                break;
            default:
                ctrl.Text = (string)rdr["CauseName"];
                ctrl.Enabled = true;
                break;
        }
    }

    public void set_BodyTextBox(Label lbl, TextBox ctrl)
    {
        // Body text is user-editable by default. Override this setting in individual cases below if necessary.
        ctrl.Enabled = true;
        bool bodyEmpty = (rdr["Body"] == null || rdr["Body"].ToString().Trim() == "");
        lbl.Text = "Detailed Description of Your Cause:";
        switch (program)
        {
            case Programs.Jimmy:
                ctrl.Text = bodyEmpty ? 
                    "On Sept. 18, 2011, I will be walking in the 23rd annual Boston Marathon® Jimmy Fund Walk. The Walk benefits Dana-Farber Cancer Institute and its mission to conquer all forms of cancer. Every dollar I raise is another step along the road to help Dana-Farber provide expert patient care to children and adults and enable groundbreaking discoveries that will change the lives of thousands of cancer patients around the globe. Please support my efforts by giving generously and help the Jimmy Fund Walk reach the ultimate finish line: a world without cancer." :
                    Strip(ReplaceBrWithNewLine((string)rdr["Body"]));
                lbl.Text = "Why You're Walking";
                break;

            case Programs.AmericanLungAssociationAutumnEscapeBikeTrek2011:
                ctrl.Text = bodyEmpty ? 
                    "This fall, I will join other cyclists and the American Lung Association in a journey across Cape Cod while raising money to fight lung disease and increase awareness about the importance of lung health. Lung disease can take someone's breath away, leaving them unable to work, exercise or play. Growing faster than almost any other major illness, lung disease, including lung cancer, asthma and emphysema is the third leading cause of the death in the United States. Please join me in my efforts to make a difference by making a personal or corporate tax-deductible donation. Thank you in advance for your support!" :
                    Strip(ReplaceBrWithNewLine((string)rdr["Body"]));
                break;

            case Programs.AmericanDiabetesAssociationTheBostonStepOut2011:
                ctrl.Text = bodyEmpty ? 
                    "The Boston Step Out: Walk to Stop Diabetes is part of the American Diabetes Association’s movement to Stop Diabetes® and is one of the 135 signature one-day, fundraising and awareness walks taking place around the country this year.  The Boston walk will be held on October 22, 2011 at Boston Common and is a day filled with fun, inspiration and celebration. The money raised through Step Out will help fund research to prevent, cure and manage diabetes; deliver services to hundreds of communities; provide objective and credible information; and give voice to those denied their rights because of diabetes." :
                    Strip(ReplaceBrWithNewLine((string)rdr["Body"]));
                break;
            case Programs.CCFATeamChallenge2011:
                ctrl.Text = bodyEmpty ? 
                    "As you may know, I’ve been training to complete a half marathon (yes, 13.1 miles!), while raising critical funds for the Crohn’s and Colitis Foundation of America (www.CCFA.org). Crohn’s disease and ulcerative colitis are chronic, painful and often debilitating digestive disorders. CCFA’s mission is to find a cure for these diseases and improve the quality of life of the 1.5 million American adults and children who suffer everyday. Together, we can make a difference! As a Team Challenge participant, I have a coach, a training program and teammates to support me. I AM MOTIVATED! I AM COMMITTED!! I WILL DO IT!!! But I can’t do it alone – I need your help! And what better way to help me, then to get a deal for yourself?  For every deal you purchase, 25% of what you pay will directly support my effort to help find a cure.  Not interested in the deal, but want to donate?  Click on the link below to be directed to my fundraising website. Thanks for your support!" :
                    Strip(ReplaceBrWithNewLine((string)rdr["Body"]));
                break;
            case Programs.SchoolFundraisers:
                lbl.Text = "What are you raising money for and why?:";
                ctrl.Text = Strip(ReplaceBrWithNewLine((string)rdr["Body"]));
                break;
            default:
                ctrl.Text = Strip(ReplaceBrWithNewLine((string)rdr["Body"]));
                break;
        }
    }


    public void set_PaymentNameTextBox(Label lbl, TextBox ctrl)
    {
        lbl.Text = "Payment Name:";
        switch (program)
        {
            case Programs.Jimmy:
                ctrl.Text = "Boston Marathon® Jimmy Fund Walk"; // Since this hasn't been prepopulated, we need to default it.
                ctrl.Enabled = false;
                break;

            case Programs.AmericanLungAssociationAutumnEscapeBikeTrek2011:
                ctrl.Text = "American Lung Association of New England";
                ctrl.Enabled = false;
                break;

            case Programs.AmericanDiabetesAssociationTheBostonStepOut2011:
                ctrl.Text = "American Diabetes Association";
                ctrl.Enabled = false;
                break;
            case Programs.CCFATeamChallenge2011:
                ctrl.Text = "CCFA New England";
                ctrl.Enabled = false;
                break;
            default:
                ctrl.Text = rdr["PaymentName"].ToString();
                ctrl.Enabled = true;
                break;
        }
    }

    public void set_PaymentAddressTextBox(Label lbl, TextBox ctrl)
    {
        lbl.Text = "Payment Address:";
        switch (program)
        {
            case Programs.Jimmy:
                ctrl.Text = "Jimmy Fund Walk 10 Brookline Place West, 6th Fl Brookline, MA 02445"; // Since this hasn't been prepopulated, we need to default it.
                ctrl.Enabled = false;
                break;

            case Programs.AmericanLungAssociationAutumnEscapeBikeTrek2011:
                ctrl.Text = "Attn: Autumn Escape Bike Trek 460 Totten Pond Road Suite 400 Waltham, MA 02451";
                ctrl.Enabled = false;
                break;

            case Programs.AmericanDiabetesAssociationTheBostonStepOut2011:
                ctrl.Text = "American Diabetes Association 330 Congress Street, 5th Floor Boston, MA 02210";
                ctrl.Enabled = false;
                break;
            case Programs.CCFATeamChallenge2011:
                ctrl.Text = "CCFA New England, 280 Hillside Ave., Needham, MA 02294";
                ctrl.Enabled = false;
                break;
            default:
                ctrl.Text = rdr["PaymentAddress"].ToString();
                ctrl.Enabled = true;
                break;
        }
    }

    public void set_TeamNameEditControls(TextBox txt, Label lbl)
    {
        switch (program)
        {
            case Programs.AmericanDiabetesAssociationTheBostonStepOut2011:
                bool teamEmpty = (rdr["TeamName"] == null || rdr["TeamName"].ToString().Trim() == "");
                txt.Text = teamEmpty ? "" : rdr["TeamName"].ToString();
                txt.Enabled = true;
                txt.Visible = true;

                lbl.Visible = true;
                lbl.Text = "Team Name:";
                break;

            default:
                txt.Text = "";
                txt.Visible = false;
                lbl.Text = "";
                lbl.Visible = false;
                break;
        }
    }

    public void set_TeamNameDisplayControls(Label lbl, Label data)
    {
        bool teamEmpty = (rdr["TeamName"] == null || rdr["TeamName"].ToString().Trim() == "");

        switch (program)
        {
            case Programs.AmericanDiabetesAssociationTheBostonStepOut2011:
                if (teamEmpty)
                {
                    data.Text = "";
                    data.Visible = true;
                    lbl.Text = "";
                    lbl.Visible = true;
                }
                else
                {
                    data.Text = rdr["TeamName"].ToString();
                    data.Visible = true;
                    lbl.Text = "Team Name";
                    lbl.Visible = true;
                }
                break;

            default:
                data.Text = "";
                data.Visible = true;
                lbl.Text = "";
                lbl.Visible = true;
                break;
        }
    }


    public void set_WebSiteTextBox(Label lbl, TextBox ctrl)
    {
        lbl.Text = "Website:";
        ctrl.Text = "";
        if ((rdr["WebSite"] != null) && !(rdr["WebSite"] is DBNull))
        {
            ctrl.Text = (string)rdr["Website"];
            if (ctrl.Text == "" && program == Programs.Jimmy)
            {
                ctrl.Text = "http://www.jimmyfundwalk.org/faf/donorReg/donorPledge.asp?ievent=449987&lis=1&kntae449987=C1AE08D1B45F49B7B1A7537C66F1D5E5&supId=" + eGiftId;
            }
        }
        ctrl.Enabled = true;
    }

    public void set_HtmlVideoTextBox(Label lbl, GoodtwoCustomControls.HtmlTextBox ctrl)
    {
        lbl.Text = "Video:";
        ctrl.Text = "";
        switch (program)
        {
            case Programs.CCFATeamChallenge2011:
                ctrl.Text = "<iframe width=\"560\" height=\"349\" src=\"http://www.youtube.com/embed/Wagn-IxAlD8\" frameborder=\"0\" allowfullscreen></iframe>";
                break;
            default:
                if ((rdr["Video"] != null) && !(rdr["Video"] is DBNull))
                {
                    ctrl.Text = (string)rdr["Video"];
                }
                break;
        }
       
        ctrl.Enabled = true;
    }

    public void set_StateList(Label lbl, DropDownList ctrl)
    {
        lbl.Text = "State:";
        ctrl.SelectedValue = (string)rdr["State"];
        ctrl.Enabled = true;
    }

    public void set_GoalTextBox(Label lbl, TextBox ctrl)
    {
        lbl.Text = "Goal: $";
        Decimal tmp;
        if (Decimal.TryParse(rdr["Goal"].ToString(), out tmp))
        {
            ctrl.Text = tmp.ToString("#0.00");
        }
        ctrl.Enabled = true;
    }

    public void set_CityTextBox(Label lbl, TextBox ctrl)
    {
        lbl.Text = "Nearest City:";
        ctrl.Text = (string)rdr["City"];
        ctrl.Enabled = true;
    }

    public void set_EndDateTextBox(Label lbl, TextBox ctrl)
    {
        lbl.Text = "Deal End Date:";
        DateTime tmp;
        if (rdr["EndDate"] != null && DateTime.TryParse(rdr["EndDate"].ToString(), out tmp))
        {
            ctrl.Text = tmp.ToString("MM/dd/yyyy");
        }
        ctrl.Enabled = true;
    }

    public void set_LogoUpload(Label lbl, FileUpload ctrl)
    {
        lbl.Text = "Logo:";
        switch (program)
        {
            case Programs.Jimmy:
            case Programs.AmericanLungAssociationAutumnEscapeBikeTrek2011:
            case Programs.AmericanDiabetesAssociationTheBostonStepOut2011:
            case Programs.CCFATeamChallenge2011:
                ctrl.Enabled = false;
                break;
            default:
                ctrl.Enabled = true;
                break;
        }
    }

    public void set_PhotoUploadLabel(Label ctrl)
    {
        switch (program)
        {
            case Programs.Jimmy:
            case Programs.AmericanLungAssociationAutumnEscapeBikeTrek2011:
            case Programs.AmericanDiabetesAssociationTheBostonStepOut2011:
            case Programs.CCFATeamChallenge2011:
                ctrl.Text = "OPTIONAL ";
                break;
            default:
                ctrl.Text = "";
                break;
        }
    }

    public string logoPathVariable
    {
        get
        {
            switch (program)
            {
                // Display image based on program
                case Programs.Jimmy:
                    return "Images/BMJFW_200_logo.gif";
                case Programs.AmericanLungAssociationAutumnEscapeBikeTrek2011:
                    return "Images/ALABikeTrek2011Logo.jpg";
                case Programs.AmericanDiabetesAssociationTheBostonStepOut2011:
                    return "Images/ADAStepOut2011Logo.jpg";
                case Programs.CCFATeamChallenge2011:
                    return "Images/CCFATeamChallenge2011logo.jpg";
                default:
                    return rdr["Logo"] != null ? rdr["Logo"].ToString() : "";
            }
        }
    }

    public string photoPathVariable
    {
        get
        {
            bool photoIsNull = (rdr["Photo"] == null || rdr["Photo"].ToString().Trim() == "");

            if (photoIsNull)
            {
                // Return default image (if any) based on program
                switch (program)
                {
                    case Programs.Jimmy:
                        return "Images/jimmyfund-main.jpg";
                    case Programs.AmericanLungAssociationAutumnEscapeBikeTrek2011:
                        return "Images/ALABikeTrek2011DefaultPhoto.jpg";
                    case Programs.AmericanDiabetesAssociationTheBostonStepOut2011:
                        return "Images/ADAStepOut2011DefaultPhoto.jpg";
                    default:
                        return "";
                        
                }
            }
            else
            {
                return rdr["Photo"].ToString();
            }

        }
    }

    public string FundEmailSubject
    {
        get
        {
            switch (program)
            {
                case Programs.Jimmy:
                    return ConfigurationManager.AppSettings["EMAIL_SUBJECT_JIMMY"];
                case Programs.PMC:
                    return ConfigurationManager.AppSettings["EMAIL_SUBJECT_PMC"];
                default:
                    return ConfigurationManager.AppSettings["EMAIL_SUBJECT_DEFAULT"];
            }
        }
    }

    public string FundEmailBody
    {
        get
        {
            switch (program)
            {
                case Programs.Jimmy:
                    return ConfigurationManager.AppSettings["EMAIL_BODY_JIMMY"];
                case Programs.PMC:
                    return ConfigurationManager.AppSettings["EMAIL_BODY_PMC"];
                default:
                    return ConfigurationManager.AppSettings["EMAIL_BODY_DEFAULT"];
            }
        }
    }

    public string LiteralLogoText
    {
        get 
        {
            string litBase = "<img alt=\"{0}\" src=\"{1}\" style=\"width: 180px\" />";
            switch (program)
            {
                case Programs.SchoolFundraisers:
                    return string.Format(litBase, "School Fundraisers", "../Images/JSCFundraisingLogo.jpg");
                default:
                    return "";
            }
        }
    }

    public string AlternateBuyURL
    {
        get
        {
            switch (program)
            {
                case Programs.Political_DanWinslow:
                    return ConfigurationManager.AppSettings["DAN_WINSLOW_BUY_URL"];
                default:
                    return "";
            }
        }
    }

    public bool UsePoliticalUtils
    {
        get
        {
            switch (program)
            {
                case Programs.Political_DanWinslow:
                    return true;
                default:
                    return false;
            }
        }
    }

    public static string Strip(string text)
    {
        return Regex.Replace(text, @"<(.|\n)*?>", string.Empty).Replace("&nbsp;", "");
    }

    public static string ReplaceBrWithNewLine(string s)
    {
        return s.Replace("<br />", Environment.NewLine).Replace("<br/>", Environment.NewLine).Replace("<br>", Environment.NewLine).Replace("<BR />", Environment.NewLine).Replace("<BR>", Environment.NewLine).Replace("<BR/>", Environment.NewLine);
    }
    public static string ReplaceNewLineWithBr(string s)
    {
        return s.Replace(Environment.NewLine, "<br />");
    }

}

