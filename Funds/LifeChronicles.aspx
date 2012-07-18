<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="LifeChronicles.aspx.cs" Inherits="Funds_lifechronicles" %>

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
            <img src="../Images/lifechron-big.jpg" alt="Logo" />
            <div id="causeIntroContent">
                <div id="titleline">
                    <h2>
                        LifeChronicles</h2>
                    <h3>
                        Santa Barbara, CA</h3>
                </div>
                <p>
                    LifeChronicles, Inc. is a non-profit organization based in Santa Barbara, California.
                    Established and founded in 1998, LifeChronicles produces videos of people who are
                    terminally ill or in any of a variety of life crises. LifeChronicles offers comfort
                    to people during critical periods of their life by providing an opportunity to share
                    important messages and experiences as well as to express their love for those they
                    will eventually be leaving behind.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo">
            <object width="391" height="313">
                <param name="movie" value="http://www.youtube.com/v/U_a_qoyNp4U?fs=1&amp;hl=en_US&amp;rel=0">
                </param>
                <param name="allowFullScreen" value="true"></param>
                <param name="allowscriptaccess" value="always"></param>
                <embed src="http://www.youtube.com/v/U_a_qoyNp4U?fs=1&amp;hl=en_US&amp;rel=0" type="application/x-shockwave-flash"
                    allowscriptaccess="always" allowfullscreen="true" width="391" height="313"></embed></object></div>
        <h3>
            LifeChronicles</h3>
        <p>
            LifeChronicles is attempting to reach more people across the United States. In the
            past 6 months we have taped people in California, Massachusetts, New York, Connecticut,
            Alaska, Mississippi, etc. As people learn more about our cause, the more requests
            we are receiving. LifeChronicles has felt the impact of the recession. Fundraising
            is essential for us to continue to expand our efforts. The money raised will go
            to fund our operation. We are in need of new cameras, editing equipment and supplies.
            We truly appreciate this opportunity and your generosity.</p>
        <a class="visitSite" href="http://www.lifechronicles.org">visit website &raquo;</a>
        <div id="fb-root">
        </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="lifechronicles" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                    <h3>
                        $45 for a $90 Blissful, Indulgent Spa Experience at Toscana European Day Spa</h3>
                    <img src="../Images/toscana.jpg" alt="" />
                    <p class="prices">
                        Price: $45<br />
                        Discount: 50%<br />
                        You Save: $90</p>
                    <p class="buyNowHolder">
                        <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=BMA1007LIFCHRON1206"
                            target="_new" class="buyNow">Buy Now</a> $9.50 will be donated to this cause</p>
                    <p class="description">
                        Located on Newbury Street, <strong>Toscana European Day Spa</strong> sits in a tranquil
                        setting, much like the luxurious salons and spas in Europe. Upon entering, you'll
                        be pampered by the best stylists, massage therapists and aestheticians in Boston.
                        At Toscana, they exclusively use award-winning, European- and U.S.-made products,
                        ranging from organic skin care to Goldwell and L'Oreal Paris hair products. Owner
                        Doina Mandrila trained in Europe, where she learned her envied beauty secrets, and
                        has been practicing skin care for more than 35 years. Now she brings her knowledge
                        and talent back to the U.S., right here in Boston for your pleasure. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=BMA1007LIFCHRON1206"
                            target="_new">More Info</a></p>
                    <table>
                        <tr>
                            <th>
                                Toscana European Day Spa
                            </th>
                        </tr>
                        <tr>
                            <td class="firstTD">
                                231 Newbury Street
                            </td>
                            <td>
                                <a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=231+Newbury+Street,+Boston,+MA+02116&amp;sll=42.348223,-71.129528&amp;sspn=0.001074,0.002411&amp;ie=UTF8&amp;hq=&amp;hnear=231+Newbury+St,+Boston,+Suffolk,+Massachusetts+02116&amp;ll=42.350138,-71.081945&amp;spn=0.001074,0.002411&amp;z=19&amp;iwloc=r1&quot; target=&quot;_new">
                                    Map / Directions &raquo;</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Boston, MA 02116
                            </td>
                            <td>
                                <a href="http://www.toscanadayspanewbury.com">Visit Website &raquo;</a>
                            </td>
                        </tr>
                    </table>
                </div>
            </li>
            <li>
                <div>
                    <h3>
                        $15 for $30 of Gourmet Coffees, Teas and More at AromaRidge.com</h3>
                    <img src="../Images/aroma.jpg" alt="" />
                    <p class="prices">
                        Price: $15<br />
                        Discount: 50%<br />
                        You Save: $30</p>
                    <p class="buyNowHolder">
                        <a href="http://store.goodtwo.com/shoppingcart.asp?ProductCode=ONLINE12062010-1"
                            target="_new" class="buyNow">Buy Now</a> $3.75 will be donated to this cause</p>
                    <p class="description">
                        Are you still struggling to find that perfect cup of coffee? At Aroma Ridge, you
                        won't get the typical, monotonous cup of coffee you've become so accustomed to.
                        Rather, they use hand-selected beans from various countries, hand roasted into small
                        batches for a fresh, clean taste. Their staff prides themselves in exceptional customer
                        service. While they many not make the universal perfect cup of coffee, they'll provide
                        you with your perfect cup of coffee, offering a number of blends based on your personal
                        taste (ranging from mild to XBold Flavor, regular to decaf). <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=ONLINE12062010-1"
                            target="_new">More Info</a></p>
                    <table>
                        <tr>
                            <th>
                                <table>
                                    <tr>
                                        <th>
                                            Aroma Ridge
                                        </th>
                                    </tr>
                                    <tr>
                                        <td class="firstTD">
                                            Ships Nationwide
                                        </td>
                                        <td>
                                            <a href="http://www.aromaridge.com">Visit Website &raquo;</a>
                                        </td>
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
