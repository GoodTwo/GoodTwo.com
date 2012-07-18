<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="RespondInc.aspx.cs" Inherits="Funds_respondinc" %>

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
            <img src="../Images/respond-big.jpg" alt="Logo" />
            <div id="causeIntroContent">
                <div id="titleline">
                    <h2>
                        Respond, Inc.</h2>
                    <h3>
                        Somerville, MA</h3>
                </div>
                <p>
                    Respond, Inc. partners with individuals, families and communities to end the serious
                    public health issue of domestic violence. Respond strives to achieve its mission
                    through prevention, intervention, advocacy and direct services that promote safe,
                    healthy relationships.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo">
            <object width="391" height="313">
                <param name="movie" value="http://www.youtube.com/v/HyMuMAFcDko?fs=1&amp;hl=en_US&amp;rel=0">
                </param>
                <param name="allowFullScreen" value="true"></param>
                <param name="allowscriptaccess" value="always"></param>
                <embed src="http://www.youtube.com/v/HyMuMAFcDko?fs=1&amp;hl=en_US&amp;rel=0" type="application/x-shockwave-flash"
                    allowscriptaccess="always" allowfullscreen="true" width="391" height="313"></embed></object></div>
        <h3>
            About Respond, Inc.</h3>
        <p>
            RESPOND, Inc., a pioneer in the movement to end domestic violence, is New England's
            first domestic violence agency and the second in the nation. Since its inception
            36 years ago, RESPOND has provided safety and support to over 65,000 victims of
            domestic violence. Through its Community Program, RESPOND provides individual counseling,
            advocacy, support groups and children services. The emergency shelter program provides
            safe, confidential housing and comprehensive supportive services to 8 families or
            21 individuals at a time, along with a 24-hour crisis hotline. Each year, the Shelter
            Program and Community Based Program serve over 5,000 survivors of domestic violence.</p>
        <p>
            RESPOND's mission is to help survivors of domestic violence and their children create
            options for a safer life, free from domestic violence, and to further the efforts
            of the larger community to end domestic violence. The agency works toward its mission
            by focusing on two main objectives:</p>
        <p>
            To assist survivors of domestic violence and their children in overcoming barriers
            to their immediate and long-term safety by providing emotional support, meeting
            basic emergency needs and helping families to address critical issues such as housing,
            healthcare, education, childcare, employment and legal issues.</p>
        <p>
            To engage in outreach, education and prevention activities in Greater Boston communities
            to promote awareness about domestic violence, publicize RESPOND's services as widely
            as possible and educate members of the community about how they can help to end
            the cycle of family violence.</p>
        <p>
            In these challenging economic times, it can be difficult to cover the basic costs
            of living, let alone provide gifts for one's family. Your generous support will
            help us make wishes come true for so many families this holiday season! We are extremely
            grateful for your support!</p>
        <a class="visitSite" href="http://respondinc.org">visit website &raquo;</a>
        <div id="fb-root">
        </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="respondinc" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                    <asp:Label ID="ProductCount" runat="server"></asp:Label>
                </strong> raised, <strong>
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
                        $10 for $20 Worth of Delicious, Adorable, Unique Gifts at Harvard Sweet Boutique</h3>
                    <img src="../Images/harvardsweet.jpg" alt="" />
                    <p class="prices">
                        Price: $10<br />
                        Discount: 50%<br />
                        You Save: $10</p>
                    <p class="buyNowHolder">
                        <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=ONL1004RESPOND1206"
                            target="_new" class="buyNow">Buy Now</a> $2.00 will be donated to this cause</p>
                    <p class="description">
                        At <strong>Harvard Sweet Boutique</strong>, you'll browse through an endless number
                        of unique gift ideas that not only look pretty, but are absolutely delectable too!
                        The staff at Harvard Sweet Boutique believes baking should be done the old-fashioned
                        way – that is, hand-making everything from scratch with all natural, fresh ingredients.
                        From rich European chocolate to pure, double-strength vanilla extract, you can be
                        assured you're getting nothing but the best. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=ONL1004RESPOND1206"
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
                        <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=BMA1014RESPOND1206"
                            target="_new" class="buyNow">Buy Now</a> $5.00 will be donated to this cause</p>
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
                        and mozzarella. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=BMA1014RESPOND1206"
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
                                <a href="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=2+Prince+Street,+Boston,+MA+02113&sll=42.302869,-71.151972&sspn=0.001075,0.002411&ie=UTF8&hq=&hnear=2+Prince+St,+Boston,+Suffolk,+Massachusetts+02113&ll=42.364133,-71.053643&spn=0.001074,0.002411&z=19&iwloc=r0"
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
