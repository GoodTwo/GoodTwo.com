<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="ErrorPage.aspx.cs" Inherits="ErrorPage" %>

<%@ Register TagPrefix="head" TagName="InteriorHeadNav" Src="~/InteriorHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:InteriorHeadNav ID="InteriorHeadNav1" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div id="errorMsg">
        <h2>
            An error has occured</h2>
        <p>
            A log of this error has been made, and we will address it shortly. If you have any
            questions or concerns please email <a href="mailto: fundraisers@goodtwo.com">fundraisers@goodtwo.com</a>
        </p>
        <asp:Label ID="lblError" runat="server"></asp:Label>
    </div>
</asp:Content>
