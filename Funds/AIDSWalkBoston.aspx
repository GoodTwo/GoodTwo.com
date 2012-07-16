<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="AIDSWalkBoston.aspx.cs" Inherits="Funds_aidswalkboston" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/AIDSwb-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>
            AIDS Walk Boston</h2>
                    <h3>
        Boston, MA</h3>
                </div>
                <p> Through a supportive effort between staff and hundreds AIDS Action volunteers we provide support services for people living with HIV and AIDS; educate the public and health officials; and advocate for fair and effective AIDS policy at the city, state and federal level.</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><iframe title="YouTube video player" width="391" height="313" src="http://www.youtube.com/embed/3IwAo2Jwwjs" frameborder="0" allowfullscreen></iframe></div>
        <h3>
            AIDS Action Committee:</h3>
      <p>&quot;The only way to end this epidemic is by treating the whole person, not the disease, and by attacking its root causes: racism, sexism, homophobia, transphobia, poverty, and violence.&quot; <br />
      —Rebecca Haag, President &amp; CEO, AIDS Action Committee</p>
      <p>Founded in 1983, AIDS Action Committee of Massachusetts, Inc. (AAC), is New England's first and largest AIDS service organization. AAC's mission is to stop the epidemic and related health inequities by eliminating new infections, maximizing healthier outcomes of those infected and at risk, and attacking the root causes of HIV/AIDS. AAC accomplishes this mission by providing services for men, women, and children living with AIDS and HIV; educating the public and health professionals about how to prevent HIV transmission in accordance with harm reduction principles; and advocating for fair and effective AIDS policy at the city, state, and federal levels. AAC also provides targeted outreach to those most vulnerable to HIV infection. In 2010, AAC merged with Cambridge Cares About AIDS to more efficiently deliver AIDS services in the Greater Boston area and expand its capacity for social justice work aimed at reducing the disparities among those infected and affected by HIV/AIDS. AAC runs the only statewide AIDS/STD Hotline (1-800-235-2331) and Hepatitis Hotline (1-888-443-4372). All Hotlines offer multilingual support. Free and confidential rapid HIV testing and counseling, and clean needle exchange is also available.</p>
        <a href="http://www.aac.org" target="_new" class="visitSite">visit website &raquo;</a>
        <div id="fb-root">
  </div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="aidswalkboston" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3>$35 for a 1-Hour Massage at Republic of Wellness! ($80 Value)</h3>
                <img src="../Images/republicofwellness.jpg" alt="" />
                <p class="prices"> Price: $35<br />
                  Discount: 56%<br />
                  You Save: $45</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=AIDSwb_RepofWell"
                            target="_new" class="buyNow">Buy Now</a> $8.75 will be donated to this cause</p>
                <p class="description">Located on the Southern Artery in Quincy, the <strong>Republic of Wellness</strong> specializes in pain relief, much to your pleasure! The well-trained and experienced therapists there believe that our bodies have the natural ability to heal themselves and through the use of effective non-invasive therapies, they create possibilities for positive changes to occur on your body. With our deal, you'll experience one of the best therapeutic massages around. During your session, the therapist will use a number of different techniques, all tailored to your needs. Before each treatment, you and your therapist will discuss areas of discomfort and focus and determine the best course of treatment. The massages offered include <strong>Deep Tissue, Migraine and Sinus, Swedish, Myofascial, Chair and more!</strong> Your therapist will help you determine the best one to relieve any nagging holiday stress! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=AIDSwb_RepofWell" target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Republic of Wellness</th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 792 Southern Artery</td>
                    <td><a href="http://maps.google.com/maps?client=safari&q=792+Southern+Artery,+Quincy,+MA+02186&oe=UTF-8&ie=UTF8&hl=en&hq=&hnear=792+Southern+Artery,+Quincy,+Norfolk,+Massachusetts+02169&z=16" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Quincy, MA 02186</td>
                    <td><a href="http://www.republicofwellness.com/Home/1/default.aspx" target="_new">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
       <li>
          <div>
                <h3> $30 for Three Sessions at Acupuncture Together ($105 Value)</h3>
                <img src="../Images/acupuncturetogether.jpg" alt="" />
                <p class="prices"> Price: $30<br />
                  Discount: 71%<br />
                  You Save: $75</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=AIDSwb_acupuncture"
                            target="_new" class="buyNow">Buy Now</a> $7.50 will be donated to this cause</p>
                <p class="description"> Nestled in North Cambridge, Acupuncture Together is all about being <i>together</i>; that is in a community setting with other people just like you. As part of the Community Acupuncture Network, the clinic offers group sessions, as opposed to the usual treatments in private rooms. One great plus? You control your treatment time, and can relax with your needles as long as you like, whether it's 30 minutes, an hour or more! This method is also the traditional way acupuncture is practiced in China, where patients receive group treatments until their health conditions are restored. So, why break tradition after all?  <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=AIDSwb_acupuncture"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Acupuncture Together</th>
                  </tr>
                  <tr>
                    <td class="firstTD">2464 Massachusetts Avenue</td>
                    <td><a href="http://maps.google.com/maps/place?hl=en&ie=UTF8&q=acupuncture+together&fb=1&gl=us&hq=acupuncture+together&hnear=Foxborough,+MA&cid=4646218950116182435&z=14" target="_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td>Cambridge, MA 02140</td>
                    <td><a href="www.acupuncturetogether.com">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
       </li>
        
        
        </ul>
    </div>
</asp:Content>
