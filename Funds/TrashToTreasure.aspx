<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="trashtotreasure.aspx.cs" Inherits="Funds_trashtotreasure" %>

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
            <img src="../Images/Tr2Tr-logo.jpg" alt="Logo" />
            <div id="causeIntroContent">
          <div id="titleline">
                    <h2>
            Raise Money for Trash to Treasure Creative Reuse Center </h2>
                    <h3>
                South Florida</h3>
                </div>
                <p>Trash to Treasure is a non-profit organization that has a mission to locate clean, re-usable materials and redistribute these items as valuable educational and artistic resources.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><object width="391" height="313"><param name="movie" value="http://www.youtube.com/v/M3TyDFBQGE8?fs=1&amp;hl=en_US&amp;rel=0"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/M3TyDFBQGE8?fs=1&amp;hl=en_US&amp;rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="391" height="313"></embed></object></div>
        <h3>
            Note from Trash to Treasure</h3>
      <p>There exist an abundance of materials for all of us to share. We must all strive to overcome the erroneous perception that &quot;there is not enough&quot; in the world.</p>
      <p>With this thought in mind, please feel welcome to TAKE WHAT YOU WISH, without the need to horde, and be confident that each time you return, there will continue to be plenty for all.</p>
        <a href="http://www.trash2treasurefl.org" target="_new" class="visitSite">visit website &raquo;</a>
        <div id="fb-root">
  </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="trashtotreasure" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=Tr2Tr_YogaRosa"
                            target="_new" class="buyNow">Buy Now</a> $6.25 will be donated to this cause</p>
                <p class="description"> Yoga's all the rage, so what's all the hype about Iyengar? This style has been around for 65 years and is based on the correct alignment through the use of props such as blankets, blocks, and straps. Key benefits of the practice include building strength and endurance, increasing flexibility, reducing stress, and improving circulation, coordination, concentration and balance. Whether you're a seasoned yogi looking to deepen your practice, or you'd like to try Gentle Yoga as an introduction, the seasoned instructors at <strong>YogaRosa</strong> are ready to give you a taste of Iyengar with <strong>5 classes for $30!</strong> Snag this deal and you'll be unrolling your mat in no time. <em>Namaste</em>! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=Tr2Tr_YogaRosa"
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
                <h3> Puppets, Puzzles and Blocks for Tots (and Older): $10 for $25 Worth of Children's Products at Brighter Beginnings!</h3>
                <img src="../images/BrighterBeginnings.gif" alt="" />
                <p class="prices"> Price: $10<br />
                  Discount: 60%<br />
                  You Save: $15</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=Tr2Tr_BrighterBeg"
                            class="buyNow">Buy Now</a> $2.50 will be donated to this cause</p>
                <p class="description"> Children need to be entertained and stimulated. That's a fact. During their younger, cognitive years, they act as a sponge, taking in all new information and processing it. While you try your best to provide this stimulation and interaction, you can't accomplish this for every minute of the day. So for these other times, you should be sure to find the best interactive and educational toys you can to complement your teaching and we've found just the place to look: <strong>Brighter Beginnings</strong>! With toys perfect for newborns through ages eight and up, you'll be sure to find the perfect piece to share with your young one. From <strong>puppets, games </strong>and <strong>musical toys</strong> to <strong>flash cards, puzzles, blocks</strong> and more, their inventory seems never-ending! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=Tr2Tr_BrighterBeg"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Brighter Beginnings</th>
                  </tr>
                  <tr>
                    <td> <em>Website</em></td>
                    <td><a href="http://www.brighterbeginningstoys.com/" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
       <li>
         <div>
           <h3> $25 for a Discover Scuba Class at the Scuba Network! ($50 Value)</h3>
           <img src="../images/ScubaNetwork.jpg" alt="" />
           <p class="prices"> Price: $25<br />
             Discount: 50%<br />
             You Save: $25</p>
           <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=Tr2Tr_ScubaNet_FL"
                            class="buyNow">Buy Now</a> $5.00 will be donated to this cause</p>
           <p class="description"> You've always been intrigued by the aquatic life. What's it like to swim with the dolphins or explore the Great Coral Reef? However, you've never been quite brave enough to voyage into the sea and you certainly don't have the lung capacity to dive for that long. Well, let our deal with the <strong>Scuba Network</strong> change all that! For just <strong>$25</strong>, you'll have access to their <strong>Discover Scuba class</strong>, where you'll work with trained professionals to acclimate yourself underwater and learn the basics of scuba diving! For each class, <strong>all you need to bring is a bathing suit, towel </strong>and a desire to have fun… the Scuba Network brings everything else! Also, if you find yourself loving the scuba experience and wish to continue lessons toward certification, the $50 value will be credited toward a full certification course! So get over your fears and start experiencing underwater bliss! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=Tr2Tr_ScubaNet_FL"
                            target="_new">More Info</a></p>
           <table>
             <tr>
               <th> Scuba Network</th>
             </tr>
             <tr>
               <td class="firstTD"> 1801 Northeast 6th Street</td>
               <td><a href="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=1801+Northeast+6th+Street,+Pompano+Beach,+FL+33060-6538&sll=25.986968,-80.141827&sspn=0.011303,0.020943&gl=us&ie=UTF8&hq=&hnear=1801+NE+6th+St,+Pompano+Beach,+Broward,+Florida+33060&z=16"
                                    target="_new">Map / Directions &raquo;</a></td>
             </tr>
             <tr>
               <td> Pompano Beach, FL 33060</td>
               <td><a href="http://www.scubanetwork.com/" target="_new">Visit Website &raquo;</a></td>
             </tr>
           </table>
         </div>
       </li>
        
        
        </ul>
    </div>
</asp:Content>
