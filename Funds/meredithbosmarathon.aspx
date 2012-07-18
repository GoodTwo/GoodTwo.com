<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="meredithbosmarathon.aspx.cs" Inherits="Funds_meredithbosmarathon" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/Meredith-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>Meredith's Boston Marathon Fundraiser for Jumpstart</h2>
<h3> Boston, MA</h3>
                </div>
                <p>I'm running the 2011 Boston Marathon for Jumpstart! Jumpstart is a nationwide non-profit that prepares pre-schoolers for school. Jumpstart benefits college students as well; undergraduates can earn work study for Jumpstart! </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="..\Images\Meredith-main.jpg" width="391" height="313" /></div>
        <h3>Meredith's Boston Marathon Fundraiser for Jumpstart:</h3>
      <p>By treating yourself (or someone else), you can help my cause! I'm running with Jumpstart because I want to help provide others educational opportunities as I have had. Join me in enabling children to have a strong education! Training with the Jumpstart Charity Team has been a blast. Looking forward to Marathon Monday. Thank you so much for your support! </p>
      <p><a href="http://www.jstart.org/site/TR/NorthEast/General?px=1616165&amp;pg=personal&amp;fr_id=1150" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="meredithbosmarathon" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>50% off - $25 for $50 Worth of Food and Drinks at One of Boston's Hottest Nightspots, Club Cafe</h3>
                <img src="../Images/club-cafe.jpg" alt="" />
                <p class="prices"> Price: $25<br />
                  Discount: 50%<br />
                  You Save: $25</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=MeredithMara_ClubCafe"
                            target="_new" class="buyNow">Buy Now</a> $6.25 will be donated to this cause</p>
                <p class="description">Getting tired of the same old local restaurant? It's not often you get a free night to yourself with that significant other or your friends, so you need to make the most of it. Why continue to bore yourself with those generic Italian restaurants or re-hashed, greasy Chinese food eateries? You need to experience diversity… decadent, delicious diversity. So why not take advantage of our deal with <b>Club Cafe,</b> where you'll get <b>$50 worth of food and drink</b> for just <b>$25! </b>Located on Columbus Avenue just outside the Back Bay area, Club Cafe has become quite the local hot spot for residents and visitors alike looking for a great meal and a great time. Boasting a vast menu with many delicious options, Club Cafe has you covered for all things edible. We highly recommend their <b>Lobster Macaroni and Cheese</b> ($12.99) as well as their <b>Classic Filet Mignon au Poivre</b> ($24.99, potato gratin and sautéed spinach with garlic and olive oil). To begin, their <b>Sesame Shrimp Tempura</b> ($8.99) is as good as it gets. With our deal, you're covered for drinks too, so enjoy any of their <b>martinis, cosmos, wines</b> or other specialty cocktails found <a href="http://www.clubcafe.com/wp-content/uploads/ClubCafecocktailmenu.pdf" target="_new">here</SPAN></a> . Then, once you've finished your meal, enjoy their dance club and other entertainment, all located in the same building! Talk about your ultimate dinner and a show!

