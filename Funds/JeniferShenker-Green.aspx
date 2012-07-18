<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="JeniferShenker-Green.aspx.cs" Inherits="Funds_JeniferShenker_Green" %>

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
            <img src="../Images/easterseals-logo.gif" alt="Logo" />
            <div id="causeIntroContent">
          <div id="titleline">
                    <h2>Support Jenifer's Boston Marathon Fundraiser</h2>
                    <h3>
            Massachusetts</h3>
                </div>
                <p>Easter Seals provides services to ensure that children and adults with disabilities have equal opportunities to live, learn, work and play.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="../Images/no-image-available-main.jpg" width="391" height="313" /></div>
        <h3>
            Jenifer Shenker-Greene Easter Seals Campaign for Boston Marathon 2011:</h3>
      <p>To all of my friends and colleagues -<br />
        <br />
        As most of you know in January of 2010 I attempted my first Half Marathon. The training was tough around my work schedule but the feeling of accomplishment as I crossed the finish line was great. In 2011 I have decided to take an even greater challenge and have decided to attempt my first full Marathon. As I have begun my training the getting back into shape has been great for my body, mind and soul ... I decided that the only thing that could make this experience even better was if I could somehow do something to help others as well. My mother, Barbara Shenker (A truly awesome lady), was recently hired as the director of Development for the Massachusettes chapter of Easter Seals. I have decided to join my mother in her fundraising endeavors and on April 18, 2011 will be running the Boston Marathon for Easter Seals. <br />
      I'll be doing the running but I need a little help from all of you to reach my fundraising goal of $5,000.<br />
      For those of you who have heard of Easter Seals but are not familiar with all of the incredible work that they do...Easter Seals has been helping people with disabilities and special needs, and their families, live better lives for nearly 90 years. Easter Seals' mission is to provide Services to insure that Adults and Children with disabilities have equal opportunities to live, learn, work and play. Easter Seals offers a range of rehabilitation services, job placement programs, technology training and summer camp getaways for kids. Easter Seals empowers people with all types of disabilities to reach their full potential and lead productive lives. Remember no donation is too small (or too large)! Donate online now or send me an email if you'd rather send a check: <a href="mailto:Niferstgmngr@gmail.com">Niferstgmngr@gmail.com</a>.<br />
      <br />
      Thanks for your generosity<br />
      Jenifer Shenker-Greene</p>
      <p><a href="http://www.easterseals.com/site/TR/Events/MADRMassachusettsTributes?pxfid=111376&amp;fr_id=1911&amp;pg=fund" target="_new" class="visitSite">visit website &raquo;</a>      </p>
      <div id="fb-root">
    </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="JeniferShenker-Green" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3> Offer1</h3>
                <img src="../Images/offer1image.gif" alt="" />
                <p class="prices"> Price: $xx<br />
                  Discount: xx%<br />
                You Save: $xx</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/"
                            target="_new" class="buyNow">Buy Now</a> $X.XX will be donated to this cause</p>
                <p class="description"> Offer Description here. <a href="http://store.goodtwo.com/"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th>Merchant Name</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> Street Address</td>
                    <td><a href="http://maps.google.com/" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> City, State, Zip Code</td>
                    <td><a href="http://www.merchantsite.com" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
               <li>
                 <div>
                   <h3> Offer2</h3>
                   <img src="../Images/offer2image.gif" alt="" />
                   <p class="prices"> Price: $xx<br />
                     Discount: xx%<br />
                     You Save: $xx</p>
                   <p class="buyNowHolder"> <a href="http://store.goodtwo.com/"
                            target="_new" class="buyNow">Buy Now</a> $X.XX will be donated to this cause</p>
                   <p class="description"> Offer Description here. <a href="http://store.goodtwo.com/"
                            target="_new">More Info</a></p>
                   <table>
                     <tr>
                       <th>Merchant Name</th>
                     </tr>
                     <tr>
                       <td class="firstTD"> Street Address</td>
                       <td><a href="http://maps.google.com/" target="_new"> Map / Directions &raquo;</a></td>
                     </tr>
                     <tr>
                       <td> City, State, Zip Code</td>
                       <td><a href="http://www.merchantsite.com" target="_new">Visit Website &raquo;</a></td>
                     </tr>
                   </table>
                 </div>
               </li> 
        
        </ul>
    </div>
</asp:Content>
