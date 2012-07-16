<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="bloodwater.aspx.cs" Inherits="Funds_bloodwater" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/bloodwater-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>Blood:Water Mission LA &quot;Fun&quot;draisor</h2>
<h3> Los Angeles, CA</h3>
                </div>
                <p>Blood:Water Mission is a grassroots organization that empowers communities to work together against the HIV/AIDS and water crisis in Africa. </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><iframe src="http://player.vimeo.com/video/7686838?byline=0&amp;color=ffffff" width="391" height="313" frameborder="0"></iframe></div>
        <h3>Blood:Water Mission:</h3>
      <p>Blood:Water Mission is a group of passionate people who have been inspired by our friends in Africa, friends who face unbearable challenges from the HIV/AIDS and water crises. We creatively and thoughtfully raise awareness and the necessary funds for the provision of clean blood and clean water in sub-Saharan Africa.</p>
      <p><a href="http://www.bloodwatermission.com" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="bloodwater" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=bloodwtr_yogashelter"
                            target="_new" class="buyNow">Buy Now</a> $8.75 will be donated to this cause</p>
                <p class="description">At <strong>Yoga Shelter</strong> in Studio City, their goal is to create a welcoming place where yoga is accessible and affordable for everyone. Each and every class is open to all strength and experience levels, and typically, the studio offers a variety of affordable class packages to suit your needs, however you won&rsquo;t need to worry! With our deal at the studio, you&rsquo;ll receive a full month of unlimited yoga. From <strong>&ldquo;Slow Flow-&rdquo;</strong> to<strong>&ldquo;XFlowsion-&rdquo;</strong> and <strong>&ldquo;Fusion-&rdquo;style yoga,</strong> there&rsquo;s never a lack of engaging, intriguing, entertaining and rejuvenating yoga classes. Try out<strong>Yoga Rocks classes</strong>, which are a very popular vinyasa-style yoga set to really fun music, like rock n&rsquo; roll and hiphip. You can view their complete schedule <a href="http://www.yogashelter.com/schedule.php?place=SC#Thu">here</a>. There&rsquo;s a reason Yoga Shelter has spread throughout the country, opening more than 5 locations. So become a client and not just an observer – breathe in and enjoy a <strong>month of unlimited yoga</strong> at Yoga Shelter for just <strong>$35</strong>… normally a <strong>$150 value!</strong> <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=bloodwtr_yogashelter" target="_new">More Info</a></p>
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
                <h3> $14 for $30 worth of food at Rosalind's Ethiopian Cuisine</h3>
                <img src="../Images/rosalinds.jpg" alt="" />
                <p class="prices"> Price: $14<br />
                  Discount: 53%<br />
                  You Save: $16</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=bloodwtr_rosalinds"
                            class="buyNow">Buy Now</a> $3.50 will be donated to this cause</p>
                <p class="description"> Sometimes, your palate wants to celebrate diversity. Sure, those Chipotle Chicken Ciabatta sandwiches at Jack in the Box are delicious (and horribly unhealthy!), but sometimes you crave something different. How about trying some tasty Ethiopian cuisine? Deal! At <strong>Rosalind's Ethiopian Cuisine,</strong> you're getting <strong>$30 worth of food</strong> for just <strong>$14!</strong> Try their <strong>O Jo Jo</strong> (Meat balls, Akara, Kelewele and Pilli Pilli sauce) to start out and then move on to their <strong>Shifenfen</strong> (Lamb stew mixed injera &amp; deliciously seasoned with spices). Delicious! Check out the rest of their tasty menu <a href="http://www.rosalindsrestaurant.com/menu.html">here</a>! Step outside of your normal taste-bud-appeasing meals today (In-N-Out will understand, trust us) and take advantage of some delicious Ethiopian Cuisine over on South Fairfax. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=bloodwtr_rosalinds"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Rosalind's Ethiopian</th>
                  </tr>
                  <tr>
                    <td class="firstTD">1044 S. Fairfax Avenue</td>
                    <td><a href="http://maps.google.com/maps/place?ie=UTF8&q=1044+S.+Fairfax+Avenue+Los+Angeles,+CA+90019&fb=1&gl=us&hnear=Boston,+MA&cid=13681802198961030655&z=14" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Los Angeles, CA 90019</td>
                    <td><a href="http://www.rosalindsrestaurant.com/">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $15 for $30 worth of food and drinks at San Gennaro Cafe</h3>
                <img src="../Images/sangennaro.jpg" alt="" />
                <p class="prices"> Price: $15<br />
                  Discount: 50%<br />
                  You Save: $15</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=bloodwtr_sangenn"
                            class="buyNow">Buy Now</a> $3.00 will be donated to this cause</p>
                <p class="description">At the <strong>San Gennaro Cafe</strong> in Brentwood, they want your dining experience to be one of the most pleasurable. With a skilled Chef always at your command, he will prepare your meal masterfully and will assure your enjoyment. If you have a craving for delicious Italian cuisine, their freshly made <strong>Gnocchi with Ricotta</strong>($10.95) can’t be beat! Be sure also to try their <strong>Flatbush Pizza</strong> ($10.95/$17.95, chicken sausage, pepperoni, roasted peppers, onions and fresh basil), which is nothing short of <em>perfetto!</em> Take a look at their vast menu <a href="http://sangennarocafe.com/index.php?page=menu">here</a> – which is wise, as you’ll need some time to decide which of their many options is best for you! So sit back with a glass of wine, listen to the music and enjoy <strong>$30 worth of food and drink</strong> at the San Gennaro Cafe for just <strong>$15!</strong>  <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=bloodwtr_sangenn"
                            target="_new">More Info</a>                </p>
                <table>
                  <tr>
                    <th>San Gennaro Cafe</th>
                  </tr>
                  <tr>
                    <td class="firstTD">140 Barrington Place</td>
                    <td><a href="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=san+generro+cafe+los+angeles&aq=&gl=us&g=12408+Ventura+Boulevard,+CA+91604-2406&ie=UTF8&hq=san+generro+cafe&hnear=Los+Angeles,+California&ll=34.066259,-118.468924&spn=0.007021,0.01472&z=16&iwloc=A" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Los Angeles, CA 90049</td>
                    <td><a href="http://sangennarocafe.com">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