So overcome redundancy and try one of Boston's most delicious and vibrant spots. Club Cafe is truly one of the best locations for a date, night out with friends or any other special occasion. Just $25 gets you $50 worth of food and drink! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=MeredithMara_ClubCafe" target="_new">More Info</a></p>
                </p>
                <table>
                  <tr>
                    <th> Club Cafe</th>
                  </tr>
                  <tr>
                    <td class="firstTD">209 Columbus Avenue</td>
                    <td><a href="http://maps.google.com/maps?client=safari&amp;q=209+Columbus+Avenue,+Boston,+MA+02116&amp;oe=UTF-8&amp;ie=UTF8&amp;hq=&amp;hnear=209+Columbus+Ave,+Boston,+Suffolk,+Massachusetts+02116&amp;gl=us&amp;z=16" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Boston, MA 02116</td>
                    <td><a href="http://maps.google.com/maps?client=safari&amp;q=209+Columbus+Avenue,+Boston,+MA+02116&amp;oe=UTF-8&amp;ie=UTF8&amp;hq=&amp;hnear=209+Columbus+Ave,+Boston,+Suffolk,+Massachusetts+02116&amp;gl=us&amp;z=16" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> 50% off - Experience an Authentic Italian Cafe Right Here in Boston! $6 for $12 Worth of Food at Cafe Quattro</h3>
                <img src="../Images/cafe-quattro.jpg" alt="" />
                <p class="prices"> Price: $6<br />
                  Discount: 50%<br />
                  You Save: $6</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=MeredithMara_quattro"
                            class="buyNow">Buy Now</a> $1.50 will be donated to this cause</p>
                <p class="description"> Located on Somerset Street in Beacon Hill, Cafe Quattro truly brings the feeling of a small, authentic Italian cafe to Boston. Quattro is known for its delicious offerings, which range from <strong>thin crust pizzas</strong> (up to $12.99) and <strong>panini sandwiches</strong> (up to $5.99) to a variety of <strong>soups, salads and coffees</strong>. You can check out their full menu <a href="http://www.cafequattroboston.com/ordereze/Content/1/Summary.aspx" target="_new">here</a>. Because Quattro uses only the freshest ingredients, each meal is just as mouth watering as the next. We highly recommend the <strong>Caprese</strong> sub ($5.99 – fresh mozzarella with sliced tomatoes, mixed greens, roasted red peppers, red onions and topped with balsamic vinegar). Although, our sources tell us the <strong>Chicken Parm over Baked Ziti</strong> ($8.99) is to die for! Spend your $12 worth of food – for only <strong>$6</strong>! – wisely! So stop staring at those oil paintings, longing for an authentic, old-country cafe experience. Spend just $6 today and get $12 worth of food to Cafe Quattro, the closest Boston comes to Italy! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=MeredithMara_quattro"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Cafe Quattro</th>
                  </tr>
                  <tr>
                    <td class="firstTD">4 Somerset Street</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=4+Somerset+Street,+Boston,+MA+02108&amp;sll=42.347856,-71.097744&amp;sspn=0.008595,0.01929&amp;g=71+Lansdowne+Street,+Boston,+MA+02215&amp;ie=UTF8&amp;hq=&amp;hnear=4+Somerset+St,+Boston,+Suffolk,+Massachusetts+02108&amp;ll=42.35879,-71.061531&amp;spn=0.001033,0.002411&amp;z=19&amp;iwloc=A" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Boston, MA 02108</td>
                    <td><a href="http://www.cafequattroboston.com/ordereze/default.aspx">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> 50% off - $45 for a $90 Blissful, Indulgent Spa Experience at Toscana European Day Spa</h3>
                <img src="../Images/toscana.jpg" alt="" />
                <p class="prices"> Price: $45<br />
                  Discount: 50%<br />
                  You Save: $45</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=MeredithMara_Toscana"
                            class="buyNow">Buy Now</a> $9.50 will be donated to this cause</p>
                <p class="description">Located on Newbury Street, <strong>Toscana European Day Spa</strong> sits in a tranquil setting, much like the luxurious salons and spas in Europe. Upon entering, you'll be pampered by the best stylists, massage therapists and aestheticians in Boston. At Toscana, they exclusively use award-winning, European- and U.S.-made products, ranging from organic skin care to Goldwell and L'Oreal Paris hair products. Owner Doina Mandrila trained in Europe, where she learned her envied beauty secrets, and has been practicing skin care for more than 35 years. Now she brings her knowledge and talent back to the U.S., right here in Boston for your pleasure. Rejuvenate your dull skin with a <strong>60-minute European facial</strong> ($85), a cleansing that uses grapefruit, aloe vera or honey extract combined with a gentle exfoliation of oat flour to radiate your skin. Or indulge in a <strong>Delicious Scrub</strong> ($75) – a combination of ginger, nutmeg, orange and cinnamon, so sweet you'll be tempted to eat it! It will leave your skin feeling silky smooth, and you'll leave the spa feeling sexier than ever. You won't be able to resist one of their<strong> top-notch massages</strong>, including a <strong>60-minute Swedish Massage</strong> ($90) or <strong>Reflexology Massage </strong>($75). Bring your hair back to life with a <strong>Wash, Cut and Blow dry</strong> (starting at $75), and freshen up with a <strong>Brazilian Bikini Wax</strong> ($65), paired with a <strong>lip and brow wax</strong> ($25). Enjoy $90 worth of services today for just<strong> $45</strong>!  <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=MeredithMara_Toscana"
                            target="_new">More Info</a> </p>
                <table>
                  <tr>
                    <th>Toscana European Day Spa!</th>
                  </tr>
                  <tr>
                    <td class="firstTD">231 Newbury Street</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=231+Newbury+Street,+Boston,+MA+02116&amp;sll=42.348223,-71.129528&amp;sspn=0.001074,0.002411&amp;ie=UTF8&amp;hq=&amp;hnear=231+Newbury+St,+Boston,+Suffolk,+Massachusetts+02116&amp;ll=42.350138,-71.081945&amp;spn=0.001074,0.002411&amp;z=19&amp;iwloc=r1" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Boston, MA 02116</td>
                    <td><a href="http://www.toscanadayspanewbury.com/">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
