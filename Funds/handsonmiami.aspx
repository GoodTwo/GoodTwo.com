<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="handsonmiami.aspx.cs" Inherits="Funds_handsonmiami" %>

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
            <img src="../Images/handsonmiami-logo.jpg" alt="Logo" />
            <div id="causeIntroContent">
          <div id="titleline">
                    <h2>
    Give Hands On Miami a Hand!</h2>
                    <h3>Miami, Florida</h3>
                </div>
                <p>Hands On Miami is committed to transforming our community by engaging people in volunteer service and strengthening nonprofits.  Together we can improve our community one hand at a time! </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="../images/handsonmiami-main.jpg" width="391" height="313" /></div>
        <h3>Special Announcement: Let's Have a Party!</h3>
      <p>Our volunteers work extremely hard to improve our community and we want to have a party to celebrate their accomplishments!  Help Hands On Miami purchase hot dogs, hamburgers, buns and all the fixings for a fun filled Beach BBQ!!!  Our volunteers are the BEST and we want to recognize them for everything they have done to improve and transform our community! 

 

        <br />
        <br />
        Hands On Miami Volunteer Appreciation:

        <br />
        Sunday, May 22nd

        <br />
        1pm-4pm

        <br />
        Beach Location: TBD

 

        <br />
        <br />
        We will have a BBQ, drinks, games and much more…but we need your help!  Every time you purchase something from our AMAZING GoodTwo partners, a percentage of the sale will go directly to Hands On Miami to help us achieve our goal and have a party!  If you would like to make a donation directly to Hands On Miami, please feel free to send a donation Hands On Miami, 425 NW 26th Street, Miami, FL 33127.  Thank you for your continued support! 


        <br />
        <br />
        Thank you for all of your help!  Please let me know if there is any additional information I can provide you with.


        <br />
        <br />
      Thanks again!<br />
      Nate
      </p>
        <a href="http://www.handsonmiami.org" target="_new" class="visitSite">visit website &raquo;</a>
        <div id="fb-root">
  </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="handsonmiami" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>$19 for a Manicure and Pedicure at Safar, South Beach!</h3>
                <img src="../Images/safar.jpg" alt="" />
                <p class="prices"> Price: $19<br />
                  Discount: 62%<br />
                  You Save: $31</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=HandsonMiami_Safar" target="_new" class="buyNow"> Buy Now</a> $4.75 will be donated to this cause</p>
                <p class="description">&quot;<em>Life is too short to blend in</em>.&quot; You can't help but agree with this <strong>bold</strong> statement. So living in a city as vibrant and always-on-the-go as Miami, you need to stand out, looking and feeling your best. What better way to do that than getting a renown and beautifying <strong>manicure and pedicure</strong> at one of the area's <strong>top salons</strong>? Deal! With this deal, spend just <strong>$19</strong> <strong>(!)</strong> and get both a manicure AND a pedicure at <strong>Safar Miami</strong>. Normally, this deal is valued at <strong>$50</strong>, you'll be saving and you'll be able to allocate those funds elsewhere! So differentiate yourself immediately and look and feel great doing so! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=HandsonMiami_Safar" target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Safar</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 22 Washington Avenue</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=safar+salon+south+beach&amp;sll=25.769286,-80.135484&amp;sspn=0.003135,0.006539&amp;g=22+Washington+Ave,+Miami+Beach,+Miami-Dade,+Florida+33139&amp;ie=UTF8&amp;t=h&amp;z=18&amp;iwloc=A" target="_new">Map/Directions »</SPAN></a></td>
                  </tr>
                  <tr>
                    <td>Miami Beach, FL 33139</td>
                    <td><a href="http://http://www.anewyouskincare.com/" target="_new">Visit Website  »</SPAN></a><a href="http://www.safarmiami.com/"></a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $37 for 5 Days of Lunches and Dinners Prepared and Delivered to You By Fit2Go! ($75 Value)</h3>
                <img src="../images/Fit2Go.jpg" alt="" />
                <p class="prices"> Price: $37<br />
                  Discount: 51%<br />
                  You Save: $38</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=HandsonMiami_Fit2Go"
                            class="buyNow">Buy Now</a> $9.25 will be donated to this cause</p>
                <p class="description"> Let's face it, when you wake up and when you come after work are two of the least likely times that you actually want to make food. Making lunch always seems so tedious, since you're not even going to eat it for another four or five hours. And then, once you get home, you're drained from your day at work and the last thing you want to do it stand at a stove and stir or just even stand up. So for those that echo these sentiments, take advantage of our deal with <strong>Fit2Go</strong>, where you can have <strong>5 days of lunches and dinners prepared and delivered to you</strong> for just <strong>$37</strong>! These five days must consecutive during a work week (Monday through Friday). Normally, this deal is valued at $75, so you're <strong>saving more than 50%</strong>! Afraid they won't have anything you like? Fear not! Check out their extensive menu here! So purchase this deal, kick back and let someone do your hard labor! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=HandsonMiami_Fit2Go"
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
                    <h3>5 Classes at Rina Yoga for Just $35! ($75 Value)</h3>
                  <img src="../Images/rinayoga.jpg" alt="" />
                  <p class="prices">
                      Price: $35<br />
                      Discount: 54%<br />
                You Save: $40</p>
                  <p class="buyNowHolder">
                      <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=HandsOnMiami_RinaYoga" target="_new" class="buyNow">
                      Buy Now</a> $8.75 will be donated to this cause.</p>
                <p class="description">How long now have you been trying various relaxation methods? Breathe in and out and lay back and stretch and yada, yada, yada. These &#8220;techniques&#8221; never seem to work when you&#8217;re on your own and your stress and pain levels continue to rise. You really need the expertise and guidance of professionals. So take advantage of our deal with <b>Rina Yoga,</b> where you can engage in <b>5</b> spiritually lifting and incredibly relaxing <b>yoga classes</b> for just <b>$35.</b> Rina Yoga offers a variety of classes, ranging from <b>Hatha</b> and <b>Vinyasa</b> to <b>Ashtanga</b> and more! You can view their upcoming schedule <a href="http://www.rinayoga.com/schedule/miami/">here</a>. The founder and owner, Rina, has been practicing yoga herself for more than 10 years and put together a very personable and professional staff around her in order to provide the utmost guidance to all of her yoginis. So why put up with nagging pain or stress anymore? Experience the best way to relax and do so while saving! <i>Namaste!</i> <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=HandsOnMiami_RinaYoga" target="_new">More Info</a></p>
                  <table>
                      <tr>
                          <th>
                            Rina Yoga</th>
                      </tr>
                      <tr>
                          <td class="firstTD">
                            2490 Coral Way,
2nd Floor</td>
                          <td>
                              <a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=2490+Coral+Way,+Miami,+FL+33145&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=37.188995,79.013672&amp;ie=UTF8&amp;hq=&amp;hnear=2490+Coral+Way,+Miami,+Miami-Dade,+Florida+33145&amp;ll=25.750203,-80.236056&amp;spn=0.002585,0.004823&amp;t=h&amp;z=18&amp;iwloc=A" target="_new">
                                  Map / Directions &raquo;</a>
                          </td>
                      </tr>
                      <tr>
                          <td>
                        Miami, FL 33145</td>
                          <td>
                              <a href="http://www.rinayoga.com/">Visit Website &raquo;</a>
                          </td>
                      </tr>
                  </table>
              </div>
          </li>
        
        </ul>
    </div>
</asp:Content>
