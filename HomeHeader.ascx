<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HomeHeader.ascx.cs" Inherits="HomeHeader" %>
<script type="text/javascript">
    func = function () {
        document.body.id = 'homeBody';
    }

    var oldonload = window.onload;
    if (typeof window.onload != 'function') {
        window.onload = func;
    } else {
        window.onload = function () {
            if (oldonload) {
                oldonload();
            }
            func();
        }
    }
</script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-20687961-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<h1 id="logo">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">goodtwo - good deal. good cause.</asp:HyperLink></h1>
<ul id="nav">
    <li id="navMerch">
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Fundraiser.aspx">Raise Money</asp:HyperLink><div
            class="navGlow">
        </div>
    </li>
    <li id="navHow">
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Businesses.aspx">Promote a Brand</asp:HyperLink><div
            class="navGlow">
        </div>
    </li>
    <li id="navAbout">
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/About.aspx">About Us</asp:HyperLink><div
            class="navGlow">
        </div>
    </li>
    <li>
        <asp:HyperLink runat="server" CssClass="signUpBtn" NavigateUrl="~/Contact.aspx">Sign Up</asp:HyperLink></li>
</ul>
<div id="featuredSlideShow">
    <div id="slideshowNav">
        <div id="slideshowNavContent">
            <ul>
                <li class="previous"><a href="#">Prev</a></li>
                <li class="navItem"><a href="#">1</a></li>
                <li class="navItem"><a href="#">2</a></li>
                <li class="navItem"><a href="#">3</a></li>
                <li class="navItem"><a href="#">4</a></li>
                <li class="next"><a href="#">Next</a></li>
            </ul>
        </div>
    </div>
    <div class="slideItem">
      <div class="caption">
            <h3>Fun and easy for any fundraiser: nonprofits, schools or individuals raising money for a cause.</h3>
      </div>
    <img src="Images/featured-image2.png" alt="" /></div>
    <div class="slideItem">
      <div class="caption">
             <h3>You raise money for your cause. Your donors get great deals from brands they love.</h3>
    </div>
  <img src="Images/featured-image1.png" alt="" /> </div>
    <div class="slideItem">
        <div class="caption">
     	<h3>It's simple and FREE to start a campaign. Set up a page and choose your deals in minutes. </h3>
    </div>
        <img src="Images/featured-image3.png" style="right: -25px;" alt="" />
    </div>
    <div class="slideItem">
        <div class="caption">
             <h3>Spread the word! The more you promote, the more money you'll raise.</h3>
      </div>
        <img src="Images/featured-image4.png" alt="" />
    </div>
</div>
<asp:HyperLink runat="server" ID="signUpNowBtn" CssClass="signUpNowBtn" NavigateUrl="~/Funds/NewFund.aspx">Sign-Up Now</asp:HyperLink>