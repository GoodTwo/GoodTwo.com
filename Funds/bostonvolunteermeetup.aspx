<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="bostonvolunteermeetup.aspx.cs" Inherits="Funds_bostonvolunteermeetup" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "../Styles/jquery.countdown.css";
        z</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro">
            <img id="IntroFundLogo" src="../Images/helpinghands.jpg" alt="Logo" />
            <div id="causeIntroContent">
                <div id="titleline">
                    <h2>
                        The Boston Volunteer Meetup</h2>
                    <h3>
                        Cambridge, MA</h3>
                </div>
                <p>
                    We will be serving food to hungry Boston familes at St. John's on Christmas.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo">
            <img height="313" src="../Images/bosvolunteer.jpg" alt="" /></div>
        <h3>
            About Boston Volunteer Meetup</h3>
        <p>
            We will be investing one hundred percent of your purchases in helping Bostonians.</p>
        <a class="visitSite" href="http://www.BostonVolunteer.org">visit website &raquo;</a></p>
        <div id="fb-root">
        </div>

        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>

        <fb:comments xid="bosvolunteermeetup" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3> $10 for $20 Worth of Old-Fashioned, New York Deli-Style Eats at Rubin's in Brookline</h3>
                <img src="../Images/rubins.jpg" alt="" />
                <p class="prices"> Price: $10<br />
                  Discount: 50%<br />
                  You Save: $20</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=BMA1006BVMB" target="_new"
                            class="buyNow">Buy Now</a> $2.50 will be donated to this cause</p>
                <p class="description"> Located at 500 Harvard Street in the heart of Brookline, <strong>Rubin's Kosher Restaurant
                  Delicatessen</strong> serves up all your favorites every day (well, except Saturday).
                  From <strong>Chicken Noodle Soup</strong> ($5.99 for a bowl with one matzo ball)
                  and <strong>Stuffed Cabbage</strong> ($9.99) to <strong>Potato Pancakes</strong> ($7.99) and award-winning <strong>Knishes</strong> ($5.99), Rubin's delivers the
                  way your grandmother used to, and boy does he deliver well. Hungry for the real
                  deal? Be sure to try one of their special combo sandwiches like the <strong>Times Square</strong>,
                  made with corned beef, turkey, cole slaw and Russian dressing ($15.99) or <strong>The
                    Manhattan</strong> with corned beef, hot Romanian pastrami and chopped liver
                  ($16.99). Only <strong>$10</strong> gets you $20 worth of these delicious options
                  and so much more at Rubin's! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=BMA1006BVMB"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Rubin's Deli </th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 500 Harvard Street </td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=500+Harvard+Street,+Brookline,+MA+02446&amp;sll=42.342638,-71.084327&amp;sspn=0.001075,0.002411&amp;ie=UTF8&amp;hq=&amp;hnear=500+Harvard+St,+Brookline,+Norfolk,+Massachusetts+02446&amp;ll=42.348223,-71.129528&amp;spn=0.001074,0.002411&amp;z=19&amp;iwloc=r9&quot; target=&quot;_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Brookline, MA 02446 </td>
                    <td><a href="http://www.rubinskosher.com">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
                <div>
                    <h3>
                        Get $50 of Cozy, Tasty Italian Eats at G'Vanni's Ristorante for Just $20</h3>
                    <img src="../Images/gvannis.jpg" alt="" />
                    <p class="prices">
                        Price: $20<br />
                        Discount: 60%<br />
                        You Save: $50</p>
                    <p class="buyNowHolder">
                        <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=BMA1014BVMA" target="_new"
                            class="buyNow">Buy Now</a> $5.00 will be donated to this cause</p>
                    <p class="description">
                        Nestled in Boston's infamous North End sits <b>G'Vanni's Ristorante</b>, an inviting
                        little place serving up fine Italian cuisine one day at a time. Let yourself cozy
                        up with the restaurant's warm, charming atmosphere, as you indulge in a hearty meal.
                        After you've finished off your fresh bread and butter basket, you may like to continue
                        fueling your stomach with a number of G'Vanni's appetizers such as the <strong>Mozza
                            Wrap</strong> (Fresh mozzarella wrapped in Prosciutto) or <strong>Scallops with Bacon.</strong>
                        Moving along to dinner, G'Vanni's offers a wide range of entrees, including the
                        <strong>Steak Mafioso</strong> (Prime Sirloin sautéed with peppers and onions),
                        <strong>Risotto Del Giorno</strong> (Risotto of the Day with Shrimp or fresh vegetables),
                        <strong>Eggplant Parmesan</strong>, and the ever so decadent, heartwarming <strong>Pumpkin
                            Ravioli</strong>. G'vanni's also serves a variety of fresh, signature &quot;<strong>T.O.N.Y
                                Baloney</strong>&quot; Pizza including their classic Margherita with tomato
                        and mozzarella. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=BMA1014BVMA"
                            target="_new">More Info</a></p>
                    <table>
                        <tr>
                            <th>
                                G'vanni's Ristorante
                            </th>
                        </tr>
                        <tr>
                            <td class="firstTD">
                                2 Prince Street
                            </td>
                            <td>
                                <a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=2+Prince+Street,+Boston,+MA+02113&amp;sll=42.302869,-71.151972&amp;sspn=0.001075,0.002411&amp;ie=UTF8&amp;hq=&amp;hnear=2+Prince+St,+Boston,+Suffolk,+Massachusetts+02113&amp;ll=42.364133,-71.053643&amp;spn=0.001074,0.002411&amp;z=19&amp;iwloc=r0"
                                    target="_new">Map / Directions &raquo;</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Boston, MA 02113
                            </td>
                            <td>
                                <a href="http://www.gvannis.com">Visit Website &raquo;</a>
                            </td>
                        </tr>
                    </table>
                </div>
            </li>
        </ul>
    </div>
</asp:Content>
