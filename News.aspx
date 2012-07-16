<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="News.aspx.cs" Inherits="News" %>

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
        <p>
            <strong>PR Contact: </strong>Kristen Elworthy<br />
            Marketing &amp; Publicity Director<br />
            <a href="mailto: kristen@goodtwo.com">kristen@goodtwo.com</a><br />
            888.372.5570 ext. 703 (w) 978.590.0442 (c)        </p>
        <h2>Recent News </h2>
       <p><strong>March 2012</strong><br />
         <strong>ReveNews.org:</strong> <a href="http://www.revenews.org/taking-the-daily-deal-a-strategy-for-nonprofits/">Taking the Daily Deal: A Strategy for Nonprofits</a><br />
       <strong>Dummies.com:</strong> <a href="http://www.dummies.com/how-to/content/raising-money-with-goodtwo-groupbuying-site.html">Raising Money with GoodTwo Group Buying Site</a></p>
       <p><strong>November 2011</strong><br />
         <strong>SocialBrite:</strong> <a href="http://www.socialbrite.org/2011/11/11/goodtwo-give-something-back-to-your-donors/">GoodTwo: Give Something Back to Your Donors</a></p>
       <p><span style="color: #3366ff;"><strong><span style="color: #000000;">August 2011          <a href="http://www.wickedlocal.com/medfield/features/x242974341/Fundraiser-tickets-for-Rep-Winslow-to-be-sold-for-discount-online#axzz1UYpLQsPL"><br />
       </a>The Medfield Press: <span class="Apple-style-span" style="font-weight: normal;"><a href="http://www.wickedlocal.com/medfield/features/x242974341/Fundraiser-tickets-for-Rep-Winslow-to-be-sold-for-discount-online#axzz1UYpLQsPL" target="_blank">Fundraiser Tix for Rep. Winslow to Be Sold for Discount Online</a></span></span></strong></span></p>
       <p><span style="color: #3366ff;"><strong><span style="color: #000000;">July 2011</span>
       </strong><span style="color: #000000;"><strong><a href="http://articles.boston.com/2011-07-28/news/29825962_1_campaign-fund-raiser-winslow-groupon" target="_blank"><br />
       </a>The Boston Globe</strong>: <a href="http://articles.boston.com/2011-07-28/news/29825962_1_campaign-fund-raiser-winslow-groupon" target="_blank">GOP's Winslow Uses Online Coupon to Promote Fundraiser</a>
       <br />
       <strong>BostInnovation: </strong></span></span><a href="http://bostinnovation.com/2011/07/28/mass-politician-selects-local-start-up-goodtwo-over-groupon-to-market-political-fundraiser/" target="_blank">Mass Politician Selects Local Start-Up GoodTwo Over Groupon to Market Political Fundraiser
         </a><strong><a href="http://www.idealist.org//en/snag-one-of-those-daily-deals-and-give-back/" target="_blank"><br />
         </a>Idealist: </strong><a href="http://www.idealist.org/blog/en/snag-one-of-those-daily-deals-and-give-back/" target="_blank">Snag One of These Daily Deals and Give Back
           </a><strong><a href="http://www.thesunchronicle.com/articles/2011/07/29/news/9948819.txt" target="_blank"><br />
     </a>The Sun Chronicle: </strong><a href="http://www.thesunchronicle.com/articles/2011/07/29/news/9948819.txt" target="_blank">Winslow Touts His Discount Campaign</a>       </p>
       <p><strong>June 2011
         <a href="http://www.bnet.com/blog/technology-business/deal-me-in-startups-pursue-variations-on-the-groupon-model/11231?tag=mantle_skin;content" target="_blank"><br />
         </a>BNET: </strong><a href="http://www.bnet.com/blog/technology-business/deal-me-in-startups-pursue-variations-on-the-groupon-model/11231?tag=mantle_skin;content" target="_blank">Startups Pursue Variations on the Groupon Model
           </a><strong><a href="http://bostinnovation.com/2011/06/06/saving-money-supporting-causes-how-goodtwo-is-helping-fundraisers-boost-donations/" target="_blank"><br />
           </a>BostInnovation: </strong><a href="http://bostinnovation.com/2011/06/06/saving-money-supporting-causes-how-goodtwo-is-helping-fundraisers-boost-donations/" target="_blank">Saving Money, Support Causes: How GoodTwo is Helping Fundraisers Boost Donations
             </a><strong><a href="http://www.bostonherald.com/business/general/view.bg?articleid=1342594&amp;srvc=rss" target="_blank"><br />
             </a>The Boston Herald: </strong><a href="http://www.bostonherald.com/business/general/view.bg?articleid=1342594&amp;srvc=rss" target="_blank">Groupon's Biggest Deal</a>       </p>
       <p><strong>May 2011
         <a href="http://www.masshightech.com/stories/2011/05/09/daily17-GoodTwo-helps-nonprofits-link-fundraising-to-group-buying.html" target="_blank"><br />
         </a>Mass High Tech: </strong><a href="http://www.masshightech.com/stories/2011/05/09/daily17-GoodTwo-helps-nonprofits-link-fundraising-to-group-buying.html" target="_blank">The Pitch - GoodTwo Helps Nonprofits Link Fundraising to Group Buying</a>       </p>
       <p><strong>April 2011
         <a href="http://www.masshightech.com/stories/2011/04/18/daily20-Startup-Watch-Five-you-should-follow.html" target="_blank"><br />
         </a>Mass High Tech: </strong><a href="http://www.masshightech.com/stories/2011/04/18/daily20-Startup-Watch-Five-you-should-follow.html" target="_blank">Startup Watch - 5 You Should Follow</a>       </p>
       <p><strong>February 2011
           <br />
         Mashable: </strong><a href="http://mashable.com/2011/02/01/group-buying-social-good/" target="_blank">Seven Sites Using Daily Deals to Give Back
           <br />
         </a><strong><span class="Apple-style-span" style="font-weight: normal;"><strong>WebProNews: </strong><a href="http://selfishgiving.com/cause-practices/which-group-buying-site-best-cause-marketing" target="_blank">Can Groupon Own the Deals Space?
             </a></span><a href="http://selfishgiving.com/cause-practices/which-group-buying-site-best-cause-marketing"><br />
         </a>Selfish Giving: </strong><a href="http://selfishgiving.com/cause-practices/which-group-buying-site-best-cause-marketing" target="_blank">Which Group Buying Site is Best for Cause Marketing?</a>       </p>
       <p><strong>January 2011  <a href="http://philanthropy.com/blogs/giveandtake/guest-post-groupons-super-bowl-fumble-gives-nonprofits-a-chance-to-score-big/27719" target="_blank"><br />
  </a>The Chronicle of Philanthropy: </strong><a href="http://philanthropy.com/blogs/giveandtake/guest-post-groupons-super-bowl-fumble-gives-nonprofits-a-chance-to-score-big/27719" target="_blank">Nonprofits Can Learn from Groupon's Superbowl Fumble</a><strong> </strong>
       <p><strong>December 2010
       </strong><strong><br />
       The Miami Herald: </strong>Fundraiser Site Helps Troubled Charities, Deal Hunters<strong>
  <br />
  The Boston Herald: </strong><a href="http://www.bostonherald.com/business/general/view/20101201google-groupon_deal_could_start_wave_of_acquisitions/" target="_blank">Google-Groupon Deal Could Start 'Wave of Acquisitions'</a><strong> </strong>
       <p>
       <strong>Press Releases </strong></p>
        <p><strong>GOODTWO NAMED A FINALIST IN MASSCHALLENGE</strong><br />
          <em>Fundraising Tool that Utilizes Deal Rewards for Donors Chosen for Accelerator of World’s Largest Startup Competition</em></p>
