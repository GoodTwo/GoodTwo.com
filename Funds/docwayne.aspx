<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="docwayne.aspx.cs" Inherits="Funds_docwayne" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/docwayne-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>Doc Wayne Athletic League</h2>
<h3> Boston, MA</h3>
                </div>
                <p>Doc Wayne Athletic league offers youths whose lives have been disrupted, an opportunity for competitive team sports with an emphasis on sportsmanship, inclusion, personal growth, and entertainment. </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="..\Images\docwayne-main.jpg" width="391" height="313" /></div>
        <h3>To raise money for less fortunate children:</h3>
      <p>The Doc Wayne Athletic League was initiated in 2001 by Justice Resource Institute (JRI). DWAL is a unique therapeutic four sport, four Athletic season league for adolescent boys and girls whose young lives have been marred by trauma, abuse and neglect. The League seeks to offer these youth a wonderfully fun experience and at the same time they learn from DtG (Do the Good), a positive youth development and skills curriculum 
offered on the courts and fields as aerobic stimulation has the ability to lift their moods, sharpens their thinking; and most important, allows them to have fun. </p>
      <p><a href="http://www.jri.org/docwayne/" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="docwayneathlge_boston" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>Get $50 of Italian Eats at G'Vanni's Ristorante for Just $20!</h3>
                <img src="../Images/gvannis.jpg" alt="" />
                <p class="prices"> Price: $20<br />
                  Discount: 60%<br />
                  You Save: $30</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=DocWayAthLg_GVannis"
                            target="_new" class="buyNow">Buy Now</a> $5.00 will be donated to this cause</p>
                <p class="description">Nestled in Boston's infamous North End sits <b>G'Vanni's Ristorante</b>, an inviting little place serving up fine Italian cuisine one day at a time. Let yourself cozy up with the restaurant's warm, charming atmosphere, as you indulge in a hearty meal. After you've finished off your fresh bread and butter basket, you may like to continue fueling your stomach with a number of G'Vanni's appetizers such as the <strong>Mozza Wrap</strong> (Fresh mozzarella wrapped in Prosciutto) or <strong>Scallops with Bacon.</strong> Moving along to dinner, G'Vanni's offers a wide range of entrees, including the <strong>Steak Mafioso</strong> (Prime Sirloin sautéed with peppers and onions), <strong>Risotto Del Giorno</strong> (Risotto of the Day with Shrimp or fresh vegetables), <strong>Eggplant Parmesan</strong>, and the ever so decadent, heartwarming <strong>Pumpkin Ravioli</strong>. G'vanni's also serves a variety of fresh, signature &quot;<strong>T.O.N.Y Baloney</strong>&quot; Pizza including their classic Margherita with tomato and mozzarella. The restaurant also serves up a variety of wholesome meals, such as the <strong>Spaghetti Alla Pesto</strong> (Whole Wheat Pasta topped with pesto). Come cozy up with a loved one or good friend at G'Vanni's Ristorante in the North End, where you get $50 worth of food and drinks for just $20! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=DocWayAthLg_GVannis" target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> G'Vanni's Ristorante</th>
                  </tr>
                  <tr>
                    <td class="firstTD">2 Prince Street</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=2+Prince+Street,+Boston,+MA+02113&amp;sll=42.302869,-71.151972&amp;sspn=0.001075,0.002411&amp;ie=UTF8&amp;hq=&amp;hnear=2+Prince+St,+Boston,+Suffolk,+Massachusetts+02113&amp;ll=42.364133,-71.053643&amp;spn=0.001074,0.002411&amp;z=19&amp;iwloc=r0" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Boston, MA 02113</td>
                    <td><a href="http://www.gvannis.com/" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
          <li>
              <div>
                <h3> $6 for $12 Worth of Food at Cafe Quattro</h3>
                <img src="../Images/cafe-quattro.jpg" alt="" />
                <p class="prices"> Price: $6<br />
                  Discount: 50%<br />
                  You Save: $6</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=DocWayAthLg_quattro"
                            class="buyNow">Buy Now</a> $1.50 will be donated to this cause.</p>
                <p class="description"> Located on Somerset Street in Beacon Hill, Cafe Quattro truly brings the feeling of a small, authentic Italian cafe to Boston. Quattro is known for its delicious offerings, which range from <strong>thin crust pizzas</strong> (up to $12.99) and <strong>panini sandwiches</strong> (up to $5.99) to a variety of <strong>soups, salads and coffees</strong>. You can check out their full menu <a href="http://www.cafequattroboston.com/ordereze/Content/1/Summary.aspx" target="_new">here</a>. Because Quattro uses only the freshest ingredients, each meal is just as mouth watering as the next. We highly recommend the <strong>Caprese</strong> sub ($5.99 – fresh mozzarella with sliced tomatoes, mixed greens, roasted red peppers, red onions and topped with balsamic vinegar). Although, our sources tell us the <strong>Chicken Parm over Baked Ziti</strong> ($8.99) is to die for! Spend your $12 worth of food – for only <strong>$6</strong>! – wisely! So stop staring at those oil paintings, longing for an authentic, old-country cafe experience. Spend just $6 today and get $12 worth of food to Cafe Quattro, the closest Boston comes to Italy! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=DocWayAthLg_quattro"
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
                <h3> $25 for a Half-Hour Psychic Reading</h3>
                <img src="../Images/tremont_tearoom.jpg" alt="" />
                <p class="prices"> Price: $25<br />
                  Discount: 59%<br />
                  You Save: $35</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=DocWayAthLg_TremTea"
                            class="buyNow">Buy Now</a> $6.25 will be donated to this cause.</p>
                <p class="description">Located on Tremont Street in Boston, the <b>Tremont Tearoom</b> offers fortune readings both in-person and over the phone for only <b>$25,</b> meaning even the penny-pincher can afford to break free of the shadows and step forward into the sun. The knowledge that you crave is now affordable. You can wrestle with the fear of not knowing and come out victorious. All you have to do is pay $25, pick up your phone and dial (617) 338-8100, or come on down to their location and let one of the Tearoom's trained professionals feed you knowledge about life and the future. Now doesn't that sound enlightening? With today's deal you get a half-hour reading with a professional psychic. You don't have to cower in the dark any longer &#8211; the dawn has arrived.  <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=DocWayAthLg_TremTea"
                            target="_new">More Info</a> </p>
                <table>
                  <tr>
                    <th>Tremont Tearoom</th>
                  </tr>
                  <tr>
                    <td class="firstTD">101 Tremont Street 
Suite 609, 6th Floor</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=101+Tremont+Street,+Boston,+MA+02108&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=37.188995,78.837891&amp;ie=UTF8&amp;hq=&amp;hnear=101+Tremont+St,+Boston,+Suffolk,+Massachusetts+02108&amp;ll=42.357577,-71.061137&amp;spn=0.008483,0.019248&amp;z=16&amp;iwloc=r19" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Boston, MA 02108</td>
                    <td><a href="http://tremont-tearoom.com/welcome.html">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
