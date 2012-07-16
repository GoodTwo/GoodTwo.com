<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="TheTeam.aspx.cs" Inherits="TheTeam" %>

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
            Our Team</h2>
        <h3>
            The
            team at GoodTwo combines fundraising experience group
            buying market experience.</h3>
        <p>MANAGEMENT STAFF</p>
        <p><strong>Bill Yucatonis, Chief Executive Officer </strong><br />
          bill (at) goodtwo.com<br />
          Bill brings a unique blend of experience in group buying, fundraising and e-commerce to GoodTwo. His mission to bring the potential of a group buying platform to the hands of fundraisers drove the launch of GoodTwo and continues to power the team's vision for GoodTwo going forward. As CEO, Bill oversees the development of the GoodTwo brand and nurtures relationships with its fundraisers and business partners. A former vice president of marketing at online charity auction site BiddingForGood, Bill is accustomed to the unique needs of the nonprofit fundraising sector, and he believes that connecting group buying to the charity space with GoodTwo can fulfill a need for innovative, easy and cost-effective fundraising options. With over a dozen years of notable experience, Bill most recently served as the Vice President of Marketing at Cambridge Interactive Development Corp, a global software company specializing in social networking and interactive gaming, where he managed a global marketing team and the Everest Gaming family of brands across Europe. Bill has a BSBA in e-commerce from Northeastern University and a Master in Business Administration degree with a concentration in international business from The University of Connecticut School of Business.</p>
        <p><strong>Khash Sarrafi, Chief Technology Officer</strong><br />
      Khash is the founder and managing director of Castle Rock Innovations, the strategic platform and technology partner behind GoodTwo.  Khash and his team ensure that the platform can scale and has the flexibility to provide a frictionless fundraising solution.  Prior experiences for Khash include Global Director of Information Technology at Timex, leading large scale implementation of Oracle ERP and Data Warehouse Solutions. Before joining Timex, he was responsible for Global Data Warehouse and eBusiness for Carrier Corporation, a subsidiary of United Technologies. Prior to UTC, Khash served as CIO and VP of development for a technology-focused consulting company where he was instrumental in growing the company from a small startup to a leading consulting services company specializing in Financial Services and Healthcare Technologies. Khash has computer science and finance degrees from Central Connecticut State University and an Executive MBA from University of Connecticut.</p>
        <p><strong>Kristen Grieco Elworthy, Marketing &amp; Public Relations Director </strong><br />
          kristen (at) goodtwo.com<br />
          With a background in marketing, public relations and project management, Kristen is responsible for communications, strategy and fundraiser relations. She has worked on the marketing and publicity campaigns of many Boston-area companies in a variety of industries, from B2B technology companies and startups to local area service providers. Kristen also volunteers with RESPOND, a Somerville-based domestic violence prevention agency and shelter, aiding with their marketing and publicity efforts and serving on their gala committee. She sits on the boards of the Community Dispute Settlement Corporation and the Somerville, Mass. Chamber of Commerce. Kristen has a Bachelor of Arts degree in communication and psychology from Boston College and a Masters of Science degree in journalism from Boston University.</p>
        <h3>&nbsp;</h3></div>
    <side:SidePanel ID="SidePanel1" runat="server" />
</asp:Content>
