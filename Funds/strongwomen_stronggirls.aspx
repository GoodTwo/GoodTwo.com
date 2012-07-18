<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="strongwomen_stronggirls.aspx.cs" Inherits="Funds_strongwomen_stronggirls" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/strwomgrls-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>Strong Women, Strong Girls</h2>
<h3> Boston, MA</h3>
                </div>
                <p>The mission of Strong Women, Strong Girls is to utilize the lessons learned from strong women throughout history to encourage girls and young women to become strong women themselves. By building communities of women committed to supporting positive social change, Strong Women, Strong Girls works to create cycles of mutual empowerment for women and girls. </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="..\Images\strwomgrls-main.jpg" width="391" height="313" /></div>
        <h3>Strong Women, Strong Girls is built on a foundation of six core values:</h3>
     <p> <ul>
<li><strong>Love &amp; Support</strong>: Building positive and consistent relationships that support each other, even when we make mistakes.</li>
<li><strong>Integrity &amp; Respect</strong>: Recognizing and role modeling that everyone deserves to be treated with respect, including girls, community members, volunteers, staff and ourselves.</li>
<li><strong>Discovery</strong>:<strong> </strong>Seeking out and appreciating the unique talents and abilities of others and ourselves, as well as being open to new experiences, learning and growing.</li>
<li><strong>Balance</strong>: Knowing when to offer and accept help to maintain a healthy life-style.</li>
<li><strong>A Diverse Female Community</strong>: Honoring our commonalities and differences while recognizing the unique power of a diverse all-female community.</li>
<li><strong>SPARKS!</strong> Feeling the magic, inspiration and excitement of working toward a common goal in Strong Women, Strong Girls.</li>
</ul> <br /><br />
<a href="http://www.swsg.org/" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="strwmngrls_boston" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>$6 for $15 Worth of Tantalizing Teas at Ezentea.com</h3>
                <img src="../Images/ezentea.jpg" alt="" />
                <p class="prices"> Price: $6<br />
                  Discount: 60%<br />
                  You Save: $9</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=StrWomGirls_Ezentea"
                            target="_new" class="buyNow">Buy Now</a> $1.50 will be donated to this cause.</p>
                <p class="description">Every morning, the rest of the household enjoys a nice cup of freshly brewed coffee in their personalized mugs, as you sit there feeling left out with your lame cup of milk. Why should you be punished for your lack of java-loving taste buds? With this deal, you can now join the rest of your housemates over a fresh cup of tea, as you get <strong>$15 worth of tantalizing teas</strong> for only <strong>$6</strong>. <strong>Ezentea.com</strong> will make any tea-lover feel like a kid in a candy shop. With more than 100 teas from around the world, they provide everything from quality <strong>Loose Leaf teas</strong> and tea bags to trendy teaware and accessories. Relish in some <strong>Almond Oolong Loose Leaf Tea</strong> ($10.75, 4 oz), known to aid in digestion, weight loss and lowering blood sugar. Or relax after a long, stressful day of work with a cup of <strong>Lavender Rose tea</strong> ($16.99 for 24 bags), a calming black tea that tastes great both cold and hot. Listen up Green tea enthusiasts! The Matcha—a premium green tea powder from Japan—is a must. With 10x the nutritional value and antioxidant content than your average green tea, it'd be silly not to scoop up 60 grams of this miracle tea for yourself ($19.95). So get rid of that jealousy you hold for your coffee-drinking pals, and fill your mug with some delicious, flavorful tea from Ezentea.com with this deal: just $6 for $15 toward all your favorite sips. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=StrWomGirls_Ezentea" target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Ezentea</th>
                  </tr>
                  <tr>
                    <td class="firstTD"><em>Website</em></td>
                    <td><a href="http://ezentea.com/ezt/main.php" target="_new">Visit Website &raquo;</a><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=2+Prince+Street,+Boston,+MA+02113&amp;sll=42.302869,-71.151972&amp;sspn=0.001075,0.002411&amp;ie=UTF8&amp;hq=&amp;hnear=2+Prince+St,+Boston,+Suffolk,+Massachusetts+02113&amp;ll=42.364133,-71.053643&amp;spn=0.001074,0.002411&amp;z=19&amp;iwloc=r0" target="_new"></a></td>
                  </tr>
                </table>
              </div>
            </li>
          <li>
              <div>
                <h3> $15 for $30 Worth of Dry Cleaning at Life Without Laundry</h3>
                <img src="../Images/life-without-laundry.jpg" alt="" />
                <p class="prices"> Price: $15<br />
                  Discount: 50%<br />
                  You Save: $15</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=StrWomGirls_lifelaundry"
                            class="buyNow">Buy Now</a> $3.75 will be donated to this cause.</p>
                <p class="description"> <strong>Life Without Laundry</strong> makes life a whole lot easier for all of you who'd rather kick back by the tube, or get some exercise in, than spend your day at the laundry mat. Scrubbing away at tough spaghetti sauce stains and lugging pounds of clothes to and from the dry cleaners isn't anyone's idea of fun. Not to mention the large stain that decided to appear conveniently before the most important meeting of the year. But top-notch dry cleaning (with the best eco-friendly cleaning supplies), free pickup &amp; delivery and not having to move an inch? That's something we could all get used to. This stress-free company literally makes it as easy as 1, 2, 3. All you have to do is register for a free account online, schedule a time for your free pickup and delivery, then voilà: your dry cleaning is complete. This deal makes life even more complete, offering you <strong>$30 worth of dry cleaning services</strong> for the small price of just <strong>$15</strong>! Life doesn't get much easier than that. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=StrWomGirls_lifelaundry"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Life Without Laundry</th>
                  </tr>
                  <tr>
                    <td class="firstTD">PO Box #62</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Life+Without+Laundry,+South+Boston,+Boston,+MA+02127&amp;sll=42.334648,-71.036828&amp;sspn=0.001075,0.002411&amp;ie=UTF8&amp;hq=Life+Without+Laundry,&amp;hnear=Boston,+Massachusetts+02127&amp;ll=42.334759,-71.03682&amp;spn=0.001025,0.002411&amp;z=19&amp;iwloc=A" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>South Boston, MA 02127</td>
                    <td><a href="https://lifewithoutlaundry.com/">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $20 for $40 Worth of Food and Drinks at Lord Hobo</h3>
                <img src="../Images/lord-hobo.jpg" alt="" />
                <p class="prices"> Price: $20<br />
                  Discount: 50%<br />
                  You Save: $20</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=StrWomGirl_LordHobo"
                            class="buyNow">Buy Now</a> $5.00 will be donated to this cause.</p>
                <p class="description">Spend <strong>$20</strong> and you'll receive <strong>$40 worth of food and drink</strong> at <strong>Lord Hobo</strong>! Located on Hampshire Street in Cambridge, Lord Hobo might appear like a trendy, weekend night location for locals; however, it's much, much more. With a huge menu full of expertly crafted and cooks meals and a wide variety of beers both on tap and in bottles, it has an &quot;A-option&quot; for everyone in your party! As for food, we've never gone wrong by starting out with the <strong>Braised Pork Cheeks</strong> <strong>and Poblano Grits</strong> ($12), followed by the <strong>Mac &amp; Cheese with Applewood smoked bacon</strong> ($12) (available with Maine lobster for $18 too!) and washed down with a <strong>Dark House Scotty Karate</strong> ($6.50, full bodied scotch ale). We also recommend the <strong>Pressed Cuban Sandwich</strong> ($13, braised pork, Swiss cheese, pickled vegetables and spicy aioli sauce) with a <strong>Oppigards Winter Ale</strong> ($9, winter warmer ale). But you don't have to follow our advice – the options truly are endless! Lord Hobo also offers a vast, delicious <strong>brunch menu</strong> on the weekend from 10 am to 3 pm, so enjoy!  <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=StrWomGirl_LordHobo"
                            target="_new">More Info</a> </p>
                <table>
                  <tr>
                    <th>Lord Hobo</th>
                  </tr>
                  <tr>
                    <td class="firstTD">92 Hampshire Street</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=92+Hampshire+Street+Cambridge,+MA+02139&amp;sll=37.0625,-95.677068&amp;sspn=39.184175,78.486328&amp;ie=UTF8&amp;hq=&amp;hnear=92+Hampshire+St,+Cambridge,+Middlesex,+Massachusetts+02139&amp;ll=42.369262,-71.095104&amp;spn=0.008941,0.019162&amp;z=16&amp;iwloc=r0" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Cambridge, MA 02139</td>
                    <td><a href="http://lordhobo.com/">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
