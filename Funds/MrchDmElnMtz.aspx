<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="MrchDmElnMtz.aspx.cs" Inherits="Funds_MrchDmElnMtz" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/marchofdimes-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>Every Baby Deserves the Chance of Life.</h2>
<h3> Miami, FL</h3>
                </div>
                <p>To improve the health of babies by preventing birth defects, premature birth and infant mortality. We carry out this mission through research, community services, education and advocacy to save babies' lives. No parent should suffer the loss of a child</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><iframe title="YouTube video player" width="391" height="313" src="http://www.youtube.com/embed/UcI5MCIJWEg?rel=0" frameborder="0" allowfullscreen></iframe></div>
        <h3>Save Babies, Save Lives. &quot;Because no parent should suffer the loss of a child.&quot;</h3>
      <p>In local communities across the country, we're helping moms take charge of their health, and supporting families when something goes wrong. The March of Dimes also acts globally: sharing best practices in perinatal health and helping improve birth outcomes where the needs are the most urgent. 

We provide information and services designed to prevent premature birth and birth defects and to promote healthy pregnancies.Community grants are awarded annually to fund the best programs. Local programs like Centering Pregnancy®, group prenatal care, are focused on improving the availability and quality of health care. We also support services that help promote the health and well-being of women and couples before pregnancy to increase their chances of having a healthy baby. Other programs educate doctors and nurses about reducing the rates of elective labor inductions and c-sections before the 39th week of pregnancy.

Through NICU Family Support®, we provide information and comfort to families coping with the experience of having a baby in a newborn intensive care unit (NICU). NICU Family Support complements and enhances family-centered care practices in partner hospitals, addresses the needs of families and provides professional development to NICU staff. </a> </p>
      <p><a href="http://www.marchofdimes.com" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="MrchDmElnMtz" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>$39 for the Basic Household Cleaning Package from Urban Spoon ($85 Value)</h3>
                <img src="../Images/urbanspoon.jpg" alt="" />
                <p class="prices"> Price: $39<br />
                  Discount: 55%<br />
                  You Save: $46</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=MrchDmElnMtz_UrbanSpoon"
                            target="_new" class="buyNow">Buy Now</a> $7.00 will be donated to this cause.</p>
                <p class="description">We're all quite familiar with spring cleaning. As soon as the season hits, you suddenly have the urge to just whip out the broom and Lysol and go to town. However, these strong feelings and this burst of energy doesn't always carry over into the other seasons – like winter, for instance. But don't worry! You can have your place looking just as clean as the spring season with this  deal – just <strong>$39</strong> gets you <strong>3 hours of household cleaning</strong> from <strong>Urban Spoon</strong>! Normally, cleaning can take up large chunks of time that could have been spent doing other, enjoyable activities – playing with your children, catching up on <em>Project Runway</em>, etc. Unless the less-than-aromatic scents of Pinesol float your boat, cleaning just isn't fun. So let the professionals at Urban Spoon take over. Sweeping, moping, wiping down furniture, dusting, glass cleaning, cleaning bathrooms and vacuuming – these professionals do it all! Normally, the 3-hour cleaning session costs upward of <strong>$85</strong>, which means that this  deal not only saves you time but it also <strong>saves you more than 50%</strong>! The reign of dust balls, dirty windows and oddly placed toys is over! So stop fantasizing over the cleanliness of the abodes you see on TV and in movies. Start saving yourself the hassle of cleaning – as well as some money and time. Only $39 for 3 hours of cleaning from Urban Spoon! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=MrchDmElnMtz_UrbanSpoon" target="_new">More Info</a><br />
  <br />
</p>
                <table>
                  <tr>
                    <th> Urban Spoon Cleaning &amp; Catering</th>
                  </tr>
                  <tr>
                    <td class="firstTD"><em>Will travel up to a 15-mile radius outside of Miami.</em></td>
                  </tr>
                  <tr>
                    <td class="firstTD"><a href="http://www.urbanspooncatering.com/">Visit website »</a></td>
                  </tr>
                </table>
              </div>
            </li>
          <li>
              <div>
                <h3> $40 for 5 Days of Lunches and Dinners Prepared and Delivered to You By Fit2Go!</h3>
                <img src="../Images/fit2go.jpg" alt="" />
                <p class="prices"> Price: $40<br />
                  Discount: 53%<br />
                You Save: $45</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=MrchDmElnMtz_fit2go"
                            class="buyNow">Buy Now</a> $10.00 will be donated to this cause.</p>
                <p class="description"> Let's face it, when you wake up and when you come after work are two of the least likely times that you actually want to make food. Making lunch always seems so tedious, since you're not even going to eat it for another four or five hours. And then, once you get home, you're drained from your day at work and the last thing you want to do it stand at a stove and stir or just even stand up. So for those that echo these sentiments, take advantage of our deal with <strong>Fit2Go</strong>, where you can have <strong>5 days of lunches and dinners prepared and delivered</strong> to you for just <strong>$40</strong>! These five days must consecutive during a work week (Monday through Friday). Normally, this deal is valued at<strong> $85</strong>, so you're <strong>saving more than 50%</strong>! Afraid they won't have anything you like? Fear not! Check out their extensive menu <a href="http://www.fit2gomeal.com/en/order_preview.asp" target="_new">here</a>! So purchase this deal, kick back and let someone do your hard labor! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=MrchDmElnMtz_fit2go"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Fit2Go</th>
                  </tr>
                  <tr>
                    <td class="firstTD"><a href="http://www.fit2gomeal.com/en/order_preview.asp">Visit Website »</a></td>
                  </tr>
                </table>
              </div>
          </li>
            <li>
              <div>
                <h3> $19 for a Manicure and Pedicure at Safar Miami! ($50 Value)</h3>
                <img src="../Images/safar-miami.jpg" alt="" />
                <p class="prices"> Price: $19<br />
                  Discount: 62%<br />
                You Save: $31</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=MrchDmElnMtz_Safar"
                            class="buyNow">Buy Now</a> $4.75 will be donated to this cause.</p>
                <p class="description">"<em>Life is too short to blend in</em>." You can't help but agree with this <strong>bold</strong> statement. So living in a city as vibrant and always-on-the-go as Miami, you need to stand out, looking and feeling your best. What better way to do that than getting a renown and beautifying <strong>manicure and pedicure</strong> at one of the area's <strong>top salons</strong>? Deal! With this deal, spend just <strong>$19</strong> <strong>(!)</strong> and get both a manicure AND a pedicure at <strong>Safar Miami</strong>. Normally, this deal is valued at <strong>$50</strong>, you'll be saving and you'll be able to allocate those funds elsewhere! So differentiate yourself immediately and look and feel great doing so! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=MrchDmElnMtz_Safar"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Safar Miami</th>
                  </tr>
                  <tr>
                    <td class="firstTD">22 Washington Avenue</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=safar+salon+south+beach&amp;sll=25.769286,-80.135484&amp;sspn=0.003135,0.006539&amp;g=22+Washington+Ave,+Miami+Beach,+Miami-Dade,+Florida+33139&amp;ie=UTF8&amp;t=h&amp;z=18&amp;iwloc=A" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Miami Beach, FL 33139</td>
                    <td><a href="http://www.safarmiami.com/" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
