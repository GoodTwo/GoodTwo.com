<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<%@ Register TagPrefix="head" TagName="InteriorHeadNav" Src="~/InteriorHeader.ascx" %>
<%@ Register TagPrefix="head" TagName="InteriorHeadSubNav" Src="~/InteriorHeaderSubNav.ascx" %>
<%@ Register TagPrefix="side" TagName="SidePanel" Src="~/SidePanel.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:InteriorHeadNav ID="InteriorHeadNav1" runat="server" />
        <head:InteriorHeadSubNav ID="InteriorHeadSubNav1" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <h2>
            Talk to Us!        </h2>
        <p><a href="http://goodtwo.com/Account/Register.aspx?ReturnUrl=%2fFunds%2fNewFund.aspx">Start a fundraiser now.</a></p>
        <p>GoodTwo<br />
          711 Atlantic Avenue, Lower Level<br />
          Boston, MA 02111</p>
        <p><strong>Phone: </strong>888.372.5570<br />
        <strong>Email: </strong><a href="mailto:fundraisers@goodtwo.com">fundraisers@goodtwo.com</a> (for fundraisers) or <a href="mailto:sales@goodtwo.com">sales@goodtwo.com</a> (for businesses)</p>
      <h3>
      Get Connected!</h3>
        <p>
            The best way to keep up with the latest from GoodTwo is by connecting with us on
            Facebook and Twitter. Check us out and stay in touch!
            <br />
            <strong>Facebook:</strong> Become our fan on <a href="http://www.facebook.com/pages/GoodTwo/154434547934853"
                target="_new">Facebook </a>
            <br />
            <strong>Twitter:</strong> Follow us <a href="http://twitter.com/good_two" target="_new">
                @good_two<br />
            </a><a href="http://www.blog.goodtwo.com">Check out the Blog. </a></p>
    </div>
    <side:SidePanel ID="SidePanel1" runat="server" />
</asp:Content>
