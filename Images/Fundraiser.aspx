<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Fundraiser.aspx.cs" Inherits="Fundraisers" %>

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
            For Fundraisers</h2>
        <p>
            <strong>Every day, millions of people visit group buying sites like CoupMe&reg;, Groupon&reg;
                and LivingSocial&reg; to purchase great deals at local and national businesses.
                These sites offer discounts of 50% or more at restaurants, spas, shops and more.
                Group buying is hugely popular, and GoodTwo has created a way for fundraisers to
                capitalize on it to raise money for their nonprofits, community groups and schools.</strong></p>
        <h3>
            Why goodtwo&#8482;?</h3>
        <p>
            GoodTwo is a free fundraising platform that allows nonprofits, schools, community
            groups and individuals raising money for a cause to present fantastic deals on their
            own unique, dedicated page. GoodTwo provides all of the following benefits of a
            successful fundraiser with none of the risks:
        </p>
        <p>
            <strong>It's Easy and Free.</strong> Fill out a simple form to build your own fundraising
            page, which includes your mission, goals and multimedia, such as photos and a video.
            Your page has a unique URL, making it easy and cost-efficient to spread the word
            through social media and email. Running the fundraiser is completely free.
        </p>
        <p>
            <strong>You Benefit from Every Deal Sold.</strong> Every time a donor buys a deal
            from your page, a portion of the proceeds are donated toward your cause. Because
            GoodTwo is an online fundraiser and we handle fulfillment and customer service,
            it's simple to get the word out to your donor list. Just share the link to your
            page in as many places as you can - Facebook, Twitter, email, your website, etc.
            - and bring in the donors. We'll take care of the rest.
        </p>
        <p>
            <strong>Everyone Wins.</strong> GoodTwo is the rare fundraiser that rewards both
            you and your donors. Your cause receives cash for every deal sold, and the donor
            feels good about getting a fantastic deal on something he or she wants. Once your
            fundraiser ends, you'll receive a check for the amount you've earned through your
            deals with GoodTwo. There's no charge to you - just pure profit for your cause and
            rewards for your donors.
        </p>
        <p>
            <strong>Still have questions?</strong> Call us at (866) 249-8387 or email us at
            <a href="mailto:fundraisers@goodtwo.com">fundraisers@goodtwo.com</a></p>
    </div>
    <side:SidePanel ID="SidePanel1" runat="server" />
</asp:Content>
