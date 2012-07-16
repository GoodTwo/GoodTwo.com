<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="FAQ.aspx.cs" Inherits="FAQ" %>

<%@ Register TagPrefix="head" TagName="InteriorHead" Src="~/InteriorHeader.ascx" %>
<%@ Register TagPrefix="side" TagName="SidePanel" Src="~/SidePanel.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:InteriorHead ID="InteriorHead1" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <h2>
            Frequently Asked Questions
        </h2>
        <p><em><strong>What is GoodTwo?</strong></em><br />
GoodTwo stands for &ldquo;Good Deal. Good Cause.&rdquo; At its most basic level, your supporters are getting good deals and saving money while also supporting your cause. GoodTwo allows anyone to run a free online fundraiser that uses great deals from local, regional and national businesses like spas, salons, restaurants and retailers. You get to create an online fundraising website, pick from our menu of deals, and promote your page. Every time someone buys one of your deals, you get a donation. </p>
        <p>The purpose of GoodTwo is to motivate your supporters to buy a deal in order to create an incremental donation stream for you and to reward the donor by allowing them to save money while they&rsquo;re donating.</p>
        <p><em><strong>What does GoodTwo cost?</strong></em><br />
      GoodTwo is a free online fundraiser. We do not charge you to set up or run your fundraiser. We do take a portion of each sale you make, so we don&rsquo;t make money unless you do.</p>
        <p><em><strong>How much of each sale is going to my fundraiser?</strong></em><br />
      Typically you receive 25% of each sale for your fundraiser. This information is fully transparent for the buyer, who sees the exact amount that is going back to your cause when they choose to buy the deal, through the entire checkout process, and when they print their certificate.</p>
        <p><em><strong>How do my supporters get their deals, and what happens if they have an issue or question?</strong></em><br />
      GoodTwo provides fulfillment and support as part of our service. Your supporters will receive an email with a PDF certificate on it that can be used to redeem their deal. If they have questions or issues, they can contact our support team at <a href="mailto:support@goodtwo.com">support@goodtwo.com</a>.</p>
        <p><em><strong>How do I receive my funds?</strong></em><br />
      You provide a mailing address for your check when you sign up for GoodTwo. We send your check after your fundraiser closes.</p>
        <p><em><strong>Can I provide my own deals or do I have to use GoodTwo&rsquo;s?</strong></em> <br />
      GoodTwo works closely with merchants to create deals that our fundraisers can choose from, making GoodTwo an instant, plug and play fundraiser. At any time, you can create a GoodTwo fundraiser website and a variety of deals will be available. However, we are always happy to work with an organization&rsquo;s sponsors or local businesses that want to provide a deal. Just email us at <a href="mailto:sales@goodtwo.com">sales@goodtwo.com</a> and we will take it from there.</p>
<h3 class="left">
        Still have questions? <a href="contact.aspx">Contact us</a></h3>
    </div>
    <side:SidePanel ID="SidePanel1" runat="server" />
</asp:Content>
