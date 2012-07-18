<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="vancortlandt.aspx.cs" Inherits="Funds_vancortlandt" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/vancortlandt-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>
            Raising Funds for Spring 2011 Programs</h2>
                    <h3>
New York, NY</h3>
                </div>
                <p> The Friends of Van Cortlandt Park (FVCP)are dedicated to the conservation and improvement of Van Cortlandt Park.  FVCP is Van Cortlandt Parks' primary free educational organization, delivering educational and stewardship programs for over 3,500 children and adults of all ages, educational levels, ethnicities, and backgrounds each year.  </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="../images/vancortlandt-main.jpg" width="391" height="313" /></div>
        <h3>
            Friends of Van Cortlandt Park:</h3>
      <p>Friends of Van Cortlandt Park (FVCP) was founded in 1992 by Bronx resident Felicity Nitz in response to a New York Times article describing the impacts of declining NYC Department of Parks and Recreation (NYC Parks) budgets on parks like Van Cortlandt that lacked wealthy benefactors or an organized network of local support. She brought together neighbors and friends, and from a small beginning, for eighteen years FVCP has grown to play an increasing role in maintenance and community programming for Van Cortlandt Park.  Each year FVCP generates thousands of hours of volunteer support for park maintenance, trains thousands of young people in environmental stewardship, and offers community programs to promote fitness and environmental action. </p>
      <p>From an initial project involving a small group  of students who helped pick up litter and clear brush, FVCP now provides a wide variety of educational, stewardship and community benefit programs including an accredited training program for NYC teachers, environmental internships during the school year for teens, after-school programs for elementary, middle-school and high school students , forest and trail restoration teams and a summer employment program which introduces young people to environmental and green jobs as a possible career path. In addition, FVCP's community composting and gardening project provides fresh local produce for a neighborhood non-profit to use in their meals program.</p>
<p> <a href="http://www.vancortlandt.org" target="_new" class="visitSite">visit website &raquo;</a>      </p>
      <div id="fb-root">
  </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="vancortlandt" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>10 for $20 Worth of Food and Drink at Butterfield 8</h3>
                <img src="../Images/butterfield8.jpg" alt="" />
                <p class="prices"> Price: $10<br />
                  Discount: 50%<br />
                  You Save: $20</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=vancortlandt_butterfield8"
                            target="_new" class="buyNow">Buy Now</a> $2.50 will be donated to this cause</p>
                <p class="description">Located downtown on East 38th Street is a <span class="caps">NYC</span> hot spot that blends great food, fine spirits &amp; good times &#8211; <b>Butterfield 8.</b> Boasting a sophisticated, yet unassuming crowd, Butterfield 8 is an ideal location for a business lunch, a casual after-work get-together, or a late night gathering of old and new friends. It also has a wide variety of HDTVs for sports fans. <br />
  <br />
Intrigued? Well, our deal at Butterfield 8 gets you <b>$20 worth of food and drink</b> for just <b>$10!</b> Interested in their food? We&#8217;re big fans of their <b>Kobe Beef Sliders</b> ($15, Kobe Beef served on Mini Brioche Buns with White American Cheese and Sweet Thai Ketchup) and their <b>Garlic Shrimp Tortellini</b> ($16, Shrimp Sauteed in Garlic served with Spinach over Tri Color Tortellini in a White Wine Sauce). They have plenty of options, so be sure to check out the rest of their menu <a href="http://www.butterfield8nyc.com/menus.php">here</a>. They also have plenty of beers on tap and available, so you&#8217;ll have no problem finding the perfect liquid to match and wash down your meal! Check out their drink menu <a href="http://www.butterfield8nyc.com/menus.php?catid=2">here</a>. <br /> <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=vancortlandt_butterfield8" target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Butterfield 8</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 5 East 38th Street</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=5+East+38th+Street+New+York+City,+NY+10016&amp;aq=&amp;sll=42.349632,-71.082101&amp;sspn=0.008944,0.019226&amp;ie=UTF8&amp;hq=&amp;hnear=5+E+38th+St,+New+York,+10016&amp;ll=40.751272,-73.981805&amp;spn=0.008762,0.019226&amp;z=16&amp;iwloc=r0" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> New York City, NY 10016</td>
                    <td><a href="http://www.butterfield8nyc.com" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $100 for a Full-Foil Highlight, Cut and Blowout at Confidence Beauty Salon &amp; Spa</h3>
                <img src="../Images/confidencesalon.jpg" alt="" />
                <p class="prices"> Price: $100<br />
                  Discount: 50%<br />
                  You Save: $100</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=vancortlandt_confidence"
                            class="buyNow">Buy Now</a> $25.00 will be donated to this cause</p>
                <p class="description"> <b>Confidence Beauty Salon &amp; Spa</b> to bring you an incredible package. For just <b>$100,</b> you&#8217;ll receive a <b>full-foil highlight, cut and blowout!</b> Normally this would cost you <b>twice as much</b>, but instead, you can look like a celebrity &#8211; and act the part &#8211; for this low price! <br />
  <br />
The salon is aptly named, as its team consists of very talented &amp; highly trained professionals and pride themselves on the 10+ years of experience each specialist has in his/her field and their confidence shows in the diversity of their treatments. Once your package is complete, you&#8217;ll be looking and feeling your very best and then, you&#8217;ll be feeling just as confident! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=vancortlandt_confidence"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Confidence Beauty Salon &amp; Spa</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 297 Third Avenue, 2nd Floor</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Confidence+Beauty+Salon+297+Third+Avenue+New+York,+NY+10010&amp;aq=&amp;sll=40.738585,-73.983192&amp;sspn=0.00917,0.019226&amp;g=297+Third+Avenue,+2nd+Floor,+New+York,+NY+10010&amp;ie=UTF8&amp;hq=Confidence+Beauty+Salon&amp;hnear=297+3rd+Ave,+New+York,+10010&amp;ll=40.738982,-73.9832&amp;spn=0.00917,0.019226&amp;z=16&amp;iwloc=A"
                                    target="_new">Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> New York, NY 10010</td>
                    <td><a href="http://www.confidencebeautysalon.com/">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
       <li>
         <div>
           <h3> $15 for $30 Worth of Gourmet Coffees, Teas and More at Aroma Ridge!</h3>
           <img src="../images/AromaRidge.jpg" alt="" />
           <p class="prices"> Price: $15<br />
             Discount: 50%<br />
             You Save: $15</p>
           <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=vancortlandt_Aroma"
                            class="buyNow">Buy Now</a> $3.75 will be donated to this cause</p>
           <p class="description"> Are you still struggling to find that perfect cup of coffee? Whether it's something to give you that extra jolt before the workday begins or a rich blend to pair with your weekend newspaper ritual, a cup o' Joe can either make or break your day. And that's exactly how <strong>Aroma Ridge</strong> transpired: the passion for the most perfect cup of coffee. Now, 20 years later, Aroma Ridge has transformed into a small, family-owned business, providing a plethora of the finest mountain grown gourmet coffees, quality teas, accessories and more to enjoy in your very own home. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=vancortlandt_Aroma"
                            target="_new">More Info</a></p>
           <table>
             <tr>
               <th> Aroma Ridge</th>
             </tr>
             <tr>
               <td><em>Website</em></td>
               <td><a href="http://www.aromaridge.com" target="_new">Visit Website &raquo;</a></td>
             </tr>
           </table>
         </div>
       </li>
        
        
        </ul>
    </div>
</asp:Content>
