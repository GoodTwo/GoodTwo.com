using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebServices;
using System.Web.Security;

public partial class Account_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Request.QueryString["led"]) == null)
        {
            if ((Request.UrlReferrer == null) || (!Request.UrlReferrer.AbsoluteUri.Contains("Register.aspx") && !Request.UrlReferrer.AbsoluteUri.Contains("Login.aspx") && !Request.UrlReferrer.AbsoluteUri.Contains("ChangePasswordSuccess.aspx") && !Request.UrlReferrer.AbsoluteUri.Contains("RecoverPassword.aspx")))
            {
                if (Request.QueryString["logout"] != null)
                {
                    //Session.Abandon();
                    FormsAuthentication.SignOut();
                    Response.Redirect("Login.aspx?led=1");
                }
                if (Request.QueryString["egiftid"] != null)
                {
                    string eGiftId = Request.QueryString["egiftid"];
                    Administration admin = new Administration();
                    CharityEvents Event = admin.GetEventByEgiftId(eGiftId);

                    if (Event != null && Event.UserId == Guid.Empty)
                    {
                        Response.Redirect("Register.aspx?egiftid=" + eGiftId + "&ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]), false);
                        return;
                    }
                }
                if (Request.QueryString["PMC"] != null)
                {
                    Response.Redirect("Register.aspx?PMC=yes&ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]));
                }
                Response.Redirect("Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]));
            }
            if (Request.QueryString["logout"] != null)
            {
                foreach (HttpCookie cookie in Request.Cookies)
                {
                    cookie.Expires = DateTime.Now.AddDays(-1d);
                }
                Response.Redirect("Login.aspx");
            }
        }
        RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        ForgotPasswordHyperLink.NavigateUrl = "RecoverPassword.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
    }
}
