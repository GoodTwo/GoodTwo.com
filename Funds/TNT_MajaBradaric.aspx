<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="TNT_majabradaric.aspx.cs" Inherits="Funds_tnt_majabradaric" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/lls.gif" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>
            Boston Marathon 2011 - Racing to Save Lives</h2>
                    <h3>
                Boston, MA</h3>
                </div>
                <p>I'm training to participate in the Boston Marathon as a member of The Leukemia &amp;amp; Lymphoma Society's (LLS) Team In Training.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img height="313" src="../Images/tnt.jpg" alt="" /></div>
        <h3>
            Note from Maja Bradaric</h3>
      <p>Welcome to my GoodTwo Page!</p>
      <p>I'm training to participate in the Boston Marathon as a member of The Leukemia &amp;amp; Lymphoma Society's (LLS) Team In Training. All of us on Team In Training are raising funds to help stop leukemia, lymphoma, Hodgkin lymphoma and myeloma from taking more lives. I have commited myself to a $3,250 goal and am completing this event in honor of all individuals who are battling blood cancers. These people are the real heroes on our team, and we need your support to cross the ultimate finish line - a cure!</p>
      <p>Please make a donation to support my participation in Team In Training and help advance LLS's mission.</p>
      <p>I hope you will visit my web site often. Be sure to check back frequently to see my progress. Thanks for your support!</p>
        <a href="http://pages.teamintraining.org/ma/boston11/mbradaric" target="_new" class="visitSite">visit website &raquo;</a>
        <div id="fb-root">
  </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="majabradaric" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3> $6 for a Pair of Fat-Free Fro-Yo's with Unlimited Toppings at Red Mango ($12 Value)</h3>
                <img src="../Images/toscana.jpg" alt="" />
                <p class="prices"> Price: $6<br />
                  Discount: 50%<br />
                  You Save: $6</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=TNT_MBradaric_RedMango"
                            target="_new" class="buyNow">Buy Now</a> $1.00 will be donated to this cause</p>
                <p class="description"> At <strong>Red Mango</strong> – where <strong>$6</strong> gets you <strong>2 regular-sized servings of 100% all-natural, nonfat frozen yogurt</strong> – you can dress up your treat however you please with an unlimited amount of toppings. Yes, it is true. You get to pick any type of toppings you would like on your delicious frozen treat. Get creative with their unique selection of toppings: bananas, raspberries, organic granola, organic cookies and cream and so much more! All you need is a spoon and not a penny more for this frozen bowl of tastiness at Red Mango on Massachusetts Avenue in the Symphony area! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=TNT_MBradaric_RedMango"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Red Mango</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 334 Massachusetts Avenue </td>
                    <td><a href="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=Red+Mango+Mass+Ave&sll=42.346208,-71.087208&sspn=0.018587,0.041885&gl=us&g=344+Massachusetts+Avenue,+Boston,+MA+02115&ie=UTF8&hq=Red+Mango&hnear=Red+Mango,+334+Massachusetts+Ave,+Boston,+Massachusetts+02115&ll=42.343384,-71.08429&spn=0.035589,0.083771&z=14" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Boston, MA 02115 </td>
                    <td><a href="http://www.redmangousa.com/default.html" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $24 for 3 Pole Dancing Classes at Boston Pole Fitness – a $75 value!</h3>
                <img src="../Images/bostonpolefitness.jpg" alt="" />
                <p class="prices"> Price: $24<br />
                  Discount: 68%<br />
                  You Save: $51</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=TNT_MBradaric_BosPole"
                            class="buyNow">Buy Now</a> $6.00 will be donated to this cause</p>
                <p class="description"> At <strong>Boston Pole Fitness</strong>, located on Lansdowne Street inside Gold's Gym, is run by Stacy Hamilton, who is not only the &quot;president,&quot; but a &quot;client&quot; as well. Starting out in California, Stacy picked up the fun and amazingly effective workout and started teaching. But before you get skeptical, know that no matter your capability level, you can do this! The classes that incorporate fun and exertion are all different and guaranteed to keep you coming back for more with Stacy's <strong>Polegression Program</strong>. She teaches how to &quot;pole-gress&quot; your way from beginner to expert with her home &quot;spun&quot; classes. With today's deal for <strong>$24</strong>, you can choose from any class – <strong>Polegression, Vertical Dance, Pole Circuit, Pole 101 </strong>and<strong> Pole Flow</strong>. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=TNT_MBradaric_BosPole"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Boston Pole Fitness</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 71 Lansdowne Street</td>
                    <td><a href="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=71+Lansdowne+Street,+Boston,+MA+02215&sll=42.343384,-71.08429&sspn=0.035589,0.083771&gl=us&ie=UTF8&hq=&hnear=71+Lansdowne+St,+Boston,+Suffolk,+Massachusetts+02215&ll=42.347079,-71.098022&spn=0.009293,0.020943&z=16" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Boston, MA 02215</td>
                    <td><a href="http://www.bostonpolefitness.com/" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
       <li>
         <div>
           <h3> $45 for a $90 Blissful, Indulgent Spa Experience at Toscana European Day Spa!</h3>
           <img src="../Images/gvannis.jpg" alt="" />
           <p class="prices"> Price: $45<br />
             Discount: 50%<br />
             You Save: $45</p>
           <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=TNT_MBradaric_Toscana"
                            class="buyNow">Buy Now</a> $9.50 will be donated to this cause</p>
           <p class="description"> Located on Newbury Street, <strong>Toscana European Day Spa</strong> sits in a tranquil setting, much like the luxurious salons and spas in Europe. Upon entering, you'll be pampered by the best stylists, massage therapists and aestheticians in Boston. At Toscana, they exclusively use award-winning, European- and U.S.-made products, ranging from organic skin care to Goldwell and L'Oreal Paris hair products. Owner Doina Mandrila trained in Europe, where she learned her envied beauty secrets, and has been practicing skin care for more than 35 years. Now she brings her knowledge and talent back to the U.S., right here in Boston for your pleasure. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=TNT_MBradaric_Toscana"
                            target="_new">More Info</a></p>
           <table>
                  <tr>
                    <th> Toscana European Day Spa </th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 231 Newbury Street </td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=231+Newbury+Street,+Boston,+MA+02116&amp;sll=42.348223,-71.129528&amp;sspn=0.001074,0.002411&amp;ie=UTF8&amp;hq=&amp;hnear=231+Newbury+St,+Boston,+Suffolk,+Massachusetts+02116&amp;ll=42.350138,-71.081945&amp;spn=0.001074,0.002411&amp;z=19&amp;iwloc=r1&quot; target=&quot;_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Boston, MA 02116 </td>
                    <td><a href="http://www.toscanadayspanewbury.com" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
         </div>
       </li>
        
        
        </ul>
    </div>
</asp:Content>
