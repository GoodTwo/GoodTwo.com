<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="FundConfirmation.aspx.cs" Inherits="Funds_FundConfirmation" %>

<%@ Register TagPrefix="head" TagName="InteriorHead" Src="~/InteriorHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:InteriorHead ID="InteriorHead1" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div id="fundConf">
        <h1>
            Thanks for creating your GoodTwo Fundraising Page!</h1>
        <p>
            We will get back to you within one business day so you can choose your deals, preview
            your page, and confirm your details. If you have any questions in the meantime,
            please email <a href="mailto:fundraisers@goodtwo.com">fundraisers@goodtwo.com</a></p>
        We look forward to raising money with you!
    </div>
</asp:Content>
