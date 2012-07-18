<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="ReachOutandRead.aspx.cs" Inherits="Funds_reachoutandread" %>

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
            <img src="../Images/reachread-big.gif" alt="Logo" />
            <div id="causeIntroContent">
          <div id="titleline">
                    <h2>
                        Reach Out and Read - Valentine's Day</h2>
                    <h3>
                        Boston, MA</h3>
                </div>
                <p>Reach Out and Read prepares America's youngest children to succeed in school by partnering with doctors to prescribe books and encourage families to read together. Suppport our mission when you by flowers this Valentine's Day. Each purchase will result in a $3.00 donation, plus a great deal on flowers for that special someone!</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo">
            <object width="391" height="313"><param name="movie" value="http://www.youtube.com/v/DCA4vMeix-M?fs=1&amp;hl=en_US&amp;rel=0"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/DCA4vMeix-M?fs=1&amp;hl=en_US&amp;rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="391" height="313"></embed></object></div>
        <h3>
            About Reach Out and Read</h3>
        <p>Reach Out and Read is an evidence-based nonprofit organization that promotes early literacy and school readiness in pediatric exam rooms nationwide by giving new books to children and advice to parents about the importance of reading aloud. Doctors, nurse practitioners, and other medical professionals incorporate Reach Out and Read's evidence-based model into regular pediatric checkups, by advising parents about the importance of reading aloud and giving developmentally-appropriate books to children. The program begins at the 6-month checkup and continues through age 5, with a special emphasis on children growing up in low-income communities. Families served by Reach Out and Read read together more often, and their children enter kindergarten with a six-month developmental edge over their peers, larger vocabularies, and stronger language skills. They’re better prepared to achieve their potential.</p>
        <a href="http://www.reachoutandread.org" target="_new" class="visitSite">visit website &raquo;</a>
        <div id="fb-root">
    </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="reachoutandread" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3> $15 for $30 worth of Fresh Flowers from KaBloom (Brookline location or Online only)</h3>
                <img src="../Images/kabloom.gif" alt="" />
                <p class="prices"> Price: $15<br />
                  Discount: 50%<br />
                  You Save: $15</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=ReachRead-kabloom"
                            target="_new" class="buyNow">Buy Now</a> $3.75 will be donated to this cause</p>
                <p class="description"> Sometimes a gift can say so much more than words. A simple gesture of giving can cure wounds, being healing or simply showcase feelings. So if you want to really show someone you care, why not give them the gift of a beautiful bouquet of flowers, arranged and displayed by the experts at <b>KaBloom?</b> With our deal, you&#8217;ll receive <b>$30 worth of goods and services</b> for just <b>$15!</b> Choose from <b>tulips, roses, lillies, orchids</b> and so much more. Check out some of the most popular bouquets <a href="http://www.kabloom.com/Most_Popular-c16.aspx" target="_new">here</a>. So show that special someone how much you care for them, or level an uncomfortable situation with the beauties KaBloom has to offer! Just $15 for $30 worth of goods and services! Redeemable at the Harvard Street in Brookline location or Online only. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=ReachRead-kabloom"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>KaBloom</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 305 Harvard Street</td>
                    <td><a href="http://maps.google.com/maps?q=305+Harvard+Street,+Brookline,+MA+02446&amp;gl=us&amp;hl=en&amp;ie=UTF8&amp;hq=&amp;hnear=305+Harvard+St,+Brookline,+Norfolk,+Massachusetts+02446&amp;z=16" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Brookline, MA 33160</td>
                    <td><a href="http://www.kabloom.com" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $12 for $25 worth of Fresh Flowers from Boston Flower Bouquet (Back Bay pickup or 10 mi. Boston delivery)</h3>
                <img src="../Images/bosflowerbouq.jpg" alt="" />
                <p class="prices"> Price: $12<br />
                  Discount: 52%<br />
                  You Save: $25</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=ReachRead-BosFlower"
                            target="_new" class="buyNow">Buy Now</a> $3.00 will be donated to this cause</p>
                <p class="description"> Guess which major holiday is just around the corner? The one that if you forget it, you might end up on the couch. Yes, that’s right, the Hallmark Holiday itself… Valentine’s Day. So get a heads start on this lovely, emotion-filled holiday by pre-ordering your sweetheart a beautiful flower arrangement from <strong>Boston Flower Bouquet.</strong> With our special deal, you’ll get <strong>$25 worth of goods and services</strong> available for delivery (within 10 miles of Boston) or in-store pickup, for just <strong>$12!</strong><br />
                  <br />
                  Located on Mass Ave downtown, Boston Flower Bouquet has been serving the area with its beautifully arranged offerings for years. Whatever the occasion may be, Boston Flower Bouquet has got you covered, so considering how important Valentine’s Day is, make sure you take advantage of today’s deal. While flowers are an expression of love on this special day, they really can be used for any occasion and hold any meaning – thanks, sorrow, grief or just general appreciation. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=ReachRead-BosFlower"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Boston Flower Bouquet</th>
                  </tr>
                  <tr>
                    <td class="firstTD">90 Massachusetts Avenue</td>
                    <td><a href="http://maps.google.com/maps?q=90+Massachusetts+Avenue,+Boston,+Massachusetts+02115&amp;ie=UTF8&amp;hl=en&amp;hq=&amp;hnear=90+Massachusetts+Ave,+Boston,+Suffolk,+Massachusetts+02115&amp;z=16" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Boston, MA 02115</td>
                    <td><a href="http://www.mafloral.com" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
