using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Text;

namespace CustomValidators
{
    /// <summary>
    /// Summary description for RadioButtonValidator
    /// </summary>
    public class RadioButtonValidator : BaseValidator
    {
        public RadioButtonValidator()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        protected override bool ControlPropertiesValid()
        {
            Control ctrl = FindControl(ControlToValidate) as RadioButton;
            return (ctrl != null);
        }

        protected override bool EvaluateIsValid()
        {
            return this.CheckIfItemIsChecked();
        }

        protected bool CheckIfItemIsChecked()
        {
            RadioButton rb = ((RadioButton)this.FindControl(this.ControlToValidate));
            if (rb.Checked == true)
                return true;
            else
                return false;
        }

        protected override void OnPreRender(EventArgs e)
        {
            // Determines whether the validation control can be rendered
            // for a newer ("uplevel") browser.
            // check if client-side validation is enabled.
            if (this.DetermineRenderUplevel() && this.EnableClientScript)
            {
                Page.ClientScript.RegisterExpandoAttribute(this.ClientID, "evaluationfunction", "CheckIfRadioButtonChecked");
                this.CreateJavaScript();
            }
            base.OnPreRender(e);
        }

        protected void CreateJavaScript()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(@"<script type=""text/javascript"">function CheckIfRadioButtonChecked(ctrl){");
            sb.Append(@"var rb = document.getElementById(document.getElementById(ctrl.id).controltovalidate);");
            sb.Append(@"if(rb.checked){");
            sb.Append(@"return true; }");
            sb.Append(@"return false; ");
            sb.Append(@"}</script>");
            Page.ClientScript.RegisterClientScriptBlock(GetType(), "JSScript", sb.ToString());
        }
    }
}