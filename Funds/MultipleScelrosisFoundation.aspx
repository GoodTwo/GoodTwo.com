<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="TNT_DonGerolamo.aspx.cs" Inherits="Funds_tnt_dongerolamo" %>

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
            <img src="../Images/msf-logo.jpg" alt="Logo" />
            <div id="causeIntroContent">
          <div id="titleline">
                    <h2>
            Shop for a Cause, Make a Difference for Someone with Multiple Sclerosis</h2>
                    <h3>
                Fort Lauderdale, FL</h3>
                </div>
                <p>Multiple Sclerosis affects over 400,000 people in the United States alone; in recent years this chronic disease has been diagnosed at much younger ages.  The Multiple Sclerosis Foundation strives to makes peoples lives easier day by day.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><iframe title="YouTube video player" class="youtube-player" type="text/html" width="391" height="313" src="http://www.youtube.com/embed/TNPQFWk8fqs" frameborder="0" allowFullScreen></iframe></div>
        <h3>
            About The Multiple Sclerosis Foundation</h3>
      <p>The Multiple Sclerosis Foundation, based in Ft. Lauderdale, Florida, offers free services to people living with this chronic illness across the country.  Funded solely on private donations and grants, the Foundation runs 140 support groups, educational programs, a toll free hotline, yoga, respite and home healthcare.  The Foundation is one of the few non-profits that operates a call center 7 days a week year round.  This allows us to use 100% of your donations for our programs.</p>
        <a href="www.msfocus.org" target="_new" class="visitSite">visit website &raquo;</a>
        <div id="fb-root">
  </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="multiplesclerosisfoundation" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3> $25 for a 5-Class Card at YogaRosa ($80 Value)</h3>
                <img src="../images/YogaRosa.jpg" alt="" />
                <p class="prices"> Price: $25<br />
                  Discount: 69%<br />
                  You Save: $55</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=MultScl_YogaRosa"
                            target="_new" class="buyNow">Buy Now</a> $6.25 will be donated to this cause</p>
                <p class="description"> Yoga's all the rage, so what's all the hype about Iyengar? This style has been around for 65 years and is based on the correct alignment through the use of props such as blankets, blocks, and straps. Key benefits of the practice include building strength and endurance, increasing flexibility, reducing stress, and improving circulation, coordination, concentration and balance. Whether you're a seasoned yogi looking to deepen your practice, or you'd like to try Gentle Yoga as an introduction, the seasoned instructors at <strong>YogaRosa</strong> are ready to give you a taste of Iyengar with <strong>5 classes for $30!</strong> Snag this deal and you'll be unrolling your mat in no time. <em>Namaste</em>! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=MultScl_YogaRosa"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> YogaRosa </th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 110 North Federal Highway # 304</td>
                    <td><a href="http://maps.google.com/maps?client=safari&q=110+North+Federal+Highway+%23+304,+Hallandale+Beach,+FL+33009&oe=UTF-8&ie=UTF8&hq=&hnear=110+N+Federal+Hwy,+Hallandale+Beach,+Broward,+Florida+33009&gl=us&z=16" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Hallandale Beach, FL 33009</td>
                    <td><a href="http://yogarosa.com/" target="_new">Visit Website &raquo;</a></td>
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
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=MultScl_AromaRidge"
                            class="buyNow">Buy Now</a> $3.75 will be donated to this cause</p>
                <p class="description"> Are you still struggling to find that perfect cup of coffee? Whether it's something to give you that extra jolt before the workday begins or a rich blend to pair with your weekend newspaper ritual, a cup o' Joe can either make or break your day. And that's exactly how <strong>Aroma Ridge</strong> transpired: the passion for the most perfect cup of coffee. Now, 20 years later, Aroma Ridge has transformed into a small, family-owned business, providing a plethora of the finest mountain grown gourmet coffees, quality teas, accessories and more to enjoy in your very own home. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=MultScl_AromaRidge"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Aroma Ridge</th>
                  </tr>
                  <tr>
                    <td> <em>Website</em></td>
                    <td><a href="http://www.aromaridge.com" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
       <li>
         <div>
           <h3> $37 for 5 Days of Lunches and Dinners Prepared and Delivered to You By Fit2Go! ($75 Value)</h3>
           <img src="../images/Fit2Go.jpg" alt="" />
           <p class="prices"> Price: $37<br />
             Discount: 51%<br />
             You Save: $38</p>
           <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=Multscl_Fit2Go"
                            class="buyNow">Buy Now</a> $9.25 will be donated to this cause</p>
           <p class="description"> Let's face it, when you wake up and when you come after work are two of the least likely times that you actually want to make food. Making lunch always seems so tedious, since you're not even going to eat it for another four or five hours. And then, once you get home, you're drained from your day at work and the last thing you want to do it stand at a stove and stir or just even stand up. So for those that echo these sentiments, take advantage of our deal with <strong>Fit2Go</strong>, where you can have <strong>5 days of lunches and dinners prepared and delivered to you</strong> for just <strong>$37</strong>! These five days must consecutive during a work week (Monday through Friday). Normally, this deal is <strong>valued at $75</strong>, so you're <strong>saving more than 50%</strong>! Afraid they won't have anything you like? Fear not! Check out their extensive menu here! So purchase this deal, kick back and let someone do your hard labor! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=Multscl_Fit2Go"
                            target="_new">More Info</a></p>
           <table>
             <tr>
               <th> Fit2Go </th>
             </tr>
             <tr>
               <td> <em>Website</em></td>
               <td><a href="http://www.fit2gomeal.com/en/order_preview.asp" target="_new">Visit Website &raquo;</a></td>
             </tr>
           </table>
         </div>
       </li>
        
        
        </ul>
    </div>
</asp:Content>
