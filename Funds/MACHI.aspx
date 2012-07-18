<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="machi.aspx.cs" Inherits="Funds_machi" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/machi-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>
            The Community Heritage Conservation Program&nbsp;&nbsp;</h2>
                    <h3> Los Angeles, CA
</h3>
                </div>
                <p> MACHI seeks to enhance cultural survival and the conservation of heritage places and traditions in southern Mexico and Central America. We believe that heritage conservation is cultural empowerment. </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="../images/machi-main.jpg" width="391" height="313" /></div>
        <h3>About MACHI:</h3>
      <p>Through MACHI we have successfully developed collaborative educational and conservation initiatives in Mexico, Belize, Guatemala, and Honduras that support the culture and languages of indigenous Maya people and promote the preservation of ancient Maya archaeological and ecological places.  By partnering with local non-profits and indigenous communities, we have provided thousands of children and adults with educational and employment opportunities that enhance pride in Mayan cultural traditions and contribute to the dialogue of heritage rights for indigenous peoples. </p>
      <p>Help us keep our children's workshops running in Copan, Honduras! There, indigenous Ch'orti Maya children face discrimination, extreme poverty, and a lack of access to education. Our children's workshops empower Ch'orti children by teaching them about their history and providing them with the opportunity to explore their culture through art, activities, and theater. All children in grades 4-6 receive Activity Books and monthly workshops, as well as visits to local archaeological sites and cultural events. Due to funding we have had to cut the number of villages included in 2011 from 24 to 10. Don't let this program disappear altogether! For only $500, all 4th, 5th, and 6th graders in one community can participate in the Maya workshop for a full year. We need your help to build self-esteem, pride, and community knowledge to build a future where indigenous people and their traditions are no longer marginalized. </p>
      <p>Also find us on Facebook at MACHI-Maya Area Cultural Heritage Initiative.</p>
<p> <a href="http://www.machiproject.org" target="_new" class="visitSite">visit website &raquo;</a>      </p>
      <div id="fb-root">
  </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="machi" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>Enjoy a Month of Unlimited Yoga for Just $35 at Yoga Shelter! ($150 Value)</h3>
                <img src="../Images/yogashelter.jpg" alt="" />
                <p class="prices"> Price: $35<br />
                  Discount: 85%<br />
                  You Save: $115</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=machi_yogashelter"
                            target="_new" class="buyNow">Buy Now</a> $8.75 will be donated to this cause</p>
                <p class="description">At <strong>Yoga Shelter</strong> in Studio City, their goal is to create a welcoming place where yoga is accessible and affordable for everyone. Each and every class is open to all strength and experience levels, and typically, the studio offers a variety of affordable class packages to suit your needs, however you won&rsquo;t need to worry! With our deal at the studio, you&rsquo;ll receive a full month of unlimited yoga. From <strong>&ldquo;Slow Flow-&rdquo;</strong> to<strong>&ldquo;XFlowsion-&rdquo;</strong> and <strong>&ldquo;Fusion-&rdquo;style yoga,</strong> there&rsquo;s never a lack of engaging, intriguing, entertaining and rejuvenating yoga classes. Try out<strong>Yoga Rocks classes</strong>, which are a very popular vinyasa-style yoga set to really fun music, like rock n&rsquo; roll and hiphip. You can view their complete schedule <a href="http://www.yogashelter.com/schedule.php?place=SC#Thu">here</a>. There&rsquo;s a reason Yoga Shelter has spread throughout the country, opening more than 5 locations. So become a client and not just an observer – breathe in and enjoy a <strong>month of unlimited yoga</strong> at Yoga Shelter for just <strong>$35</strong>… normally a <strong>$150 value!</strong>  <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=machi_yogashelter" target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Yoga Shelter</th>
                  </tr>
                  <tr>
                    <td class="firstTD">12408 Ventura Boulevard</td>
                    <td><a href="http://maps.google.com/maps/place?ie=UTF8&amp;q=yoga+shelter+los+angeles&amp;fb=1&amp;gl=us&amp;hq=yoga+shelter+los+angeles&amp;hnear=yoga+shelter+los+angeles&amp;cid=4513714295892958015&amp;z=14" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Studio City, CA 91604</td>
                    <td><a href="http://www.yogashelter.com/" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> Puppets, Puzzles and Blocks for Tots (and Older): $10 for $25 Worth of Children's Products at Brighter Beginnings!</h3>
                <img src="../images/BrighterBeginnings.gif" alt="" />
                <p class="prices"> Price: $10<br />
                  Discount: 60%<br />
                  You Save: $15</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=machi_BrighterBeg"
                            class="buyNow">Buy Now</a> $2.50 will be donated to this cause</p>
                <p class="description"> Children need to be entertained and stimulated. That's a fact. During their younger, cognitive years, they act as a sponge, taking in all new information and processing it. While you try your best to provide this stimulation and interaction, you can't accomplish this for every minute of the day. So for these other times, you should be sure to find the best interactive and educational toys you can to complement your teaching and we've found just the place to look: <strong>Brighter Beginnings</strong>! With toys perfect for newborns through ages eight and up, you'll be sure to find the perfect piece to share with your young one. From <strong>puppets, games </strong>and <strong>musical toys</strong> to <strong>flash cards, puzzles, blocks</strong> and more, their inventory seems never-ending! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=machi_BrighterBeg"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Brighter Beginnings</th>
                  </tr>
                  <tr>
                    <td><em>Website</em></td>
                    <td><a href="http://www.brighterbeginningstoys.com/" target="_new">Visit Website &raquo;</a></td>
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
           <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=machi_Aroma"
                            class="buyNow">Buy Now</a> $3.75 will be donated to this cause</p>
           <p class="description"> Are you still struggling to find that perfect cup of coffee? Whether it's something to give you that extra jolt before the workday begins or a rich blend to pair with your weekend newspaper ritual, a cup o' Joe can either make or break your day. And that's exactly how <strong>Aroma Ridge</strong> transpired: the passion for the most perfect cup of coffee. Now, 20 years later, Aroma Ridge has transformed into a small, family-owned business, providing a plethora of the finest mountain grown gourmet coffees, quality teas, accessories and more to enjoy in your very own home. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=machi_Aroma"
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
