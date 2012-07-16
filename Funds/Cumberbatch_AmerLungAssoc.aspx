<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Cumberbatch_AmerLungAssoc.aspx.cs" Inherits="Funds_Cumberbatch_AmerLungAssoc" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/Cumberpatch_AmerLungAssoc-logo.jpg" alt="Logo" />
 
        
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>Profits for Non Profits</h2>
<h3> Miami, FL</h3>
                </div>
                <p>On April 16th I will be climbing a 55 story building as part of a fundraiser for the American Lung Association to help fight lung disease. Please join me, your purchase helps! </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="../Images/Cumberbatch_AmerLungAssoc-main.jpg" width="391" height="313" /></div>
        <h3>American Lung Association Fight for Air Climb Miami:</h3>
      <p>Lung cancer is the leading cancer killer in both men and women, responsible for more deaths than breast, ovarian, cervical and prostate cancers combined! Each year, about 160,000 people die from lung cancer in the U.S., accounting for more than one in four cancer deaths. We can help! </p>
      <p><a href="http://www.lungusa.org/pledge-events/fl/miami-climb/" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="Cumberbatch_AmerLungAssoc" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>$40 for 5 Days of Lunches and Dinners Prepared and Delivered to You By Fit2Go</h3>
                <img src="../Images/fit2go.jpg" alt="" />
                <p class="prices"> Price: $40<br />
                  Discount: 53%<br />
                  You Save: $45</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=Cumber_AmerLung_fit2go"
                            target="_new" class="buyNow">Buy Now</a> $10.00 will be donated to this cause.</p>
                <p class="description">Let's face it, when you wake up and when you come after work are two of the least likely times that you actually want to make food. Making lunch always seems so tedious, since you're not even going to eat it for another four or five hours. And then, once you get home, you're drained from your day at work and the last thing you want to do it stand at a stove and stir or just even stand up. So for those that echo these sentiments, take advantage of our deal with <strong>Fit2Go</strong>, where you can have <strong>5 days of lunches and dinners prepared and delivered</strong> to you for just <strong>$40</strong>! These five days must consecutive during a work week (Monday through Friday). Normally, this deal is valued at<strong> $85</strong>, so you're <strong>saving more than 50%</strong>! Afraid they won't have anything you like? Fear not! Check out their extensive menu <a href="http://www.fit2gomeal.com/en/order_preview.asp" target="_new">here</a>! So purchase this deal, kick back and let someone do your hard labor! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=Cumber_AmerLung_fit2go" target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Fit2Go</th>
                  </tr>
                  <tr>
                    <td class="firstTD"><a href="http://www.fit2gomeal.com/en/order_preview.asp">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
          <li>
              <div>
                <h3> $39 for the Basic Household Cleaning Package from Urban Spoon ($85 Value)</h3>
                <img src="../Images/urbanspoon.jpg" alt="" />
                <p class="prices"> Price: $39<br />
                  Discount: 55%<br />
                  You Save: $46</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=CumberAmerLung_UrbSpoon"
                            class="buyNow">Buy Now</a> $7.00 will be donated to this cause.</p>
                <p class="description"> We're all quite familiar with spring cleaning. As soon as the season hits, you suddenly have the urge to just whip out the broom and Lysol and go to town. However, these strong feelings and this burst of energy doesn't always carry over into the other seasons – like winter, for instance. But don't worry! You can have your place looking just as clean as the spring season with today's deal – just <strong>$39</strong> gets you <strong>3 hours of household cleaning</strong> from <strong>Urban Spoon</strong>! Normally, cleaning can take up large chunks of time that could have been spent doing other, enjoyable activities – playing with your children, catching up on <em>Project Runway</em>, etc. Unless the less-than-aromatic scents of Pinesol float your boat, cleaning just isn't fun. So let the professionals at Urban Spoon take over. Sweeping, moping, wiping down furniture, dusting, glass cleaning, cleaning bathrooms and vacuuming – these professionals do it all! Normally, the 3-hour cleaning session costs upward of <strong>$85</strong>, which means that today's deal not only saves you time but it also <strong>saves you more than 50%</strong>! The reign of dust balls, dirty windows and oddly placed toys is over! So stop fantasizing over the cleanliness of the abodes you see on TV and in movies. Start saving yourself the hassle of cleaning – as well as some money and time – with today's  deal. Only $39 for 3 hours of cleaning from Urban Spoon! <a href="https://store.goodtwo.com/ProductDetails.asp?ProductCode=CumberAmerLung_UrbSpoon"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Urban Spoon Cleaning &amp; Catering</th>
                  </tr>
                  <tr>
                    <td class="firstTD"><em>Will travel up to a 15-mile radius outside of Miami.</em></td>
                  </tr>
                  <tr>
                    <td class="firstTD"><a href="http://www.urbanspooncatering.com/">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $25 for a 5-class card at YogaRosa ($80 Value)</h3>
                <img src="../Images/yogarosa.jpg" alt="" />
                <p class="prices"> Price: $25<br />
                  Discount: 69%<br />
                  You Save: $55</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=CumberAmerLung_YogaRosa"
                            class="buyNow">Buy Now</a> $6.25 will be donated to this cause.</p>
                <p class="description">Yoga's all the rage, so what's all the hype about Iyengar? This style has been around for 65 years and is based on the correct alignment through the use of props such as blankets, blocks, and straps. Key benefits of the practice include building strength and endurance, increasing flexibility, reducing stress, and improving circulation, coordination, concentration and balance. Whether you're a seasoned yogi looking to deepen your practice, or you'd like to try Gentle Yoga as an introduction, the seasoned instructors at <strong>YogaRosaare ready to give you a taste of Iyengar with 5 classes for $25! Snag this deal and you'll be unrolling your mat in no time. Namaste! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=CumberAmerLung_YogaRosa"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> YogaRosa</th>
                  </tr>
                  <tr>
                    <td class="firstTD">110 North Federal Highway # 304</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=yogarosa+110+North+Federal+Highway,+Hallandale+Beach,+FL+33009&amp;sll=25.986968,-80.141828&amp;sspn=0.001307,0.002411&amp;ie=UTF8&amp;hq=yogarosa&amp;hnear=110+N+Federal+Hwy,+Hallandale+Beach,+Broward,+Florida+33009&amp;ll=25.986995,-80.142195&amp;spn=0.001246,0.002411&amp;z=19&amp;iwloc=A" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Hallandale Beach, FL 33009</td>
                    <td><a href="http://www.yogarosa.com/" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
