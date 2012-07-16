using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebServices;
using System.Web.Security;

public partial class Account_EGIFTIDRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["egiftid"] != null)
        {
            string eGiftId = Request.QueryString["egiftid"];
            Administration admin = new Administration();
            CharityEvents Event = admin.GetEventByEgiftId(eGiftId);

            if (Event != null && Event.UserId == Guid.Empty)
            {
                MembershipUser m = Membership.GetUser();
                Guid userid = (Guid)m.ProviderUserKey;
                Event.UserId = userid;
                admin.UpdateCharityEvent(Event);
                Response.Redirect("../Funds/Fund.aspx?id=" + Event.CharityEventId);
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}