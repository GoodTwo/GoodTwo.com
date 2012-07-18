<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="TNT_McGinn.aspx.cs" Inherits="Funds_TNT_McGinn" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/TNT-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>Jen's Half Marathon Fundraiser</h2>
<h3> Boston, MA</h3>
                </div>
                <p>I'm raising funds for the Leukemia &amp; Lymphoma Society :) </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="../Images/TNT_JenniferMcGinn-main.jpg" width="391" height="313" /></div>
        <h3>Help Us Support the Leukemia & Lymphoma Society:</h3>
      <p>With no prior running experience, and having been a smoker for 15 years, I'm now training to run a half marathon to raise money for the Leukemia &amp; Lymphoma Society. Even though there is no cure for these diseases, the treatments saved my life as an infant, extended my step-sister's life several years, and are benefitting my brother-in-law now. I'd appreciate your support. You can read more about these stories here:</p>
      <p><a href="http://pages.teamintraining.org/ma/lkplacid11/jmcginn" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="TNT_McGinn" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>$59 for Same-Day Pickup and Detailing at Automotive Services of Boston!</h3>
                <img src="../Images/asob.jpg" alt="" />
                <p class="prices"> Price: $59<br />
                  Discount: 68%<br />
                  You Save: $120</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=TNT_McGinn_ASOB"
                            target="_new" class="buyNow">Buy Now</a> $7.00 will be donated to this cause.</p>
                <p class="description">There comes a time when we must acknowledge our limits, when we must face our own shortcomings, when, steely-eyed and grim, we must look out the window and accept that our mortal fingers may never graze the sky. There comes a time when we must get the car serviced. The fact is, you can only put it off for so long before every odd clunk sounds like an accident pending – sooner or later you'll need an expert touch to smooth your ride. With today's deal – one of our <b>Best of Boston featured deals</b> – <b>Automotive Services of Boston</b> will give your car the care it needs. This family-run business puts a personal face on auto repair, combining the latest technology and technique with the honest candor of a family shop. You can rest assured that with <b>Automotive Services of Boston</b>, your vehicle will be in responsible hands. Today's deal offers a same-day pickup and detail of your car for just <b>$59!</b> Normally <b>$179</b>, this includes the following services:<br />
                  <br />

• Trunk/interior vacuuming<br>

• Cleaning and conditioning of all leather and vinyl<br>

• Repair of window/door jams<br>

• Interior shampooing – rugs, seats, and mats!<br>

• Liquid hand wax, with paste wax for an additional $20<br>

• Full removal of bugs, sap, tar, and all other blemishes<br>

• Exterior compound, polish, and wax<br>
<br />
No one else offers this level of service at such a discount – so take a deep breath, and don't hesitate: it's time to care for your car. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=TNT_McGinn_ASOB" target="_new">More Info</a><br />
</p>
                <table>
                  <tr>
                    <th> Automotive Services of Boston</th>
                  </tr>
                  <tr>
                    <td class="firstTD">55 Pond Street</td>
                    <td><a href="http://maps.google.com/maps?q=55+Pond+Street,+Waltham,+Massachusetts+02451&amp;ie=UTF8&amp;hl=en&amp;hq=&amp;hnear=55+Pond+St+Ct,+Waltham,+Middlesex,+Massachusetts+02451&amp;t=h&amp;z=16" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Waltham, MA 02451</td>
                    <td><a href="http://www.asoboston.com/" target="_new">Visit Website &raquo;</a></td>
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
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=TNT_McGinn_UrbanSpoon"
                            class="buyNow">Buy Now</a> $7.00 will be donated to this cause.</p>
                <p class="description"> We're all quite familiar with spring cleaning. As soon as the season hits, you suddenly have the urge to just whip out the broom and Lysol and go to town. However, these strong feelings and this burst of energy doesn't always carry over into the other seasons – like winter, for instance. But don't worry! You can have your place looking just as clean as the spring season with today's CoupMe deal – just <strong>$39</strong> gets you <strong>3 hours of household cleaning</strong> from <strong>Urban Spoon</strong>! Normally, cleaning can take up large chunks of time that could have been spent doing other, enjoyable activities – playing with your children, catching up on <em>Project Runway</em>, etc. Unless the less-than-aromatic scents of Pinesol float your boat, cleaning just isn't fun. So let the professionals at Urban Spoon take over. Sweeping, moping, wiping down furniture, dusting, glass cleaning, cleaning bathrooms and vacuuming – these professionals do it all! Normally, the 3-hour cleaning session costs upward of <strong>$85</strong>, which means that today's CoupMe deal not only saves you time but it also <strong>saves you more than 50%</strong>! The reign of dust balls, dirty windows and oddly placed toys is over! So stop fantasizing over the cleanliness of the abodes you see on TV and in movies. Start saving yourself the hassle of cleaning – as well as some money and time – with today's CoupMe deal. Only $39 for 3 hours of cleaning from Urban Spoon! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=TNT_McGinn_UrbanSpoon"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Urban Spoon Cleaning &amp; Catering</th>
                  </tr>
                  <tr>
                    <td class="firstTD">Will travel up to a 15-mile radius outside of Boston. </td>
                  </tr>
                  <tr>
                    <td class="firstTD"><a href="http://www.urbanspooncatering.com/">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
          </li>
            <li>
              <div>
                <h3> $15 for $30 Worth of Mexican Eats at  Jose's!</h3>
                <img src="../Images/joses.jpg" alt="" />
                <p class="prices"> Price: $15<br />
                  Discount: 50%<br />
                You Save: $15</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=TNT_McGinn_Joses"
                            class="buyNow">Buy Now</a> $3.75 will be donated to this cause.</p>
                <p class="description">Located in North Cambridge, Jose's prides itself on offering homemade cuisine that's been passed down through family generations. The owner was raised on home cooked food prepared from fresh local ingredients, so that's exactly what you're getting when you dine with Jose's! Munch on some <strong>salsa</strong> or <strong>guac &amp; chips</strong> as you take your time with their extensive yet oh so enticing menu. Dig into their <strong>chicken, shrimp, steak</strong> or <strong>veggie fajitas</strong> or infamous <strong>Mexican Flag Enchiladas</strong>, sporting their three colors with salsa, cheese, and tomatillo sauce. Craving something more traditional? Try something &quot;From My Mother's Kitchen&quot; like the <strong>Tamales del Dia</strong> with different fillings each day! Don't forget to dip into some dessert (like the homemade flan!) too! So grab your friends and head to Jose's for some delightful margaritas, homemade guacamole, and traditional Mexican food. You get <strong>$30 worth of food</strong> for just <strong>$15</strong>. Muy delicioso! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=TNT_McGinn_Joses"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Jose's</th>
                  </tr>
                  <tr>
                    <td class="firstTD">131 Sherman Street</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=131+Sherman+Street,+Cambridge,+MA+02140&amp;sll=42.36403,-71.053624&amp;sspn=0.001074,0.002411&amp;ie=UTF8&amp;hq=&amp;hnear=131+Sherman+St,+Cambridge,+Middlesex,+Massachusetts+02140&amp;ll=42.390185,-71.132848&amp;spn=0.001074,0.002411&amp;z=19&amp;iwloc=r0" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Cambridge, MA 02140</td>
                    <td><a href="http://www.josesmex.com/dnn08/Home/tabid/36/Default.aspx" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
