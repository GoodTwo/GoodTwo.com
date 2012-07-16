<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="beccascloset.aspx.cs" Inherits="Funds_beccascloset" %>

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
            <img src="../Images/beccas_logo.jpg" alt="Logo" />
            <div id="causeIntroContent">
  <div id="titleline">
                    <h2>
            Help Keep Our Closets Full!</h2>
                    <h3>
                South Florida</h3>
                </div>
                <p>Becca's Closet is a national non-profit, 501(c)3 organization that donates homecoming, military ball and prom dresses to high school girls with financial need.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><object width="391" height="313"><param name="movie" value="http://www.youtube.com/v/gYX_y9sWt8g?fs=1&amp;hl=en_US&amp;rel=0"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/gYX_y9sWt8g?fs=1&amp;hl=en_US&amp;rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="391" height="313"></embed></object></div>
        <h3>
            About Becca's Closet</h3>
      <p>&quot;Little things can make a big difference...&quot;</p>
      <p>This was the phrase that served as the driving force behind the beautiful life and caring actions of 16-year-old Rebecca Kirtman. Becca, a cheerleader, honor student, and caring young woman, passed away in a tragic automobile accident on August 20, 2003. Today, her family and friends not only remember Becca for her great love and friendship, but also for her contributions to the community.</p>
      <p>It's just a dress...but it's so much more!</p>
      <p>In the Spring of her Freshman year at Nova High School in Davie, Florida, Rebecca launched a dress drive to provide prom dresses and accessories to high school girls who could not afford to purchase them. Rebecca was a passionate, bright, fun-loving young woman who loved being with her friends and felt that no one should miss a high school event because they couldn't afford to be there. She saw the inequity in the situation and sought to change things. During the Spring of her sophomore year, Becca single-handedly collected and donated over 250 formal dresses and helped hundreds of girls across South Florida attend their High School proms in style.</p>
      <p>To keep Becca's dream alive, countless dedicated people throughout the world have joined with her family and friends to provide opportunities for those who seek them. Our volunteers work toward a common goal initiated by Becca.</p>
      <p>Although the core mission of Becca's Closet was to collect and distribute dresses, our goals have expanded to offer additional opportunities for deserving young people. In the spirit of Rebecca's visions and aspirations, our foundation fundraises to award educational scholarships to recognize the exemplary efforts of young men and women who demonstrate Becca's spirit of generosity in their own communities.</p>
      <p>Rebecca Kirtman was a generous young woman and a wonderful daughter, sister, granddaughter, student and friend. Although Becca is no longer with us, her dream lives on and Becca's Closet will continue and grow to assist our youth and forever embrace the spirit of Rebecca Kirtman.</p>
        <a href="http://www.beccascloset.org" target="_new" class="visitSite">visit website &raquo;</a>
        <div id="fb-root">
  </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="beccascloset" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>$10 for $20 Worth of Deli-Prepared Food at Sarah's Tent Market!</h3>
                <img src="../Images/sarahstent.jpg" alt="" />
                <p class="prices">Price: $10<br />
