<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Fundraiser.aspx.cs" Inherits="Fundraiser" %>

<%@ Register TagPrefix="head" TagName="InteriorHead" Src="~/InteriorHeader.ascx" %>
<%@ Register TagPrefix="head" TagName="InteriorHeaderSubNav2" Src="~/InteriorHeaderSubNav2.ascx" %>
<%@ Register TagPrefix="side" TagName="SidePanel" Src="~/SidePanel.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:InteriorHead ID="InteriorHead1" runat="server" />
        <head:InteriorHeaderSubNav2 ID="InteriorHeaderSubNav2" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <h2>Free &amp; Easy Online Fundraisers for Schools, Sports Teams, PTOs and More</h2>
      <p>GoodTwo is a unique, easy, and free fundraiser for schools, PTOs, school clubs or sports teams. Running an online school fundraiser through GoodTwo requires no up-front investment and no fulfillment or other labor that school fundraisers like cookie dough or wrapping paper often require. It’s as simple as setting up a free online fundraising page, selecting offers from great barnds, and then asking parents and the school community to spread the word by sending the link with our easy Facebook, email and Twitter tools. </p>
When people make a purchase of one of the offers in your fundraiser, they get a product or gift card to an online or in-store retailer, and you get a donation of up to 25%.
<p><strong>How Does It Work?</strong></p>
      <p>GoodTwo is a free online fundraiser and it takes less than five minutes to set up your GoodTwo page. Here’s how it works:</p>
      <blockquote>
        <p>1. <a href="http://goodtwo.com/Account/Register.aspx?ReturnUrl=/Funds/NewFund.aspx">Set up your online school fundraiser</a> by entering information about what you&rsquo;re fundraising for.<br />
          2. Select up to three different offers that your school community will like. Your page will automatically build with featured offers.<br />
          3. Promote your page to your school community by Facebook, email and Twitter. Every time someone buys a deal, you get a donation. We take it from there and handle all fulfillment and customer service.</p>
</blockquote>
<p><strong>Why Is GoodTwo the Best School Fundraiser Available?</strong></p>
      <p>Parents and school communities are stretched to their limits as they try to make up for cuts in school budgets. PTOs and PTAs, school groups, room parents, sports teams and more are always looking for creative and easy school fundraisers, and GoodTwo provides just that.</p>
      <p><strong><em>It’s Free:</em></strong>&nbsp;There is NO up-front cost to using GoodTwo. It is entirely performance-based and you receive approximately 25% of each sale.</p>
      <p><strong><em>It Gives Back to Your Supporters:</em></strong>&nbsp;Parents and supporters have the opportunity to make a purchase that they might otherwise be spending money on, and you reap the benefits.</p>
      <p><strong><em>It’s Easy</em></strong><em>:</em>&nbsp;The “easy” school fundraiser is a tough thing to find. So many fundraisers require kids to go door-to-door, parents to volunteer for fulfillment, or up-front costs and risk. With GoodTwo, everything is done online, so it’s really quick and easy for everyone to participate and spread the word. Not only will you raise money, you’ll reduce the time parents spend volunteering for fundraising.</p>
      <p>Try it out! It takes just five minutes to&nbsp;<a href="http://goodtwo.com/Account/Register.aspx?ReturnUrl=/Funds/NewFund.aspx">sign up for a school fundraiser with GoodTwo</a>.</p>
      <p><strong>Working with Your Local Businesses</strong></p>
      <p>GoodTwo has a variety of offers available in select cities and online retailers, but we know that fundraising for schools is often a very local effort and there are lots of local companies that you may already work with. We would love to feature an offerwith them especially for your school’s fundraising efforts.</p>
    <p>If you work with a local retailer, restaurant, service provider or other business that would like to get involved in your GoodTwo fundraiser, email&nbsp;<a href="mailto:sales@goodtwo.com">sales@goodtwo.com</a>. We will work with them to create a deal that makes sense to market their business and help you fundraise.    </p></div>
    <side:SidePanel ID="SidePanel1" runat="server" />
</asp:Content>
