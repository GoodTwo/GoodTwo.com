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
        <h2>Online Fundraising Tool for Run Walk Ride Event Participants</h2>
        <p>Run Walk Ride Events serve two purposes: to raise awareness and to raise money. The challenge is, most of the millions of people who participate in these events each year are not professional fundraisers. As the economy has forced family and friends to tighten their belts, it seems to get progressively harder to ask for money, and nonprofit organizations are finding that smaller donations in higher numbers are effective ways of fundraising.    </p>
    <p>GoodTwo provides Run Walk Ride participants with an additional revenue stream for their event, aside from their cash donation page and campaign. By enabling a GoodTwo campaign, participants can reach out to parts of their network they may not feel comfortable asking for cash, or approach those who have already donated for an additional contribution. Because GoodTwo campaigns integrate an offer from a business or brand, the donor is getting a full-value gift card, discount on a product or service, or other perk and the fundraiser is still receiving a meaningful donation.      </p>
    <p><strong>The GoodTwo Event Plan</strong>      </p>
    <p>GoodTwo provides a custom service for Run Walk Ride Events that enables them to create branded pages for all their participants, aggregate data, and gain access to a variety of exclusive brand offers and discounts. The Event Plan also provides a lower GoodTwo fee on each purchase.</p>
    <p><em>Features of the GoodTwo Event Plan</em></p>
    <blockquote>
      <p>- Custom branded signup form for your participants that allows you to lock brand-specific components (ex., logo, mission statement) while also allowing the participant to customize the page<br />
        - Color and theme customization<br />
        - Ability to add event advertising and sponsorship to participant pages<br />
        - Cash donation option<br />
        - Customizable payment schedule and payment methods<br />
      - No advertising on the participant or signup pages</p>
    </blockquote>
    <p><strong>Cost: </strong>$795/year, plus a 7% fee on each purchase. Includes credit card processing fee.    <br />
      <strong>Get Started: </strong>Email us at <a href="mailto:fundraisers@goodtwo.com">fundraisers@goodtwo.com</a>. We’ll get your custom information and create a custom fundraising portal specifically for your organization and event!<br />
      </p>
</div>
    <side:SidePanel ID="SidePanel1" runat="server" />
</asp:Content>
