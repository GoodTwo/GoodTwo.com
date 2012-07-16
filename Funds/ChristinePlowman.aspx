<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="ChristinePlowman.aspx.cs" Inherits="Funds_ChristinePlowman" %>

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
                    <h2>Support Christine's Boston Marathon Fundraiser</h2>
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
        <div class="causeVideo"><img src="../Images/Christine-Plowman-main.jpg" width="391" height="313" /></div>
        <h3>
            Christine Plowman's Boston Marathon Run with Easter Seals:</h3>
      <p><strong>Have you heard?! I'm running the Boston Marathon!</strong></p>
<p class="cstmText">Many of my friends and family have heard me talk about beautiful, little Izzy. Izzy was born December 12, 2008 to my college roommate Kerrie and her husband Nick.  Through detection in Kerrie's 2nd trimester it was initially thought that Izzy would have a congenital heart defect. Symptoms following birth and a round of genetic testing confirmed that Izzy will live with a genetic condition called CHARGE Syndrome. Despite Izzy's multiple surgeries/procedures needed in her young age, and her limitations with hearing and sight, she is an incredibly beautiful and happy little girl with wild and vivacious red hair! She has started to sign and is very proud to show off that she is learning her colors. I run in honor of Izzy, partnering with the Easter Seals, to ensure that people (both children and adults) with disabilities have equal opportunities to live, learn, work and play.  The Easter Seals is instrumental in providing assistance for birth, injury and elderly disabilities in so many facets.  Their services are limitless, from offering a child a chance to attend summer camp where they learn that there are other children like them, to providing financial assistance to families to ensure they have access to the devices needed. My goal is to raise $5,000.  Will you be a part of my mission with the Easter Seals? Consider making a donation this holiday season in lieu of a gift!!! Your support, both emotionally and financially, is incredibly appreciated and I am so thankful! But don't stop there! Log onto the Easter Seals' website and learn how you can be a part of their ongoing mission!<br />
  <a href="http://ma.easterseals.com">http://ma.easterseals.com</a><br />
  <br />
  See you at the finish line!!!!<br />
  xoxo, Chrissy<br />
  <br />
  <strong>Fundraising Event is Set!!!</strong><br />
<br />
Shine up your bowling shoes!!!<br />
On Saturday, March 19th you'll have a chance to show off your bowling skills, participate in a Silent Auction and great raffles.  All in the name of fun for the Easter Seals!!!<br />Register as an individual or as a team at:<br />
<a href="http://www.marathonbowling.eventbrite.com">http://www.marathonbowling.eventbrite.com</a><br />
<br />
<strong>Training is in full force!!!</strong><br />
<br />
As the New Year approaches, we have begun ramping up miles!  Low temperatures aren't stopping us!  If you're out on the town on a Saturday morning, look for the FitCorp training group on Beacon Street and Comm Ave!!!</p>
<p><a href="http://www.easterseals.com/site/TR/Events/MADRMassachusettsTributes?pxfid=110785&amp;fr_id=1911&amp;pg=fund" target="_new" class="visitSite">visit website &raquo;</a>      </p>
      <div id="fb-root">
    </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="ChristinePlowman" numposts="10" width="370" publish_feed="true"></fb:comments>
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
