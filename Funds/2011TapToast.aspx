<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="2011TapToast.aspx.cs" Inherits="Funds_2011TapToast" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/taptoast-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>2011 Tap Toast to Benefit the UNICEF Tap Project</h2>
<h3> Miami, FL</h3>
                </div>
                <p>Help provide a colorful future to children around the globe. Attend the 2011 Tap Toast "A Night of Giving" to benefit the UNICEF Tap Project on March 21, 2011 @ Taverna Opa South Beach 7PM. </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><iframe title="YouTube video player" width="391" height="313" src="http://www.youtube.com/embed/ngLUkYQUjHM" frameborder="0" allowfullscreen></iframe></div>
        <h3>World Water Crisis:</h3>
      <p>Globally 900 Million people are without access to safe drinking water; nearly half of those people are children. Each day 22K children die from preventable causes & the Tap Toast in conjunction with the UNICEF Tap Project wants to make that number zero!

Why water? Because water is a vital source of our survival. The human body is made up of 70% water and with the absence of safe drinking water our bodies can become plagued with water borne illnesses that can be fatal.

The 2011 Tap Toast's goal is to raise awareness of the world water crisis and fund programs that are implementing water sanitation efforts in countries like Haiti, Togo, Vietnam, Central African Republic, and Cote d'ivoire. With a single $1 we can provide safe drinking water to a child for 40 DAYS! 916 children perish each hour from causes we can take an active role in preventing; please support our mission to someday make that number zero. Visit <a href="http://inside.unicefusa.org/goto/taptoast">http://inside.unicefusa.org/goto/taptoast</a> to make a donation, each dollar helps to save a life. </p>
      <p><a href="http://www.tapproject.org" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="2011-Tap-Toast" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>$20 for 3 Group Dance Classes at CooLAM Dance Studio</h3>
                <img src="../Images/coolam.jpg" alt="" />
                <p class="prices"> Price: $20<br />
                  Discount: 56%<br />
                  You Save: $25</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=UNICEFTap_CoolAm"
                            target="_new" class="buyNow">Buy Now</a> $5.00 will be donated to this cause.</p>
                <p class="description">We think Lady Gaga put it best when she urged fans to &quot;Just dance,&quot; and we're here to bring you that option paired with a great deal at <strong>CooLAM Dance Studio</strong>! For a mere $20, you can partake in 3 group dance classes. With styles ranging from <strong>zumba</strong> to <strong>belly dancing</strong> to <strong>ballet</strong>, CooLAM's classes are unique, fun, and a great workout. Whether little Suzy's been bugging you to let her start <strong>tap</strong> lessons or you want to take some sensual <strong>tango</strong> lessons with you new special someone, CooLAM's got you covered! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=UNICEFTap_CoolAm" target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> CooLAM Dance Studio</th>
                  </tr>
                  <tr>
                    <td class="firstTD">3575 NE 207 Street #B4</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=3575+NE+207+Street+%23B4,+Aventura,+FL+33180&amp;sll=37.0625,-95.677068&amp;sspn=37.683309,79.013672&amp;ie=UTF8&amp;hq=&amp;hnear=3575+NE+207th+St,+Aventura,+Miami-Dade,+Florida+33180&amp;ll=25.969015,-80.1303&amp;spn=0.001307,0.002411&amp;z=19&amp;iwloc=r3" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Aventura, FL 33180</td>
                    <td><a href="http://www.coolamdancestudios.com/" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
          <li>
              <div>
                <h3> $25 for a 5-class card at YogaRosa</h3>
                <img src="../Images/yogarosa.jpg" alt="" />
                <p class="prices"> Price: $25<br />
                  Discount: 69%<br />
                  You Save: $55</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=UNICEFTap_YogaRosa"
                            class="buyNow">Buy Now</a> $6.25 will be donated to this cause.</p>
                <p class="description"> Yoga's all the rage, so what's all the hype about Iyengar? This style has been around for 65 years and is based on the correct alignment through the use of props such as blankets, blocks, and straps. Key benefits of the practice include building strength and endurance, increasing flexibility, reducing stress, and improving circulation, coordination, concentration and balance. Whether you're a seasoned yogi looking to deepen your practice, or you'd like to try Gentle Yoga as an introduction, the seasoned instructors at <strong>YogaRosa </strong>are ready to give you a taste of<strong> Iyengar </strong>with<strong> 5 classes for $25! </strong>Snag this deal and you'll be unrolling your mat in no time. <em>Namaste</em>! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=UNICEFTap_YogaRosa"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>YogaRosa</th>
                  </tr>
                  <tr>
                    <td class="firstTD">110 North Federal Highway # 304</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=yogarosa+110+North+Federal+Highway,+Hallandale+Beach,+FL+33009&amp;sll=25.986968,-80.141828&amp;sspn=0.001307,0.002411&amp;ie=UTF8&amp;hq=yogarosa&amp;hnear=110+N+Federal+Hwy,+Hallandale+Beach,+Broward,+Florida+33009&amp;ll=25.986995,-80.142195&amp;spn=0.001246,0.002411&amp;z=19&amp;iwloc=A" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Hallandale Beach, FL 33009</td>
                    <td><a href="http://yogarosa.com/">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $19 for a Manicure and Pedicure at Safar Miami</h3>
                <img src="../Images/safar-miami.jpg" alt="" />
                <p class="prices"> Price: $19<br />
                  Discount: 62%<br />
                  You Save: $31</p>
                <p class="buyNowHolder"> <a href="https://store.goodtwo.com/ShoppingCart.asp?ProductCode=UNICEFTap_Safar"
                            class="buyNow">Buy Now</a> $4.75 will be donated to this cause.</p>
                <p class="description">"<em>Life is too short to blend in</em>." You can't help but agree with this <strong>bold</strong> statement. So living in a city as vibrant and always-on-the-go as Miami, you need to stand out, looking and feeling your best. What better way to do that than getting a renown and beautifying <strong>manicure and pedicure</strong> at one of the area's <strong>top salons</strong>? Deal! With this deal, spend just <strong>$19</strong> <strong>(!)</strong> and get both a manicure AND a pedicure at <strong>Safar Miami</strong>. Normally, this deal is valued at <strong>$50</strong>, you'll be saving and you'll be able to allocate those funds elsewhere! So differentiate yourself immediately and look and feel great doing so! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=UNICEFTap_Safar"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Safar Miami</th>
                  </tr>
                  <tr>
                    <td class="firstTD">22 Washington Avenue</td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=safar+salon+south+beach&amp;sll=25.769286,-80.135484&amp;sspn=0.003135,0.006539&amp;g=22+Washington+Ave,+Miami+Beach,+Miami-Dade,+Florida+33139&amp;ie=UTF8&amp;t=h&amp;z=18&amp;iwloc=A" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Miami Beach, FL 33139</td>
                    <td><a href="http://www.safarmiami.com/">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
