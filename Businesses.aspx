<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Businesses.aspx.cs" Inherits="Businesses" %>

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
  <h2>For Businesses</h2>
  <p>Every day, marketers spend millions of dollars bringing new customers through their doors, and turning first-time customers into loyal customers. But there is a proven and effective way to market your brand that not only boosts your sales, but also allows your company to help some fantastic causes in the process.</p>
  <blockquote>
    <p>- 83% of Americans wish more of the products, services and retailers they use would support a cause.<br />
      - 85% of consumers have a more positive image of a product or company when it supports a cause they care about.<br />
      - When a brand is associated with a cause, 19% of customers will buy a more expensive brand, 46% will try a generic or private-labeled brand, or 61% will try a new brand than one they have never heard of.<br />
      - 53% of Americans would rather support a company that allows them to impact the donation by tying their purchase to it, than one that is giving a lump sum of money to a cause out of its own pocket.  </p>
  </blockquote>
<p>Aligning your brand with a cause is a powerful way to draw loyal new customers in, but cause marketing campaigns can often be costly and difficult to administer. GoodTwo changes all of that, with a simple and effective cause marketing platform for brands that allows them to align with a variety of great charities and nonprofit organizations looking for creative ways to raise money.</p>
  <p>Aligning your brand with a GoodTwo campaign not only means pairing with a cause, it means that your brand will be promoted by nonprofits and individuals who are truly invested in raising money for the cause through buying offers at your business. It’s peer-to-peer marketing that feels good.</p>
  <p><em>How It Works:</em><br />
    <br />
    Nonprofit organizations of all sizes come to GoodTwo every day to sign up for cause marketing campaigns. Take advantage of the peer-to-peer marketing  that these causes do to raise money for their campaigns by providing an offer from your business on GoodTwo.</p>
  <blockquote>
    <p>- GoodTwo provides fundraisers with offers from businesses and brands, with a portion of each purchase being donated back to the fundraiser.<br />
      - The offer can range from a full-priced gift card or item to an offer with a discount or incentive.<br />
      - Once we’ve determined the best offer for your business, it is loaded onto the GoodTwo platform for fundraisers to choose.<br />
      - Every time a supporter purchases your offer, they get a certificate with both your business and the cause on it. </p>
  </blockquote>
<p>For more information or to discuss promoting your brand with GoodTwo, email <a href="mailto:sales@goodtwo.com">sales@goodtwo.com</a> or call us at (888) 372-5570.</p></div>
  <p>
    <side:SidePanel ID="SidePanel1" runat="server" />
  </p>
</asp:Content>
