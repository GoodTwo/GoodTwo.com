<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="staley.aspx.cs" Inherits="Funds_staley" %>

<%@ Register TagPrefix="head" TagName="FundHeader" Src="~/FundHeader.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        @import "/Styles/jquery.countdown.css";
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:FundHeader ID="FundHeader" runat="server" />
        <div id="causeIntro"><img src="../Images/staley-logo.jpg" alt="Logo" />
          <div id="causeIntroContent">
  <div id="titleline">
                    <h2>
            The Staley Foundation Annual Fundraiser</h2>
            <h3> Boston, MA</h3>
                </div>
                <p> The Staley Foundation (TSF) acts on its belief that cancer survivors need a strong fundamental base of education, advocacy, and assistance to persevere in their cancer battle and beyond to live their best lives. </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <div class="causeVideo"><img src="../images/staley-main.jpg" width="391" height="313" /></div>
        <h3>The Staley Foundation:</h3>
      <p>The Staley Foundation (TSF) acts on its belief that cancer survivors need a strong fundamental base of education, advocacy, and assistance to persevere in their cancer battle and beyond to live their best lives. Founded in 2007 by three-time cancer survivor, Alicia C. Staley, the Staley Foundation is a non-profit charitable organization dedicated to enriching the lives of people touched by cancer, including survivors, their families, and caregivers. The Staley Foundation fulfills its mission through cancer awareness education, survivorship education, community outreach initiatives, advocacy development, and patient assistance programs. An organization based on compassionate excellence, the Staley Foundation will empower cancer survivors to lead extraordinary lives. </p>
      <p><a href="http://www.awesomecancersurvivor.com/2009/03/the-staley-foundation.html" target="_new" class="visitSite">visit website &raquo;</a></p>
      <div id="fb-root">
</div>
        <script src="http://connect.facebook.net/en_US/all.js#appId=169884946376917&amp;xfbml=1"></script>
        <fb:comments xid="staleyfoundation" numposts="10" width="370" publish_feed="true"></fb:comments>
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
                <h3> $45 for a $90 Blissful, Indulgent Spa Experience at Toscana European Day Spa</h3>
                <img src="../Images/toscana.jpg" alt="" />
                <p class="prices"> Price: $45<br />
                  Discount: 50%<br />
                  You Save: $45</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=Staley_Toscana"
                            target="_new" class="buyNow">Buy Now</a> $9.50 will be donated to this cause</p>
                <p class="description"> Located on Newbury Street, <strong>Toscana European Day Spa</strong> sits in a tranquil
                  setting, much like the luxurious salons and spas in Europe. Upon entering, you'll
                  be pampered by the best stylists, massage therapists and aestheticians in Boston.
                  At Toscana, they exclusively use award-winning, European- and U.S.-made products,
                  ranging from organic skin care to Goldwell and L'Oreal Paris hair products. Owner
                  Doina Mandrila trained in Europe, where she learned her envied beauty secrets, and
                  has been practicing skin care for more than 35 years. Now she brings her knowledge
                  and talent back to the U.S., right here in Boston for your pleasure. <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=Staley_Toscana"
                            target="_new">More Info</a></p>
                <table>
                  <tr>
                    <th> Toscana European Day Spa </th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 231 Newbury Street </td>
                    <td><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=231+Newbury+Street,+Boston,+MA+02116&amp;sll=42.348223,-71.129528&amp;sspn=0.001074,0.002411&amp;ie=UTF8&amp;hq=&amp;hnear=231+Newbury+St,+Boston,+Suffolk,+Massachusetts+02116&amp;ll=42.350138,-71.081945&amp;spn=0.001074,0.002411&amp;z=19&amp;iwloc=r1&quot; target=&quot;_new"> Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Boston, MA 02116 </td>
                    <td><a href="http://www.toscanadayspanewbury.com">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
            <li>
              <div>
                <h3> $6 for $12 Worth of Food at Cafe Quattro</h3>
                <img src="../Images/cafequattro.jpg" alt="" />
                <p class="prices"> Price: $6<br />
                  Discount: 50%<br />
                  You Save: $6</p>
                <p class="buyNowHolder"> <a href="http://store.goodtwo.com/ShoppingCart.asp?ProductCode=staley_quattro"
                            class="buyNow">Buy Now</a> $1.50 will be donated to this cause</p>
                <p class="description"> Located on Somerset Street in Beacon Hill, Cafe Quattro truly brings the feeling of a small, authentic Italian cafe to Boston. Quattro is known for its delicious offerings, which range from <strong>thin crust pizzas</strong> (up to $12.99) and <strong>panini sandwiches</strong> (up to $5.99) to a variety of <strong>soups, salads and coffees</strong>. You can check out their full menu <a href="http://www.cafequattroboston.com/ordereze/Content/1/Summary.aspx" target="_new">here</a>. Because Quattro uses only the freshest ingredients, each meal is just as mouth watering as the next. We highly recommend the <strong>Caprese</strong> sub ($5.99 – fresh mozzarella with sliced tomatoes, mixed greens, roasted red peppers, red onions and topped with balsamic vinegar). Although, our sources tell us the <strong>Chicken Parm over Baked Ziti</strong> ($8.99) is to die for! <a href="http://store.goodtwo.com/ProductDetails.asp?ProductCode=staley_quattro"
                            target="_new">More Info</a>
                  </p>
                </p>
                <table>
                  <tr>
                    <th> Cafe Quattro </th>
                  </tr>
                  <tr>
                    <td class="firstTD"> 4 Somerset Street</td>
                    <td><a href="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=4+Somerset+Street,+Boston,+MA+02108&sll=42.347856,-71.097744&sspn=0.008595,0.01929&g=71+Lansdowne+Street,+Boston,+MA+02215&ie=UTF8&hq=&hnear=4+Somerset+St,+Boston,+Suffolk,+Massachusetts+02108&ll=42.35879,-71.061531&spn=0.001033,0.002411&z=19&iwloc=A"
                                    target="_new">Map / Directions &raquo;</a></td>
                  </tr>
                  <tr>
                    <td> Boston, MA 02108 </td>
                    <td><a href="http://www.cafequattroboston.com/ordereze/default.aspx">Visit Website &raquo;</a></td>
                  </tr>
                </table>
              </div>
            </li>
        
        
        </ul>
    </div>
</asp:Content>
