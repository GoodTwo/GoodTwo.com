<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="MiamiContemporaryDance.aspx.cs" Inherits="Funds_MiamiContemporaryDance" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/MiamiContemporaryDance-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>Miami Contemporary Dance</h2>
<h3> Miami, FL</h3>
                </div>
                <p>Miami Contemporary Dance Company(MCDC) presents the highest quality of professional contemporary dance to South Florida, representing Miami's rich cultural diversity internationally. MCDC strives to continue its artistic growth by cultivating young artists and audiences locally with its school curriculum and educational outreach programming. </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><iframe title="YouTube video player" width="391" height="313" src="http://www.youtube.com/embed/Xnwu8yfjDZI?rel=0" frameborder="0" allowfullscreen></iframe></div>
        <h3>Keeping nonprofit Contemporary Dance alive in Miami!</h3>
      <p>Miami Contemporary Dance Company(MCDC) presents the highest quality of professional contemporary dance to South Florida, representing Miami's rich cultural diversity internationally.MCDC strives to continue its artistic growth by cultivating young artists and audiences locally with its school curriculum and educational outreach programming. 
Body: We are raising funds for the much needed rennovations and building costs for the Miami Contemporary Dance Company's dance studio. The studio is open to the community for dance lessons, rentals and rehearsal space for nonprofit organizations and individuals in need of professional facilities.</p>
      <p><a href="http://www.miamicontemporarydance.net" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="MiamiContemporaryDance" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>$19 for a Manicure and Pedicure at Safar Miami! ($50 Value)</h3>
                <img src="../Images/safar-miami.jpg" alt="" />
                <p class="prices"> Price: $19<br />
                  Discount: 62%<br />
                  You Save: $31</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=MiamiContDance_Safar"
                            target="_new" class="buyNow">Buy Now</a> $4.75 will be donated to this cause.</p>
                <p class="description">"<em>Life is too short to blend in</em>." You can't help but agree with this <strong>bold</strong> statement. So living in a city as vibrant and always-on-the-go as Miami, you need to stand out, looking and feeling your best. What better way to do that than getting a renown and beautifying <strong>manicure and pedicure</strong> at one of the area's <strong>top salons</strong>? Deal! With this deal, spend just <strong>$19</strong> <strong>(!)</strong> and get both a manicure AND a pedicure at <strong>Safar Miami</strong>. Normally, this deal is valued at <strong>$50</strong>, you'll be saving and you'll be able to allocate those funds elsewhere! So differentiate yourself immediately and look and feel great doing so! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=MiamiContDance_Safar" target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Safar Miami</th>
                  </tr>
                  <tr>
                    <td class="firstTD">22 Washington Avenue</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=safar+salon+south+beach&amp;sll=25.769286,-80.135484&amp;sspn=0.003135,0.006539&amp;g=22+Washington+Ave,+Miami+Beach,+Miami-Dade,+Florida+33139&amp;ie=UTF8&amp;t=h&amp;z=18&amp;iwloc=A" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Miami Beach, FL 33139</td>
                    <td><a href="http://www.safarmiami.com/" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $25 for $50 Worth of Gifts &amp; Gift Baskets at Occasions to Remember</h3>
                <img src="../Images/Occasions-to-remember.jpg" alt="" />
                <p class="prices"> Price: $25<br />
                  Discount: 50%<br />
                  You Save: $25</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=MiamiContDance_occasions"
                            class="buyNow">Buy Now</a> $6.25 will be donated to this cause.</p>
                <p class="description"> Sure, flowers are pretty to look at, but wouldn&#8217;t you rather be munching on gourmet cheeses or decadent chocolate truffles? That&#8217;s what we thought! There are so many occasions when we want to send a little thought: New jobs. New marriages. New babies. Just to say &#8220;Thanks,&#8221; &#8220;Hello,&#8221; &#8220;I love you,&#8221; or &#8220;Have a great day!&#8221; With this amazing offer, you can send warm, fuzzy, delicious thoughts someone&#8217;s way for half the price. $25 gets you $50 worth of goods at <a href="http://otrgifts.com">Occasions to Remember</a>. Order online and send a beautiful, gift-wrapped basket anywhere in the country. Occasions to Remember has something for every price range and taste. Send a <a href="http://www.otrgifts.com/ecommerce/ecomm_product_details.asp?prodid=172&amp;source=cat&amp;catid=1">Picnic in the Park</a> with its delicious treats all wrapped in a picnic basket with all the fixings. Welcome someone new to the world with the <a href="http://www.otrgifts.com/ecommerce/ecomm_product_details.asp?prodid=167&amp;source=cat&amp;catid=10">Baby Bundle</a> or <a href="http://www.otrgifts.com/ecommerce/ecomm_product_details.asp?prodid=175&amp;source=cat&amp;catid=10">Truckloads of Fun</a>. Or give the office a special boost with the <a href="http://www.otrgifts.com/ecommerce/ecomm_product_details.asp?prodid=181&amp;source=cat&amp;catid=14">Crowd Pleaser! </a>Whatever your occasion, make it a little extra special with these beautiful, deliverable gifts from Occasions to Remember. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=MiamiContDance_occasions"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Occasions to Remember</th>
                  </tr>
                  <tr>
                    <td class="firstTD"><em>Website</em></td>
                  </tr>
                  <tr>
                    <td><a href="http://www.otrgifts.com/">Visit Website &raquo;</a></td>
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
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=MiamiContDance_Aroma"
                            class="buyNow">Buy Now</a> $3.75 will be donated to this cause.</p>
                <p class="description">Are you still struggling to find that perfect cup of coffee? Whether it's something to give you that extra jolt before the workday begins or a rich blend to pair with your weekend newspaper ritual, a cup o' Joe can either make or break your day. And that's exactly how <strong>Aroma Ridge</strong> transpired: the passion for the most perfect cup of coffee. Now, 20 years later, Aroma Ridge has transformed into a small, family-owned business, providing a plethora of the finest mountain grown gourmet coffees, quality teas, accessories and more to enjoy in your very own home. At Aroma Ridge, you won't get the typical, monotonous cup of coffee you've become so accustomed to. Rather, they use hand-selected beans from various countries, hand roasted into small batches for a fresh, clean taste. Their staff prides themselves in exceptional customer service. While they many not make the universal perfect cup of coffee, they'll provide you with your perfect cup of coffee, offering a number of blends based on your personal taste (ranging from mild to XBold Flavor, regular to decaf). Add a kick to your morning java with a flavored coffee, like their <strong>Mocha Almond Fudge</strong>, <strong>Almond Cookie or Tropical Vanilla</strong>, laced with a hint of coconuts and sweet almonds ($10.95/lb). If coffee doesn't do it for you, go with a <strong>Chai Tea</strong> that comes in Vanilla, Chocolate, Spiced and Raspberry ($9.95/12 oz), or their specialty <strong>Organic Breakfast tea</strong> that includes 15 individual pouches ($9.95). Kick up the flavor to any of your beverages (or morning pancakes) with one of their delicious all-natural syrups in more than 30 flavors like Amaretto, White Chocolate and Irish Cream ($7.50). To top it off, they don't have any fat or cholesterol, so drizzle away! But fat and calories won't be the only thing you'll be saving. With today's deal you'll save on all your favorite coffee, teas and accessories as well-that is just <strong>$15 for $30 worth of products at Aroma Ridge</strong>!  <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=MiamiContDance_Aroma"
                            target="_new">More Info</a> </p>
                <table>
                  <tr>
                    <th>Aroma Ridge</th>
                  </tr>
                  <tr>
                    <td class="firstTD"><em>Website</em></td>
                  </tr>
                  <tr>
                    <td><a href="http://www.aromaridge.com/">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
