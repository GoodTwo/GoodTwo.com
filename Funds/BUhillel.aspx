<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="BUhillel.aspx.cs" Inherits="Funds_BUhillel" %>

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
            <img src="../Images/hillel-big.png" alt="Logo" />
            <div id="causeIntroContent">
                <div id="titleline">
                    <h2>
                        The Florence and Chafetz Hillel House at Boston University</h2>
                    <h3>
                        Boston, MA</h3>
                </div>
                <p>
                    To enhance and strengthen Jewish life on the campus of Boston University.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo">
            <img height="313" src="../Images/hillel-main.jpg" alt="" /></div>
        <h3>
            About the Hillel House at Boston University</h3>
        <p>
            Hillel, Boston University’s center for Jewish life, is the largest, most exciting,
            and most versatile organization on campus due to its integral connections to student
            social, cultural, educational, political, and religious life. Hillel enriches the
            traditional and cultural values of our students in a vibrant, pluralistic setting.
            We are a campus affiliate of the Hillel Council of New England and a constituent
            of the national organization, Hillel: The Foundation of Jewish Life on Campus.</p>
        <a class="visitSite" href="http://www.bu.edu/hillel">visit website &raquo;</a>
        <div id="fb-root">
        </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="buhillel" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                    <h3>
                        $10 for $20 Worth of Old-Fashioned, New York Deli-Style Eats at Rubin's in Brookline</h3>
                    <img src="../Images/rubins.jpg" alt="" />
                    <p class="prices">
                        Price: $10<br />
                        Discount: 50%<br />
                        You Save: $20</p>
                    <p class="buyNowHolder">
                        <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=BMA1006BUHILL1206"
                            target="_new" class="buyNow">Buy Now</a> $2.50 will be donated to this cause</p>
                    <p class="description">
                        Located at 500 Harvard Street in the heart of Brookline, <strong>Rubin's Kosher Restaurant
                            Delicatessen</strong> serves up all your favorites every day (well, except Saturday).
                        From <strong>Chicken Noodle Soup</strong> ($5.99 for a bowl with one matzo ball)
                        and <strong>Stuffed Cabbage</strong> ($9.99) to <strong>Potato Pancakes</strong>
                        ($7.99) and award-winning <strong>Knishes</strong> ($5.99), Rubin's delivers the
                        way your grandmother used to, and boy does he deliver well. Hungry for the real
                        deal? Be sure to try one of their special combo sandwiches like the <strong>Times Square</strong>,
                        made with corned beef, turkey, cole slaw and Russian dressing ($15.99) or <strong>The
                            Manhattan</strong> with corned beef, hot Romanian pastrami and chopped liver
                        ($16.99). Only <strong>$10</strong> gets you $20 worth of these delicious options
                        and so much more at Rubin's! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=BMA1006BUHILL1206"
                            target="_new">More Info</a></p>
                    <table>
                        <tr>
                            <th>
                                Rubin's Deli
                            </th>
                        </tr>
                        <tr>
                            <td class="firstTD">
                                500 Harvard Street
                            </td>
                            <td>
                                <a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=500+Harvard+Street,+Brookline,+MA+02446&amp;sll=42.342638,-71.084327&amp;sspn=0.001075,0.002411&amp;ie=UTF8&amp;hq=&amp;hnear=500+Harvard+St,+Brookline,+Norfolk,+Massachusetts+02446&amp;ll=42.348223,-71.129528&amp;spn=0.001074,0.002411&amp;z=19&amp;iwloc=r9&quot; target=&quot;_new">
                                    Map / Directions &raquo;</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Brookline, MA 02446
                            </td>
                            <td>
                                <a href="http://www.rubinskosher.com">Visit Website &raquo;</a>
                            </td>
                        </tr>
                    </table>
                </div>
            </li>
            <li>
                <div>
                    <h3>
                        Send Your Cards in Style with Unique, Custom Photo Cards! $20 for $50 of Services
                        at Photo Card Creations</h3>
                    <img src="../Images/photocard.jpg" alt="" />
                    <p class="prices">
                        Price: $20<br />
                        Discount: 60%<br />
                        You Save: $30</p>
                    <p class="buyNowHolder">
                        <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=ONL1002BUHILL1206"
                            target="_new" class="buyNow">Buy Now</a> $5.00 will be donated to this cause</p>
                    <p class="description">
                        Through the power of words on a expertly crafted photo card, you'll have no problem
                        telling people you're getting married, or reminding them that the Passover Seder
                        is at your place this year! With talented graphic designers and artists on board,
                        Photo Card Creations produces cards of the highest quality and most personal care.
                        Want to show off your beautiful family by the roasting fire, despite this being
                        utterly clichéd? This design studio would make even Ansel Adams jealous with its
                        final production. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=ONL1002BUHILL1206"
                            target="_new">More Info</a></p>
                    <table>
                        <tr>
                            <th>
                                Photocardcreations.com
                            </th>
                        </tr>
                        <tr>
                            <td class="firstTD">
                                Ships Nationwide
                            </td>
                            <td>
                                <a href="http://www.photocardcreations.com">Visit Websites &raquo;</a>
                            </td>
                        </tr>
                    </table>
                </div>
            </li>
            <li>
                <div>
                    <h3>
                        Quit Stressing, Already! $15 for $30 Worth of Dry Cleaning at Life Without Laundry!</h3>
                    <img src="../Images/lifelaundry.jpg" alt="" />
                    <p class="prices">
                        Price: $15<br />
                        Discount: 50%<br />
                        You Save: $30</p>
                    <p class="buyNowHolder">
                        <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=BMA1010BUHILL1209"
                            target="_new" class="buyNow">Buy Now</a> $3.75 will be donated to this cause</p>
                    <p class="description">
                        Life Without Laundry makes life a whole lot easier for all of you who'd rather kick
                        back by the tube, or get some exercise in, than spend your day at the laundry mat.
                        Scrubbing away at tough spaghetti sauce stains and lugging pounds of clothes to
                        and from the dry cleaners isn't anyone's idea of fun. Not to mention the large stain
                        that decided to appear conveniently before the most important meeting of the year.
                        But top-notch dry cleaning (with the best eco-friendly cleaning supplies), free
                        pickup & delivery and not having to move an inch? That's something we could all
                        get used to. This stress-free company literally makes it as easy as 1, 2, 3. All
                        you have to do is register for a free account online, schedule a time for your free
                        pickup and delivery, then voilà: your dry cleaning is complete. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=BMA1010BUHILL1209"
                            target="_new">More Info</a></p>
                    <table>
                        <tr>
                            <th>
                                Life Without Laundry
                            </th>
                        </tr>
                        <tr>
                            <td class="firstTD">
                                Serving all of Boston -
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="firstTD">
                                Pickup and Delivery
                            </td>
                            <td>
                                <a href="https://lifewithoutlaundry.com/">Visit Websites &raquo;</a>
                            </td>
                        </tr>
                    </table>
                </div>
            </li>
        </ul>
    </div>
</asp:Content>
