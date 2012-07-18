<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="TNT_DonGerolamo.aspx.cs" Inherits="Funds_tnt_dongerolamo" %>

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
            <img src="../Images/lls.gif" alt="Logo" />
            <div id="causeIntroContent">
          <div id="titleline">
                    <h2>
            2011 Boston Marathon Leukemia &amp; Lymphoma Society Fundraiser </h2>
                    <h3>
                    Boston, MA</h3>
                </div>
                <p>I recently joined The Leukemia & Lymphoma Society's (LLS) Team In Training for the 2011 Boston marathon and I need your support! My goal is to raise more than $3000 to help stop leukemia, lymphoma, Hodgkin lymphoma and myeloma from taking more lives.
</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img height="313" src="../Images/tnt.jpg" alt="" /></div>
        <h3>
            Note from Don Gerolamo</h3>
      <p>I am in training to run the Boston Marathon on April 18, 2011 but more importantly I am raising money for the Leukemia & Lymphoma Society. The ultimate goal of LLS is to find a cure for blood cancers. While research continues and new discoveries and breakthroughs are made, every 4 minutes a person is diagnosed with a blood cancer. It is LLS that not only funds the research which continues to move towards a cure but also provides many patient services that help the patients and families that have an immediate need.</p>

<p>I am running in memory of my sister Beth who courageously fought leukemia. My sister and others who have been diagnosed with blood cancer were not given the choice about whether or not they wanted to fight their disease. But YOU do. Please join the fight and donate to honor those who go to battle every day against leukemia, Hodgkin lymphoma, non-Hodgkin lymphoma and myeloma. </p>

<p>Donating is an easy and painless way to save lives. </p>

<p>Thank you for your support.

</p>
        <a href="http://pages.teamintraining.org/ma/boston11/dgerolamo" target="_new" class="visitSite">visit website &raquo;</a>
        <div id="fb-root">
  </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="dongerolamo" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3> $45 for a $90 Blissful, Indulgent Spa Experience at Toscana European Day Spa</h3>
                <img src="../Images/toscana.jpg" alt="" />
                <p class="prices"> Price: $45<br />
                  Discount: 50%<br />
                  You Save: $90</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=TTDonG_Toscana"
                            target="_new" class="buyNow">Buy Now</a> $9.50 will be donated to this cause</p>
                <p class="description"> Located on Newbury Street, <strong>Toscana European Day Spa</strong> sits in a tranquil
                  setting, much like the luxurious salons and spas in Europe. Upon entering, you'll
                  be pampered by the best stylists, massage therapists and aestheticians in Boston.
                  At Toscana, they exclusively use award-winning, European- and U.S.-made products,
                  ranging from organic skin care to Goldwell and L'Oreal Paris hair products. Owner
                  Doina Mandrila trained in Europe, where she learned her envied beauty secrets, and
                  has been practicing skin care for more than 35 years. Now she brings her knowledge
                  and talent back to the U.S., right here in Boston for your pleasure. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=TTDonG_Toscana"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Toscana European Day Spa </th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 231 Newbury Street </td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=231+Newbury+Street,+Boston,+MA+02116&amp;sll=42.348223,-71.129528&amp;sspn=0.001074,0.002411&amp;ie=UTF8&amp;hq=&amp;hnear=231+Newbury+St,+Boston,+Suffolk,+Massachusetts+02116&amp;ll=42.350138,-71.081945&amp;spn=0.001074,0.002411&amp;z=19&amp;iwloc=r1&quot; target=&quot;_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Boston, MA 02116 </td>
                    <td><a href="http://www.toscanadayspanewbury.com">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $15 for 20 Days of Access to the 24-Hour Gym at Custom Fitness AND 2 Half-Hour Personal Training Sessions! ($1,300 Value)</h3>
                <img src="../Images/customfitness.jpg" alt="" />
                <p class="prices"> Price: $15<br />
                  Discount: 99%<br />
                  You Save: $1,285</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=TTDonG_CustFit"
                            class="buyNow">Buy Now</a> $3.75 will be donated to this cause</p>
                <p class="description"> Located on Saint Alphonsus Street – just off of Huntington Avenue – in the Symphony area, <strong>Custom Fitness</strong> is the perfect spot to begin that long journey toward your fitness goals. The gym is open 24 hours a day, seven days a week and offers user-friendly equipment, as well as a concierge at all hours, video security AND free parking! Get yourself in shape with any of the gym's many free weights or cardio machines. With your personal training sessions, you'll work with a professional and sculpt both your body and a perfect routine just for you. From beginner exercises to start the path toward physical enlightenment to more advanced routines, you'll feel like a regular Jake Steinfeld in no time! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=TTDonG_CustFit"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Custom Fitness</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 75 Saint Alphonsus Street, Suite G</td>
                    <td><a href="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=75+Saint+Alphonsus+Street,+Suite+G,+Boston,+MA+02120&sll=42.35879,-71.061531&sspn=0.001033,0.002411&ie=UTF8&hq=&hnear=75+St+Alphonsus+St,+Boston,+Suffolk,+Massachusetts+02120&ll=42.334613,-71.100876&spn=0.008597,0.01929&z=16&iwloc=A" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Boston, MA 02120</td>
                    <td><a href="http://www.customfitness.com">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
       <li>
         <div>
           <h3> Get $50 of Cozy, Tasty Italian Eats at G'Vanni's Ristorante for Just $20</h3>
           <img src="../Images/gvannis.jpg" alt="" />
           <p class="prices"> Price: $20<br />
             Discount: 60%<br />
             You Save: $50</p>
           <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=TTDonG_GVannis"
                            class="buyNow">Buy Now</a> $5.00 will be donated to this cause</p>
           <p class="description"> Nestled in Boston's infamous North End sits <b>G'Vanni's Ristorante</b>, an inviting
             little place serving up fine Italian cuisine one day at a time. Let yourself cozy
             up with the restaurant's warm, charming atmosphere, as you indulge in a hearty meal.
             After you've finished off your fresh bread and butter basket, you may like to continue
             fueling your stomach with a number of G'Vanni's appetizers such as the <strong>Mozza
               Wrap</strong> (Fresh mozzarella wrapped in Prosciutto) or <strong>Scallops with Bacon.</strong> Moving along to dinner, G'Vanni's offers a wide range of entrees, including the <strong>Steak Mafioso</strong> (Prime Sirloin sautéed with peppers and onions), <strong>Risotto Del Giorno</strong> (Risotto of the Day with Shrimp or fresh vegetables), <strong>Eggplant Parmesan</strong>, and the ever so decadent, heartwarming <strong>Pumpkin
                 Ravioli</strong>. G'vanni's also serves a variety of fresh, signature &quot;<strong>T.O.N.Y
                   Baloney</strong>&quot; Pizza including their classic Margherita with tomato
             and mozzarella. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=TTDonG_GVannis"
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
        
        
        </ul>
    </div>
</asp:Content>
