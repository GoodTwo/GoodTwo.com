<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="sherene_TTES.aspx.cs" Inherits="Funds_sherene_TTES" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/ttes-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>
            American Stroke Association</h2>
                    <h3> Boston, MA</h3>
                </div>
                <p> Sherene's Fight to End Stroke</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="../images/ttes-main.jpg" width="391" height="313" /></div>
        <h3>Note from Sherene:</h3>
      <p>Our team has taken on a personal challenge, to raise awareness of stroke.  We are committed to raising $9800 and running a 13.1 mile half-marathon on June 26, 2011.  This is part of Boston's American Stroke Association's &quot;Train to End Stroke&quot; program. Stroke is the third leading cause of death in the United States and one the leading causes of disability with 28% of the victims under the age of 65. We are doing our part to raise funds for research and education.  We need your help!</p>
      <p><a href="http://ttes.kona2011.kintera.org/shenouda" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="sherene-asa" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>$20 for $40 Worth of Food and Drinks at Lord Hobo</h3>
                <img src="../Images/lord-hobo.jpg" alt="" />
                <p class="prices"> Price: $20<br />
                  Discount: 50%<br />
                  You Save: $20</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=AmerStrk_LordHobo"
                            target="_new" class="buyNow">Buy Now</a> $5.00 will be donated to this cause.</p>
                <p class="description">It's tough to pick a place to eat when you're with a group of people. Everyone has their own idea of what they want and what they won't have. After four or five rounds of suggestions, it almost always seems impossible that everyone will be pleased with the selection. A place with good food, a cool atmosphere AND one that has a drink menu perfect for beer snobs? Impossible. Any other suggestions? Hold on, though. We here at CoupMe have found THE answer to this dilemma and are offering a great deal there to boot. Today, spend <strong>$20</strong> and you'll receive <strong>$40 worth of food and drink</strong> at <strong>Lord Hobo</strong>! Located on Hampshire Street in Cambridge, Lord Hobo might appear like a trendy, weekend night location for locals; however, it's much, much more. With a huge menu full of expertly crafted and cooks meals and a wide variety of beers both on tap and in bottles, it has an &quot;A-option&quot; for everyone in your party! As for food, we've never gone wrong by starting out with the <strong>Braised Pork Cheeks</strong> <strong>and Poblano Grits</strong> ($12), followed by the <strong>Mac &amp; Cheese with Applewood smoked bacon</strong> ($12) (available with Maine lobster for $18 too!) and washed down with a <strong>Dark House Scotty Karate</strong> ($6.50, full bodied scotch ale). We also recommend the <strong>Pressed Cuban Sandwich</strong> ($13, braised pork, Swiss cheese, pickled vegetables and spicy aioli sauce) with a <strong>Oppigards Winter Ale</strong> ($9, winter warmer ale). But you don't have to follow our advice – the options truly are endless! Lord Hobo also offers a vast, delicious <strong>brunch menu</strong> on the weekend from 10 am to 3 pm, so enjoy! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=AmerStrk_LordHobo" target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Lord Hobo</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 92 Hampshire Street</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=92+Hampshire+Street+Cambridge,+MA+02139&amp;sll=37.0625,-95.677068&amp;sspn=39.184175,78.486328&amp;ie=UTF8&amp;hq=&amp;hnear=92+Hampshire+St,+Cambridge,+Middlesex,+Massachusetts+02139&amp;ll=42.369262,-71.095104&amp;spn=0.008941,0.019162&amp;z=16&amp;iwloc=r0" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Cambridge, MA 02139</td>
                    <td><a href="http://www.lordhobo.com/" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $25 for $50 Worth of Food and Drinks at Club Cafe</h3>
                <img src="../Images/club-cafe.jpg" alt="" />
                <p class="prices"> Price: $25<br />
                  Discount: 50%<br />
                  You Save: $25</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=AmerStrk_ClubCafe"
                            class="buyNow">Buy Now</a> $6.25 will be donated to this cause.</p>
                <p class="description"> Getting tired of the same old local restaurant? It's not often you get a free night to yourself with that significant other or your friends, so you need to make the most of it. Why continue to bore yourself with those generic Italian restaurants or re-hashed, greasy Chinese food eateries? You need to experience diversity… decadent, delicious diversity. So why not take advantage of our deal with <b>Club Cafe,</b> where you'll get <b>$50 worth of food and drink</b> for just <b>$25! </b>Located on Columbus Avenue just outside the Back Bay area, Club Cafe has become quite the local hot spot for residents and visitors alike looking for a great meal and a great time. Boasting a vast menu with many delicious options, Club Cafe has you covered for all things edible. We highly recommend their <b>Lobster Macaroni and Cheese</b> ($12.99) as well as their <b>Classic Filet Mignon au Poivre</b> ($24.99, potato gratin and sautéed spinach with garlic and olive oil). To begin, their <b>Sesame Shrimp Tempura</b> ($8.99) is as good as it gets. With our deal, you're covered for drinks too, so enjoy any of their <b>martinis, cosmos, wines</b> or other specialty cocktails found <a href="http://www.clubcafe.com/wp-content/uploads/ClubCafecocktailmenu.pdf" target="_new">here</SPAN></a> . Then, once you've finished your meal, enjoy their dance club and other entertainment, all located in the same building! Talk about your ultimate dinner and a show!

