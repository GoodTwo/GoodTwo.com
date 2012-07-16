using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Account_RecoverPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        LoginHyperLink.NavigateUrl = "Login.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
    }

    protected void validateUserEmail(object sender, LoginCancelEventArgs e)
    {
        TextBox EmailAddressTB = ((TextBox)PWRecovery.UserNameTemplateContainer.FindControl("EmailAddressTB"));

        Literal ErrorLiteral = ((Literal)PWRecovery.UserNameTemplateContainer.FindControl("ErrorLiteral"));

        MembershipUser mu = Membership.GetUser(PWRecovery.UserName);

        if (mu == null) // The username does not exists
        {
            e.Cancel = true;
            ErrorLiteral.Text = "No such user found.";            
        }
        else if (!mu.Email.Equals(EmailAddressTB.Text)) // Their email does not match
        {
            e.Cancel = true;
            ErrorLiteral.Text = "Your username and email address do not match";
        }
    }
}