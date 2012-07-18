<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="freshprep.aspx.cs" Inherits="Funds_freshprep" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/urban-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>Fresh Prep</h2>
<h3> New York, NY</h3>
                </div>
                <p>Fresh Prep is a proven-effective hip-hop based curriculum designed to help struggling, underserved high school students pass their required New York State Regents exams and graduate. </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="../images/urban-main.jpg" width="391" height="313" /></div>
        <h3>Urban Arts Partnership - Fresh Prep:</h3>
      <p>Roughly 40% of NYC public school students do not graduate high school. 5 Regents exams are required for students to graduate and be able to attend college, and these exams continue to be an obstacle for students throughout New York. Title I (high poverty) public schools across the city struggle to provide youth with tools and resources to pass. Fresh Prep is an innovative student-centered curriculum that uses Hip-hop music to review the key content and skills tested on the New York State Regents Exams. Leveraging the appeal and mnemonic power of music, Fresh Prep's standards-aligned instruction builds the confidence, critical-thinking, and writing skills that students need to succeed on the Regents.</p>
      <p><a href="http://www.urbanarts.org" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="urbanartsptnrshp" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3> $10 for $20 Worth of Food and Drink at Butterfield 8</h3>
                <img src="../Images/butterfield-8.jpg" alt="" />
                <p class="prices"> Price: $10<br />
                  Discount: 50%<br />
                  You Save: $10</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=URBART_NY_Butter8"
                            target="_new" class="buyNow">Buy Now</a> $2.50 will be donated to this cause</p>
                <p class="description">Located downtown on East 38th Street is a <span class="caps">NYC</span> hot spot that blends great food, fine spirits &amp; good times &#8211; <b>Butterfield 8.</b> Boasting a sophisticated, yet unassuming crowd, Butterfield 8 is an ideal location for a business lunch, a casual after-work get-together, or a late night gathering of old and new friends. It also has a wide variety of HDTVs for sports fans. Intrigued? Well, our deal at Butterfield 8 gets you <b>$20 worth of food and drink</b> for just <b>$10!</b> Interested in their food? We&#8217;re big fans of their <b>Kobe Beef Sliders</b> ($15, Kobe Beef served on Mini Brioche Buns with White American Cheese and Sweet Thai Ketchup) and their <b>Garlic Shrimp Tortellini</b> ($16, Shrimp Sauteed in Garlic served with Spinach over Tri Color Tortellini in a White Wine Sauce). They have plenty of options, so be sure to check out the rest of their menu <a href="http://www.butterfield8nyc.com/menus.php">here</a>. They also have plenty of beers on tap and available, so you&#8217;ll have no problem finding the perfect liquid to match and wash down your meal! Check out their drink menu <a href="http://www.butterfield8nyc.com/menus.php?catid=2">here</a>. So if you&#8217;re in the market for a quintessential New York City meal and experience, look no further than Butterfield 8, where $10 gets you $20 worth of food and drink! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=URBART_NY_Butter8" target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Butterfield 8</th>
                  </tr>
                  <tr>
                    <td class="firstTD">5 East 38th Street</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=5+East+38th+Street+New+York+City,+NY+10016&amp;aq=&amp;sll=42.349632,-71.082101&amp;sspn=0.008944,0.019226&amp;ie=UTF8&amp;hq=&amp;hnear=5+E+38th+St,+New+York,+10016&amp;ll=40.751272,-73.981805&amp;spn=0.008762,0.019226&amp;z=16&amp;iwloc=r0" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>New York City, NY 10016</td>
                    <td><a href="http://www.butterfield8nyc.com/" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3>  $100 for a Full-Foil Highlight, Cut and Blowout at Confidence Beauty Salon & Spa</h3>
                <img src="../Images/confidence-beauty-salon.jpg" alt="" />
                <p class="prices"> Price: $100<br />
                  Discount: 50%<br />
                  You Save: $100</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=URBART_NY_ConfBeaut"
                            class="buyNow">Buy Now</a> $25.00 will be donated to this cause</p>
                <p class="description"> Hey ladies, you&#8217;ve been looking for an easy way to have professionally styled hair that radiates and draws the undivided attention of others, right? I mean, come on, who doesn&#8217;t want that? Well, we had this dream of yours in mind when we partnered with <b>Confidence Beauty Salon &amp; Spa</b> to bring you an incredible package. For just <b>$100,</b> you&#8217;ll receive a <b>full-foil highlight, cut and blowout!</b> Normally this would cost you <b>twice as much</b>, but instead, you can look like a celebrity &#8211; and act the part &#8211; for this low price! The salon is aptly named, as its team consists of very talented &amp; highly trained professionals and pride themselves on the 10+ years of experience each specialist has in his/her field and their confidence shows in the diversity of their treatments. Once your package is complete, you&#8217;ll be looking and feeling your very best and then, you&#8217;ll be feeling just as confident! So get that hair looking the way you&#8217;ve always dreamed at Confidence Beauty Salon &amp; Spa for only $100 <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=URBART_NY_ConfBeaut"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Confidence Beauty Salon & Spa</th>
                  </tr>
                  <tr>
                    <td class="firstTD">297 Third Avenue, 2nd Floor</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Confidence+Beauty+Salon+297+Third+Avenue+New+York,+NY+10010&amp;aq=&amp;sll=40.738585,-73.983192&amp;sspn=0.00917,0.019226&amp;g=297+Third+Avenue,+2nd+Floor,+New+York,+NY+10010&amp;ie=UTF8&amp;hq=Confidence+Beauty+Salon&amp;hnear=297+3rd+Ave,+New+York,+10010&amp;ll=40.738982,-73.9832&amp;spn=0.00917,0.019226&amp;z=16&amp;iwloc=A" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>New York, NY 10010</td>
                    <td><a href="http://www.confidencebeautysalon.com/">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3>  $60 for 2 Hours of Studio Time at Innovative Music</h3>
                <img src="../Images/innovative-music.jpg" alt="" />
                <p class="prices"> Price: $60<br />
                  Discount: 50%<br />
                  You Save: $60</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=URBART_NY_InnMusic"
                            class="buyNow">Buy Now</a> $15.00 will be donated to this cause</p>
                <p class="description">Located on W 37th Street in New York City, <b>Innovative Music</b> has the answer to those professional recording woes your band has been suffering. To land those high-profile gigs, you need to have your tracks laid down professionally with optimal sound quality. You can&#8217;t have your Black-Keys vibes sounding like a bad Hanson track, now can you? With our deal, you&#8217;ll receive <b>two hours of studio time</b> for just <b>$60</b> &#8211; normally, this time would run you a <b>$120</b> bill! At Innovative, their goal is help musicians reach their musical goals by recording, mixing and mastering their tracks and sounds. Don&#8217;t have those awesome jam sessions go unrecorded any longer! So take advantage of this offer and the experts at Innovative whose work will have you opening for Spinal Tap in no time.  <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=URBART_NY_InnMusic"
                            target="_new">More Info</a>                </p>
                <table>
                  <tr>
                    <th>Innovative Music</th>
                  </tr>
                  <tr>
                    <td class="firstTD">320 W 37th Street, #9A</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Innovative+Music+320+W+37th+Street+New+York,+NY+10018&amp;aq=&amp;sll=40.738982,-73.9832&amp;sspn=0.00917,0.019226&amp;ie=UTF8&amp;hq=Innovative+Music&amp;hnear=320+W+37th+St,+New+York,+10018&amp;ll=40.754377,-73.99322&amp;spn=0.009168,0.019226&amp;z=16&amp;iwloc=A" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>New York, NY 10018</td>
                    <td><a href="http://innovativemusic.us/">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
