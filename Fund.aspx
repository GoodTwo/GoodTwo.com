<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Fund.aspx.cs" Inherits="Funds_Fund" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "../Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro">
            <div  class="left" style="width:180px">
            <img id="IntroFundLogo" style="vertical-align:top" runat="server" src="" alt="Logo" clientidmode="Static" />
            </div>
         
            <div id="causeIntroContent">
                <div id="titleline">
                    <h2>
                        <span id="IntroFundTitle" runat="server" clientidmode="Static"></span>
                    </h2>
                    <h3>
                        <span id="IntroFundCity" runat="server" clientidmode="Static"></span>, <span id="IntroFundState"
                            runat="server" clientidmode="Static"></span>
                    </h3>
                </div>
                <p>
                    <span id="IntroFundTagline" runat="server" clientidmode="Static"></span>
                </p>
            </div>
          
        
        </div>
    </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <br />
<br />
<br />
    <div class="left">
        <div id="mediaSection" class="causeVideo"  runat="server" clientidmode="Static">
            <span id="LeftFundMedia" runat="server" clientidmode="Static" style="display: none">
            </span>
            <img id="LeftPhoto" runat="server" class="resize" src="" alt="photo" clientidmode="Static" style="display: none" />
        </div>
        <h3>
            <span id="LeftCauseName" runat="server" clientidmode="Static"></span>
        </h3>
        <br />
        <div id="LeftFundWebSite" runat="server"></div>
        <p>
            <span id="LeftFundBody" runat="server" clientidmode="Static"></span>
        </p>
      
        
        <div id="fb-root">
        </div>
        
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>

        <fb:comments xid="comments" numposts="10" width="370" publish_feed="true"></fb:comments>
    </div>
    <div class="right">

        <script type="text/javascript">
            $(function() {
                var textDate = document.getElementById("<%=hiddenEndDate.ClientID%>").innerHTML;
                var austDay = new Date(textDate);
                $("#DayCount").countdown({ until: austDay, layout: '{d<}{dn} {dl} {d>}' });
            });
        </script>

        <div id="dealSummary">
            <p class="first">
                <strong>
                    <asp:Label ID="ProductCount" runat="server"></asp:Label></strong> deals, <strong>
                        <asp:Label ID="SupporterCount" runat="server"></asp:Label></strong> supporters</p>
            <p>
                <strong>
                    <asp:Label ID="PledgeCount" runat="server"></asp:Label></strong> pledged of
                <strong>
                    <asp:Label ID="GoalCount" runat="server"></asp:Label></strong> goal</p>
            <p class="last">
                <strong><span id="DayCount" style="background: none; border: none;"></span></strong>
                remaining to help this cause</p>
            <span id="hiddenEndDate" style="display: none" runat="server"></span>
            <p class="shareThis">
                SHARE THIS CAUSE WITH YOUR FRIENDS</p>
            <ul class="shareCont">
                <li class="facebook"><a href="http://www.facebook.com" target="_new">Facebook</a></li>
                <li class="twitter"><a href="http://www.twitter.com" target="_new">Twitter</a></li>
                <li class="email"><a href="mailto:somebody@somewhere.com">Email</a></li>
                <li class="likeButton">
                    <iframe src="http://www.facebook.com/plugins/like.php?href=http://voices.goodtwo.com;layout=button_count&amp;show_faces=true&amp;width=450&amp;action=like&amp;colorscheme=light&amp;height=21"
                        scrolling="no" frameborder="0" style="border: none; overflow: hidden; width: 200px;
                        height: 31px;" allowtransparency="true"></iframe>
                </li>
            </ul>
        </div>
        <div class="howItWorks">
            <p>
                <strong>Here's how it works:</strong> You save on deals from the merchants below and part of each purchase benefits this cause, it's a win - win situation for everyone.</p>
        </div>
        <div id="NoProduct">        
            <asp:PlaceHolder ID="PlaceHolder1" Visible="false" runat="server"></asp:PlaceHolder>
            <br />
        </div>
    </div>
    <asp:HiddenField runat="server" ID="hiddenIsOwner" />
</asp:Content>