Discount: 50%<br />
You Save: $20</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=Beccas_Sarahs"
                            target="_new" class="buyNow">Buy Now</a> $2.50 will be donated to this cause</p>
                <p class="description">You need to go food shopping. Typically this happens at least once or twice a week. Luckily, there are more than enough places for you to stop at on your way home from work or the gym that'll satisfy your edible desires. However, what about for those of us trying to keep kosher? No worries! For those in the Miami area, we've found the perfect deal and location for you – <strong>Sarah's Tent Market</strong>, where you'll get <strong>$20 worth of prepared deli food</strong> for just <strong>$10</strong>! Keep kosher and keep that wallet looking fat right away! While this deal is good only for their deli-prepared food, Sarah's is the largest kosher food market in Miami, meaning you also have access to produce, groceries, catering services, fine wines, kosher pizza and so much more! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=Beccas_Sarahs"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Sarah's Tent Market</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 3565 NE 207th Street</td>
                    <td><a href="http://maps.google.com/maps?client=safari&q=3565+NE+207th+Street,+Miami,+FL+33180&oe=UTF-8&ie=UTF8&hq=&hnear=3565+NE+207th+St,+Miami,+Miami-Dade,+Florida+33180&gl=us&z=16" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Miami, FL 33180</td>
                    <td><a href="http://miami.citysearch.com/profile/43436486/miami_fl/sarah_s_tent_market.html" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $25 for a 5-Class Card at YogaRosa ($80 Value)</h3>
                <img src="../Images/YogaRosa.jpg" alt="" />
                <p class="prices"> Price: $25<br />
                  Discount: 69%<br />
                  You Save: $55</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=Beccas_YogaRosa"
                            class="buyNow">Buy Now</a> $6.25 will be donated to this cause</p>
                <p class="description"> Yoga's all the rage, so what's all the hype about Iyengar? This style has been around for 65 years and is based on the correct alignment through the use of props such as blankets, blocks, and straps. Key benefits of the practice include building strength and endurance, increasing flexibility, reducing stress, and improving circulation, coordination, concentration and balance. Whether you're a seasoned yogi looking to deepen your practice, or you'd like to try Gentle Yoga as an introduction, the seasoned instructors at <strong>YogaRosa</strong> are ready to give you a taste of Iyengar with <strong>5 classes for $30! </strong>Snag this deal and you'll be unrolling your mat in no time. <em>Namaste</em>! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=Beccas_YogaRosa"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> YogaRosa</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 110 North Federal Highway # 304</td>
                    <td><a href="http://maps.google.com/maps?f=q&source=s_q&gl=us&q=110+North+Federal+Highway+%23+304,+Hallandale+Beach,+FL+33009+&ie=UTF8&hq=&hnear=110+N+Federal+Hwy,+Hallandale+Beach,+Broward,+Florida+33009&z=16" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Hallandale Beach, FL 33009</td>
                    <td><a href="http://yogarosa.com/" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
       <li>
         <div>
           <h3>$5 for $10 Worth of Food at Aventura Pita</h3>
           <img src="../Images/aventurapita.jpg" alt="" />
           <p class="prices">Price: $5<br />
Discount: 50%<br />
You Save: $5</p>
           <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=Beccas_AventPita"
                            class="buyNow">Buy Now</a> $1.25 will be donated to this cause</p>
           <p class="description">The Turkish fast food delicacy of the <em>doener</em> kebab originated in Turkey and now has a cult following in Europe. The demand has now spread to the United States and you can experience it firsthand in Aventura today!<strong> Aventura Pita</strong> wants to keep you fed on the go with this offer of <strong>$10 worth of food</strong> for <strong>$5. </strong>Their kebabs are <strong>savory</strong> <strong>wraps</strong> of meat— choose from lamb, turkey, chicken, and more!— or falafel packed with lettuce, tomato, and native sauces. The fillings are available on plates with accompanying sides as well. With a kid's menu offering chicken nuggets and hot dogs, bring the little ones for a family-friendly, tasty dining experience! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=Beccas_AventPita"
                            target="_new">More Info</a></p>
           <table>
             <tr>
               <th> Aventura Pita</th>
             </tr>
             <tr>
               <td class="firstTD"> 18129 Biscayne Boulevard</td>
               <td><a href="http://maps.google.com/maps?client=safari&oe=UTF-8&ie=UTF8&q=18129+Biscayne+Boulevard,+Aventura,+FL+33160&fb=1&gl=us&hnear=Sharon,+MA+02067&hl=en&view=map&cid=12024541242132163976&ll=25.943188,-80.147645&spn=0.011307,0.020943&z=16&iwloc=A"
                                    target="_new">Map / Directions &raquo;</a></td>
             </tr>
             <tr>
               <td> Aventura, FL 33160</td>
               <td><a href="http://www.aventurapita.com/" target="_new">Visit Website &raquo;</a></td>
             </tr>
           </table>
         </div>
       </li>
        
        
        </ul>
    </div>
</asp:Content>
