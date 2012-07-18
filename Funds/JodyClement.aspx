<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="JodyClement.aspx.cs" Inherits="Funds_JodyClement" %>

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
                    <h2>Support Jody's Boston Marathon Fundraiser</h2>
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
        <div class="causeVideo"><img src="../Images/Jody-Clement-main.jpg" width="391" height="313" /></div>
        <h3>
            Run for Mitchell Clement (My Inspiration):</h3>
      <p>Hi everyone,<br />
      <br />
      Easter Seals has provided help with Mitchell's daily therapy, and this has made a difference in his daily life skills. Easter Seals has direct service to Children and Adults with disabilities. Mitchell's favorite is his therapeutic swim. If you would like to follow my progress during the Marathon on April 18, 2011. Go on line via <a href="http://www.bostonmarathon.org">http://www.bostonmarathon.org</a> and type in my name.<br />
      <br />
      Thank you all for your support.<br />
      Best Regards, Jody</p>
      <p><a href="http://www.easterseals.com/site/TR/Events/MADRMassachusettsTributes?pxfid=110825&amp;fr_id=1911&amp;pg=fund" target="_new" class="visitSite">visit website &raquo;</a>      </p>
      <div id="fb-root">
    </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="JodyClement" numposts="10" width="370" publish_feed="true"></fb:comments>
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
