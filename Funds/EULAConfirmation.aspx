<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="EULAConfirmation.aspx.cs" Inherits="Funds_EULAConfirmation" EnableEventValidation="false" %>

<%@ Register Assembly="System.Web.UI.WebControls.DomValidators" Namespace="System.Web.UI.WebControls.DomValidators"
    TagPrefix="asp" %>
<%@ Register TagPrefix="head" TagName="InteriorHead" Src="~/InteriorHeader.ascx" %>
<%@ Register TagPrefix="val" Namespace="CustomValidators" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <script type="text/javascript">
        function validateAccept(sender, args) {
            args.isValid = false;
            return;
        }
        function chkAccepted(source, args) {
            args.IsValid = source.checked;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:InteriorHead ID="InteriorHead1" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <asp:Literal ID="litSchoolFundraiserLogo" runat="server"></asp:Literal>
    <table style="text-align: center; width: 100%;">
        <tr>
            <td style="text-align: center;">
                <iframe src="Click Wrap - Fundraiser Site License Agreement - CoupMe v.2.htm" scrolling="yes"
                    frameborder="1" style="border: 1px; overflow: scroll; width: 700px; height: 300px;
                    padding-top: 30px;" allowtransparency="true"></iframe>
            </td>
        </tr>
        <tr>
            <td align="center">
                <div style="width: 700px; margin: 0px auto 0px auto">
                    <p>
                        Please indicate below that you accept or decline the terms and conditions of this
                        agreement by clicking on the appropriate icon.
                    </p>
                    <asp:RadioButton ID="AcceptRadioButton" runat="server" GroupName="agreement" Text="Accept"
                        ClientIDMode="Static" />
                    <asp:RadioButton ID="DeclineRadioButton" runat="server" GroupName="agreement" Text="Decline"
                        Checked="true" /><br />
                    <asp:Button runat="server" OnClick="validate" Text="Submit" /><br />
                    <asp:CustomDomValidator ID="RadioButtonCustomDomValidator" ControlToValidate="AcceptRadioButton"
                        runat="server" ErrorMessage="You must accept the terms to submit the form." OnServerValidate="RadioButtonCustomDomValidator_ServerValidate"
                        ClientValidationFunction="chkAccepted" SetFocusOnError="true" />
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
