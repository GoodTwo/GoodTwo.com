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
      <h2>Online Fundraisers for Nonprofits, Events, Schools & More</h2>
        <p>Each year, organizations and individuals send millions of donation solicitations. So how do you make yours stand out? How do you come up with new streams of revenue so that your nonprofit meets its financial goals?        </p>
        <p>GoodTwo provides a way for nonprofits, schools, run walk ride events and individuals to raise money for great causes through dynamic cause marketing campaigns. We provide offers from businesses, and every time one of your donors purchases the offer, your fundraiser receives a donation of up to 25%. Your donors get to shop for the things they want while still providing a meaningful donation to your cause.        </p>
        <p><strong>Benefits of a Cause Marketing Campaign with GoodTwo</strong>        </p>
      <blockquote>
          <p>- <strong>Rewarding:</strong> Your donor feels doubly rewarded. They get the opportunity to shop for top brands and items while also providing a meaningful donation to a cause they care about.<br />
            - <strong>Engaging:</strong> Refresh your donor list with a flood of new names. People who care about your cause but have never donated before will be attracted to the brand offers, providing you with their first donation and a new attachment to your cause, or providing a way for a dormant donor to make a new donation.<br />
            - <strong>Amplifying:</strong> Attract people with the great brand offers you have, and every purchase gives you the opportunity to tell them about your cause.</p>
        </blockquote>
<p><strong>The GoodTwo Advantage</strong></p>
<blockquote>
  <p>- We provide a way for you to tell your fundraising story through multimedia and words.<br />
    - Our platform makes it easy for you to promote your fundraiser through social media and email.<br />
    - We negotiate relationships with businesses and brands to bring you offers and deals with built-in donations.<br />
    - Depending on your plan, you can generate valuable information and analytics about the donors who are participating in your GoodTwo campaign.</p>
</blockquote>
<p><strong>Who Uses GoodTwo?</strong></p>
<blockquote>
  <p>- Individuals raising money for a cause. (Ex., those participating in a race or walk for a charity, or those who have a personal fundraising mission.)<br />
    - Nonprofit organizations looking for a simple and effective cause marketing campaign that rewards and engages donors.<br />
    - Run Walk Ride Events that are seeking a new fundraising mechanism to help their participants reach their goals. We provide a custom branded platform for these events, a home page where participants can view overall progress, and analytics for organizers on the donors.<br />
    - Schools, PTOs and PTAs seeking a novel way to raise money for student activities that requires less volunteer effort and legwork from parents.</p>
</blockquote>
<p>Questions? Email us at <a href="mailto:fundraisers@goodtwo.com">fundraisers@goodtwo.com</a> or call 1-888-372-5570. You can also check out our <a href="http://goodtwo.com/FAQ.aspx">Fundraiser FAQs</a>.</p>
    </div>
    <side:SidePanel ID="SidePanel1" runat="server" />
</asp:Content>
