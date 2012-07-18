<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="mmofratrom.aspx.cs" Inherits="Funds_mmofratrom" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/mmofratrom-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>The Mmofra Trom Bead Project</h2>
<h3> Waltham, MA</h3>
                </div>
                <p>The Mmofra Trom Bead Project raises funds to provide education for vulnerable children in Ghana, through bracelet sales. The children at the Mmofa Trom Education Center have turned an extra-curricular school activity of stringing bracelets into an income-generating project for the children at the center who need it most! </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><iframe title="YouTube video player" width="391" height="313" src="http://www.youtube.com/embed/u7Js1p1EbHQ?rel=0" frameborder="0" allowfullscreen></iframe></div>
        <h3>The Mmofra Trom Bead Project</h3>
      The Mmofra Trom Bead Project is an initiative designed by Bentley University students to fund high school education costs for vulnerable children in the Trom village outside Somanya, Ghana. Ghanaian high school tuition costs typically range between 900-1200 Cedi (the Ghanaian currency). The American dollar exchange is around $650.00 to $850.00. The Mmofra Trom students hand string recycled-glass beads onto elastic during their art classes on Saturdays. During the school week, the children are focused on their studies and Sundays are allocated for relaxation, a Ghanaian tradition. The beads are hand made by Ghanaian artisans who are paid above subsistence wages for their intricate crafts. The Bentley students have devised a market for the bracelets in the United States through various outlets including cooperating stores and this website. All profits raised go directly into a fund that will be used for the vulnerable students' future education upon graduation from Mmofra Trom.
      <p><a href="http://mmofratrombeadproject.com/Home.aspx" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="mmofratrom" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>$50 Worth of Tasty Italian Eats at G'Vanni's Ristorante for Just $20!</h3>
                <img src="../Images/gvannis.jpg" alt="" />
                <p class="prices"> Price: $20<br />
                  Discount: 60%<br />
                  You Save: $30</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=mmofratrom_GVannis"
                            target="_new" class="buyNow">Buy Now</a> $5.00 will be donated to this cause.</p>
                <p class="description">Nestled in Boston's infamous North End sits <b>G'Vanni's Ristorante</b>, an inviting little place serving up fine Italian cuisine one day at a time. Let yourself cozy up with the restaurant's warm, charming atmosphere, as you indulge in a hearty meal. After you've finished off your fresh bread and butter basket, you may like to continue fueling your stomach with a number of G'Vanni's appetizers such as the <strong>Mozza Wrap</strong> (Fresh mozzarella wrapped in Prosciutto) or <strong>Scallops with Bacon.</strong> Moving along to dinner, G'Vanni's offers a wide range of entrees, including the <strong>Steak Mafioso</strong> (Prime Sirloin sautéed with peppers and onions), <strong>Risotto Del Giorno</strong> (Risotto of the Day with Shrimp or fresh vegetables), <strong>Eggplant Parmesan</strong>, and the ever so decadent, heartwarming <strong>Pumpkin Ravioli</strong>. G'vanni's also serves a variety of fresh, signature &quot;<strong>T.O.N.Y Baloney</strong>&quot; Pizza including their classic Margherita with tomato and mozzarella. The restaurant also serves up a variety of wholesome meals, such as the <strong>Spaghetti Alla Pesto</strong> (Whole Wheat Pasta topped with pesto). Come cozy up with a loved one or good friend at G'Vanni's Ristorante in the North End, where you get $50 worth of food and drinks for just $20! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=mmofratrom_GVannis" target="_new">More Info</a></p>
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
                <h3> $45 for a Blissful, Indulgent Spa Experience at Toscana European Day Spa ($90 Value)</h3>
                <img src="../Images/toscana.jpg" alt="" />
                <p class="prices"> Price: $45<br />
                  Discount: 50%<br />
                  You Save: $45</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=mmofratrom_Toscana"
                            class="buyNow">Buy Now</a> $9.50 will be donated to this cause.</p>
                <p class="description"> Located on Newbury Street, <strong>Toscana European Day Spa</strong> sits in a tranquil setting, much like the luxurious salons and spas in Europe. Upon entering, you'll be pampered by the best stylists, massage therapists and aestheticians in Boston. At Toscana, they exclusively use award-winning, European- and U.S.-made products, ranging from organic skin care to Goldwell and L'Oreal Paris hair products. Owner Doina Mandrila trained in Europe, where she learned her envied beauty secrets, and has been practicing skin care for more than 35 years. Now she brings her knowledge and talent back to the U.S., right here in Boston for your pleasure. Rejuvenate your dull skin with a <strong>60-minute European facial</strong> ($85), a cleansing that uses grapefruit, aloe vera or honey extract combined with a gentle exfoliation of oat flour to radiate your skin. Or indulge in a <strong>Delicious Scrub</strong> ($75) – a combination of ginger, nutmeg, orange and cinnamon, so sweet you'll be tempted to eat it! It will leave your skin feeling silky smooth, and you'll leave the spa feeling sexier than ever. You won't be able to resist one of their<strong> top-notch massages</strong>, including a <strong>60-minute Swedish Massage</strong> ($90) or <strong>Reflexology Massage </strong>($75). Bring your hair back to life with a <strong>Wash, Cut and Blow dry</strong> (starting at $75), and freshen up with a <strong>Brazilian Bikini Wax</strong> ($65), paired with a <strong>lip and brow wax</strong> ($25). Enjoy $90 worth of services today for just<strong> $45</strong>! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=mmofratrom_Toscana"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Toscana European Day Spa</th>
                  </tr>
                  <tr>
                    <td class="firstTD">231 Newbury Street</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=231+Newbury+Street,+Boston,+MA+02116&amp;sll=42.348223,-71.129528&amp;sspn=0.001074,0.002411&amp;ie=UTF8&amp;hq=&amp;hnear=231+Newbury+St,+Boston,+Suffolk,+Massachusetts+02116&amp;ll=42.350138,-71.081945&amp;spn=0.001074,0.002411&amp;z=19&amp;iwloc=r1" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Boston, MA 02116</td>
                    <td><a href="http://www.toscanadayspanewbury.com/" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $50 for $100 Worth of Children's Products from Give Wink</h3>
                <img src="../Images/give-wink.jpg" alt="" />
                <p class="prices"> Price: $50<br />
                  Discount: 50%<br />
                  You Save: $50</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=mmofratrom_Givewink"
                            class="buyNow">Buy Now</a> $12.50 will be donated to this cause.                </p>
                <p class="description">Moms, teachers and parents alike: we&#8217;ve found the perfect place for you to do your shopping for the young ones! At <b>Give Wink,</b> they feature products perfect for children ages <b>0-6 months up through 8+.</b> From <b>toys, games, furniture, kitchen and bathtime accessories</b> to <b>travel gear, books, music, school supplies</b> and so much more, Give Wink really has you covered for all things kids! There&#8217;s even a whole section devoted to Mommy goods, which you need to see for yourself! To simply list their products here would be an injustice&#8230; you must visit their <a href="http://www.givewink.com/">website</a> to see for yourself! And with our deal, you&#8217;ll get <b>$100 worth of these awesome products</b> for just <b>$50!</b> Enjoy!<br />
                  <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=mmofratrom_Givewink"
                            target="_new">More Info</a> 
                  </p>
                </p>
                <table>
                  <tr>
                    <th> Give Wink</th>
                  </tr>
                  <tr>
                    <td>Website</td>
                    <td><a href="http://www.givewink.com/" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
