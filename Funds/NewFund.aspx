<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="NewFund.aspx.cs" Inherits="Funds_NewFund" EnableEventValidation="false" ValidateRequest="false"   %>

<%@ Register Assembly="System.Web.UI.WebControls.DomValidators" Namespace="System.Web.UI.WebControls.DomValidators"
    TagPrefix="asp" %>
<%@ Register TagPrefix="head" TagName="InteriorHead" Src="~/InteriorHeader.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="GoodtwoCustomControls" Namespace="GoodtwoCustomControls" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">

    <script type="text/javascript">

        if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        }
        else {// code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.open("GET", "../RegionsXmlList.xml", false);
        xmlhttp.send();
        xmlDoc = xmlhttp.responseXML;

        var cities = [];
        var cityCodes = [];

        var x = xmlDoc.getElementsByTagName("State");
        for (i = 0; i < x.length; i++) {
            //alert("State: "+x[i].attributes.getNamedItem("Name").nodeValue);
            cities[x[i].attributes.getNamedItem("Code").nodeValue] = [];
            cityCodes[x[i].attributes.getNamedItem("Code").nodeValue] = [];

            var y = x[i].getElementsByTagName("City");
            for (j = 0; j < y.length; j++) {
                //alert("City :"+y[j].attributes.getNamedItem("Name").nodeValue);
                cities[x[i].attributes.getNamedItem("Code").nodeValue][j] = y[j].attributes.getNamedItem("Name").nodeValue;
                cityCodes[x[i].attributes.getNamedItem("Code").nodeValue][j] = y[j].attributes.getNamedItem("Code").nodeValue;
            }
        }
        
        function PrePostBack() {
      
        }

        function chkTagline(source, args) {
            var numOfWords = args.split(" ");
            args.IsValid = numOfWords.length <= 50;
        }

        function chkBody(source, args) {
            var numOfWords = args.split(" ");
            args.IsValid = numOfWords.length <= 250;
        }

        function checkDate(sender, args) {
            var mindate = new Date();
            var maxdate = new Date();
            maxdate.setDate(maxdate.getDate() + 21);

            if (sender._selectedDate < mindate) {
                alert("You cannot select a day earlier than today!");
                sender._selectedDate = mindate;
                // set the date back to the current date
                sender._textbox.set_Value(sender._selectedDate.format(sender._format))
            }
            else if (sender._selectedDate > maxdate) {
                alert("Your fundraiser cannot last more than 21 days!");
                sender._selectedDate = maxdate;
                // set the date back to the current date
                sender._textbox.set_Value(sender._selectedDate.format(sender._format))
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:InteriorHead ID="InteriorHead1" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <asp:ToolkitScriptManager ID="ToolKitScriptManager" runat="server">
    </asp:ToolkitScriptManager>
    <div id="EventSetup">
        <h2>Raise Money with GoodTwo        </h2>
        <p>Welcome to GoodTwo! Creating your GoodTwo campaign is simple. To get started, simply fill out the form below to automatically create your page. Any funds raised will be mailed to the address that you specify. You may change your fundraiser information at any time.</p>
        <h4>
          <strong>And of course, we're always here to help! Feel free call or email us with questions.</strong></h4>
        <p>
            <strong>Email:</strong> <a href="mailto: fundraisers@goodtwo.com">fundraisers@goodtwo.com</a><br />
            <strong>Phone:</strong> 1-<span __postbox-detected-content="__postbox-detected-phone">888-372-5570</span></p>
        <table cellpadding="5" cellspacing="4" id="form-table">
          <tr>
                <td class="form-label">
                    <h4>
                        Your Name:
                    </h4>
                </td>
                <td class="form-field">
                    <asp:TextBox ID="NameTextBox" runat="server" Width="400px"></asp:TextBox>&nbsp;*<br />
                    <asp:RequiredDomValidator ID="NameRequiredDomValidator" runat="server" ControlToValidate="NameTextBox"
                        ErrorMessage="Is required" Font-Bold="true"></asp:RequiredDomValidator>
                </td>
                <td class="form-example">
                    (ex.: "John Smith")
                </td>
            </tr>
            <tr>
                <td class="form-label">
                    <h4>
                        Email:
                    </h4>
                </td>
                <td class="form-field">
                    <asp:TextBox ID="EmailTextBox" runat="server" Width="400px"></asp:TextBox>&nbsp;*<br />
                    <asp:RequiredDomValidator ID="EmailRequiredDomValidator" runat="server" ControlToValidate="EmailTextBox"
                        ErrorMessage="Is required" Font-Bold="true"></asp:RequiredDomValidator>
                    <asp:RegexDomValidator ID="EmailRegexValidator" runat="server" ControlToValidate="EmailTextBox"
                        ErrorMessage="Must be a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Font-Bold="true"></asp:RegexDomValidator>
                </td>
                <td class="form-example">
                    (ex.: youremail@something.com)
                </td>
            </tr>
            <tr>
                <td class="form-label">
                    <h4>
                        Phone Number:
                    </h4>
                </td>
                <td class="form-field">
                    <asp:TextBox ID="PhoneTextBox" runat="server" Width="400px"></asp:TextBox>&nbsp;*<br />
                    <asp:RequiredDomValidator ID="PhoneRequiredDomValidator" runat="server" ControlToValidate="PhoneTextBox"
                        ErrorMessage="Is required" Font-Bold="true"></asp:RequiredDomValidator>
                    <asp:RegexDomValidator ID="PhoneRegexValidator" runat="server" ControlToValidate="PhoneTextBox"
                        ErrorMessage="Must be a valid phone number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                        Font-Bold="true"></asp:RegexDomValidator>
                </td>
                <td class="form-example">
                    (ex.: 312-555-5555 or (312)555-5555)
                </td>
            </tr>
            <tr>
                <td class="form-label">
                    <h4>
                        Fundraiser Title:
                    </h4>
                </td>
                <td class="form-field">
                    <asp:TextBox ID="TitleTextBox" runat="server" Width="400px"></asp:TextBox>&nbsp;*<br />
                    <asp:RequiredDomValidator ID="TitleRequiredDomValidator" runat="server" ControlToValidate="TitleTextBox"
                        ErrorMessage="Is required" Font-Bold="true"></asp:RequiredDomValidator>
                </td>
                <td class="form-example">
                    (ex.: &quot;John's Start Heart Walk&quot;)
                </td>
            </tr>
            <tr>
                <td class="form-label">
                    <h4>
                        Cause Name:
                    </h4>
                </td>
                <td class="form-field">
                    <asp:TextBox ID="CauseNameTextBox" runat="server" Width="400px"></asp:TextBox>&nbsp;*<br />
                    <asp:RequiredDomValidator ID="CauseNameRequiredDomValidator" runat="server" ControlToValidate="CauseNameTextBox"
                        ErrorMessage="Is required" Font-Bold="true"></asp:RequiredDomValidator>
                </td>
                <td class="form-example">
                    (ex.: &quot;American Heart Association&quot;)
                </td>
            </tr>
            <tr>
                <td class="form-label">
                    <h4>
                        Logo:
                    </h4>
                </td>
                <td class="form-field">
                    <asp:FileUpload ID="LogoUpload" runat="server" Width="400px" />&nbsp;*<br />
                    <asp:RequiredDomValidator ID="LogoRequiredDomValidator" runat="server" ControlToValidate="LogoUpload"
                        ErrorMessage="Is Required" SetFocusOnError="true" Font-Bold="true"></asp:RequiredDomValidator>
                    <asp:RegexDomValidator ID="LogoRegexDomValidator" runat="server" ControlToValidate="LogoUpload"
                        ErrorMessage="Must be a jpg or gif" ValidationExpression="(^.+\.(([jJ][pP][eE]?[gG])|([gG][iI][fF]))$)?"
                        SetFocusOnError="true" Font-Bold="true"></asp:RegexDomValidator>
                </td>
                <td class="form-example">
                    (must be .jpg or .gif less than 32MB)
                </td>
            </tr>
            <tr>
                <td class="form-label">
                    <h4>
                        Photo:
                    </h4>
                </td>
                <td class="form-field">
                    <asp:FileUpload ID="PhotoUpload" runat="server" Width="400px" />&nbsp;*<br />
                    <asp:RequiredDomValidator ID="PhotoDomValidator" runat="server" ControlToValidate="PhotoUpload"
                        ErrorMessage="Is Required" SetFocusOnError="true" Font-Bold="true"></asp:RequiredDomValidator>
                    <asp:RegexDomValidator ID="PhotoRegexDomValidator" runat="server" ControlToValidate="PhotoUpload"
                        ErrorMessage="Must be a jpg or gif" ValidationExpression="(^.+\.(([jJ][pP][eE]?[gG])|([gG][iI][fF]))$)?"
                        SetFocusOnError="true" Font-Bold="true"></asp:RegexDomValidator>
                </td>
                <td class="form-example">
                    (must be .jpg or .gif less than 32MB)
                </td>
            </tr>
            <tr>
                <td class="form-label">
                    <h4>
                        Video:
                    </h4>
                </td>
                <td class="form-field">
                    <asp:HtmlTextBox ID="HtmlVideoTextBox" runat="server" Height="48px" Width="400px" Rows="3" IsMultiLine="true" /><br />
                </td>
                <td class="form-example">
                    (Optional: insert an embeded link from YouTube or other place if you'd like to include a
                    video. For example, browse to a YouTube video, click the share button under the video, and click the embed button. Then copy and paste the embed code into this box.)
                </td>
            </tr>
            <tr>
                <td class="form-label">
                    <h4>
                        Short Description of Your Cause:
                    </h4>
                </td>
                <td class="form-field">
                    <asp:TextBox ID="TaglineTextBox" runat="server" Height="96px" Width="400px" Rows="10"
                        TextMode="MultiLine"></asp:TextBox>&nbsp;*<br />
                    <asp:RequiredDomValidator ID="TaglineRequiredDomValidator" runat="server" ControlToValidate="TaglineTextBox"
                        ErrorMessage="Tagline is required" SetFocusOnError="true" Font-Bold="true">
                    </asp:RequiredDomValidator>
                </td>
                <td class="form-example">
                    (50 words maximum - Tell us your cause's main mission and goals)
                </td>
            </tr>
            <tr>
                <td class="form-label">
                    <h4>
                        Detailed Description of Your Cause:
                    </h4>
                </td>
                <td class="form-field">
                    <asp:TextBox ID="BodyTextBox" runat="server" Height="96px" Width="400px" Rows="10"
                        TextMode="MultiLine"></asp:TextBox>&nbsp;*<br />
                    <asp:RequiredDomValidator ID="BodyRequiredDomValidator" runat="server" ControlToValidate="BodyTextBox"
                        ErrorMessage="Body is required" SetFocusOnError="true" Font-Bold="true">
                    </asp:RequiredDomValidator>
                </td>
                <td class="form-example">
                    (250 words maximum - Tell us more about your fundraiser; anything you think your
                    donors should know)
                </td>
            </tr>
            <tr>
                <td class="form-label">
                    <h4>
                        Website:
                    </h4>
                </td>
                <td class="form-field">
                    <asp:TextBox ID="WebSiteTextBox" runat="server" Width="400px"></asp:TextBox><br />
                    <asp:RegexDomValidator ID="WebSiteRegexDomValidator" ErrorMessage="Must be a valid web address"
                        ControlToValidate="WebSiteTextBox" runat="server" ValidationExpression="^((http|https|ftp):\/\/(www\.)?)[a-zA-Z0-9_\-]+\.([a-zA-Z]{2,4}|[a-zA-Z]{2}\.[a-zA-Z]{2})(\/[a-zA-Z0-9\-\._\?\&=,'\+%\$#~]*)*$"
                        SetFocusOnError="true" Font-Bold="true" />
                </td>
                <td class="form-example">
                    (ex.: http://www.yoursite.com; You must include the address prefix http, https, etc.)
                </td>
            </tr>
            <tr>
                <td class="form-label">
                    <h4>
                        Goal: $
                    </h4>
                </td>
                <td class="form-field">
                    <asp:TextBox ID="GoalTextBox" runat="server" Width="300px"></asp:TextBox>&nbsp;*<br />
                    <asp:RequiredDomValidator ID="GoalRequiredDomValidator" runat="server" ControlToValidate="GoalTextBox"
                        ErrorMessage="Is required" SetFocusOnError="true" Font-Bold="true"></asp:RequiredDomValidator>
                    <asp:RegexDomValidator ID="GoalRegexDomValidator" runat="server" ErrorMessage="Must be a monetary value (accurate to two decimal places)."
                        ValidationExpression="^[0-9]+(,[0-9]{3})*(\.[0-9]{2})?$" ControlToValidate="GoalTextBox"
                        SetFocusOnError="true" Font-Bold="true">
                    </asp:RegexDomValidator>                   
                </td>
                <td class="form-example">
                    (ex.: 200.00)
                </td>
            </tr>
            <tr>
                <td class="form-label">
                    <h4>
                        End Date:
                    </h4>
                </td>
                <td id="date-td" class="form-field">
                    <asp:TextBox ID="EndDateTextBox" runat="server" ReadOnly="false"></asp:TextBox>
                    <img alt="CalendarImages" id="SmallCalendarImage" src="../Images/calendarButtonImage.png" />&nbsp;*<br />
                    <asp:CalendarExtender ID="EndDateCalendarExtender" runat="server" TargetControlID="EndDateTextBox"
                        PopupButtonID="SmallCalendarImage" OnClientDateSelectionChanged="checkDate">
                    </asp:CalendarExtender>                    
                    <asp:RequiredDomValidator ID="EndDateRequiredDomValidator" runat="server" ControlToValidate="EndDateTextBox"
                        ErrorMessage="Is required" SetFocusOnError="true" Font-Bold="true"></asp:RequiredDomValidator>                   
                </td>
                <td class="form-example">
                    (Each fundraiser can last from 1 to 21 days)
                </td>
            </tr>
            <tr>
                <td class="form-label">
                    <h4>
                        State:
                    </h4>
                </td>
                <td class="form-field">
                    <asp:DropDownList ID="StateList" runat="server" DataTextField="Name" DataValueField="Code"
                        AutoPostBack="false" CausesValidation="false">
                    </asp:DropDownList>&nbsp;*<br />
                    <div>&nbsp;</div>
                </td>
                <td class="form-example">
                </td>
            </tr>
            <tr>
                <td class="form-label">
                    <h4>
                        Nearest City:
                    </h4>
                </td>
                <td class="form-field">
                    <asp:TextBox ID="CityTextBox" runat="server" Width="300px">
                    </asp:TextBox>&nbsp;*<br />
                    <asp:RequiredDomValidator ID="CityRequiredDomValidator" runat="server" ControlToValidate="CityTextBox"
                        ErrorMessage="Is required" SetFocusOnError="true" Font-Bold="true"></asp:RequiredDomValidator>
                </td>
                <td class="form-example">
                </td>
            </tr>
            <tr>
                <td class="form-label">
                    <h4>
                        Payment Name:
                    </h4>
                </td>
                <td class="form-field">
                    <asp:TextBox ID="PaymentNameTextBox" runat="server" Width="400px"></asp:TextBox>
                    <br />
                    <div>&nbsp;</div>
                </td>
                <td class="form-example">
                    (ex.: &quot;American Heart Association&quot;; Designate payee if different than cause name)
                </td>
            </tr>
            <tr>
                <td class="form-label">
                    <h4>
                        Payment Address:
                    </h4>
                </td>
                <td class="form-field">
                    <asp:TextBox ID="PaymentAddressTextBox" runat="server" Width="400px"></asp:TextBox>&nbsp;*<br />
                    <asp:RequiredDomValidator ID="PaymentAddressRequiredDomValidator" runat="server"
                        ErrorMessage="Is required" ControlToValidate="PaymentAddressTextBox"
                        SetFocusOnError="true" Font-Bold="true"></asp:RequiredDomValidator>                    
                </td>
                <td class="form-example">
                    (ex.: &quot;1234 Fundraiser Lane, Chicago, IL 60601&quot;; Please specify where payments should be sent)
                </td>
            </tr>
        </table>
        <p>
            <asp:Button ID="SubmitButton" OnClientClick="PrePostBack()" ValidationGroup="newGroup"  runat="server" Text="Submit" OnClick="SubmitButton_Click" />
        </p>
        <p>
            * Item is required
        </p>
    </div>
</asp:Content>