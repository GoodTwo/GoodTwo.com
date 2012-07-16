<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="americanlungne.aspx.cs" Inherits="Funds_americanlungne" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/American-Lung-Association-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>American Lung Association</h2>
<h3> Waltham, MA</h3>
                </div>
                <p>Our mission is to save lives by improving lung health and preventing lung disease. </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="..\Images\American-Lung-Association-main.jpg" width="391" height="313" frameborder="0"></iframe></div>
        <h3>American Lung Association of Massachusetts:</h3>
      <p>Our mission is to save lives by improving lung health and preventing lung disease. 
Now in its second century, the American Lung Association is the leading organization working to save lives by improving lung health and preventing lung disease. With your generous support, the American Lung Association is "Fighting for Air" through research, education and advocacy. When you join the American Lung Association in the fight for healthy lungs and healthy air, you help save lives today and keep America healthy tomorrow.</p>
      <p><a href="http://www.lungusa.org/associations/charters/new-england/" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="americanlungne" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>Get $50 of Italian at G'Vanni's Ristorante for Just $20</h3>
                <img src="../Images/gvannis.jpg" alt="" />
                <p class="prices"> Price: $20<br />
                  Discount: 60%<br />
                  You Save: $30</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=AmerLung_GVannis"
                            target="_new" class="buyNow">Buy Now</a> $5.00 will be donated to this cause</p>
                <p class="description">Nestled in Boston's infamous North End sits <b>G'Vanni's Ristorante</b>, an inviting little place serving up fine Italian cuisine one day at a time. Let yourself cozy up with the restaurant's warm, charming atmosphere, as you indulge in a hearty meal. After you've finished off your fresh bread and butter basket, you may like to continue fueling your stomach with a number of G'Vanni's appetizers such as the <strong>Mozza Wrap</strong> (Fresh mozzarella wrapped in Prosciutto) or <strong>Scallops with Bacon.</strong> Moving along to dinner, G'Vanni's offers a wide range of entrees, including the <strong>Steak Mafioso</strong> (Prime Sirloin sautéed with peppers and onions), <strong>Risotto Del Giorno</strong> (Risotto of the Day with Shrimp or fresh vegetables), <strong>Eggplant Parmesan</strong>, and the ever so decadent, heartwarming <strong>Pumpkin Ravioli</strong>. G'vanni's also serves a variety of fresh, signature &quot;<strong>T.O.N.Y Baloney</strong>&quot; Pizza including their classic Margherita with tomato and mozzarella. The restaurant also serves up a variety of wholesome meals, such as the <strong>Spaghetti Alla Pesto</strong> (Whole Wheat Pasta topped with pesto). Come cozy up with a loved one or good friend at G'Vanni's Ristorante in the North End, where you get $50 worth of food and drinks for just $20! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=AmerLung_GVannis" target="_new">More Info</a></p>
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
                <h3> $15 for $30 Worth of Eats at Jose's</h3>
                <img src="../Images/joses.jpg" alt="" />
                <p class="prices"> Price: $15<br />
                  Discount: 50%<br />
                  You Save: $15</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=AmerLung_Joses"
                            class="buyNow">Buy Now</a> $3.75 will be donated to this cause</p>
                <p class="description"> Located in North Cambridge, Jose's prides itself on offering homemade cuisine that's been passed down through family generations. The owner was raised on home cooked food prepared from fresh local ingredients, so that's exactly what you're getting when you dine with Jose's! Munch on some <strong>salsa</strong> or <strong>guac &amp; chips</strong> as you take your time with their extensive yet oh so enticing menu. Dig into their <strong>chicken, shrimp, steak</strong> or <strong>veggie fajitas</strong> or infamous <strong>Mexican Flag Enchiladas</strong>, sporting their three colors with salsa, cheese, and tomatillo sauce. Craving something more traditional? Try something &quot;From My Mother's Kitchen&quot; like the <strong>Tamales del Dia</strong> with different fillings each day! Don't forget to dip into some dessert (like the homemade flan!) too! So grab your friends and head to Jose's for some delightful margaritas, homemade guacamole, and traditional Mexican food. You get <strong>$30 worth of food</strong> for just <strong>$15</strong>. Muy delicioso! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=AmerLung_Joses"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Jose's</th>
                  </tr>
                  <tr>
                    <td class="firstTD">131 Sherman Street</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=131+Sherman+Street,+Cambridge,+MA+02140&amp;sll=42.36403,-71.053624&amp;sspn=0.001074,0.002411&amp;ie=UTF8&amp;hq=&amp;hnear=131+Sherman+St,+Cambridge,+Middlesex,+Massachusetts+02140&amp;ll=42.390185,-71.132848&amp;spn=0.001074,0.002411&amp;z=19&amp;iwloc=r0" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Cambridge, MA 02140</td>
                    <td><a href="http://www.josesmex.com/dnn08/Home/tabid/36/Default.aspx">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3>  $25 for a Haircut and Blow Dry at Elite Hair Studio</h3>
                <img src="../Images/Elite-hair.jpg" alt="" />
                <p class="prices"> Price: $25<br />
                  Discount: 65%<br />
                  You Save: $45</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=AmerLung_EliteHair"
                            class="buyNow">Buy Now</a> $6.25 will be donated to this cause</p>
                <p class="description">Located right on Grove Street in Chestnut Hill, <strong>Elite Hair Studio</strong> has been serving the elite of Boston for years. The stylists are highly educated in the latest trends, styles and hair colorings. Each stylist is trained to accommodate your personal style with his or her own innovative touch, so you will leave looking (and feeling) your absolute best. The salon carries and uses the latest, top-of-the-line products to suit your hair's needs. We know getting a haircut from a new hairdresser is always a gamble, but we are delivering you one of the most elite hair salons in the Greater Boston area and for only <strong>$25</strong> – normally a <strong>$70 value! </strong>So head over to Chestnut Hill and snag the hairdo you have been waiting for to give you a new look this winter. For only $25, you will receive a <strong>haircut and blow dry</strong> from some of the most elite stylists in town!  <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=AmerLung_EliteHair"
                            target="_new">More Info</a> </p>
                <table>
                  <tr>
                    <th>Elite Hair Studio</th>
                  </tr>
                  <tr>
                    <td class="firstTD">185 Grove Street</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=185+Grove+Street+02467&amp;sll=42.302869,-71.151972&amp;sspn=0.008602,0.01929&amp;g=185+Grove+Street,+Chestnut+Hill,+MA+02467&amp;ie=UTF8&amp;hq=&amp;hnear=185+Grove+St,+Brookline,+Norfolk,+Massachusetts+02467&amp;ll=42.302869,-71.151972&amp;spn=0.001075,0.002411&amp;z=19&amp;iwloc=A" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Chestnut Hill, MA 02467</td>
                    <td><a href="http://boston.citysearch.com/profile/46102131/chestnut_hill_ma/elite_hair_studio.html">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
