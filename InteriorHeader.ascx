<%@ Control Language="C#" AutoEventWireup="true" CodeFile="InteriorHeader.ascx.cs"
    Inherits="InteriorHeader" %>
<script type="text/javascript">
    func = function () {
        document.body.id = 'interiorBody';
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
    <asp:HyperLink ID="HomeLink" runat="server" NavigateUrl="~/index.aspx">goodtwo - good deal. good cause.</asp:HyperLink>
</h1>
<ul id="nav">
    <li id="navMerch">
        <asp:HyperLink ID="FundraiserLink" runat="server" NavigateUrl="~/Fundraiser.aspx">Raise Money</asp:HyperLink>
        <div class="navGlow">
        </div>
    </li>
    <li id="navHow">
        <asp:HyperLink ID="BusinessesLink" runat="server" NavigateUrl="~/Businesses.aspx">Promote a Brand</asp:HyperLink>
        <div class="navGlow">
        </div>
    </li>
    <li id="navAbout">
        <asp:HyperLink ID="AboutLink" runat="server" NavigateUrl="~/About.aspx">About Us</asp:HyperLink><div
            class="navGlow">
        </div>
    </li>
    <li id="navLogout">
        <asp:HyperLink ID="LogoutLink" runat="server" NavigateUrl="~/Account/Login.aspx?logout=logout">Logout</asp:HyperLink>
        <div class="navGlow">
        </div>
    </li>
    <li>
        <asp:HyperLink runat="server" CssClass="signUpBtn" NavigateUrl="~/Contact.aspx">Sign Up</asp:HyperLink></li>
</ul>
