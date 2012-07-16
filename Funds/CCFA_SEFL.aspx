<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="CCFA_SEFL.aspx.cs" Inherits="Funds_CCFA_SEFL" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/ccfa-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>
            Team Challenge South Florida</h2>
    <h3> Miami, FL</h3>
                </div>
                <p> The Crohn's &amp; Colitis Foundation is the only Foundation dedicated to finding a cure for Crohn's Disease and ulcerative colitis.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="../images/ccfa-main.jpg" width="391" height="313" /></div>
        <h3>About CCFA:</h3>
      <p>Team Challenge is the Crohn's &amp; Colitis Foundation's half marathon training program.  We train participants to run or walk a half marathon over the course of 16 weeks while they raise much needed funds for CCFA!</p>
      <p><a href="http://www.ccteamchallenge.org" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="ccfa-southfl" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=ccfa_sefl_fit2go"
                            class="buyNow">Buy Now</a> $9.25 will be donated to this cause</p>
                <p class="description"> Let's face it, when you wake up and when you come after work are two of the least likely times that you actually want to make food. Making lunch always seems so tedious, since you're not even going to eat it for another four or five hours. And then, once you get home, you're drained from your day at work and the last thing you want to do it stand at a stove and stir or just even stand up. So for those that echo these sentiments, take advantage of our deal with <strong>Fit2Go</strong>, where you can have <strong>5 days of lunches and dinners prepared and delivered to you</strong> for just <strong>$37</strong>! These five days must consecutive during a work week (Monday through Friday). Normally, this deal is valued at $75, so you're <strong>saving more than 50%</strong>! Afraid they won't have anything you like? Fear not! Check out their extensive menu here! So purchase this deal, kick back and let someone do your hard labor! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=ccfa_sefl_fit2go"
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
            <li>
              <div>
                <h3> $39 for the Basic Household Cleaning Package from Urban Spoon Catering &amp; Personal Staffing! ($85 Value)</h3>
                <img src="../Images/urbanspoon.jpg" alt="" />
                <p class="prices"> Price: $39<br />
                  Discount: 55%<br />
                  You Save: $46</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=ccfa_sefl_urban"
                            class="buyNow">Buy Now</a> $7.00 will be donated to this cause</p>
                <p class="description"> Some common excuses not getting around to that pesky house cleaning: you're busy with work, you've been on vacation, you just don't have time. No matter the reason, this deal does not allow you to live one more day with a messy abode: <strong>Urban Spoon</strong> is here to save the day, with 2 hours of household cleaning on offer for <strong>$39</strong>— normally an <strong>$85 value!</strong> Sweeping, moping, wiping down furniture, dusting, glass cleaning, cleaning bathrooms and vacuuming – these professionals do it all! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=ccfa_sefl_urban"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Urban Spoon Catering &amp; Personal Staffing</th>
                  </tr>
                  <tr>
                    <td><em>Will Travel within 15 Miles of Miami</em></td>
                    <td><a href="http://www.urbanspooncatering.com/" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $29 for 3 Classes at Sensual Souls Pole Dance and Fitness Studio.! ($75 Value)</h3>
                <img src="../Images/sensualsouls.jpg" alt="" />
                <p class="prices"> Price: $29<br />
                  Discount: 62%<br />
                  You Save: $46</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=ccfa_sefl_sensualsouls"
                            class="buyNow">Buy Now</a> $7.25 will be donated to this cause</p>
                <p class="description"> Been looking for a new way to spruce that workout at the gym? All that cardio and just no results? Then you need to take advantage of the best new workout you've heard of, but haven't tried… pole dance fitness! At <strong>Sensual Souls Dance Studio,</strong> you'll get <strong>3 classes</strong> for just <strong>$29</strong> – normally this costs <strong>$75!</strong> These classes work muscles you never even knew existed! Classes meet in small group (10 and fewer) with plenty of options available for all experience levels. Check out their schedule <a href="https://clients.mindbodyonline.com/ASP/home.asp?studioid=9329">here!</a>. So why keep putting yourself through that same old, normal routine when you could be dancing with a pole and getting that figure you've always wanted? Just $29 for three amazing classes at Sensual Souls Dance Studio!  <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=ccfa_sefl_sensualsouls"
                            target="_new">More Info</a>                </p>
                <table>
                  <tr>
                    <th>Sensual Souls</th>
                  </tr>
                  <tr>
                    <td class="firstTD">2850 Stirling Road, Suite H</td>
                    <td><a href="http://maps.google.com/maps?q=2850+Stirling+Road,+Suite+H,Hollywood,+FL+33020&ie=UTF8&hq=&hnear=2850+Stirling+Rd,+Hollywood,+Broward,+Florida+33020&gl=us&z=16" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Hollywood, FL 33020</td>
                    <td><a href="http://www.poledanceandfitness.com/">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
