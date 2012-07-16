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
        <h2>Run Walk Ride Events - Organizer Level</h2>
        <p>When your organization runs fundraiser walks, marathons, fun runs, or bike rides for a cause, you need to give your participants the tools to help them be successful and reach their fundraising goals. GoodTwo is a free online fundraiser that allows your participants to create an individual page and select different deals from businesses to feature. Every time a supporter buys a deal, they save money and the fundraiser gets a donation. We provide custom marketing kits to your participants to help them market their fundraiser, and Best Practices for you to help you tell your participants about the GoodTwo option.</p>
        <p>The average Run Walk Ride participant raises just $146, so additional fundraising efforts like GoodTwo can really make an impact on your bottom line. It&rsquo;s also an exciting fundraiser for participants, who enjoy offering great deals to their supporters.</p>
        <p><a href="http://goodtwo.com/rwrorg.pdf">Click here for a printable GoodTwo fact sheet.</a></p>
      <p><strong>How Does It Work?</strong></p>
      <p>
        Anyone participating in a Run Walk Ride event can sign up for their own GoodTwo fundraiser by <a href="http://goodtwo.com/Account/Register.aspx?ReturnUrl=/Funds/NewFund.aspx">registering through our site</a>. However, we encourage nonprofits hosting these events to create a branded landing page for the event. It&rsquo;s a simple, free process that just requires you to fill out a short form and offers a variety of benefits:</p>
      <p><em><strong>Brand Integrity</strong></em><strong>: </strong>We lock certain fields (like your logo and mission statement) to ensure that all participants have the same look and feel.</p>
      <p><em><strong>Faster Sign-Up</strong></em><strong>: </strong>By providing us with default fields, we can allow your participants to sign up very quickly and customize as much or as little of their form as they&rsquo;d like.</p>
      <p><em><strong>Payment Control</strong></em><strong>: </strong>We lock payment terms, who the check is made out to, where it&rsquo;s sent, and how your participant is identified in the memo field to allow you to account for funds appropriately and ensure all donations make it to your office.</p>
      <p><em><strong>Data and Information</strong></em><strong>:</strong> When your fundraisers sign up through a streamlined landing page, we can give you data on who signed up, how much is raised, and who made purchases that we would not otherwise be able to provide.</p>
<p>If you&rsquo;re interested in setting up a GoodTwo landing page for your Run, Walk, or Ride event, email <a href="mailto:fundraisers@goodtwo.com">fundraisers@goodtwo.com</a> or call us at 888-372-5570.</p>
        <p><strong>GoodTwo and Your Sponsors</strong></p>
        <p>
          GoodTwo offers a list of merchants to all fundraisers—deals that we&rsquo;ve prospected and developed ourselves.&nbsp; But chances are your organization already has sponsors and you work with a number of businesses throughout the year. For those companies, running a GoodTwo deal is a great way to extend their cause association while also gaining measurable new customers. Plus, while their sponsorship may originally have gotten the eyeballs of your supporters and participants on a business&rsquo; logo, a deal with GoodTwo has a viral impact as your supporters email it to family members and friends.</p>
<p>GoodTwo works with sponsors and businesses on a reference basis. If you already have supportive businesses that you would like to make a part of your GoodTwo fundraiser, we can work with them to create a great deal and make it a part of your fundraising campaign.</p>
        <p>Email us at <a href="mailto:fundraisers@goodtwo.com">fundraisers@goodtwo.com</a> or call us at 1-888-372-5570 to find out more.    </p>
    </div>
    <side:SidePanel ID="SidePanel1" runat="server" />
</asp:Content>