So overcome redundancy and try one of Boston's most delicious and vibrant spots. Club Cafe is truly one of the best locations for a date, night out with friends or any other special occasion. Just $25 gets you $50 worth of food and drink! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=AmerStrk_ClubCafe"
                            target="_new">More Info</a></p>
                </p>
                <table>
                  <tr>
                    <th> Club Cafe </th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 209 Columbus Avenue</td>
                    <td><a href="http://maps.google.com/maps?client=safari&amp;q=209+Columbus+Avenue,+Boston,+MA+02116&amp;oe=UTF-8&amp;ie=UTF8&amp;hq=&amp;hnear=209+Columbus+Ave,+Boston,+Suffolk,+Massachusetts+02116&amp;gl=us&amp;z=16"
                                    target="_new">Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Boston, MA 02116 </td>
                    <td><a href="http://www.clubcafe.com/">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
       <li>
         <div>
           <h3> $10 for $20 Worth of Old-Fashioned, New York Deli-Style Eats at Rubin's</h3>
           <img src="../images/rubin's.jpg" alt="" />
           <p class="prices"> Price: $10<br />
             Discount: 50%<br />
             You Save: $10</p>
           <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=AmerStrk_Rubins"
                            class="buyNow">Buy Now</a> $2.50 will be donated to this cause.</p>
           <p class="description">Located at 500 Harvard Street in the heart of Brookline, <strong>Rubin's Kosher Restaurant Delicatessen</strong> serves up all your favorites every day (well, except Saturday). From <strong>Chicken Noodle Soup</strong> ($5.99 for a bowl with one matzo ball) and <strong>Stuffed Cabbage</strong> ($9.99) to <strong>Potato Pancakes</strong> ($7.99) and award-winning <strong>Knishes</strong> ($5.99), Rubin's delivers the way your grandmother used to, and boy does he deliver well. Hungry for the real deal? Be sure to try one of their special combo sandwiches like the <strong>Times Square</strong>, made with corned beef, turkey, cole slaw and Russian dressing ($15.99) or <strong>The Manhattan</strong> with corned beef, hot Romanian pastrami and chopped liver ($16.99). Only <strong>$10</strong> gets you $20 worth of these delicious options and so much more at Rubin's! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=AmerStrk_Rubins"
                            target="_new">More Info</a></p>
           <table>
             <tr>
               <th> Rubin's </th>
             </tr>
             <tr>
               <td class="firstTD"> 500 Harvard Street</td>
               <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=500+Harvard+Street,+Brookline,+MA+02446&amp;sll=42.342638,-71.084327&amp;sspn=0.001075,0.002411&amp;ie=UTF8&amp;hq=&amp;hnear=500+Harvard+St,+Brookline,+Norfolk,+Massachusetts+02446&amp;ll=42.348223,-71.129528&amp;spn=0.001074,0.002411&amp;z=19&amp;iwloc=r9"
                                    target="_new">Map / Directions &raquo;</a></td>
             </tr>
             <tr>
               <td> Brookline, MA 02446 </td>
               <td><a href="http://www.rubinskosher.com/">Visit Website &raquo;</a></td>
             </tr>
           </table>
         </div>
       </li>
        
        
        </ul>
    </div>
</asp:Content>
