<%@ Control Language="C#" AutoEventWireup="true" CodeFile="FundHeader.ascx.cs" Inherits="FundHeader" %>
<script type="text/javascript">
    func = function () {
        document.body.id = 'fundBody';
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

    $(document).ready(function () {
        var elm = $("input[id$='hiddenIsOwner']");
        var btn = document.getElementById('<%= EditEventLink.ClientID %>');
        if (parseInt(elm[0].value) >= 0) {
            btn.setAttribute('class', 'editFundBtn');
            btn.setAttribute('href', 'EditFund.aspx?id=' + elm[0].value);
        } else {
            btn.setAttribute('class', 'loginBtn');
            btn.setAttribute('href', '../Account/Login.aspx?ReturnUrl=' + location.href);
        }
    });
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
<h1 id="smallLogo">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">goodtwo - good deal. good cause.</asp:HyperLink></h1>
<ul id="nav">
    <li id="navWhatIs">
        <asp:HyperLink ID="WhatIsItLink" runat="server" NavigateUrl="~/About.aspx">What is goodtwo&#8482; - let's make a difference together</asp:HyperLink><div
            class="navGlow">
        </div>
    </li>
    <li><span class="navDivider">|</span></li>
    <li id="navStartCause">
        <asp:HyperLink ID="NewFundLink" runat="server" NavigateUrl="~/Funds/NewFund.aspx">Start a Fundraiser</asp:HyperLink><div
            class="navGlow">
        </div>
    </li>
    <li><span class="navDivider">|</span></li>
    <li id="navLogout">
        <asp:HyperLink ID="LogoutLink" runat="server" NavigateUrl="~/Account/Login.aspx?logout=logout">Logout</asp:HyperLink>
        <div class="navGlow">
        </div>
    </li>
    <li><span class="navDivider">|</span></li>
    <li id="navEditEvent">
        <asp:HyperLink ID="EditEventLink" runat="server"></asp:HyperLink>
        <div class="navGlow">
        </div>
    </li>
</ul>