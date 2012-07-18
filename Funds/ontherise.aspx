<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="ontherise.aspx.cs" Inherits="Funds_ontherise" %>

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
            <img id="IntroFundLogo" src="../Images/ontherise.gif" alt="Logo" />
            <div id="causeIntroContent">
                <div id="titleline">
                    <h2>
                        On The Rise</h2>
                    <h3>
                        Cambridge, MA</h3>
                </div>
                <p>
                    On The Rise is a safe haven for women who are homeless. We use a relational model
                    designed to offer respect, dignity, connection, information, guidance and hope to
                    women who have fallen through the cracks of our social service system.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo">
            <img height="313" src="../Images/ontherise-main.jpg" alt="" /></div>
        <h3>
            About On The Rise</h3>
        <p>
            On The Rise, Inc. (OTR) is a dynamic, Cambridge, MA-based non-profit founded in
            1995 that serves women in crisis and homelessness throughout the region. Our Outreach/Safe
            Haven Program&rsquo;s innovative approach has unprecedented success with women who
            are unable to make full use of other community programs for reasons that may include
            their histories (trauma, violence and abuse are ubiquitous) and present conditions
            (many women are coping with multiple issues, from medical concerns and mental illness,
            to addiction, criminal histories, and more). In the face of these obstacles, women
            who participate in OTR&rsquo;s programs leverage their initiative and core strengths
            to find safety and discover new possibilities. Positive results include a housing
            retention rate of 85% (compared to 47% for dually-diagnosed individuals in traditional
            programs) and many other gains in safety and quality of life that range from subtle
            to astounding.</em></p>
        <p>
            A key part of OTR&rsquo;s success is its &ldquo;mortar between the bricks&rdquo;
            approach – the organization&rsquo;s cohesive, consistent support for women as they
            gain access to and make full use of mainstream, specialized programs. In fulfilling
            the &ldquo;mortar between the bricks&rdquo; role, OTR&rsquo;s connections to the
            community and other service-providers are as critical as the trusting, non-coercive
            relationships with individual women that are formed in the Outreach/Safe Haven program.
            OTR works closely with approximately 50 local providers of specialized services,
            including overnight shelters, to ensure that women using the Outreach/Safe Haven
            Program receive the highest quality, most comprehensive services possible.</p>
        <a class="visitSite" href="http://www.ontherise.org">visit website &raquo;</a></p>
        <div id="fb-root">
        </div>

        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>

        <fb:comments xid="ontherise" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                        $20 for 20 Gym Visits at Benefitness Health Club ($300 Value)!</h3>
                    <img src="../Images/benefitness.jpg" alt="" />
                    <p class="prices">
                        Price: $15<br />
                        Discount: 50%<br />
                        You Save: $15</p>
                    <p class="buyNowHolder">
                        <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=BMA1009OTRB" target="_new"
                            class="buyNow">Buy Now</a> $5.00 will be donated to this cause</p>
                    <div class="description">
                    <p>
                        At <strong>Benefitness</strong> – the women's only health club in Brookline Village
                        – women can work out solely in the company of other women. The staff here strives
                        to provide a comfortable environment for women of all ages, in which members can
                        focus on achieving their personal goals and ultimate well-being. Benefitness has
                        a plethora of wonderful features, including Nautilus weights, cardio machines, a
                        private personal training &amp; pilates reformer studio, sauna and child care.</p>
                    <p>
                        On top of that, the health club offers more than 50 group fitness classes per week
                        with a staff of dedicated top notch instructors. Classes include Cycling, Yoga,
                        Kickbox and Zumba as well as Balletone (a ballet workout for toning, strengthening
                        and stretching), Nia (blending yoga, tai chi and dance moves), and Power &amp; Grace
                        (combines strength training with Pilates, balance and flexibility).</p>
                    <p>
                        So pay just <strong>$20</strong> to receive <strong>20 day passes</strong> at Benefitness
                        (<strong>normally $15 a day</strong>). Save yourself a great deal of money while
                        benefitting a great cause! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=BMA1009OTRB"
                            target="_new">More Info</a></p>
                    </div>
                    <table>
                        <tr>
                            <th>
                                Benefitness
                            </th>
                        </tr>
                        <tr>
                            <td class="firstTD">
                                62 Harvard Street
                            </td>
                            <td>
                                <a href="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=62+Harvard+Street,+Brookline,+MA+02445&sll=42.321716,-71.363668&sspn=0.008599,0.019162&ie=UTF8&hq=&hnear=62+Harvard+St,+Brookline,+Norfolk,+Massachusetts+02445&ll=42.335215,-71.120124&spn=0.008597,0.019162&z=16&iwloc=A">
                                    Map / Directions &raquo;</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Brookline, MA 02445
                            </td>
                            <td>
                                <a href="http://vivamexicangrill.com/wordpress/">Visit Website &raquo;</a>
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
                        <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=BMA1014OTRA" target="_new"
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
                        and mozzarella. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=BMA1014OTRA"
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
                        $15 for $30 Worth of Eats at Cambridge's #1 Mexican Food Hot Spot, Jose's!</h3>
                    <img src="../Images/joses.jpg" alt="" />
                    <p class="prices">
                        Price: $15<br />
                        Discount: 50%<br />
                        You Save: $15</p>
                    <p class="buyNowHolder">
                        <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=BMA1015OTRC" target="_new"
                            class="buyNow">Buy Now</a> $3.75 will be donated to this cause</p>
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
                        for just <strong>$15</strong>. <em>Muy delicioso!</em> <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=BMA1015OTRC"
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
        </ul>
    </div>
</asp:Content>
