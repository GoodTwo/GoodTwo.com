<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EditFund.aspx.cs" Inherits="Funds_EditFund"  %>
<%@ Register Assembly="System.Web.UI.WebControls.DomValidators" Namespace="System.Web.UI.WebControls.DomValidators"
    TagPrefix="asp" %>
<%@ Register TagPrefix="head" TagName="InteriorHead" Src="~/InteriorHeader.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
    /*
    function func() {
    if (!isPostBack) {
    //Initialize State list
    stateSel = document.getElementById("<%= StateList.ClientID %>");
    for (i = 0; i < x.length; i++) {
    var optn = document.createElement("OPTION");
    optn.text = x[i].attributes.getNamedItem("Name").nodeValue;
    optn.value = x[i].attributes.getNamedItem("Code").nodeValue;
    stateSel.options.add(optn);
    }

    firstState = x[0].attributes.getNamedItem("Name").nodeValue;

    citySel = document.getElementById("<%= CityList.ClientID %>");
    cityList = cities[firstState];
    cityCodeList = cityCodes[firstState];
    for (i = 0; i < newOptions.length; i++) {
    var optn = document.createElement("OPTION");
    optn.text = cityList[i];
    optn.value = cityCodeList[i];
    citySel.options.add(optn);
    }
    }
    }

    $(document).ready(func());
    */

    function setCities() {
        //alert("setCities");
        stateSel = document.getElementById("<%= StateList.ClientID %>");
        //alert("Selected state is "+stateSel);
        cityList = cities[stateSel.value];
        cityCodeList = cityCodes[stateSel.value];
        changeSelect("<%= CityList.ClientID %>", cityList, cityCodeList);

        cityChanged();
    }

    function changeSelect(fieldID, newOptions, newValues) {
        selectField = document.getElementById(fieldID);
        selectField.options.length = 0;
        for (i = 0; i < newOptions.length; i++) {
            var optn = document.createElement("OPTION");
            optn.text = newOptions[i];
            optn.value = newValues[i];
            //ClientScript.RegisterForEventValidation(fieldID, newOptions[i]);
            selectField.options.add(optn);
            //alert("New option = " + newOptions[i] + ": " + newValues[i]);
            //selectField.options.add(new Option(newOptions[i], newValues[i]));
        }
        //alert("Selected city = " + selectField.options[selectField.selectedIndex].value);
    }

    function cityChanged() {
        citySel = document.getElementById("<%= CityList.ClientID %>");
        cityHid = document.getElementById("<%= CityHiddenField.ClientID %>");
        cityHid.value = citySel.options[citySel.selectedIndex].text;
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
        <h2>
            Edit Fund</h2>
        <h4>
            Welcome to fundraising with goodtwo™! To get started, simply edit your previous form information,
            which will allow you to change information in your custom fundraising page.</h4>
        <p>
            If you have questions about running your fundraiser or filling out the form, check
            out our goodtwo™ <a href="../FAQ.aspx">FAQ</a>. For an idea of how this will all
            look put together, take a peek at this <a href="FakeFund.aspx">sample</a> fundraising
            page.</p>
        <h4>
            <strong>And of course, we're always here to help! Feel free call or email us with questions.</strong></h4>
        <p>
            <strong>Email:</strong> <a href="mailto: fundraisers@goodtwo.com">fundraisers@goodtwo.com</a><br />
            <strong>Phone:</strong> (866) 249-8387
        </p>
        <table cellpadding="5" cellspacing="4" id="form-table">
            <tr>
                <td valign="top">
                    <h4>
                        Your Name:
                    </h4>
                </td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server" Width="400px"></asp:TextBox>*&nbsp;
                    <asp:RequiredDomValidator ID="NameRequiredDomValidator" runat="server" ControlToValidate="NameTextBox"
                        ErrorMessage="You must enter your name" Font-Bold="true"></asp:RequiredDomValidator>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h4>
                        Email:
                    </h4>
                </td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server" Width="400px"></asp:TextBox>*&nbsp;
                    <asp:RequiredDomValidator ID="EmailRequiredDomValidator" runat="server" ControlToValidate="EmailTextBox"
                        ErrorMessage="You must enter your email" Font-Bold="true"></asp:RequiredDomValidator>
                    <asp:RegexDomValidator ID="EmailRegexValidator" runat="server" ControlToValidate="EmailTextBox"
                        ErrorMessage="It must be a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Font-Bold="true"></asp:RegexDomValidator>
                    <br />
                    (youremail@something.com)
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h4>
                        Phone Number:
                    </h4>
                </td>
                <td>
                    <asp:TextBox ID="PhoneTextBox" runat="server" Width="400px"></asp:TextBox>*&nbsp;
                    <asp:RequiredDomValidator ID="PhoneRequiredDomValidator" runat="server" ControlToValidate="PhoneTextBox"
                        ErrorMessage="You must enter a phone number" Font-Bold="true"></asp:RequiredDomValidator>
                    <asp:RegexDomValidator ID="PhoneRegexValidator" runat="server" ControlToValidate="PhoneTextBox"
                        ErrorMessage="It must be a valid phone number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                        Font-Bold="true">(###) ###-####</asp:RegexDomValidator>
                    <br />
                    (###-###-#### or (###)###-####)
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h4>
                        Fundraiser Title:
                    </h4>
                </td>
                <td>
                    <asp:TextBox ID="TitleTextBox" runat="server" Width="400px"></asp:TextBox>*&nbsp;
                    <asp:RequiredDomValidator ID="TitleRequiredDomValidator" runat="server" ControlToValidate="TitleTextBox"
                        ErrorMessage="You need a title" Font-Bold="true"></asp:RequiredDomValidator>
                    <br />
                    (ex., &quot;John's Marathon Fundraiser for the Jimmy Fund&quot; or &quot;Raising
                    Money for Smithtown Shelter.&quot;)
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h4>
                        Cause Name:
                    </h4>
                </td>
                <td>
                    <asp:TextBox ID="CauseNameTextBox" runat="server" Width="400px"></asp:TextBox>*&nbsp;
                    <asp:RequiredDomValidator ID="CauseNameRequiredDomValidator" runat="server" ControlToValidate="CauseNameTextBox"
                        ErrorMessage="You need a name for your cause" Font-Bold="true"></asp:RequiredDomValidator>
                    <br />
                    (ex., &quot;Leukemia &amp; Lymphoma Society&quot; or &quot;Kate Smith's Class at
                    Center Middle School&quot;)
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h4>
                        Logo:
                    </h4>
                </td>
                <td>
                    <asp:FileUpload ID="LogoUpload" runat="server" Width="400px" />&nbsp;
                    <asp:RegexDomValidator ID="LogoRegexDomValidator" runat="server" ControlToValidate="LogoUpload"
                        ErrorMessage="File must be a jpg or gif" ValidationExpression="(^.+\.(([jJ][pP][eE]?[gG])|([gG][iI][fF]))$)?"
                        SetFocusOnError="true" Font-Bold="true"></asp:RegexDomValidator>
                    <br />
                    (The image must be either a .jpg or .gif and must be less than 32MB)
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h4>
                        Photo:
                    </h4>
                </td>
                <td>
                    <asp:FileUpload ID="PhotoUpload" runat="server" Width="400px" />&nbsp;
                    <asp:RegexDomValidator ID="PhotoRegexDomValidator" runat="server" ControlToValidate="PhotoUpload"
                        ErrorMessage="File must be a jpg or gif" ValidationExpression="(^.+\.(([jJ][pP][eE]?[gG])|([gG][iI][fF]))$)?"
                        SetFocusOnError="true" Font-Bold="true"></asp:RegexDomValidator>
                    <br />
                    (The image must be either a .jpg or .gif and must be less than 32MB)
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h4>
                        Video:
                    </h4>
                </td>
                <td>
                    <asp:TextBox ID="VideoTextBox" runat="server" Width="400px" />
                    <asp:RegexDomValidator ID="VideoRegexDomValidator" runat="server" ErrorMessage="Must be a valid web address."
                        ValidationExpression="(http(s)?://)?([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" ControlToValidate="VideoTextBox"
                        SetFocusOnError="true" Font-Bold="true" />
                    <br />
                    (Optional: insert a link from YouTube or other place if you'd like to include a
                    video)
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h4>
                        Short Description of Your Cause:
                    </h4>
                </td>
                <td>
                    <asp:TextBox ID="TaglineTextBox" runat="server" Height="96px" Width="500px" Rows="10"
                        TextMode="MultiLine"></asp:TextBox>*&nbsp;
                    <asp:RequiredDomValidator ID="TaglineRequiredDomValidator" runat="server" ControlToValidate="TaglineTextBox"
                        ErrorMessage="Tagline is required" SetFocusOnError="true" Font-Bold="true">
                    </asp:RequiredDomValidator>
            
                    <br />
                    (50 words maximum - Tell us your cause's main mission and goals)
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h4>
                        Detailed Description of Your Cause:
                    </h4>
                </td>
                <td>
                    <asp:TextBox ID="BodyTextBox" runat="server" Height="96px" Width="500px" Rows="10"
                        TextMode="MultiLine"></asp:TextBox>*&nbsp;
                    <asp:RequiredDomValidator ID="BodyRequiredDomValidator" runat="server" ControlToValidate="BodyTextBox"
                        ErrorMessage="Body is required" SetFocusOnError="true" Font-Bold="true">
                    </asp:RequiredDomValidator>

                    <br />
                    (250 words maximum - Tell us more about your funraiser; anything you think your
                    donors should know)
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h4>
                        Website:
                    </h4>
                </td>
                <td>
                    <asp:TextBox ID="WebSiteTextBox" runat="server" Width="400px"></asp:TextBox>
                    <asp:RegexDomValidator ID="WebSiteRegexDomValidator" ErrorMessage="Must be a valid web address"
                        ControlToValidate="WebSiteTextBox" runat="server" ValidationExpression="^((http|https|ftp):\/\/(www\.)?)[a-zA-Z0-9_\-]+\.([a-zA-Z]{2,4}|[a-zA-Z]{2}\.[a-zA-Z]{2})(\/[a-zA-Z0-9\-\._\?\&=,'\+%\$#~]*)*$"
                        SetFocusOnError="true" Font-Bold="true" />
                    <br />
                    (Optional: insert a link to your cause's website)
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h4>
                        Goal: $
                    </h4>
                </td>
                <td>
                    <asp:TextBox ID="GoalTextBox" runat="server"></asp:TextBox>*&nbsp;
                    <asp:RequiredDomValidator ID="GoalRequiredDomValidator" runat="server" ControlToValidate="GoalTextBox"
                        ErrorMessage="Goal is required" SetFocusOnError="true" Font-Bold="true"></asp:RequiredDomValidator>
                    <asp:RegexDomValidator ID="GoalRegexDomValidator" runat="server" ErrorMessage="Must be a monetary value (accurate to two decimal places)."
                        ValidationExpression="^[0-9]+(,[0-9]{3})*(\.[0-9]{2})?$" ControlToValidate="GoalTextBox"
                        SetFocusOnError="true" Font-Bold="true">
                    </asp:RegexDomValidator>
                    <br />
                    (How much are you hoping to raise?)
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h4>
                        End Date:
                    </h4>
                </td>
                <td id="date-td">
                    <asp:TextBox ID="EndDateTextBox" runat="server" ReadOnly="false"></asp:TextBox>
                    <img alt="CalendarImages" id="SmallCalendarImage" src="../Images/calendarButtonImage.png" />
                    <asp:CalendarExtender ID="EndDateCalendarExtender" runat="server" TargetControlID="EndDateTextBox"
                        PopupButtonID="SmallCalendarImage" OnClientDateSelectionChanged="checkDate">
                    </asp:CalendarExtender>
                    *&nbsp;
                    <asp:RequiredDomValidator ID="EndDateRequiredDomValidator" runat="server" ControlToValidate="EndDateTextBox"
                        ErrorMessage="End date is required" SetFocusOnError="true" Font-Bold="true"></asp:RequiredDomValidator>
                    <br />
                    (Each fundraisers can last from 1 to 21 days)
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h4>
                        State:
                    </h4>
                </td>
                <td>
                    <asp:DropDownList ID="StateList" runat="server" DataTextField="Name" DataValueField="Code"
                        AutoPostBack="false" onChange="setCities()" CausesValidation="false">
                    </asp:DropDownList>
                    *&nbsp;
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h4>
                        Nearest City:
                    </h4>
                </td>
                <td>
                    <asp:DropDownList ID="CityList" runat="server" DataTextField="Name" DataValueField="Code"
                        AutoPostBack="false" CausesValidation="false" onChange="cityChanged()">
                    </asp:DropDownList>
                    *&nbsp;
                    <asp:HiddenField ID="CityHiddenField" runat="server" />
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h4>
                        Payment Name:
                    </h4>
                </td>
                <td>
                    <asp:TextBox ID="PaymentNameTextBox" runat="server" Width="400px"></asp:TextBox>
                    <br />
                    (Please designate payee if different than cause name)
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h4>
                        Payment Address:
                    </h4>
                </td>
                <td>
                    <asp:TextBox ID="PaymentAddressTextBox" runat="server" Width="400px"></asp:TextBox>*&nbsp;
                    <asp:RequiredDomValidator ID="PaymentAddressRequiredDomValidator" runat="server"
                        ErrorMessage="Payment address is required" ControlToValidate="PaymentAddressTextBox"
                        SetFocusOnError="true" Font-Bold="true"></asp:RequiredDomValidator>
                    <br />
                    (Please specify where payments should be sent)
                </td>
            </tr>
        </table>
        <p>
            <asp:Button ID="SubmitButton" OnClientClick="PrePostBack()" runat="server" Text="Save Fund Info" 
                OnClick="SubmitButton_Click" />
        </p>
        <p>
            * Item is required
        </p>
    </div>
</asp:Content>


