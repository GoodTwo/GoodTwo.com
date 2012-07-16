<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="communitydiversion.aspx.cs" Inherits="Funds_communitydiversion" %>

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
            <img src="../Images/commdir-logo.jpg" alt="Logo" />
            <div id="causeIntroContent">
          <div id="titleline">
                    <h2>
            The Community Diversion Program</h2>
                    <h3>
                    Greenland, NH</h3>
                </div>
                <p>The Community Diversion Program (CDP) is a youth court diversion program based in Greenland, NH serving 19 towns in Eastern Rockingham County. The Mission  is to eliminate the need for court involvement or future court involvement for youth and their families through education and service learning programs. A large component of our work with youth centers on healthy choices to empower individuals to improve their lives.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img height="313" src="../Images/commdir-main.jpg" alt="" /></div>
        <h3>
            About The Community Diversion Program</h3>
      <p>The Community Diversion Program (CDP) began fifteen years ago to assist youth in our area in need of alternatives to court and possible incarceration. CDP works closely with school systems, probation, court systems and our police departments. Through these relationships, CDP has been able to ensure countless young people (over 6000 of them) have the support they need through difficult times. Many of these young people need drug and alcohol education, conflict resolution and anger management skills – all of them need a responsible adult to care about them and be there for them. CDP is dedicated to making sure each of these children have a safe place and a caring adult to help navigate them through their personal storms.</p>
        <a href="http://www.communitydiversion.org/" target="_new" class="visitSite">visit website &raquo;</a>
        <div id="fb-root">
  </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="communitydiversionprgm" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3> $15 for $30 Worth of Eats at Cambridge's #1 Mexican Food Hot Spot, Jose's!</h3>
                <img src="../images/joses.jpg" alt="" />
                <p class="prices"> Price: $15<br />
                  Discount: 50%<br />
                  You Save: $15</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=CommDiver_Joses"
                            target="_new" class="buyNow">Buy Now</a> $3.75 will be donated to this cause</p>
                <p class="description"> Located in North Cambridge, <strong>Jose's</strong> prides itself on offering homemade cuisine that's been passed down through family generations. The owner was raised on home cooked food prepared from fresh local ingredients, so that's exactly what you're getting when you dine with Jose's! Munch on some <strong>salsa</strong> or <strong>guac &amp; chips</strong> as you take your time with their extensive yet oh so enticing menu. Dig into their chicken, shrimp, steak or veggie fajitas or infamous <strong>Mexican Flag Enchiladas</strong>, sporting their three colors with salsa, cheese, and tomatillo sauce. Craving something more traditional? Try something &quot;From My Mother's Kitchen&quot; like the <strong>Tamales del Dia</strong> with different fillings each day! Don't forget to dip into some dessert (like the homemade flan!) too! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=CommDiver_Joses"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Jose's </th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 131 Sherman Street</td>
                    <td><a href="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=131+Sherman+Street,+Cambridge,+MA+02140&sll=26.240013,-80.105901&sspn=0.011278,0.020943&gl=us&ie=UTF8&hq=&hnear=131+Sherman+St,+Cambridge,+Middlesex,+Massachusetts+02140&z=16" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Cambridge, MA 02140</td>
                    <td><a href="http://www.josesmex.com/dnn08/Home/tabid/36/Default.aspx" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $25 for a Haircut and Blow Dry at Elite Hair Studio in Chestnut Hill! ($70 Value)</h3>
                <img src="../images/EliteHairStudio.jpg" alt="" />
                <p class="prices"> Price: $25<br />
                  Discount: 65%<br />
                  You Save: $45</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=CommDiver_EliteHair"
                            class="buyNow">Buy Now</a> $6.25 will be donated to this cause</p>
                <p class="description"> Located right on Grove Street in Chestnut Hill, <strong>Elite Hair Studio</strong> has been serving the elite of Boston for years. The stylists are highly educated in the latest trends, styles and hair colorings. Each stylist is trained to accommodate your personal style with his or her own innovative touch, so you will leave looking (and feeling) your absolute best. The salon carries and uses the latest, top-of-the-line products to suit your hair's needs. We know getting a haircut from a new hairdresser is always a gamble, but we are delivering you one of the most elite hair salons in the Greater Boston area and for only <strong>$25</strong> – normally a <strong>$70 value</strong>! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=CommDiver_EliteHair"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Elite Hair Studio</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 185 Grove Street</td>
                    <td><a href="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=185+Grove+Street,+Chestnut+Hill,+MA+02467&sll=42.390184,-71.132848&sspn=0.009287,0.020943&gl=us&ie=UTF8&hq=&hnear=185+Grove+St,+Brookline,+Norfolk,+Massachusetts+02467&z=16" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Chestnut Hill, MA 02467</td>
                    <td><a href="http://boston.citysearch.com/profile/46102131/chestnut_hill_ma/elite_hair_studio.html" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
       <li>
         <div>
           <h3> $30 for $100 Worth of Travel with Thomas Cook!</h3>
           <img src="../images/ThomasCook.jpg" alt="" />
           <p class="prices"> Price: $30<br />
             Discount: 70%<br />
             You Save: $70</p>
           <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=CommDiver_ThomCook"
                            class="buyNow">Buy Now</a> $7.50 will be donated to this cause</p>
           <p class="description"> It's time. You've been putting it off for far too long now. You've been daydreaming about it for months, maybe even years, but you've never followed through with it. But, it's a New Year and you need to follow through with those resolutions. You need to finally take the time to get away and go on vacation. And with our deal at <strong>Thomas Cook</strong>, you can save considerably doing so. For just <strong>$30</strong>, you'll receive <strong>$100 worth of travel</strong>. Good for <strong>flights, rentals, hotels, holiday specials </strong>and<strong> cruises</strong>, you'll have so many options at your disposal. With this deal in hand, you really have no more excuses. Find the time to get away today – you'll be ecstatic that you finally did. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=CommDiver_ThomCook"
                            target="_new">More Info</a></p>
           <table>
             <tr>
               <th> Thomas Cook</th>
             </tr>
             <tr>
               <td> <em>Website</em></td>
               <td><a href="http://www.thomascook.com/" target="_new">Visit Website &raquo;</a></td>
             </tr>
           </table>
         </div>
       </li>
        
        
        </ul>
    </div>
</asp:Content>
