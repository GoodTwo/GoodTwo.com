<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="TNT_Stemmler.aspx.cs" Inherits="Funds_TNT_Stemmler" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/TNT_Stemmler-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>Team Stemmler's Marathon Fundraiser</h2>
<h3> Boston, MA</h3>
                </div>
                <p>Team Stemmler is training for the Alaska Marathon and raising money for the Leukemia and Lymphoma Society, in honor of Dr. Christina Stemmler, a one-of-a-kind physician, who died of cancer in 2008. Please support our Team! </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="../Images/TNT_Stemmler-main.jpg" width="391" height="313" /></div>
        <h3>Help Us Support the Leukemia & Lymphoma Society:</h3>
      <p>Julia and Patrick have decided to run the Alaska Marathon and raise $9,000 for leukemia and lymphoma as Team Stemmler, in honor of Julia's mom who died of cancer in 2008. Join the Team to make a difference in the lives of those living with cancer, and to honor the memory of an amazing mother and dedicated physician, Dr. Stemmler. </p>
      <p><a href="http://pages.teamintraining.org/ma/anchor11/teamstemmler" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="TNT_Stemmler" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>Get $50 of Tasty Italian Eats at G'Vanni's Ristorante for Just $20!</h3>
                <img src="../Images/gvannis.jpg" alt="" />
                <p class="prices"> Price: $20<br />
                  Discount: 60%<br />
                  You Save: $30</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=TNT_TmStem_GVannis"
                            target="_new" class="buyNow">Buy Now</a> $5.00 will be donated to this cause.</p>
                <p class="description">Nestled in Boston's infamous North End sits <b>G'Vanni's Ristorante</b>, an inviting little place serving up fine Italian cuisine one day at a time. Let yourself cozy up with the restaurant's warm, charming atmosphere, as you indulge in a hearty meal. After you've finished off your fresh bread and butter basket, you may like to continue fueling your stomach with a number of G'Vanni's appetizers such as the <strong>Mozza Wrap</strong> (Fresh mozzarella wrapped in Prosciutto) or <strong>Scallops with Bacon.</strong> Moving along to dinner, G'Vanni's offers a wide range of entrees, including the <strong>Steak Mafioso</strong> (Prime Sirloin sautéed with peppers and onions), <strong>Risotto Del Giorno</strong> (Risotto of the Day with Shrimp or fresh vegetables), <strong>Eggplant Parmesan</strong>, and the ever so decadent, heartwarming <strong>Pumpkin Ravioli</strong>. G'vanni's also serves a variety of fresh, signature &quot;<strong>T.O.N.Y Baloney</strong>&quot; Pizza including their classic Margherita with tomato and mozzarella. The restaurant also serves up a variety of wholesome meals, such as the <strong>Spaghetti Alla Pesto</strong> (Whole Wheat Pasta topped with pesto). Come cozy up with a loved one or good friend at G'Vanni's Ristorante in the North End, where you get $50 worth of food and drinks for just $20! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=TNT_TmStem_GVannis" target="_new">More Info</a></p>
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
                <h3> $6 for a Pair of Fat-Free Fro-Yo's with Unlimited Toppings at Red Mango</h3>
                <img src="../Images/red-mango.jpg" alt="" />
                <p class="prices"> Price: $6<br />
                  Discount: 50%<br />
                  You Save: $6</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=TNT_TmStem_RedMango"
                            class="buyNow">Buy Now</a> $1.00 will be donated to this cause.</p>
                <p class="description"> At <strong>Red Mango</strong> – where <strong>$6</strong> gets you <strong>2 regular-sized servings of 100% all-natural, nonfat frozen yogurt</strong> – you can dress up your treat however you please with an <strong>unlimited amount of toppings</strong>. Yes, it is true. You get to pick any type of toppings you would like on your delicious frozen treat. Get creative with their unique selection of toppings: bananas, raspberries, organic granola, organic cookies and cream and so much more! All you need is a spoon and not a penny more for this frozen bowl of tastiness at Red Mango on Massachusetts Avenue in the Symphony area! <a href="https://store.goodtwo.com/ProductDetails.asp?ProductCode=TNT_TmStem_RedMango"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Red Mango</th>
                  </tr>
                  <tr>
                    <td class="firstTD">334 Massachusetts Avenue</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=334+Massachusetts+Avenue,+Boston,+MA+02115&amp;sll=41.911691,-70.801536&amp;sspn=0.001082,0.002411&amp;ie=UTF8&amp;hq=&amp;hnear=334+Massachusetts+Ave,+Boston,+Suffolk,+Massachusetts+02115&amp;ll=42.342638,-71.084327&amp;spn=0.001075,0.002411&amp;z=19&amp;iwloc=A" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Boston, MA 02115</td>
                    <td><a href="http://www.redmangousa.com/default.html">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $15 for $30 Worth of Gourmet Coffees, Teas and More at Aroma Ridge</h3>
                <img src="../Images/aroma-ridge.jpg" alt="" />
                <p class="prices"> Price: $15<br />
                  Discount: 50%<br />
                  You Save: $15</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=TNT_TmStem_Aroma"
                            class="buyNow">Buy Now</a> $3.75 will be donated to this cause.</p>
                <p class="description">Are you still struggling to find that perfect cup of coffee? Whether it's something to give you that extra jolt before the workday begins or a rich blend to pair with your weekend newspaper ritual, a cup o' Joe can either make or break your day. And that's exactly how <strong>Aroma Ridge</strong> transpired: the passion for the most perfect cup of coffee. Now, 20 years later, Aroma Ridge has transformed into a small, family-owned business, providing a plethora of the finest mountain grown gourmet coffees, quality teas, accessories and more to enjoy in your very own home. At Aroma Ridge, you won't get the typical, monotonous cup of coffee you've become so accustomed to. Rather, they use hand-selected beans from various countries, hand roasted into small batches for a fresh, clean taste. Their staff prides themselves in exceptional customer service. While they many not make the universal perfect cup of coffee, they'll provide you with your perfect cup of coffee, offering a number of blends based on your personal taste (ranging from mild to XBold Flavor, regular to decaf). Add a kick to your morning java with a flavored coffee, like their <strong>Mocha Almond Fudge</strong>, <strong>Almond Cookie or Tropical Vanilla</strong>, laced with a hint of coconuts and sweet almonds ($10.95/lb). If coffee doesn't do it for you, go with a <strong>Chai Tea</strong> that comes in Vanilla, Chocolate, Spiced and Raspberry ($9.95/12 oz), or their specialty <strong>Organic Breakfast tea</strong> that includes 15 individual pouches ($9.95). Kick up the flavor to any of your beverages (or morning pancakes) with one of their delicious all-natural syrups in more than 30 flavors like Amaretto, White Chocolate and Irish Cream ($7.50). To top it off, they don't have any fat or cholesterol, so drizzle away! But fat and calories won't be the only thing you'll be saving. With today's deal you'll save on all your favorite coffee, teas and accessories as well-that is just <strong>$15 for $30 worth of products at Aroma Ridge</strong>! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=TNT_TmStem_Aroma"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Aroma Ridge</th>
                  </tr>
                  <tr>
                    <td class="firstTD"><a href="http://www.aromaridge.com/">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
