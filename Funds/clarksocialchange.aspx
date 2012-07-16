<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="clarksocialchange.aspx.cs" Inherits="Funds_clarksocialchange" %>

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
            <img src="../Images/bangladesh-logo.jpg" alt="Logo" />
            <div id="causeIntroContent">
          <div id="titleline">
                    <h2>
                        Raising Money for Trip to Bangladesh!</h2>
                    <h3>
                    Worcester, MA</h3>
                </div>
                <p>A group of 6 students are delving into the research of a global partnership to foster economic, social, and environmental development. By means of social entrepreneurship, examination of micro-credit and poverty reduction strategies we aim to delve into the deep-rooted problems the international community faces. </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="../images/bangladesh-main.jpg" width="391" height="313" /></div>
        <h3>
           Clark University Social Change Class - Bangladesh</h3>
        <p>As a part of furthering our understanding of the social and economic issues that developing nations face, we hope to travel abroad to southwest Bangladesh in early March. We plan to survey firsthand both the hardships faced by Bangladeshi citizens, along with the inspiring initiatives that have been undertaken by grassroots organizations and humanitarian projects. Through these experiences, we believe that our comprehension of these methods to poverty alleviation and promotion of self-actualization can be greatly strengthened, and we can utilize such ideas in our own goals to contribute to the fulfillment of the UNDGs and global partnership aspirations.</p>
      <p>The trip, if goes as plan, promises to be an invaluable experience. It would provide an enlightened and powerful impact on our future studies and endeavors. However, it is somewhat of a financial difficulty, and any amount of assistance to get us on our journey would be extremely appreciated. Funding would go towards helping us to cover the costs of Rustic educational guidance, which would allow us a translator and transportation to meet with various farmers, humanitarian workers, micro-credit bankers at Grameen Bank, and even Nobel Prize laureate Muhammad Yunnus himself. </p>
        <div id="fb-root">
    </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="clark-bangladesh" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <img src="../Images/lordhobo.jpg" alt="" />
                <p class="prices"> Price: $20<br />
                  Discount: 50%<br />
                  You Save: $20</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=Clark_LordHobo"
                            target="_new" class="buyNow">Buy Now</a> $5.00 will be donated to this cause</p>
                <p class="description">Located on Hampshire Street in Cambridge, Lord Hobo might appear like a trendy, weekend night location for locals; however, it's much, much more. With a huge menu full of expertly crafted and cooks meals and a wide variety of beers both on tap and in bottles, it has an &quot;A-option&quot; for everyone in your party! As for food, we've never gone wrong by starting out with the <strong>Braised Pork Cheeks</strong> <strong>and Poblano Grits</strong> ($12), followed by the <strong>Mac &amp; Cheese with Applewood smoked bacon</strong> ($12) (available with Maine lobster for $18 too!) and washed down with a <strong>Dark House Scotty Karate</strong> ($6.50, full bodied scotch ale). We also recommend the <strong>Pressed Cuban Sandwich</strong> ($13, braised pork, Swiss cheese, pickled vegetables and spicy aioli sauce) with a <strong>Oppigards Winter Ale</strong> ($9, winter warmer ale). But you don't have to follow our advice – the options truly are endless! Lord Hobo also offers a vast, delicious <strong>brunch menu</strong> on the weekend from 10 am to 3 pm, so enjoy! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=Clark_LordHobo"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Lord Hobo</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 92 Hampshire Street</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=92+Hampshire+Street+Cambridge,+MA+02139&amp;sll=37.0625,-95.677068&amp;sspn=39.184175,78.486328&amp;ie=UTF8&amp;hq=&amp;hnear=92+Hampshire+St,+Cambridge,+Middlesex,+Massachusetts+02139&amp;ll=42.369262,-71.095104&amp;spn=0.008941,0.019162&amp;z=16&amp;iwloc=r0&quot; target=&quot;_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Cambridge, MA 02139</td>
                    <td><a href="http://lordhobo.com/">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div></li>
            
            <li>
              <div>
                <h3> $45 for a $90 Blissful, Indulgent Spa Experience at Toscana European Day Spa</h3>
                <img src="../Images/toscana.jpg" alt="" />
                <p class="prices"> Price: $45<br />
                  Discount: 50%<br />
                  You Save: $90</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=Clark_Toscana"
                            target="_new" class="buyNow">Buy Now</a> $9.50 will be donated to this cause</p>
                <p class="description"> Located on Newbury Street, <strong>Toscana European Day Spa</strong> sits in a tranquil
                  setting, much like the luxurious salons and spas in Europe. Upon entering, you'll
                  be pampered by the best stylists, massage therapists and aestheticians in Boston.
                  At Toscana, they exclusively use award-winning, European- and U.S.-made products,
                  ranging from organic skin care to Goldwell and L'Oreal Paris hair products. Owner
                  Doina Mandrila trained in Europe, where she learned her envied beauty secrets, and
                  has been practicing skin care for more than 35 years. Now she brings her knowledge
                  and talent back to the U.S., right here in Boston for your pleasure. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=Clark_Toscana"
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
                <h3> $15 for $30 Worth of Gourmet Coffees, Teas and More at Aroma Ridge!</h3>
                <img src="../images/AromaRidge.jpg" alt="" />
                <p class="prices"> Price: $15<br />
                  Discount: 50%<br />
                  You Save: $15</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=Clark_Aroma"
                            class="buyNow">Buy Now</a> $3.75 will be donated to this cause</p>
                <p class="description"> Are you still struggling to find that perfect cup of coffee? Whether it's something to give you that extra jolt before the workday begins or a rich blend to pair with your weekend newspaper ritual, a cup o' Joe can either make or break your day. And that's exactly how <strong>Aroma Ridge</strong> transpired: the passion for the most perfect cup of coffee. Now, 20 years later, Aroma Ridge has transformed into a small, family-owned business, providing a plethora of the finest mountain grown gourmet coffees, quality teas, accessories and more to enjoy in your very own home. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=Clark_Aroma"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Aroma Ridge</th>
                  </tr>
                  <tr>
                    <td><em>Website</em></td>
                    <td><a href="http://www.aromaridge.com" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
