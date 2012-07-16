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
        <h2>
            Online Fundraising &amp; Cause Marketing Fundraiser for Nonprofits &amp; Individuals</h2>
      <p>GoodTwo provides fundraising campaigns for all types of nonprofit organizations and individuals raising money, from health causes to pet shelters to community organizations. We provide you with a customizable fundraising page that allows you to highlight your cause and reasons for raising money. Then, select from offers and deals from a variety of businesses and brands and run a successful cause marketing campaign.</p>
      <p>GoodTwo’s social sharing and email features allow you to quickly and effectively promote your fundraiser to your donor network, and best of all allows them to send it to their family and friends, expanding your reach.</p>
      <p>GoodTwo provides you with a free fundraising page where you can describe your cause and then select from a variety of different offers from brands and businesses. Every time one of your supporters makes a purchase, they get to shop for something they want while you get a meaningful donation towards your cause.</p>
      <p>With free social sharing tools, you can quickly let your family and friends know about your fundraiser through Facebook, Twitter and email.</p>
      <p><strong>The GoodTwo Nonprofit and Individual Plan</strong></p>
      <p>GoodTwo provides a FREE fundraising website for individuals looking to raise money with a cause marketing campaign. It takes fewer than five minutes to customize and set up, and comes with a variety of benefits.</p>
<p><em>Features of the GoodTwo Individual Plan</em></p>
      <blockquote>
        <p>- Customizable fundraising page where you can tell potential supporters about your cause and why you’re raising money<br />
          - Access to a variety of deals and offers from businesses and brands across the country.<br />
          - Social sharing tools that allow you to spread the word through Facebook, Twitter and email.</p>
      </blockquote>
<p><strong>Cost: </strong>FREE, with a 10% fee on each purchase.<br />
  <strong>Get Started: </strong><a href="goodtwo.com/Account/Register.aspx">Click here</a> to sign up for your free account and be fundraising in minutes.</p>
</div>
    <side:SidePanel ID="SidePanel1" runat="server" />
</asp:Content>
