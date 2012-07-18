<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="neematrust.aspx.cs" Inherits="Funds_neematrust" %>

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
            <img id="IntroFundLogo" src="../Images/helpinghands.jpg" alt="Logo" />
            <div id="causeIntroContent">
                <div id="titleline">
                    <h2>
                        The Boston Volunteer Meetup and Neema Trust</h2>
                    <h3>
                        Cambridge, MA</h3>
                </div>
                <p>
                    We will be sending kids to schools to learn new skills and providing them with nutritious
                    lunches.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo">
            <img height="313" src="../Images/bosvolunteer.jpg" alt="" /></div>
        <h3>
            About Boston Volunteer Meetup and Neema Trust</h3>
        <p>
            I'd like to share with you some projects I've been working on in Nairobi, Kenya;
            and offer some ways you can help (just in time for the holiday spirit of giving!).</p>
        <p>
            Two summers ago I started a boys' orphanage called Neema Trust, which finds boys
            from the streets and provides a loving home for them. Three of the boys this year
            will be starting boarding school, but since the orphanage itself struggles to provide
            for the boys, they don't have the money they need to send them to school. The cost
            for one boy to go to school is $648 per year, or $72 a month. It is difficult for
            one person alone to sponsor a child's education, but if everyone contributes $10
            or $20, we can add it up to make a big difference.</p>
        <p>
            Along with working with Neema Trust and The Boston Volunteer Meetup, I also worked
            with Internally Displaced Persons (IDP) camps created for families affected by the
            2007 Kenya election violence. These families' homes have been destroyed and burnt
            down, and they are now living with their children very far from their work places
            and in unsanitary conditions. Marafiki Community International is an organization
            whose mission is to help these refugee communities become self-sustainable. So far,
            we've built a school for their children, and are currently helping them set up a
            corn mill so they can sell maize flour to support themselves. If you'd like more
            information about these projects, please visit www.marafikicommunity.org or connect
            with me here: www.BostonVolunteer.org. Any small or large contributions towards
            the projects would be appreciated. No matter what you give, I promise your donations
            will go a long way in these communities.</p>
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
                <h3> Pamper Yourself with an Elite Hairstyle – Only $25 for a Haircut and Blow Dry at
                  Elite Hair Studio in Chestnut Hill! ($70 Value)</h3>
                <img src="../Images/elite.jpg" alt="" />
                <p class="prices"> Price: $25<br />
                  Discount: 65%<br />
                  You Save: $45</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=BMA1013NEMB" target="_new"
                            class="buyNow">Buy Now</a> $6.25 will be donated to this cause</p>
                <div class="description">
                  <p> Located right on Grove Street in Chestnut Hill, <strong>Elite Hair Studio</strong> has been serving the elite of Boston for years. The stylists are highly educated
                    in the latest trends, styles and hair colorings. Each stylist is trained to accommodate
                    your personal style with his or her own innovative touch, so you will leave looking
                    (and feeling) your absolute best. The salon carries and uses the latest, top-of-the-line
                    products to suit your hair's needs. We know getting a haircut from a new hairdresser
                    is always a gamble, but we are delivering you one of the most elite hair salons
                    in the Greater Boston area and for only <strong>$25</strong> – normally a <strong>$70
                      value</strong>!</p>
                  <p> So head over to Chestnut Hill and snag the hairdo you have been waiting for to give
                    you a new look this winter. For only $25, you will receive a <strong>haircut and blow
                      dry</strong> from some of the most elite stylists in town! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=BMA1013NEMB"
                                target="_new">More Info</a></p>
                </div>
                <table>
                  <tr>
                    <th> Elite Hair Studio </th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 185 Grove Street </td>
                    <td><a href="185 Grove Street, Chestnut Hill, MA 02467">Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Chestnut Hill, MA 02467 </td>
                    <td><a href="http://boston.citysearch.com/profile/46102131/chestnut_hill_ma/elite_hair_studio.html"> Visit Website &raquo;</a></td>
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
                        <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=BMA1014NEMA" target="_new"
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
                        and mozzarella. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=BMA1014NEMA"
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
