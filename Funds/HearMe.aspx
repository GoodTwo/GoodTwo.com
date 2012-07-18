<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="hearme.aspx.cs" Inherits="Funds_hearme" %>

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
            <img src="../Images/hearme-logo.jpg" alt="Logo" />
            <div id="causeIntroContent">
          <div id="titleline">
                    <h2>
            Anti-Bullying Campaign</h2>
                    <h3>
                Miami, FL</h3>
                </div>
                <p>We are filming a short film that investigates the damage that society causes itself when it allows bullying to happen unchecked. Alongside the film, we are also shooting documentary on real people's experiences. We are raising money to be able to film this using decent camera, lighting and sound equipment so that the finished product will be of good enough quality to show at schools.          </p>
          </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img height="313" src="../Images/hearme-main.jpg" alt="" /></div>
        <h3>
            About Hear Me</h3>
      <p><strong>The Story:</strong><br />
      A bright deaf child survives cruel taunting by turning the tables on her tormentors. Her victory rings hollow as she trades her dreams for safety.</p>
      <p>In order to survive the playground battlefield, Sydney sheds those pieces of her identity that keep her from fitting in. Her will whittled to a fine point, she learns that the best way to beat a bully is beat him at his own game. And so, the vicious cycle continues.</p>
      <p>As a merciless businesswoman, Sydney hides her deafness from the world, but a confrontation with her latest victim shatters her precarious self-image.</p>
      <p>Can she leave the sanctuary of the warped reality she's created to venture back into a world that is neither friendly nor safe, but full of possibilities?</p>
      <p>Hear Me is a human story about self worth, loss and redemption, a story about finding forgiveness in the face of guilt, strength through our faults and friendship in the face of loneliness...but ultimately, it is a story about allowing no one but yourself to define your life.</p>
      <p><strong>The Issue:</strong><br />
      What does bullying do to its victims? It teaches you that you are undesirable, that you are not safe in the world, and that you are powerless to defend yourself. Bullying can be so insidious that childhood barbs are often remembered into adulthood, coloring our self-perceptions for a lifetime.</p>
      <p><strong>What We Wish To Accomplish:</strong><br />
      Our aim is two-fold: Yes, we want to deliver a message about bullying, but we don't just want to 'tell' kids that things get better. Through our production, we will provide opportunities for children like the ones in this story, children that are so often the target of bullies, to experience first hand they should not let their challenges impede their dreams. To that end, we are providing multiple acting roles for mentally and physically-challenged children, as well as intern positions for several high school teens to learn what working on a movie set, in front and behind the camera, is like...and what working together, creating, can do for one's identity.</p>
      <p><strong>How These Funds Will Be Used:</strong><br />
        Funds will be used for the film's production (including location fee and permits, crew fees, equipment rental, production insurance, catering, music, etc.) and post-production (including editing, sound mixing and color correction).<br />
      We want to produce the highest quality film so that we can submit this film to various film festivals. However, in order to produce the best film possible, funding is needed. No donation is too small! Every donation we receive will be greatly appreciated! Thanks in advance for your help!</p>
      <p><strong>Other Ways You Can Help:</strong><br />
      Please help us reach more people by tweeting or posting our page as your status on Facebook. Tell your friends and family to join our pages and follow our project. We want to bring this film to you, help us by getting the word out to as many people as you can.</p>
        <a href="http://www.facebook.com/pages/HEAR-ME-movie/180546021961992" target="_new" class="visitSite">visit website &raquo;</a>
        <div id="fb-root">
  </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="hearmemovie" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3> $20 for 3 Group Dance Classes at CooLAM Dance Studio! ($45 Value)</h3>
                <img src="../images/CooLam.jpg" alt="" />
                <p class="prices"> Price: $20<br />
                  Discount: 55%<br />
                  You Save: $25</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=HearMe_CoolAm"
                            target="_new" class="buyNow">Buy Now</a> $5.00 will be donated to this cause</p>
                <p class="description"> We think Lady Gaga put it best when she urged fans to &quot;Just dance,&quot; and we're here to bring you that option paired with a great deal at <strong>CooLAM Dance Studio</strong>! For a mere <strong>$10</strong>, you can partake in <strong>3 group dance classes</strong>. With styles ranging from <strong>zumba</strong> to <strong>belly dancing</strong> to <strong>ballet</strong>, CooLAM's classes are unique, fun, and a great workout. Whether little Suzy's been bugging you to let her start tap lessons or you want to take some sensual tango lessons with you new special someone, CooLAM's got you covered! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=HearMe_CoolAm"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> CooLAM Dance Studio</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 3575 NE 207 Street #B4</td>
                    <td><a href="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=3575+NE+207+Street+%23B4,+Aventura,+FL+33180&sll=42.343384,-71.08429&sspn=0.035589,0.083771&gl=us&ie=UTF8&hq=&hnear=3575+NE+207th+St,+Aventura,+Miami-Dade,+Florida+33180&ll=25.968694,-80.130286&spn=0.011305,0.020943&z=16" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Aventura, FL 33180</td>
                    <td><a href="http://www.coolamdancestudios.com/" target="_new">Visit Website &raquo;</a></td>
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
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=HearMe_Fit2Go"
                            class="buyNow">Buy Now</a> $9.25 will be donated to this cause</p>
                <p class="description"> Let's face it, when you wake up and when you come after work are two of the least likely times that you actually want to make food. Making lunch always seems so tedious, since you're not even going to eat it for another four or five hours. And then, once you get home, you're drained from your day at work and the last thing you want to do it stand at a stove and stir or just even stand up. So for those that echo these sentiments, take advantage of our deal with <strong>Fit2Go</strong>, where you can have <strong>5 days of lunches and dinners prepared and delivered to you</strong> for just <strong>$37</strong>! These five days must consecutive during a work week (Monday through Friday). Normally, this deal is valued at $75, so you're <strong>saving more than 50%</strong>! Afraid they won't have anything you like? Fear not! Check out their extensive menu here! So purchase this deal, kick back and let someone do your hard labor! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=HearMe_Fit2Go"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Fit2Go</th>
                  </tr>
                  <tr>
                    <td> <em>Website</em></td>
                    <td><a href="http://www.fit2gomeal.com/en/order_preview.asp" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
       <li>
         <div>
           <h3> $29 for 5 Classes at Belly 2 Abs Fitness &amp; Dance Studio! ($157 Value)</h3>
           <img src="../images/Belly2Abs.jpg" alt="" />
           <p class="prices"> Price: $29<br />
             Discount: 82%<br />
             You Save: $128</p>
           <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=HearMe_Belly2Abs"
                            class="buyNow">Buy Now</a> $7.25 will be donated to this cause</p>
           <p class="description"> Ladies! You've tried nearly everything hip to stay in shape and have fun, but if you haven't tried belly dancing, now's your chance! Try <strong>5 belly dance, pole fitness, Chair dance, Bollywood or Urban flamenco classes</strong> and more at <strong>Belly 2 Abs</strong> for <strong>$29</strong> – a <strong>$157 value</strong>! If you've been meaning to channel your inner Barbara Eden but haven't had the venue, look no further. You're not required to bring genie pants or pointy shoes, but you must bring a desire to learn and have fun! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=HearMe_Belly2Abs"
                            target="_new">More Info</a></p>
           <table>
             <tr>
               <th> Belly 2 Abs</th>
             </tr>
             <tr>
               <td class="firstTD"> 2829 Bird Avenue #7</td>
               <td><a href="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=2829+Bird+Avenue+%237,+Grove,+FL+33133+&sll=25.968694,-80.130286&sspn=0.011305,0.020943&gl=us&g=3575+NE+207+Street+%23B4,+Aventura,+FL+33180&ie=UTF8&hq=2829+bird+avenue+7+grove&hnear=Miami,+Florida+33133&ll=25.735658,-80.231137&spn=0.021687,0.041885&z=15&iwloc=D"
                                    target="_new">Map / Directions &raquo;</a></td>
             </tr>
             <tr>
               <td> Coconut Grove, FL 33133</td>
               <td><a href="www.Belly2Abs.com " target="_new">Visit Website &raquo;</a></td>
             </tr>
           </table>
         </div>
       </li>
        
        
        </ul>
    </div>
</asp:Content>
