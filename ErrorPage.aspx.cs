using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using goodtooDraft.App_Code;

public partial class ErrorPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (GoodTwoConstants.testing)
            lblError.Text = Session["ErrorMsg"].ToString();
    }
}