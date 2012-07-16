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
        <h2>GoodTwo Pricing</h2>
      <p>GoodTwo offers two options for your fundraiser, depending on whether you are running a single fundraiser or whether you are an event-based fundraiser that has multiple participants. If you have any questions about which is the best fit for you, email us at <a href="mailto:fundraisers@goodtwo.com">fundraisers@goodtwo.com</a> or call (888) 372-5570.</p>
      <p><strong>The GoodTwo Nonprofit &amp; Individual Plan</strong></p>
      <p>GoodTwo provides a FREE fundraising website for individuals looking to raise money with a cause marketing campaign. It takes fewer than five minutes to customize and set up, and comes with a variety of benefits.</p>
      <p><em>Features of the GoodTwo Individual Plan</em></p>
      <blockquote>
        <p>- Customizable fundraising page where you can tell potential supporters about your cause and why you’re raising money<br />
          - Access to a variety of deals and offers from businesses and brands across the country.<br />
          - Social sharing tools that allow you to spread the word through Facebook, Twitter and email.</p>
      </blockquote>
<p><strong>Cost: </strong>FREE, with a 10% fee on each purchase.<br />
  <strong>Get Started: </strong>Click here [link to signup page] to sign up for your free account and be fundraising in minutes.</p>
<p><strong>The GoodTwo Event Plan</strong></p>
<p>GoodTwo provides a custom service for Run Walk Ride Events that enables them to create branded pages for all their participants, aggregate data, and gain access to a variety of exclusive brand offers and discounts. The Event Plan also provides a lower GoodTwo fee on each purchase.</p>
<p><em>Features of the GoodTwo Event Plan</em></p>
<blockquote>
  <p>- Custom branded signup form for your participants that allows you to lock brand-specific components (ex., logo, mission statement) while also allowing the participant to customize the page.<br />
    - Color and theme customization<br />
    - Ability to add event advertising and sponsorship to participant pages<br />
    - Cash donation option<br />
    - Customizable payment schedule and payment methods<br />
    - No advertising on the participant or signup pages</p>
</blockquote>
<p><strong>Cost: </strong>$795/year, plus a 7% fee on each purchase. Includes credit card processing fee.<br />
  <strong>How to Sign Up: </strong>Email us at <a href="mailto:fundraisers@goodtwo.com">fundraisers@goodtwo.com</a> to get started. </p>
</div>
    <side:SidePanel ID="SidePanel1" runat="server" />
</asp:Content>
