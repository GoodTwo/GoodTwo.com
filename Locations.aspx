<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Locations.aspx.cs" Inherits="Locations" %>

<%@ Register TagPrefix="head" TagName="InteriorHeadNav" Src="~/InteriorHeader.ascx" %>
<%@ Register TagPrefix="head" TagName="InteriorHeadSubNav" Src="~/InteriorHeaderSubNav.ascx" %>
<%@ Register TagPrefix="side" TagName="SidePanel" Src="~/SidePanel.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:InteriorHeadNav ID="InteriorHeadNav1" runat="server" />
        <head:InteriorHeadSubNav ID="InteriorHeadSubNav1" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div class="left">
        <h2>
            Our Cities</h2>
        <h3>
            Check out the map below to see the cities goodtwo&#8482; serves and those that are
            coming soon. We're expanding nationwide in early 2011.
        </h3>
        <p>
            <img src="Images/locations.png" alt="featured" width="451" height="333" align="middle" /><br />
        </p>
        <table width="100%" border="0" cellpadding="5">
            <tr>
                <td height="326" valign="top">
                    <h2>
                        Now Serving</h2>
                    <p>
                        Boston MA
                        <br />
                        Providence, RI<br />
                        Hartford, CT<br />
                        Burlington, VT<br />
                        Portland, ME<br />
                        Portsmouth, NH<br />
                        Miami, FL<br />
                        Orlando, FL<br />
                        Tampa Bay, FL<br />
                        New York, NY<br />
                        Washington, DC<br />
                        Baltimore, MD
                        <br />
                        Los Angeles, CA<br />
                        San Diego, CA
                    </p>
                </td>
                <td valign="top">
                    <h2>
                        Coming Soon</h2>
                    <p>
                        San Francisco, CA<br />
                        Seattle, WA<br />
                        Atlanta, GA<br />
                        Austin, TX<br />
                        Dallas, TX<br />
                        Houston, TX<br />
                        Portland, OR<br />
                        Chicago, IL<br />
                        St. Louis, MO<br />
                        Plus, More...
                    </p>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;
        </p>
        <p>
            <strong>Don't see your city here but want to run a fundraiser? <a href="Contact.aspx">
                Contact us</a> and let's talk!</strong></p>
    </div>
    <side:SidePanel ID="SidePanel1" runat="server" />
</asp:Content>
