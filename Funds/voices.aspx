<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="voices.aspx.cs" Inherits="Funds_voices" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "../Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro">
            <img id="IntroFundLogo" src="../Images/voices.gif" alt="Logo" />
            <div id="causeIntroContent">
                <div id="titleline">
                    <h2>VOICES</h2>
                    <h3>Natick, MA</h3>
                </div>
                <p>Voices of MetroWest is a non-profit, volunteer-run community chorus based in Natick, MA.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo">
          <object width="391" height="313">
            <param name="movie" value="http://www.youtube.com/v/hSkFexbZK9I?fs=1&amp;hl=en_US&amp;rel=0" />
            </param>
            <param name="allowFullScreen" value="true" />
            </param>
            <param name="allowscriptaccess" value="always" />
            </param>
            <embed src="http://www.youtube.com/v/hSkFexbZK9I?fs=1&amp;hl=en_US&amp;rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="391" height="313"></embed>
          </object>
      </div>
        <h3>About VOICES</h3>
        <p>We began in October of 2008 and we have been growing ever since! As a  reflection of our multi-cultural and  multi-generational members, our  repertoire includes music from many varying styles and decades: gospel,  R&amp;B, oldies, jazz, pop, and now Motown! We do not hold auditions and  we welcome all interested individuals, both trained and non-trained,  regardless of age, ability, culture, national origin, or financial  circumstances.</p>
        <a class="visitSite" href="http://www.voicesofmetrowest.com">visit website &raquo;</a>
        <div id="fb-root">
      </div>

        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>

        <fb:comments xid="openaircircus" numposts="10" width="370" publish_feed="true"></fb:comments>
    </div>
    <div class="right">

        <script type="text/javascript">
            $(function () {
                var textDate = document.getElementById("<%=hiddenEndDate.ClientID%>").innerHTML;
                var austDay = new Date(textDate);
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
            <li class="first">
              <div>
                <h3> $12 for $25 worth of Fresh Flowers from Boston Flower Bouquet (Back Bay pickup or 10 mi. Boston delivery)</h3>
                <img src="../Images/bosflowerbouq.jpg" alt="" />
                <p class="prices"> Price: $12<br />
                  Discount: 52%<br />
                  You Save: $25</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=Voices-BosFlower"
                            target="_new" class="buyNow">Buy Now</a> $3.00 will be donated to this cause</p>
                <p class="description"> Guess which major holiday is just around the corner? The one that if you forget it, you might end up on the couch. Yes, that’s right, the Hallmark Holiday itself… Valentine’s Day. So get a heads start on this lovely, emotion-filled holiday by pre-ordering your sweetheart a beautiful flower arrangement from <strong>Boston Flower Bouquet.</strong> With our special deal, you’ll get <strong>$25 worth of goods and services</strong> available for delivery (within 10 miles of Boston) or in-store pickup, for just <strong>$12!</strong><br />
                  <br />
                  Located on Mass Ave downtown, Boston Flower Bouquet has been serving the area with its beautifully arranged offerings for years. Whatever the occasion may be, Boston Flower Bouquet has got you covered, so considering how important Valentine’s Day is, make sure you take advantage of today’s deal. While flowers are an expression of love on this special day, they really can be used for any occasion and hold any meaning – thanks, sorrow, grief or just general appreciation. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=Voices-BosFlower"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Boston Flower Bouquet</th>
                  </tr>
                  <tr>
                    <td class="firstTD">90 Massachusetts Avenue</td>
                    <td><a href="http://maps.google.com/maps?q=90+Massachusetts+Avenue,+Boston,+Massachusetts+02115&amp;ie=UTF8&amp;hl=en&amp;hq=&amp;hnear=90+Massachusetts+Ave,+Boston,+Suffolk,+Massachusetts+02115&amp;z=16" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Boston, MA 02115</td>
                    <td><a href="http://www.mafloral.com" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3>$15 for $30 Worth of Authentic Mexican Favorites at Viva Mexican Grill!</h3>
                <img src="../Images/viva.jpg" alt="" />
                <p class="prices"> Price: $15<br />
                  Discount: 50%<br />
                  You Save: $15</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=BMA1008VOI1206" target="_new" class="buyNow"> Buy Now</a> $3.75 will be donated to this cause</p>
                <p class="description">Located on East Plain Street in Wayland, <strong>Viva Mexican Grill</strong> prides itself on its homemade cuisine that's been passed down through family generations. The owner of Viva was raised on home-cooked food prepared from fresh local ingredients. The restaurant captures his Central Mexican heritage's atmosphere with the bar's wide selection of tequilas and margaritas, as well as a unique Mexican tapas menu. Be sure to ask your server about Viva's famous <strong>Viva Autentica Margarit</strong>a! Made with Milagro Reposado Tequila or Patron Citronage, fresh lime juice and agave nectar, this margarita is sure to impress you and your friends as you munch on the <strong>homemade tableside guacamole</strong>. (Note: our deal doesn't include drinks.) Enjoy your meal as the guitarist strums away as you dig into your delicious meal. Try a true authentic Mexican fav – <strong>Enchiladas con Mole or Verde</strong> ($10.95) – or perhaps the unique <strong>Chiles en Negada</strong> with steak ($16.95), which presents the three colors of the Mexican flag with its poblano chiles, walnut-based cream sauce and pomegranate seeds. The possibilities are endless at this superb Mexican restaurant! So grab your friends and head to Viva Mexican Grill and Tequileria for some delightful margaritas, homemade guacamole and traditional Mexican food. Don't miss out on this great deal, giving you <strong>$30 worth of food for $10</strong>! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=BMA1008VOI1206" target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Viva Mexican Grill &amp; Tequileria</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 15 East Plain Street </td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=15+East+Plain+Street,+Wayland,+MA+01778-4917&amp;sll=42.350679,-71.081951&amp;sspn=0.008595,0.019162&amp;ie=UTF8&amp;hq=&amp;hnear=15+E+Plain+St,+Wayland,+Middlesex,+Massachusetts+01778&amp;ll=42.321716,-71.363668&amp;spn=0.008599,0.019162&amp;z=16&amp;iwloc=r2"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Wayland, MA 01778-4917</td>
                    <td><a href="http://vivamexicangrill.com/wordpress/">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        </ul>
    </div>
</asp:Content>
