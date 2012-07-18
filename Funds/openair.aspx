<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="openair.aspx.cs" Inherits="Funds_openair" %>

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
            <img id="IntroFundLogo" src="../Images/openair.jpg" alt="Logo" />
            <div id="causeIntroContent">
                <div id="titleline">
                    <h2>
                        OPENAIR Circus</h2>
                    <h3>
                        Somerville, MA</h3>
                </div>
                <p>
                    The OPENAIR Circus is a non-profit organization whose mission is to enhance children's
                    self-esteem, teach leadership and team work skills, and promote the arts and community.
                    Volunteer-run, the OPENAIR is based in Somerville and has been running programs
                    in Somerville and neighboring communities since 1986.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo">
            <img height="313" src="../Images/openair-main.jpg" alt="" />
        </div>
        <h3>
            About OPENAIR Circus</h3>
        <p>
            In 2008, the OPENAIR Circus began holding an annual 5 day intensive program to train
            teens both in circus arts and in the performing and training of those arts. The
            program's goal was to develop a group of teens who could perform at parties and
            teach workshops and classes. Teens in the program benefit both from learning fun
            and active skills and from paid performance and teaching opportunities. For the
            past two years, this program was funded by art and health-oriented grants, but in
            order to continue and improve upon the program, we are seeking additional funding
            sources.</p>
        <a class="visitSite" href="http://www.openaircircus.org">visit website &raquo;</a></p>
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
                        $15 for $30 Worth of Eats at Cambridge's #1 Mexican Food Hot Spot, Jose's!</h3>
                    <img src="../Images/joses.jpg" alt="" />
                    <p class="prices">
                        Price: $15<br />
                        Discount: 50%<br />
                        You Save: $15</p>
                    <p class="buyNowHolder">
                        <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=MABOAC1217" target="_new"
                            class="buyNow">Buy Now</a> $2.50 will be donated to this cause</p>
                    <div class="description">
                    <p>
                        Located in North Cambridge, Jose's prides itself on offering homemade cuisine that's
                        been passed down through family generations. The owner was raised on home cooked
                        food prepared from fresh local ingredients, so that's exactly what you're getting
                        when you dine with Jose's! Munch on some <strong>salsa</strong> or <strong>guac &amp;
                            chips</strong> as you take your time with their extensive yet oh so enticing
                        menu. Dig into their <strong>chicken, shrimp, steak</strong> or <strong>veggie fajitas</strong>
                        or infamous <strong>Mexican Flag Enchiladas</strong>, sporting their three colors
                        with salsa, cheese, and tomatillo sauce. Craving something more traditional? Try
                        something &quot;From My Mother's Kitchen&quot; like the <strong>Tamales del Dia</strong>
                        with different fillings each day! Don't forget to dip into some dessert (like the
                        homemade flan!) too!</p>
                    <p>
                        So grab your friends and head to Jose's for some delightful margaritas, homemade
                        guacamole, and traditional Mexican food. You get <strong>$30 worth of food</strong>
                        for just <strong>$15</strong>. <em>Muy delicioso!</em> <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=MABOAC1217"
                            target="_new">More Info</a></p>
                    </div>
                    <table>
                        <tr>
                            <th>
                                Jose's
                            </th>
                        </tr>
                        <tr>
                            <td class="firstTD">
                                131 Sherman Street
                            </td>
                            <td>
                                <a href="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=131+Sherman+Street,+Cambridge,+MA+02140&sll=42.364458,-71.053627&sspn=0.008593,0.019162&ie=UTF8&hq=&hnear=131+Sherman+St,+Cambridge,+Middlesex,+Massachusetts+02140&ll=42.39085,-71.132848&spn=0.00859,0.019162&z=16&iwloc=r0">
                                    Map / Directions &raquo;</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Cambridge, MA 02140
                            </td>
                            <td>
                                <a href="http://boston.citysearch.com/profile/46102131/chestnut_hill_ma/elite_hair_studio.html">
                                    Visit Website &raquo;</a>
                            </td>
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
                        <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=BMAOAC1217" target="_new"
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
                        and mozzarella. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=BMAOAC1217"
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
            <li>
                <div>
                    <h3>
                        $10 for $20 Worth of Delicious, Adorable, Unique Gifts at Harvard Sweet Boutique</h3>
                    <img src="../Images/harvardsweet.jpg" alt="" />
                    <p class="prices">
                        Price: $10<br />
                        Discount: 50%<br />
                        You Save: $10</p>
                    <p class="buyNowHolder">
                        <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=ONLOAC1217" target="_new"
                            class="buyNow">Buy Now</a> $2.00 will be donated to this cause</p>
                    <p class="description">
                        At <strong>Harvard Sweet Boutique</strong>, you'll browse through an endless number
                        of unique gift ideas that not only look pretty, but are absolutely delectable too!
                        The staff at Harvard Sweet Boutique believes baking should be done the old-fashioned
                        way – that is, hand-making everything from scratch with all natural, fresh ingredients.
                        From rich European chocolate to pure, double-strength vanilla extract, you can be
                        assured you're getting nothing but the best. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=ONLOAC1217"
                            target="_new">More Info</a></p>
                    <table>
                        <tr>
                            <th>
                                Harvard Sweet Boutique
                            </th>
                        </tr>
                        <tr>
                            <td class="firstTD">
                                Ships Nationwide
                            </td>
                            <td>
                                <a href="http://www.harvardsweetboutique.com">Visit Website &raquo;</a>
                            </td>
                        </tr>
                    </table>
                </div>
            </li>
        </ul>
    </div>
</asp:Content>