<p>BOSTON (5/24/11)—<a href="http://www.goodtwo.com">GoodTwo</a>, a free fundraising tool that allows nonprofits, community groups and individuals to raise money by rewarding their donors with great deals, today announced that it has been named a finalist in MassChallenge, the world’s largest startup competition. The competition, which began with more than 700 companies from around the world, narrowed the field to 125 finalists that will now join the MassChallenge startup incubator.</p>
        <p>“We are thrilled to be finalists in MassChallenge,” says GoodTwo CEO Bill Yucatonis. “For the past six months, GoodTwo has been building a customer base and an innovative product that’s like nothing else in the fundraising market. This opportunity will help us continue to build our business in terms of both our platform and our relationships with nonprofit organizations and merchants. We’re looking forward joining and adding to the high energy of our fellow startups in the incubator.”</p>
        <p>Boston-based GoodTwo launched in December 2010 as a spin-off of New England-based daily deal site CoupMe. GoodTwo was conceived as a way to allow fundraisers and nonprofit organizations to take advantage of the group buying/daily deal model.  Since its launch in December, GoodTwo has welcomed approximately 100 fundraisers onto its platform. In the coming month, GoodTwo will be launching programs that allow participants in events such as the Pan-Massachusetts Challenge and the Boston Marathon ® Jimmy Fund Walk to help meet their fundraising goals with GoodTwo campaigns.</p>
      <p>GoodTwo provides a win-win-win situation: the cause gets a donation, the donor gets a great deal and the business providing the deal gets a new customer and valuable cause association. GoodTwo: Good Deal. Good Cause.</p>
        <p>As MassChallenge finalists, GoodTwo will be afforded the benefits of the MassChallenge incubator, including free office space on Fan Pier, pairing with mentors and a startup boot camp. In October, MassChallenge will award $1 million in prizes to several finalists.            </p>
        <p>&nbsp;</p>
        <p><strong>GROUP BUYING MOVES INTO THE CHARITY SPACE WITH LAUNCH OF GOODTWO</strong><br />
            <em>New Brand of CoupMe Worldwide, LLC Allows Fundraisers to Harness the Power of Group Buying to Raise Money for a Cause</em></p>
        <p>
            NEEDHAM, Mass. (12/6/2010)—CoupMe Worldwide, LLC today announced the launch of goodtwo,
            a free fundraising platform that allows individuals and nonprofits of all sizes
            to raise money by offering &quot;deals&quot; from top local and national brands.
            As nonprofits continue to face challenging economic times, goodtwo provides a creative
            fundraiser that takes advantage of the popularity of group buying sites like CoupMe&reg;
            or Groupon&reg; and puts them to use in fundraising.<br />
            <br />
            goodtwo operates on the premise &quot;Good Deal. Good Cause.&#8480;&quot; Fundraisers
            host deals on dedicated pages customized for their cause that they can then offer
            to their supporters for a limited time. For each deal sold through the page, the
            fundraiser keeps half the profit. While the fundraiser benefits from each sale,
            the donors also receive a discount of 50% off or more at local and national businesses
            as a reward.
            <br />
            &quot;goodtwo allows nonprofits to take advantage of the group buying trend, rewarding
            donors while also meeting fundraising goals. The cause receives a donation, the
            donor gets a great deal, and the business presenting the deal gets valuable cause
            association and brings a new customer through its door,&quot; says CoupMe Worldwide
            CEO Bill Yucatonis, a former marketing vice president at online charity auction
            site BiddingForGood. &quot;Our team's experience with fundraising solutions and
            early entry into the group buying marketplace with our New England site CoupMe gives
            us the strategic edge to merge the traditional deal-a-day model into a unique fundraising
            platform.&quot;<br />
            goodtwo is open to all causes and sizes of campaigns, from large nonprofits looking
            for unique fundraising opportunities to walkers and runners raising money for charity.
            goodtwo also provides a solution for schools and community groups, who have often
            turned to fundraisers featuring wrapping paper or magazines, to bring a fresh event
            to their organization without relying solely on volunteers. Running a fundraiser
            on the site is completely free.
            <br />
            <br />
            goodtwo is launching in December across New England and several other key cities,
            with plans to rapidly expand nationwide in early 2011. The launch will feature a
            diverse array of deals for both national brands and local businesses in each territory.
            For more information, visit www.goodtwo.com.</p>
    </div>
    <side:SidePanel ID="SidePanel1" runat="server" />
</asp:Content>
