<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="TNT_jeannewescoat.aspx.cs" Inherits="Funds_tnt_jeannewescoat" %>

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
            Capital of Texas Triathlon</h2>
                    <h3>
                Jeanne Wescoat - Wichita, KS</h3>
                </div>
                <p>The Leukemia & Lymphoma Society's Team In Training (TNT) is the world's leading sports charity training program. TNT's dynamic, hands-on training program enables participants to realize their dream of completing a marathon, half marathon, triathlon, century ride or hike adventure. </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img height="313" src="../images/tnt.jpg" alt="" /></div>
        <h3>
            Note from Jeanne Wescoat</h3>
      <p>The Leukemia &amp; Lymphoma Society's Team In Training (TNT) is the world's leading sports charity training program. TNT's dynamic, hands-on training program enables participants to realize their dream of completing a marathon, half marathon, triathlon, century ride or hike adventure. <br />
        Body: Did you know that every 4 minutes someone is diagnosed with a blood cancer? Every ten minutes someone dies from a blood cancer. <br />
        <br />
        I am hoping to help the Leukemia &amp; Lymphoma Society (LLS) change these statistics by participating in their Team In Training program. TNT participants raise funds to help find better therapies and cures for patients with cancer. <br />
        <br />
        My goal is to raise $2,500 for this cause. I hope you will join me in my fundraising goal. A simple donation can be made by going to my website: <a href="http://pages.teamintraining.org/ks/txtri11/jwescoat">http://pages.teamintraining.org/ks/txtri11/jwes...</a> . Every donation makes a difference. <br />
      </p>
        <a href="http://pages.teamintraining.org/ks/txtri11/jwescoat" target="_new" class="visitSite">visit website &raquo;</a>
        <div id="fb-root">
  </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="jeannewescoat" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3> Puppets, Puzzles and Blocks for Tots (and Older): $10 for $25 Worth of Children's Products at Brighter Beginnings!</h3>
                <img src="../images/BrighterBeginnings.gif" alt="" />
                <p class="prices"> Price: $10<br />
                  Discount: 60%<br />
                  You Save: $15</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=TNT_JeanneWescoat_BrighterBeg"
                            class="buyNow">Buy Now</a> $2.50 will be donated to this cause</p>
                <p class="description"> Children need to be entertained and stimulated. That's a fact. During their younger, cognitive years, they act as a sponge, taking in all new information and processing it. While you try your best to provide this stimulation and interaction, you can't accomplish this for every minute of the day. So for these other times, you should be sure to find the best interactive and educational toys you can to complement your teaching and we've found just the place to look: <strong>Brighter Beginnings</strong>! With toys perfect for newborns through ages eight and up, you'll be sure to find the perfect piece to share with your young one. From <strong>puppets, games </strong>and <strong>musical toys</strong> to <strong>flash cards, puzzles, blocks</strong> and more, their inventory seems never-ending! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=TNT_JeanneWescoat_BrighterBeg"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Brighter Beginnings</th>
                  </tr>
                  <tr>
                    <td><em>Website</em></td>
                    <td><a href="http://www.brighterbeginningstoys.com/" target="_new">Visit Website &raquo;</a></td>
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
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=TNT_JeanneWescoat_Aroma"
                            class="buyNow">Buy Now</a> $3.75 will be donated to this cause</p>
                <p class="description"> Are you still struggling to find that perfect cup of coffee? Whether it's something to give you that extra jolt before the workday begins or a rich blend to pair with your weekend newspaper ritual, a cup o' Joe can either make or break your day. And that's exactly how <strong>Aroma Ridge</strong> transpired: the passion for the most perfect cup of coffee. Now, 20 years later, Aroma Ridge has transformed into a small, family-owned business, providing a plethora of the finest mountain grown gourmet coffees, quality teas, accessories and more to enjoy in your very own home. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=TNT_JeanneWescoat_Aroma"
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
