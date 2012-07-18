<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="integritybeauty.aspx.cs" Inherits="Funds_integritybeauty" %>

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
            <img id="IntroFundLogo" src="../Images/integritybeauty-logo.gif" alt="Logo" />
            <div id="causeIntroContent">
                <div id="titleline">
                    <h2>Integrity Beauty Women of Excellence</h2>
                    <h3>Ohio</h3>
                </div>
                <p>Integrity Beauty Women of Excellence is a Christian Ministry that uses the pageant concept to bring the lost to Christ.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="../images/integrity-main.jpg" width="391" height="313" /></div>
        <h3>About Us</h3>
      <p>March 30, 2011 we will be having our annual day of prayer and paying it forward for Helen L Albert out visionary for Integrity Beauty. We are seeking funds to help assist to pay for this very special day in Honor of Helen L. Albert. This day we will also introduce our national representatives for our program.</p>
        <a class="visitSite" href="http://www.msintegritybeauty.com">visit website &raquo;</a>
        <div id="fb-root">
      </div>

        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>

        <fb:comments xid="integritybeauty" numposts="10" width="370" publish_feed="true"></fb:comments>
    </div>
    <div class="right">

        <script type="text/javascript">
            $(function () {
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
                    <asp:Label ID="PledgeCount" runat="server"></asp:Label>
                </strong> raised of
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
                <strong>Here's how it works:</strong> You save on deals from the merchants<br />
                below and part of each purchase benefits this cause,<br />
                it's a win - win situation for everyone.</p>
        </div>
        <ul id="merchantList">
            <li class="first">
              <div>
                <h3> $30 for a Dozen Roses Plus a Teddy Bear ($80 value) from Y-KnotFlowers.com</h3>
                <img src="../Images/Yknot-roses.jpg" alt="" />
                <p class="prices"> Price: $30<br />
                  Discount: 63%<br />
                  You Save: $50</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=Integrity_Yknot30"
                            target="_new" class="buyNow">Buy Now</a> $7.50 will be donated to this cause</p>
                <p class="description"> A dozen long-stemmed red roses are a Valentine&#8217;s Day staple, sure to be a hit with your loved one. Get them delivered by <strong>Y-Knot Flowers for just $30 (an $80 value)</strong>, and they&#8217;ll throw in an adorable little Valentine&#8217;s Day teddy bear to drive your love home. Give more love for less with this great deal from Y-Knot Flowers,<strong> delivered for </strong><span style="padding-bottom:7px;"><strong>$15 Nationwide</strong>. </span><a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=Integrity_Yknot30"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Y-Knot Flowers.com</th>
                  </tr>
                  <tr>
                    <td><em>Nationwide Delivery</em></td>
                    <td><a href="http://www.kabloom.com" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $15 for $30 worth of Fresh Flowers from Y-KnotFlowers.com</h3>
                <img src="../Images/Yknot-flowers.jpg" alt="" />
                <p class="prices"> Price: $15<br />
                  Discount: 50%<br />
                  You Save: $15</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=Integrity_Yknot15"
                            target="_new" class="buyNow">Buy Now</a> $3.75 will be donated to this cause</p>
                <p class="description"> A delivery of flowers can brighten up any day, but on Valentine&#8217;s Day, a bouquet of fresh, beautiful flowers being hand-delivered to your loved one&#8217;s desk or door is almost a necessity. Luckily, it doesn&#8217;t have to cost a fortune. With this fantastic deal, you&#8217;ll receive a voucher for <strong>$30 worth of flowers and goods from Y-Knot Flowers for just $15,</strong> with<span style="padding-bottom:7px;"><strong> delivery for $15 Nationwide</strong></span>. Choose from any of Y-Knot&#8217;s fresh, artistic arrangements and save yourself some money while sending all your love. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=Integrity_Yknot15"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Y-Knot Flowers.com</th>
                  </tr>
                  <tr>
                    <td><em>Nationwide Delivery</em></td>
                    <td><a href="http://www.kabloom.com" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $15 for $30 Worth of Gourmet Coffees, Teas and More at Aroma Ridge!</h3>
                <img src="../images/AromaRidge.jpg" alt="" />
                <p class="prices"> Price: $15<br />
                  Discount: 50%<br />
                  You Save: $15</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=Integrity_Aroma"
                            class="buyNow">Buy Now</a> $3.75 will be donated to this cause</p>
                <p class="description"> Are you still struggling to find that perfect cup of coffee? Whether it's something to give you that extra jolt before the workday begins or a rich blend to pair with your weekend newspaper ritual, a cup o' Joe can either make or break your day. And that's exactly how <strong>Aroma Ridge</strong> transpired: the passion for the most perfect cup of coffee. Now, 20 years later, Aroma Ridge has transformed into a small, family-owned business, providing a plethora of the finest mountain grown gourmet coffees, quality teas, accessories and more to enjoy in your very own home. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=Integrity_Aroma"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Aroma Ridge</th>
                  </tr>
                  <tr>
                    <td><em>Website</em></td>
                    <td><a href="http://www.aromaridge.com" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        </ul>
    </div>
</asp:Content>
