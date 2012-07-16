<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="ALZ_SouthFL.aspx.cs" Inherits="Funds_ALZ_SouthFL" %>

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
                <p>The Southeast Florida Chapter enhances efforts for researching a cure and provides support and educational services to over 200,000 Alzheimer's patients, families and caregivers in Broward, Palm Beach, Miami-Dade, Martin, Monroe, St. Lucie and Okeechobee counties.</p>
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
        <a href="http://www.alz.org/seflorida" target="_new" class="visitSite">visit website &raquo;</a>
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
                <h3> $10 for $20 Worth of Deli-Prepared Food at Sarah's Tent Market!</h3>
                <img src="../Images/sarahstent.jpg" alt="" />
                <p class="prices"> Price: $10<br />
                  Discount: 50%<br />
                  You Save: $20</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=AlzAssoc_Sarahs"
                            target="_new" class="buyNow">Buy Now</a> $2.50 will be donated to this cause</p>
                <p class="description"> You need to go food shopping. Typically this happens at least once or twice a week. Luckily, there are more than enough places for you to stop at on your way home from work or the gym that'll satisfy your edible desires. However, what about for those of us trying to keep kosher? No worries! For those in the Miami area, we've found the perfect deal and location for you – <strong>Sarah's Tent Market</strong>, where you'll get <strong>$20 worth of prepared deli food</strong> for just <strong>$10!</strong> Keep kosher and keep that wallet looking fat right away! While this deal is good only for their deli-prepared food, Sarah's is the largest kosher food market in Miami, meaning you also have access to produce, groceries, catering services, fine wines, kosher pizza and so much more! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=AlzAssoc_Sarahs"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Sarah's Tent Market</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 3565 NE 207th Street</td>
                    <td><a href="http://maps.google.com/maps?client=safari&q=3565+NE+207th+Street,+Miami,+FL+33180&oe=UTF-8&ie=UTF8&hq=&hnear=3565+NE+207th+St,+Miami,+Miami-Dade,+Florida+33180&gl=us&z=16" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Miami, FL 33180</td>
                    <td><a href="http://miami.citysearch.com/profile/43436486/miami_fl/sarah_s_tent_market.html" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $39 for the Basic Household Cleaning Package from Urban Spoon Catering &amp; Personal Staffing! ($85 Value)</h3>
                <img src="../Images/urbanspoon.jpg" alt="" />
                <p class="prices"> Price: $39<br />
                  Discount: 55%<br />
                  You Save: $46</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=AlzAssoc_UrbanSpoon"
                            class="buyNow">Buy Now</a> $7.00 will be donated to this cause</p>
                <p class="description"> Some common excuses not getting around to that pesky house cleaning: you're busy with work, you've been on vacation, you just don't have time. No matter the reason, this deal does not allow you to live one more day with a messy abode: <strong>Urban Spoon</strong> is here to save the day, with 2 hours of household cleaning on offer for <strong>$39</strong>— normally an <strong>$85 value!</strong> Sweeping, moping, wiping down furniture, dusting, glass cleaning, cleaning bathrooms and vacuuming – these professionals do it all! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=AlzAssoc_UrbanSpoon"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Urban Spoon Catering &amp; Personal Staffing</th>
                  </tr>
                  <tr>
                    <td> <em>Will Travel within 15 Miles of Miami</em></td>
                    <td><a href="http://www.urbanspooncatering.com/" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
       <li>
         <div>
           <h3> $5 for $10 Worth of Food at Aventura Pita</h3>
           <img src="../Images/aventurapita.jpg" alt="" />
           <p class="prices"> Price: $5<br />
             Discount: 50%<br />
             You Save: $5</p>
           <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=AlzAssoc_AventPita"
                            class="buyNow">Buy Now</a> $1.25 will be donated to this cause</p>
           <p class="description">The Turkish fast food delicacy of the <em>doener</em> kebab originated in Turkey and now has a cult following in Europe. The demand has now spread to the United States and you can experience it firsthand in Aventura today!<strong> Aventura Pita</strong> wants to keep you fed on the go with this offer of <strong>$10 worth of food</strong> for <strong>$5. </strong>Their kebabs are <strong>savory</strong> <strong>wraps</strong> of meat— choose from lamb, turkey, chicken, and more!— or falafel packed with lettuce, tomato, and native sauces. The fillings are available on plates with accompanying sides as well. With a kid's menu offering chicken nuggets and hot dogs, bring the little ones for a family-friendly, tasty dining experience! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=AlzAssoc_AventPita"
                            target="_new">More Info</a></p>
           <table>
             <tr>
               <th> Aventura Pita</th>
             </tr>
             <tr>
               <td class="firstTD"> 18129 Biscayne Boulevard</td>
               <td><a href="http://maps.google.com/maps?client=safari&oe=UTF-8&ie=UTF8&q=18129+Biscayne+Boulevard,+Aventura,+FL+33160&fb=1&gl=us&hnear=Sharon,+MA+02067&hl=en&view=map&cid=12024541242132163976&ll=25.943188,-80.147645&spn=0.011307,0.020943&z=16&iwloc=A"
                                    target="_new">Map / Directions &raquo;</a></td>
             </tr>
             <tr>
               <td> Aventura, FL 33160</td>
               <td><a href="http://www.aventurapita.com/" target="_new">Visit Website &raquo;</a></td>
             </tr>
           </table>
         </div>
       </li>
        
        
        </ul>
    </div>
</asp:Content>
