<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="OCinema.aspx.cs" Inherits="Funds_OCinema" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro">
            <img src="../Images/OCinema.gif" alt="Logo" />
            <div id="causeIntroContent">
          <div id="titleline">
                    <h2>
    Support Independent Film in Miami through O Cinema<sup></sup></h2>
                    <h3>
        MA/NH</h3>
                </div>
                <p>O Cinema is cutting-edge independent cinema located in Miami's Wynwood Arts District, that specialize in showing first-run independent, foreign, art, and niche market films. Supporting O Cinema helps support the vital and vibrant arts community in Miami, and helps enhance the cultural quality of life in Miami-Dade County. </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="../images/OCinema-main.jpg" width="391" height="313" /></div>
        <h3>
            About O Cinema</h3>
      <p>O Cinema was awarded a cash match Knight Foundation Arts Partnership g rant to establish the cinema's presence in the South Florida entertainment and arts marketplace. Your support will help us achieve our cash match goals.</p>
      <p>Mission: O Cinema shall empower, nurture and support the development of new arts and cultural work and to present those works to the public with an emphasis on film.</p>
      <p>Core Philosophies: A) Provide intriguing, entertaining, and superior quality films that audiences will otherwise not see in Miami-Dade County, B) insure that prices are accessible for the broadest possible audience, C) transform Miami-Dade by creating a cultural beacon that offers films of interest to ALL demographics.</p>
      <p>Aside from a regular schedule of revolving new works, special programs that speak to the needs and interests of children, families, young adults, and seniors will be created to engage new audiences while remaining true to our artistic vision. Supplementing the regular schedule of new works, occasional screenings of significant classics, rarely seen pieces, and newly restored master works will also be presented throughout the year.</p>
        <a href="http://www.o-cinema.org" target="_new" class="visitSite">visit website &raquo;</a>
        <div id="fb-root">
  </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="ocinema" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3> $37 for 5 Days of Lunches and Dinners Prepared and Delivered to You By Fit2Go! ($75 Value)</h3>
                <img src="../images/Fit2Go.jpg" alt="" />
                <p class="prices"> Price: $37<br />
                  Discount: 51%<br />
                  You Save: $38</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=OCinema_Fit2Go"
                            class="buyNow">Buy Now</a> $9.25 will be donated to this cause</p>
                <p class="description"> Let's face it, when you wake up and when you come after work are two of the least likely times that you actually want to make food. Making lunch always seems so tedious, since you're not even going to eat it for another four or five hours. And then, once you get home, you're drained from your day at work and the last thing you want to do it stand at a stove and stir or just even stand up. So for those that echo these sentiments, take advantage of our deal with <strong>Fit2Go</strong>, where you can have <strong>5 days of lunches and dinners prepared and delivered to you</strong> for just <strong>$37</strong>! These five days must consecutive during a work week (Monday through Friday). Normally, this deal is valued at $75, so you're <strong>saving more than 50%</strong>! Afraid they won't have anything you like? Fear not! Check out their extensive menu here! So purchase this deal, kick back and let someone do your hard labor! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=OCinema_Fit2Go"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Fit2Go</th>
                  </tr>
                  <tr>
                    <td><em>Website</em></td>
                    <td><a href="http://www.fit2gomeal.com/en/order_preview.asp" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li class="first">
              <div>
                    <h3>$29 for a Month Membership and a 1-hour Training Session at Get2BeFit!</h3>
                  <img src="../Images/get2befit.jpg" alt="" />
                  <p class="prices">
                      Price: $29<br />
                      Discount: 73%<br />
                You Save: $76</p>
                  <p class="buyNowHolder">
                      <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=OCinema_Get2BFit" target="_new" class="buyNow">
                      Buy Now</a> $7.25 will be donated to this cause</p>
                <p class="description">Whatever the motivation— burning off extravagant dinners, squeezing into that little black dress, simply feeling better about yourself and boosting your energy— we know gym memberships are necessary…and can get costly. The latter's most definitely not the case at Miami's <strong>Get2BeFit</strong>, where you can snag a month membership plus a 1-hour personal training session for <strong>$29</strong>— a <strong>$105 </strong>value! Whether weight lifting's your thing or cardio's more your speed, there's something healthy for everyone at Get2BeFit, even a delicious fresh fruit smoothie bar. Get off the couch and into this gym today! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=OCinema_Get2BFit" target="_new">More Info</a></p>
                  <table>
                      <tr>
                          <th>
                            Get2BFit</th>
                      </tr>
                      <tr>
                          <td class="firstTD">
                            3250 NE 1st Avenue</td>
                          <td>
                              <a href="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=3250+NE+1st+Avenue,+Miami,+FL+33137&sll=25.810517,-80.193153&sspn=0.019974,0.038581&ie=UTF8&hq=&hnear=3250+NE+1st+Ave,+Miami,+Miami-Dade,+Florida+33137&ll=25.810596,-80.193146&spn=0.001309,0.002411&z=19&iwloc=A" target="_new">
                                  Map / Directions &raquo;</a>
                          </td>
                      </tr>
                      <tr>
                          <td>
                            Miami, FL 33137</td>
                          <td>
                              <a href="http://get2befit.com/">Visit Website &raquo;</a>
                          </td>
                      </tr>
                  </table>
              </div>
          </li>
                    <li class="first">
              <div>
                    <h3>$19 for a Manicure and Pedicure at Safar, South Beach!</h3>
                <img src="../Images/safar.jpg" alt="" />
                  <p class="prices">
                      Price: $19<br />
                      Discount: 62%<br />
                You Save: $31</p>
                <p class="buyNowHolder">
                      <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=OCinema_Safar" target="_new" class="buyNow">
                      Buy Now</a> $4.75 will be donated to this cause</p>
                  <p class="description">"<em>Life is too short to blend in</em>." You can't help but agree with this <strong>bold</strong> statement. So living in a city as vibrant and always-on-the-go as Miami, you need to stand out, looking and feeling your best. What better way to do that than getting a renown and beautifying <strong>manicure and pedicure</strong> at one of the area's <strong>top salons</strong>? Deal! With this deal, spend just <strong>$19</strong> <strong>(!)</strong> and get both a manicure AND a pedicure at <strong>Safar Miami</strong>. Normally, this deal is valued at <strong>$50</strong>, you'll be saving and you'll be able to allocate those funds elsewhere! So differentiate yourself immediately and look and feel great doing so! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=OCinema_Safar" target="_new">More Info</a></p>
                  <table>
                      <tr>
                          <th>
                            Safar</th>
                    </tr>
                      <tr>
                          <td class="firstTD">
                            22 Washington Avenue</td>
                          <td>
                              <a href="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=safar+salon+south+beach&sll=25.769286,-80.135484&sspn=0.003135,0.006539&g=22+Washington+Ave,+Miami+Beach,+Miami-Dade,+Florida+33139&ie=UTF8&t=h&z=18&iwloc=A" target="_new">Map/Directions »</SPAN></a>
                          </td>
                      </tr>
                      <tr>
                          <td>Miami Beach, FL 33139</td>
                          <td>
                              <a href="http://http://www.anewyouskincare.com/" target="_new">Visit Website  »</SPAN></a><a href="http://www.safarmiami.com/"></a>
                          </td>
                      </tr>
                </table>
              </div>
          </li>
        
        </ul>
    </div>
</asp:Content>
