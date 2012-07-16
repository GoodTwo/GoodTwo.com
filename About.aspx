<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="About.aspx.cs" Inherits="About" %>

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
            About GoodTwo</h2>
        <p>GoodTwo provides a unique fundraising tool to nonprofits, community organizations, schools and individuals that helps them raise money by rewarding their donors with offers from top-tier brands and businesses.</p>
        <p>In recent years, the economy has hit the fundraising sector hard, with the size of donations decreasing year by year. While many of us want to contribute to our favorite causes, we know life gets in the way, and the money isn’t always there.</p>
        <p>The team at GoodTwo combined its experience with nonprofits and fundraising and a background in the online retail space, and realized that giving brands a way to give back to great causes while gaining their supporters as customers was a win for everyone. Fundraisers on GoodTwo's platform range from large national nonprofit organizations to school or community groups to individuals participating in Run Walk Ride events.</p>
        <p>GoodTwo allows fundraisers to run custom, hand-picked offers from local and national businesses, giving them a fundraising tool that will really appeal to their donor base. The businesses running the offers get great cause association and a valuable, measurable new customer base. For those who are sponsoring nonprofit organizations already, GoodTwo makes a great extension of their efforts and gives them an incremental way to add value to the partnership.</p>
        <p>The team here at GoodTwo has a background in fundraising, cause marketing, and group buying, and we’re always happy to talk with fundraisers and businesses alike about ideas, initiatives, and how we might partner. If you’re a nonprofit or fundraiser, email us at&nbsp;<a href="mailto:fundraisers@goodtwo.com">fundraisers@goodtwo.com</a>. If you’re a business looking to run a cause marketing program with GoodTwo, email us at&nbsp;<a href="mailto:sales@goodtwo.com">sales@goodtwo.com</a>. Or check out our&nbsp;<a href="http://goodtwo.com/Contact.aspx">contact information</a>&nbsp;for other ways to get in touch.</p>
<p><strong>What Fundraisers Are Saying</strong></p>
        <p>“GoodTwo has allowed Hands On Miami to expand our fundraising efforts while offering amazing deals to our volunteers. &nbsp;GoodTwo gives nonprofit organizations the opportunity to select deals specifically tailored to their clients’ interests. GoodTwo can serve as an incredible resource for all nonprofit organizations, and their staff is fantastic and dedicated to providing your nonprofit with quality customer service and attention.”</p>
        <blockquote>
          <p>	<em>Nathan Reiser, Project Manager, <a href="http://www.handsonnetwork.org" target="_blank">Hands On Miami</a></em></p>
        </blockquote>
        <p>“The Ellie Fund loves to be able to give back to those who support us. With GoodTwo, supporters can get a great deal while making a donation. With the popularity of Groupon and LivingSocial, GoodTwo is a brilliant fundraising tool and we are honored to be working with them.”</p>
      <blockquote>
  <p><em>Hillary McManama, Development Coordinator, <a href="http://www.elliefund.org" target="_blank">The Ellie Fund</a></em></p>
</blockquote>
  </div>
    <side:SidePanel ID="SidePanel1" runat="server" />
</asp:Content>
