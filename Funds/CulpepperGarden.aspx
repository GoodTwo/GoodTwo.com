<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="CulpepperGarden.aspx.cs" Inherits="Funds_CulpepperGarden" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/Culpepper-Garden-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>Culpepper Garden</h2>
<h3> Arlington, VA</h3>
                </div>
                <p>Culpepper Garden is proud to have been providing affordable housing to Arlington County and Northern Virginia's low and moderate income elderly since we first opened our doors in 1975. We serve over 340 residents some of whom need additional supportive services.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="../Images/Culpepper-Garden-main.jpg" width="391" height="313" /></div>
        <h3>Raising Money for Culpepper Garden</h3>
      Culpepper Garden is proud to have been providing affordable housing to Arlington County and Northern Virginia's low and moderate income elderly since we first opened our doors in 1975. We serve over 340 residents some of whom need additional supportive services.
      <p><a href="http://www.culpeppergarden.org" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="CulpepperGarden" numposts="10" width="370" publish_feed="true"></fb:comments>
    </div>
  <div class="right">
        <script type="text/javascript">
            $(function () {
                var textDate = document.getElementById("<%=hiddenEndDate.ClientID%>").innerHTML;
                var austDay = new Date(textDate);
                //$('#defaultCountdown').countdown({ until: austDay });
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
            <li>
              <div>
                <h3> $25 for $50 Worth of Gifts &amp; Gift Baskets at Occasions to Remember</h3>
                <img src="../Images/Occasions-to-remember.jpg" alt="" />
                <p class="prices"> Price: $25<br />
                  Discount: 50%<br />
                  You Save: $25</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=culpgarden_occasions"
                            class="buyNow">Buy Now</a> $6.25 will be donated to this cause.</p>
                <p class="description"> Sure, flowers are pretty to look at, but wouldn&#8217;t you rather be munching on gourmet cheeses or decadent chocolate truffles? That&#8217;s what we thought! There are so many occasions when we want to send a little thought: New jobs. New marriages. New babies. Just to say &#8220;Thanks,&#8221; &#8220;Hello,&#8221; &#8220;I love you,&#8221; or &#8220;Have a great day!&#8221; With this amazing offer, you can send warm, fuzzy, delicious thoughts someone&#8217;s way for half the price. $25 gets you $50 worth of goods at <a href="http://otrgifts.com" target="_new">Occasions to Remember</a>. Order online and send a beautiful, gift-wrapped basket anywhere in the country. Occasions to Remember has something for every price range and taste. Send a <a href="http://www.otrgifts.com/ecommerce/ecomm_product_details.asp?prodid=172&amp;source=cat&amp;catid=1" target="_new">Picnic in the Park</a> with its delicious treats all wrapped in a picnic basket with all the fixings. Welcome someone new to the world with the <a href="http://www.otrgifts.com/ecommerce/ecomm_product_details.asp?prodid=167&amp;source=cat&amp;catid=10" target="_new">Baby Bundle</a> or <a href="http://www.otrgifts.com/ecommerce/ecomm_product_details.asp?prodid=175&amp;source=cat&amp;catid=10" target="_new">Truckloads of Fun</a>. Or give the office a special boost with the <a href="http://www.otrgifts.com/ecommerce/ecomm_product_details.asp?prodid=181&amp;source=cat&amp;catid=14" target="_new">Crowd Pleaser! </a>Whatever your occasion, make it a little extra special with these beautiful, deliverable gifts from Occasions to Remember. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=culpgarden_occasions"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Occasions to Remember</th>
                  </tr>
                  <tr>
                    <td class="firstTD"><em>Website</em></td>
                  </tr>
                  <tr>
                    <td><a href="http://www.otrgifts.com/">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        </ul>
  </div>
</asp:Content>
