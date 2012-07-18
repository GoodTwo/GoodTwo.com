<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="TNT_JenniferProhaska.aspx.cs" Inherits="Funds_tnt_jenniferprohaska" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/lls.gif" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>
            2011 Boston Marathon for Team in Training </h2>
                    <h3>
        Boston, MA</h3>
                </div>
                <p> It's time to lace the sneakers back up and head out for my third season as a member of The Leukemia &amp; Lymphoma Society's (LLS) Team In Training.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img height="313" src="../Images/tnt.jpg" alt="" /></div>
        <h3>
            Note from Jennifer Prohaska:</h3>
      <p>All of us on the team are raising funds to help stop leukemia, lymphoma, Hodgkin lymphoma and myeloma from taking more lives. This season, I will be mentoring new runners while we train for the Boston Marathon! This year my goal is to raise $4,000 for the Leukemia and Lymphoma Society. Money raised goes towards cancer research and support of local families effected by leukemia and lymphoma. You can follow my progress by clicking the link below.</p>
        <a href="http://pages.teamintraining.org/ma/boston11/jprohaska" target="_new" class="visitSite">visit website &raquo;</a>
        <div id="fb-root">
  </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="TNTJProhaska" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>$35 for a 1-Hour Massage at Republic of Wellness! ($80 Value)</h3>
                <img src="../Images/republicofwellness.jpg" alt="" />
                <p class="prices"> Price: $35<br />
                  Discount: 56%<br />
                  You Save: $45</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=TNT_JProhaska_RepofWell"
                            target="_new" class="buyNow">Buy Now</a> $8.75 will be donated to this cause</p>
                <p class="description">Located on the Southern Artery in Quincy, the <strong>Republic of Wellness</strong> specializes in pain relief, much to your pleasure! The well-trained and experienced therapists there believe that our bodies have the natural ability to heal themselves and through the use of effective non-invasive therapies, they create possibilities for positive changes to occur on your body. With our deal, you'll experience one of the best therapeutic massages around. During your session, the therapist will use a number of different techniques, all tailored to your needs. Before each treatment, you and your therapist will discuss areas of discomfort and focus and determine the best course of treatment. The massages offered include <strong>Deep Tissue, Migraine and Sinus, Swedish, Myofascial, Chair and more!</strong> Your therapist will help you determine the best one to relieve any nagging holiday stress! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=TNT_JProhaska_RepofWell" target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Republic of Wellness</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 792 Southern Artery</td>
                    <td><a href="http://maps.google.com/maps?client=safari&q=792+Southern+Artery,+Quincy,+MA+02186&oe=UTF-8&ie=UTF8&hl=en&hq=&hnear=792+Southern+Artery,+Quincy,+Norfolk,+Massachusetts+02169&z=16" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Quincy, MA 02186</td>
                    <td><a href="http://www.republicofwellness.com/Home/1/default.aspx" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
             <div>
           <h3> Get $50 of Cozy, Tasty Italian Eats at G'Vanni's Ristorante for Just $20</h3>
           <img src="../images/gvannis.jpg" alt="" />
           <p class="prices"> Price: $20<br />
             Discount: 60%<br />
             You Save: $30</p>
           <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=TNT_JProhaska_GVannis"
                            class="buyNow">Buy Now</a> $5.00 will be donated to this cause</p>
           <p class="description"> Nestled in Boston's infamous North End sits <b>G'Vanni's Ristorante</b>, an inviting
             little place serving up fine Italian cuisine one day at a time. Let yourself cozy
             up with the restaurant's warm, charming atmosphere, as you indulge in a hearty meal.
             After you've finished off your fresh bread and butter basket, you may like to continue
             fueling your stomach with a number of G'Vanni's appetizers such as the <strong>Mozza
               Wrap</strong> (Fresh mozzarella wrapped in Prosciutto) or <strong>Scallops with Bacon.</strong> Moving along to dinner, G'Vanni's offers a wide range of entrees, including the <strong>Steak Mafioso</strong> (Prime Sirloin sautéed with peppers and onions), <strong>Risotto Del Giorno</strong> (Risotto of the Day with Shrimp or fresh vegetables), <strong>Eggplant Parmesan</strong>, and the ever so decadent, heartwarming <strong>Pumpkin
                 Ravioli</strong>. G'vanni's also serves a variety of fresh, signature &quot;<strong>T.O.N.Y
                   Baloney</strong>&quot; Pizza including their classic Margherita with tomato
             and mozzarella. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=TNT_JProhaska_GVannis"
                            target="_new">More Info</a></p>
           <table>
             <tr>
               <th> G'vanni's Ristorante </th>
             </tr>
             <tr>
               <td class="firstTD"> 2 Prince Street </td>
               <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=2+Prince+Street,+Boston,+MA+02113&amp;sll=42.302869,-71.151972&amp;sspn=0.001075,0.002411&amp;ie=UTF8&amp;hq=&amp;hnear=2+Prince+St,+Boston,+Suffolk,+Massachusetts+02113&amp;ll=42.364133,-71.053643&amp;spn=0.001074,0.002411&amp;z=19&amp;iwloc=r0"
                                    target="_new">Map / Directions &raquo;</a></td>
             </tr>
             <tr>
               <td> Boston, MA 02113 </td>
               <td><a href="http://www.gvannis.com">Visit Website &raquo;</a></td>
             </tr>
           </table>
         </div>
            </li>
       <li>
          <div>
                <h3> $25 for $50 Worth of Food and Drinks at One of Boston's Hottest Nightspots, Club Cafe!</h3>
                <img src="../Images/clubcafe.jpg" alt="" />
                <p class="prices"> Price: $25<br />
                  Discount: 50%<br />
                  You Save: $25</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=TNT_JProhaska_ClubCafe"
                            target="_new" class="buyNow">Buy Now</a> $6.25 will be donated to this cause</p>
                <p class="description"> Located on Columbus Avenue just outside the Back Bay area, <strong>Club Cafe</strong> has become quite the local hot spot for residents and visitors alike looking for a great meal and a great time. Boasting a vast menu with many delicious options, Club Cafe has you covered for all things edible. We highly recommend their <strong>Lobster Macaroni and Cheese</strong> ($12.99) as well as their <strong>Classic Filet Mignon au Poivre</strong> ($24.99, potato gratin and sautéed spinach with garlic and olive oil). To begin, their <strong>Sesame Shrimp Tempura</strong> ($8.99) is as good as it gets. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=TNT_JProhaska_ClubCafe"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Club Cafe</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 209 Columbus Avenue</td>
                    <td><a href="http://maps.google.com/maps?client=safari&q=209+Columbus+Avenue,+Boston,+MA+02116&oe=UTF-8&ie=UTF8&hq=&hnear=209+Columbus+Ave,+Boston,+Suffolk,+Massachusetts+02116&gl=us&z=16" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Boston, MA 02116 </td>
                    <td><a href="http://www.clubcafe.com">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
       </li>
        
        
        </ul>
    </div>
</asp:Content>
