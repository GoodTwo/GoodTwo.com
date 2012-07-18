<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="helpsaveendanmls.aspx.cs" Inherits="Funds_helpsaveendanmls" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/helpsvendgrd-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>Help Save Endangered Animals</h2>
<h3> New York, NY</h3>
                </div>
                <p>Wildlife ACT needs your help! Help protect African wild animals and contribute to saving our planet. </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="..\Images\hlpsvendgrd-main.jpg" width="391" height="313" /></div>
        <h3>Wildlife Act, Zululand, South Africa:</h3>
      <p>Wildlife ACT needs your help with collaring missions and tracking equipment to help save critically endangered species such as the black rhino and african wild dog. Any donation helps! </p>
      <p><a href="http://no.website.listed" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="helpsaveendanmls" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>$50 for $100 Worth of Children's Products from Give Wink</h3>
                <img src="../Images/give-wink.jpg" alt="" />
                <p class="prices"> Price: $50<br />
                  Discount: 50%<br />
                  You Save: $50</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=HelpSvEndAnml_Givewink"
                            target="_new" class="buyNow">Buy Now</a> $12.50 will be donated to this cause</p>
                <p class="description">Moms, teachers and parents alike: we've found the perfect place for you to do your shopping for the young ones! At <strong>Give Wink,</strong> located on NE Miami Gardens Drive in North Miami Beach, they feature products perfect for children ages <strong>0-6 months up through 8+.</strong>From <strong>toys, games, furniture, kitchen and bathtime accessories</strong> to <strong>travel gear, books, music, school supplies</strong> and so much more, Give Wink really has you covered for all things kids! There's even a whole section devoted to Mommy goods, which you need to see for yourself! To simply list their products here would be an injustice… you must visit their <a href="http://www.givewink.com/">website</a> to see for yourself! And with our deal, you'll get <strong>$35 worth of these awesome products</strong> for just <strong>$15!</strong> Enjoy! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=HelpSvEndAnml_Givewink" target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Give Wink</th>
                  </tr>
                  <tr>
                    <td class="firstTD">2570 NE Miami Gardens Drive</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Give+Wink,+Miami,+FL,+North+America&amp;aq=0&amp;sll=42.057342,-71.234047&amp;sspn=0.181749,0.181618&amp;ie=UTF8&amp;hq=Give+Wink,+Miami,+FL,+North+America&amp;hnear=&amp;radius=15000&amp;ll=25.949092,-80.143204&amp;spn=0.106351,0.090809&amp;z=13&amp;iwloc=A" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>North Miami Beach, Florida 33180</td>
                    <td><a href="http://www.givewink.com/" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
