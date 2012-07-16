using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace GoodTwo
{
    public partial class Site : System.Web.UI.MasterPage
    {
        public HtmlLink CSSLink
        {
            get
            {
                return cssLink;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            linkScript("script", "text/javascript", "javascript", "https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js");
            linkScript("script", "text/javascript", "javascript", "Scripts/DD_belatedPNG_0.0.8a-min.js");
            linkScript("script", "text/javascript", "javascript", "Scripts/curvycorners.js");
            linkScript("script", "text/javascript", "javascript", "Scripts/jquery.timer.js");
            linkScript("script", "text/javascript", "javascript", "Scripts/jquery.countdown.js");
            linkScript("script", "text/javascript", "javascript", "Scripts/onLoadAdder.js");
            linkScript("script", "text/javascript", "javascript", "Scripts/sitewide.js");
        }

        private void linkScript(string tagName, string type, string language, string src)
        {
            HtmlGenericControl myJs = new HtmlGenericControl();
            myJs.TagName = tagName;
            myJs.Attributes.Add("type", type);
            myJs.Attributes.Add("language", language); //don't need it usually but for cross browser.
            myJs.Attributes.Add("src", ResolveUrl(src));
            this.Page.Master.Page.Header.Controls.Add(myJs);
        }
    }
}
