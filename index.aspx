<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Register TagPrefix="head" TagName="HomeHeader" Src="~/HomeHeader.ascx" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <div id="header">
        <head:HomeHeader ID="HomeHeader1" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
	<div class="col1">
      <ul>
        <li>
                <img class="round calloutImg" src="Images/what-is-goodtwo.png" alt="What is goodtwo?"
                    height="179" /><br />
              
               
     
        </li>
         <div class="col3">
           <p class="followUsP">in the press:</p>
            <table align="default">
                <tr valign="middle">
                  <td><img src="http://crankyflier.com/wp-content/uploads/2007/12/boston_herald_logo.png" alt="(RED)" width="109"  height="42" />&nbsp;<img src="http://bostonfinancialguide.com/wp-content/uploads/mass-high-tech-logo.jpg" alt="(RED)" width="77" height="38"  />&nbsp;<img src="http://ijafri.com/wp-content/uploads/MashableLogo.jpg" alt="(RED)"  height="42" />&nbsp;<img src="http://www.martifersolarusa.com/wp-content/uploads/2010/10/miami-herald_logo.gif" alt="(RED)" width="54"  height="54" />&nbsp;<img src="http://philanthropy.com/img/cop-logo.gif" alt="(RED)" width="187"  height="33" class= /></td>
                </tr>
           </table>
         </div>
          </li>
        </ul>
</div>
    <div class="col2">
      <ul class="recentlySharedHome">
            <li class="first">
                <h3>
                    FEATURED FUNDRAISERS</h3>
            </li>
            <li class="second">
                <table width="448" height="50">
                    <tr>
                  <td><img class="icon" src="images/JimmyFund.gif" alt="(RED)" /></td>
                  <td><div class="promotedText"> <a class="name" href="/funds/fund.aspx?id=5799">Jimmy Fund (Team Sunflower)<br />
				  </a><a class="promoteShared" href="/funds/fund.aspx?id=5799">Boston, MA </a><span class="promoteDesc">$20 for 20 Gym Visits at <em>Benefitness Health Club</em></span></div></td>
                </tr>
                </table>
            </li>
      </ul>
      <ul class="recentlySharedHome">
            <li class="second">
                <table>
                    <tr>
                        <td>
                            <img class="icon" src="images/LymphomaResearch.gif" alt="(RED)" />
                      </td>
                        <td>
                            <div class="promotedText">
                              <a class="name" href="/funds/fund.aspx?id=5916">The Lymphoma Research Ride<br />
                              </a><a class="promoteShared" href="/funds/fund.aspx?id=5916">Bethesda, MD</a><span class="promoteDesc">
                          $25 for $50 of Gifts at <em>Occasions to Remember</em></span></div>
                        </td>
                    </tr>
                </table>
            </li>
      </ul>
       <ul class="recentlySharedHome">
         <li class="second">
           <table>
             <tr>
               <td width="32"><img class="icon" src="images/EllieFund.gif" alt="(RED)" /></td>
               <td width="412"><div class="promotedText"> <a class="name" href="/funds/elliefund.aspx">The Ellie Fund<br />
               </a><a class="promoteShared" href="/funds/vancortlandt.aspx">Boston, MA</a><span class="promoteDesc"> $45 for $90 at <em>Toscana European Day Spa</em></em></span></div></td>
             </tr>
           </table>
         </li>
      </ul>
    </div>
    <div class="col3">
        <div id="sellPoints">
            <ul>
                <li id="helpCause">
                    <h4>
                        Build your page</h4>
                    <p>
                        Tell your story, set your goal, upload videos and let it shine.</p>
                </li>
                <li id="getConnected">
                    <h4>
                        Choose deals</h4>
                    <p>
                        Select great deals from local businesses and national brands.</p>
                </li>
                <li id="reachGoals">
                    <h4>
                        Promote</h4>
                    <p>
                        Email, Facebook, Twitter - oh my! Tell more, raise more.</p>
                </li>
            </ul>
            <a class="signUpNowSmall" href="Funds/NewFund.aspx">Sign-Up Now</a>
        </div>
        <p class="followUsP">
            follow us: <a href="https://twitter.com/good_two">
                <img id="smTwitter" src="Images/sm-twitter.png" alt="Follow us on Twitter" /></a>
                <a href="http://www.facebook.com/pages/GoodTwo/154434547934853">
                <img id="smFacebook" src="Images/sm-facebook.png" alt="Follow us on Facebook"/></a>
                <a href="http://goodtwo.wordpress.com/">
                 <img id="smWordpress" src="Images/sm-wordpress.png" alt="Read our Wordpress Blog" /></a></p>
    </div>
</asp:Content>
