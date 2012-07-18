<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="verity.aspx.cs" Inherits="Funds_verity" %>

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
            <img id="IntroFundLogo" src="../Images/verity-big.png" alt="Logo" />
            <div id="causeIntroContent">
                <div id="titleline">
                    <h2> Verity Israel Mission Trip 2011 Fundraiser</h2>
                    <h3>
                        Indianapolis, IN</h3>
                </div>
                <p>We  in the 2011 graduating class of Verity Institute  are blessed to be preparing to go on a senior mission trip to Israel  March 21-31, 2011. This trip will, Lord willing, allow us to meet and  minister to the Israeli people showing them the love and hope Jesus  gives. God has clearly had His hand on this trip from its beginning  stages and we excitedly anticipate seeing His power demonstrated through  the provision of all of our needs for this trip.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo">
            <img height="313" src="../Images/verity-main.jpg" alt="" /></div>
        <h3>
            About the Mission</h3>
        <p>After  much prayer and discussion, the Lord has opened the door for us to go  to Israel for our 2011 Mission Trip. Our journey is being hosted by Jim  Jackson, President of CBU Travel and Tours, Montreat, NC  (http://www.cbu.org).<br />
          <br />
          Currently, we are planning on March 21-31,  2011, with two of those 11 days being for travel with El Al airlines.  While in the Holy Land, we will be able to tour Bethlehem, Jerusalem,  Gethsemane, the Dead Sea, Nazareth, and many other places. Of course,  our main purpose is to minister to the people. Ministry details are  still  being worked out, but will include evangelizing to and working with  hospitals, children, and underprivileged individuals.<br />
          <br />
          Our  projected cost is $3400 per person. With approximately 40 people  attending, this is a large amount of financial support to raise. We have  initiated fund-raising projects, such as an auction and donation street  teams.<br />
          <br />
          As always, we are seeking God’s direction in every aspect  of this project. We appreciate your prayers for us as we step forward  in this venture.<br />
          <br />
          Pray for:<br />
          -God’s direction and blessing on the fund-raising efforts<br />
          -The staff at Verity Institute and CBU Travel and Tours as they confirm the itinerary<br />
          -The class of 2011 to be prepared physically, emotionally, and spiritually<br />
        -Open minds and hearts of the Israeli people</p>
        <a class="visitSite" href="http://www.verityinstitute.org/israel">visit website &raquo;</a></p>
        <div id="fb-root">
        </div>

        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>

        <fb:comments xid="verity" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                    <asp:Label ID="PledgeCount" runat="server"></asp:Label></strong> pledged of
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
                <h3> $10 for $20 Worth of Delicious, Adorable, Unique Gifts at Harvard Sweet Boutique</h3>
                <img src="../Images/harvardsweet.jpg" alt="" />
                <p class="prices"> Price: $10<br />
                  Discount: 50%<br />
                  You Save: $10</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=VerIsrael_Harvard"
                            class="buyNow">Buy Now</a> $2.00 will be donated to this cause</p>
                <p class="description"> At <strong>Harvard Sweet Boutique</strong>, you'll browse through an endless number
                  of unique gift ideas that not only look pretty, but are absolutely delectable too!
                  The staff at Harvard Sweet Boutique believes baking should be done the old-fashioned
                  way – that is, hand-making everything from scratch with all natural, fresh ingredients.
                  From rich European chocolate to pure, double-strength vanilla extract, you can be
                  assured you're getting nothing but the best. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=VerIsrael_Harvard"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Harvard Sweet Boutique </th>
                  </tr>
                  <tr>
                    <td class="firstTD"> Ships Nationwide </td>
                    <td><a href="http://www.harvardsweetboutique.com">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $15 for $30 of Gourmet Coffees, Teas and More at AromaRidge.com</h3>
                <img src="../Images/aroma.jpg" alt="" />
                <p class="prices"> Price: $15<br />
                  Discount: 50%<br />
                  You Save: $30</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/shoppingcart.asp?ProductCode=VerIsrael_Aroma"
                             class="buyNow">Buy Now</a> $3.75 will be donated to this cause</p>
                <p class="description"> Are you still struggling to find that perfect cup of coffee? At Aroma Ridge, you
                  won't get the typical, monotonous cup of coffee you've become so accustomed to.
                  Rather, they use hand-selected beans from various countries, hand roasted into small
                  batches for a fresh, clean taste. Their staff prides themselves in exceptional customer
                  service. While they many not make the universal perfect cup of coffee, they'll provide
                  you with your perfect cup of coffee, offering a number of blends based on your personal
                  taste (ranging from mild to XBold Flavor, regular to decaf). <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=VerIsrael_Aroma"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> <table>
                      <tr>
                        <th> Aroma Ridge </th>
                      </tr>
                      <tr>
                        <td class="firstTD"> Ships Nationwide </td>
                        <td><a href="http://www.aromaridge.com">Visit Website &raquo;</a></td>
                      </tr>
                    </table>
                    </th>
                  </tr>
                </table>
              </div>
            </li>
             <li>
              <div>
                <h3> $6 for $15 Worth of Tantalizing Teas at Ezentea.com</h3>
                <img src="../Images/ezentea.jpg" alt="" />
                <p class="prices"> Price: $6<br />
                  Discount: 60%<br />
                  You Save: $15</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/shoppingcart.asp?ProductCode=VerIsrael_EZenTea"
                             class="buyNow">Buy Now</a> $1.50 will be donated to this cause</p>
                <p class="description"><strong>Ezentea.com</strong> will make any tea-lover feel like a kid in a candy shop. With more than 100 teas from around the world, they provide everything from quality <strong>Loose Leaf teas</strong> and tea bags to trendy teaware and accessories. Relish in some <strong>Almond Oolong Loose Leaf Tea</strong>($10.75, 4 oz), known to aid in digestion, weight loss and lowering blood sugar. Or relax after a long, stressful day of work with a cup of <strong>Lavender Rose tea</strong> ($16.99 for 24 bags), a calming black tea that tastes great both cold and hot. Listen up Green tea enthusiasts! The Matcha—a premium green tea powder from Japan—is a must. With 10x the nutritional value and antioxidant content than your average green tea, it'd be silly not to scoop up 60 grams of this miracle tea for yourself ($19.95). <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=VerIsrael_EZenTea"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> <table>
                      <tr>
                        <th> Aroma Ridge </th>
                      </tr>
                      <tr>
                        <td class="firstTD"> Ships Nationwide </td>
                        <td><a href="http://ezentea.com">Visit Website &raquo;</a></td>
                      </tr>
                    </table>
                    </th>
                  </tr>
                </table>
              </div>
            </li>
        </ul>
    </div>
</asp:Content>
