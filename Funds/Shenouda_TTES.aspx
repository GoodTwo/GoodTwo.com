<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Shenouda_TTES.aspx.cs" Inherits="Funds_Shenouda_TTES" %>

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
                <p> Join me in the fight against stroke-and help save lives</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="../images/ttes-main.jpg" width="391" height="313" /></div>
        <h3>Note from Baheya Shenouda:</h3>
      <p>Help me fight our nation's 3rd leading killer-Stroke. I took this life challenge to help raise funds for the American Stroke Association. Stroke is preventable and can happen to anyone. I have a goal of raising $4900 to help fund stroke research, awareness, and advocacy programs. </p>
      <p>I need to reach my fund raising goal by the end of April. Please donate and help me in my mission, I can only do this with your help! A donation in any amount is appreciated.</p>
      <p>Thank you for supporting the fight to end stroke and save lives. </p>
<p><a href="http://ttes.kona2011.kintera.org/baheya" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="Shenouda-ttes" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3> $15 for $30 Worth of Mexican Eats at  Jose's!</h3>
                <img src="../Images/joses.jpg" alt="" />
                <p class="prices"> Price: $15<br />
                  Discount: 50%<br />
                  You Save: $15</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=Shenouda_Joses"
                            class="buyNow">Buy Now</a> $3.75 will be donated to this cause.</p>
                <p class="description">Located in North Cambridge, Jose's prides itself on offering homemade cuisine that's been passed down through family generations. The owner was raised on home cooked food prepared from fresh local ingredients, so that's exactly what you're getting when you dine with Jose's! Munch on some <strong>salsa</strong> or <strong>guac &amp; chips</strong> as you take your time with their extensive yet oh so enticing menu. Dig into their <strong>chicken, shrimp, steak</strong> or <strong>veggie fajitas</strong> or infamous <strong>Mexican Flag Enchiladas</strong>, sporting their three colors with salsa, cheese, and tomatillo sauce. Craving something more traditional? Try something &quot;From My Mother's Kitchen&quot; like the <strong>Tamales del Dia</strong> with different fillings each day! Don't forget to dip into some dessert (like the homemade flan!) too! So grab your friends and head to Jose's for some delightful margaritas, homemade guacamole, and traditional Mexican food. You get <strong>$30 worth of food</strong> for just <strong>$15</strong>. Muy delicioso! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=Shenouda_Joses"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Jose's</th>
                  </tr>
                  <tr>
                    <td class="firstTD">131 Sherman Street</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=131+Sherman+Street,+Cambridge,+MA+02140&amp;sll=42.36403,-71.053624&amp;sspn=0.001074,0.002411&amp;ie=UTF8&amp;hq=&amp;hnear=131+Sherman+St,+Cambridge,+Middlesex,+Massachusetts+02140&amp;ll=42.390185,-71.132848&amp;spn=0.001074,0.002411&amp;z=19&amp;iwloc=r0" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Cambridge, MA 02140</td>
                    <td><a href="http://www.josesmex.com/dnn08/Home/tabid/36/Default.aspx" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $7 for $15 Worth of Food at Bill's Pizzeria</h3>
                <img src="../Images/billspizza.gif" alt="" />
                <p class="prices"> Price: $7<br />
                  Discount: 50%<br />
                  You Save: $14</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=Shenouda_bills"
                            target="_new" class="buyNow">Buy Now</a> $1.75 will be donated to this cause</p>
                <p class="description"> Located on Beacon Street in Newton, <strong>Bill's Pizzeria</strong> is the proclaimed <strong>&quot;gold standard&quot;</strong> for pizza according to actor John Krasinski, better known as Jim from <em>The Office</em>. Once you enter Bill's you'll immediately recognize what homemade pizza is all about. The smells, the taste, the ambiance – everything about Bill's makes you feel at home, as if you're making the pies in your very own oven – just with incredibly delicious results! We highly recommend <strong>The Carnivore pizza</strong> ($11.99/$17.99 – fresh tomato sauce, four cheese blend, seasoned crumbled hamburger, marinated chicken &amp; steak, pepperoni, salami, sliced meatballs, sausage chunks &amp; bacon strips) and the <strong>Steak Fajita pizza</strong> ($9.99/$14.99 – fresh tomato sauce, four cheese blend, marinated steak strips, Spanish olives, diced tomato, red &amp; white onions, green &amp; red bell peppers &amp; chopped hot peppers). Of course, their regular cheese and pepperoni are fine by us, too! If you're not in a pizza mood, no worries! Bill's has calzones, wraps, sandwiches, salads and delicious pasta plates as well – so you're in luck no matter what you want! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=Shenouda_bills"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Bill's Pizzeria</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 753 Beacon Street</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=231+Newbury+Street,+Boston,+MA+02116&amp;sll=42.348223,-71.129528&amp;sspn=0.001074,0.002411&amp;ie=UTF8&amp;hq=&amp;hnear=231+Newbury+St,+Boston,+Suffolk,+Massachusetts+02116&amp;ll=42.350138,-71.081945&amp;spn=0.001074,0.002411&amp;z=19&amp;iwloc=r1&quot; target=&quot;_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Newton Center, MA 02459 </td>
                    <td><a href="http://www.billspizzeria.com/index1.jsp">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3>Get $50 of  Italian Eats at G'Vanni's Ristorante for Just $20!</h3>
                <img src="../Images/gvannis.jpg" alt="" />
                <p class="prices"> Price: $20<br />
                  Discount: 60%<br />
                  You Save: $30</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=shenouda_GVannis"
                            target="_new" class="buyNow">Buy Now</a> $5.00 will be donated to this cause.</p>
                <p class="description">Nestled in Boston's infamous North End sits <b>G'Vanni's Ristorante</b>, an inviting little place serving up fine Italian cuisine one day at a time. Let yourself cozy up with the restaurant's warm, charming atmosphere, as you indulge in a hearty meal. After you've finished off your fresh bread and butter basket, you may like to continue fueling your stomach with a number of G'Vanni's appetizers such as the <strong>Mozza Wrap</strong> (Fresh mozzarella wrapped in Prosciutto) or <strong>Scallops with Bacon.</strong> Moving along to dinner, G'Vanni's offers a wide range of entrees, including the <strong>Steak Mafioso</strong> (Prime Sirloin sautéed with peppers and onions), <strong>Risotto Del Giorno</strong> (Risotto of the Day with Shrimp or fresh vegetables), <strong>Eggplant Parmesan</strong>, and the ever so decadent, heartwarming <strong>Pumpkin Ravioli</strong>. G'vanni's also serves a variety of fresh, signature &quot;<strong>T.O.N.Y Baloney</strong>&quot; Pizza including their classic Margherita with tomato and mozzarella. The restaurant also serves up a variety of wholesome meals, such as the <strong>Spaghetti Alla Pesto</strong> (Whole Wheat Pasta topped with pesto). Come cozy up with a loved one or good friend at G'Vanni's Ristorante in the North End, where you get $50 worth of food and drinks for just $20! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=shenouda_GVannis" target="_new">More Info</a></p>
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
            </ul>
    </div>
</asp:Content>
