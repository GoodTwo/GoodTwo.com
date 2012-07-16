<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="alzheimers_SFL-vday.aspx.cs" Inherits="Funds_alzheimers_SFL_vday" %>

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
            <img src="../Images/alzheimers-logo.jpg" alt="Logo" />
            <div id="causeIntroContent">
          <div id="titleline">
                    <h2>
            The Alzheimer's Association - Southeast Florida Chapter</h2>
                    <h3>
                Miami, FL</h3>
                </div>
                <p>The Southeast Florida Chapter enhances efforts for researching a cure and provides support and educational services to over 200,000 Alzheimer's patients, families and caregivers in Broward, Palm Beach, Miami-Dade, Martin, Monroe, St. Lucie and Okeechobee counties. Help fund their mission by purchasing this great deal from KaBloom, where $3.75 from each purchase will directly benefit Alzheimer's Association.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><object width="391" height="313"><param name="movie" value="http://www.youtube.com/v/SNHsBSKjg80?fs=1&amp;hl=en_US&amp;rel=0"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/SNHsBSKjg80?fs=1&amp;hl=en_US&amp;rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="391" height="313"></embed></object></div>
        <h3>
            About The Alzheimer's Association</h3>
      <p>The Alzheimer's Association is the leading, global voluntary health organization in Alzheimer care and support, and the largest private, nonprofit funder of Alzheimer research.</p>
      <p>The Alzheimer's Association works on a global, national and local level to enhance care and support for all those affected by Alzheimer's and related dementias. We are here to help.<br />
        As the largest, private non-profit funder of Alzheimer research, the Association is committed to accelerating progress of new treatments, preventions and ultimately, a cure.  Through our partnerships and funded projects, we have been part of every major research advancement over the past 30 years.</p>
      <p>The Association is the leading voice for Alzheimer's disease advocacy, fighting for critical Alzheimer research, prevention and care initiatives at the state and federal level.  We diligently work to make Alzheimer's a national priority.</p>
      <p>Today, the Association reaches millions of people affected by Alzheimer's across the globe through our national office and more than 75 local chapters. As the largest donor-supported, voluntary health organization for Alzheimer's, the Association is a catalyst for advancements in Alzheimer research and care.</p>
        <a href="www.alz.org/seflorida" target="_new" class="visitSite">visit website &raquo;</a>
        <div id="fb-root">
  </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="alzheimersassocSEFL" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3> $15 for $30 worth of Fresh Flowers Delivered from KaBloom.com</h3>
                <img src="../Images/kabloom.gif" alt="" />
                <p class="prices"> Price: $15<br />
                  Discount: 50%<br />
                  You Save: $15</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=EasterSealsMA-kabloom"
                            target="_new" class="buyNow">Buy Now</a> $3.75 will be donated to this cause</p>
                <p class="description"> Sometimes a gift can say so much more than words. A simple gesture of giving can cure wounds, being healing or simply showcase feelings. So if you want to really show someone you care, why not give them the gift of a beautiful bouquet of flowers, arranged and displayed by the experts at <b>KaBloom?</b> With our deal, you&#8217;ll receive <b>$30 worth of goods and services</b> for just <b>$15!</b> Choose from <b>tulips, roses, lillies, orchids</b> and so much more. Check out some of the most popular bouquets <a href="http://www.kabloom.com/Most_Popular-c16.aspx" target="_new">here</a>. So show that special someone how much you care for them, or level an uncomfortable situation with the beauties KaBloom has to offer! Just $15 for $30 worth of goods and services! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=EasterSealsMA-kabloom"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>KaBloom</th>
                  </tr>
                  <tr>
                    <td> Nationwide Delivery</td>
                    <td><a href="http://www.kabloom.com" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
