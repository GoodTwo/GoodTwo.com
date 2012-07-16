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
        <h2>Run Walk Ride Events - Individual Level</h2>
        <p>GoodTwo is a free, creative way to help you earn donations towards your fundraising goal as you prepare for your event. It takes just a few minutes to sign up for your own custom GoodTwo campaign and select from a menu of deals that will appeal to your family and friends. Every time a supporter buys a deal, the buyer saves money and you get a donation towards your goal--it&rsquo;s a win-win! If you&rsquo;re a nonprofit organization looking to give participants more fundraising options, <a href="http://www.goodtwo.com/RWROrg.aspx">check out the benefits of working with us.</a></p>
      <p><strong>How Does It Work?</strong></p>
      <p>1. Create a page by filling in <a href="http://goodtwo.com/Account/Register.aspx?ReturnUrl=/Funds/NewFund.aspx">this simple form.</a></p>
      <p>2. Pick up to three deals that your network will like.</p>
      <p>3. Promote your page via Facebook, Twitter and email, just as you would any other fundraiser. </p>
      <p>4. When your fundraiser closes, you&rsquo;ll get a check, or it will be mailed directly to the organization your event is benefitting with a reference to your account.       </p>
      <p><strong>Why GoodTwo?</strong></p>
<p><strong>Rewards Donors:</strong> Thank the people who have so generously supported you throughout your fundraising with the option to buy great deals from local, regional and national brands they love. And of course, every time they make a purchase, you&rsquo;ll receive a donation.</p>
<p><strong>Engages Non-Donors:</strong> If there are people who would love to support you but just can&rsquo;t donate right now, GoodTwo is a great way to connect with them.They get a deal that saves them money and you automatically receive a donation without it costing them a thing.</p>
<p><strong>Reduces Labor/Effort: </strong>You&rsquo;re not a professional marketer, and if you&rsquo;re raising money for your event, chances are that you&rsquo;ll have to get creative with your fundraising efforts. Many fundraising events and campaigns require you to invest significant time approaching local businesses, baking, throwing parties, or the like. With GoodTwo, you sign up online in a few minutes, promote your page to friends and family, and we do the rest.</p>
<p><strong>Spices Up the Fundraising Cycle:</strong> With tens of millions of people participating in Run Walk Ride events each year, fundraising appeals, bake sales, auctions and even the most creative events have become commonplace. GoodTwo is a way to catch the eye of your supporters, to allow them to donate in one click from their computer, and to give them something in return. By providing them with great deals like the ones they&rsquo;ve seen on Groupon or LivingSocial, GoodTwo injects fun into fundraising and gets people excited about supporting your event.        </p>
<p><a href="http://goodtwo.com/Account/Register.aspx?ReturnUrl=/Funds/NewFund.aspx">Click here to set up your page instantly - it takes less than five minutes</a>. 
<p>Questions? Email us at <a href="mailto:fundraisers@goodtwo.com">fundraisers@goodtwo.com</a> or call us at 1-888-372-5570.</p>
        <p><a href="http://goodtwo.com/RWRparticipant.pdf">Click here to download a PDF with more information. </a>    </p>
    </div>
    <side:SidePanel ID="SidePanel1" runat="server" />
</asp:Content>
