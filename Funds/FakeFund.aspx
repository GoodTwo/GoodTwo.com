<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="FakeFund.aspx.cs" Inherits="Funds_FakeFund" %>

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
            <img src="../Images/red-big.jpg" alt="Logo" />
            <div id="causeIntroContent">
                <div id="titleline">
                    <h2>
                        (RED)</h2>
                    <h3>
                        Boston, MA</h3>
                </div>
                <p>
                    Spread the word: Shop, Save &amp; help eliminate aids in Africa. Lorem ipsum dolor
                    sit amet, consectetur adipiscing elit. Nam rutrum dignissim mollis. Aenean rhoncus
                    faucibus lacinia. Vestibulum sed est metus, nec dapibus odio. Aenean ultricies interdum
                    augue, nec varius elit porttitor nec.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo">
            <img height="313px" src="../Images/video-placeholder.jpg" alt="" /></div>
        <h3>
            About (RED)</h3>
        <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam rutrum dignissim mollis.
            Aenean rhoncus faucibus lacinia. Vestibulum sed est metus, nec dapibus odio. Aenean
            ultricies interdum augue, nec varius elit porttitor nec. Donec et lacus erat, sit
            amet sagittis velit. In consectetur, lorem non ultrices dictum, purus velit faucibus
            augue, eu condimentum sem ipsum in orci. Aenean ac faucibus mauris. Donec nisi neque,
            interdum in vestibulum viverra, euismod sed magna. Sed at nisi sapien, cursus vulputate
            nunc. Ut congue sapien ut eros tristique et molestie lectus placerat. Nulla euismod,
            mi at rutrum blandit, mi ante cursus magna, eu accumsan eros libero et risus. Nunc
            dignissim fringilla erat, fringilla bibendum mi iaculis eu. Quisque pulvinar tincidunt
            leo, vitae tincidunt mauris sollicitudin non. Donec vitae sem ut elit elementum
            fringilla sed eu ligula. Donec ut gravida purus. Vivamus sed nunc libero, ut laoreet
            leo.</p>
        <p>
            Cras et risus felis. Sed venenatis bibendum mauris. Nulla lobortis venenatis erat
            eget scelerisque. Etiam quis ipsum purus. Maecenas diam nisi, bibendum quis consectetur
            a, pellentesque id purus. Nulla facilisi. Morbi eu gravida velit. Suspendisse bibendum
            lacus vitae risus sodales mollis. Phasellus et nunc a tortor rhoncu augue.</p>
        <a class="visitSite" href="#">visit website &raquo;</a>
        <div id="fb-root">
        </div>

        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>

        <fb:comments xid="test" numposts="10" width="370" publish_feed="true"></fb:comments>
    </div>
    <div class="right">
        <div id="dealSummary">
            <p class="first">
                <strong>3</strong> deals, <strong>97</strong> supporters</p>
            <p>
                <strong>$1715</strong> pledged of <strong>$1500</strong> goal</p>
            <p class="last">
                <strong>8 Days</strong> remaining to help this cause</p>
            <p class="shareThis">
                SHARE THIS CAUSE WITH YOUR FRIENDS</p>
            <ul class="shareCont">
                <li class="facebook"><a href="#">Facebook</a></li>
                <li class="twitter"><a href="#">Twitter</a></li>
                <li class="email"><a href="#">Email</a></li>
                <li class="likeButton">
                    <iframe src="http://www.facebook.com/plugins/like.php?href=http%3A%2F%2Fexample.com%2Fpage%2Fto%2Flike&amp;layout=button_count&amp;show_faces=true&amp;width=450&amp;action=like&amp;colorscheme=light&amp;height=21"
                        scrolling="no" frameborder="0" style="border: none; overflow: hidden; width: 100px;
                        height: 21px;" allowtransparency="true"></iframe>
                </li>
            </ul>
        </div>
        <div class="howItWorks">
            <p>
                <strong>Here's how it works:</strong> You save on deals from the merchants<br />
                below and you donate half the money to benefit this cause,<br />
                it's a win - win situation for everyone.</p>
        </div>
        <ul id="merchantList">
            <li class="first">
                <div>
                    <h3>
                        58% off - $15 for $35 toward an Intimate Night Filled With Italian Dishes and Drinks
                        at Davide!</h3>
                    <img src="../Images/davide.png" alt="" />
                    <p class="prices">
                        Price: $15<br />
                        Discount: 58%<br />
                        You Save: $20</p>
                    <p class="buyNowHolder">
                        <a class="buyNow" href="#">Buy Now</a> $3.75 will be donated to this cause</p>
                    <p class="description">
                        Walking down the streets of the North End, you'll find yourself in a sea of Italian
                        restaurants. However, Davide's Italian Restaurant differentiates itself from all
                        of the others because of its exceptional cuisine and gorgeous atmosphere that has
                        been bringing people back for more than 22 years.
                    </p>
                    <table>
                        <tr>
                            <th>
                                Davide
                            </th>
                        </tr>
                        <tr>
                            <td class="firstTD">
                                326 Commercial Street
                            </td>
                            <td>
                                <a href="#">Map / Direction &raquo;</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Boston, MA 02109
                            </td>
                            <td>
                                <a href="#">Visit Website &raquo;</a>
                            </td>
                        </tr>
                    </table>
                </div>
            </li>
            <li>
                <div>
                    <h3>
                        58% off - $15 for $35 toward an Intimate Night Filled With Italian Dishes and Drinks
                        at Davide!</h3>
                    <img src="../Images/davide.png" alt="" />
                    <p class="prices">
                        Price: $15<br />
                        Discount: 58%<br />
                        You Save: $20</p>
                    <p class="buyNowHolder">
                        <a class="buyNow" href="#">Buy Now</a> $3.75 will be donated to this cause</p>
                    <p class="description">
                        Walking down the streets of the North End, you'll find yourself in a sea of Italian
                        restaurants. However, Davide's Italian Restaurant differentiates itself from all
                        of the others because of its exceptional cuisine and gorgeous atmosphere that has
                        been bringing people back for more than 22 years.
                    </p>
                    <table>
                        <tr>
                            <th>
                                Davide
                            </th>
                        </tr>
                        <tr>
                            <td class="firstTD">
                                326 Commercial Street
                            </td>
                            <td>
                                <a href="#">Map / Direction &raquo;</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Boston, MA 02109
                            </td>
                            <td>
                                <a href="#">Visit Website &raquo;</a>
                            </td>
                        </tr>
                    </table>
                </div>
            </li>
            <li>
                <div>
                    <h3>
                        58% off - $15 for $35 toward an Intimate Night Filled With Italian Dishes and Drinks
                        at Davide!</h3>
                    <img src="../Images/davide.png" alt="" />
                    <p class="prices">
                        Price: $15<br />
                        Discount: 58%<br />
                        You Save: $20</p>
                    <p class="buyNowHolder">
                        <a class="buyNow" href="#">Buy Now</a> $3.75 will be donated to this cause</p>
                    <p class="description">
                        Walking down the streets of the North End, you'll find yourself in a sea of Italian
                        restaurants. However, Davide's Italian Restaurant differentiates itself from all
                        of the others because of its exceptional cuisine and gorgeous atmosphere that has
                        been bringing people back for more than 22 years.
                    </p>
                    <table>
                        <tr>
                            <th>
                                Davide
                            </th>
                        </tr>
                        <tr>
                            <td class="firstTD">
                                326 Commercial Street
                            </td>
                            <td>
                                <a href="#">Map / Direction &raquo;</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Boston, MA 02109
                            </td>
                            <td>
                                <a href="#">Visit Website &raquo;</a>
                            </td>
                        </tr>
                    </table>
                </div>
            </li>
        </ul>
    </div>
</asp:Content>
