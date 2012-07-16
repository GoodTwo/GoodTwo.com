<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<%@ Register TagPrefix="head" TagName="InteriorHead" Src="~/InteriorHeader.ascx" %>
<asp:Content ID="HeadContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeaderContentPlaceHolder">
    <div id="header">
        <head:InteriorHead ID="InteriorHead1" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">
    <div class="left">
        <span class="inline-h2">Create a New Account </span>Already have an Account?
        <asp:HyperLink runat="server" ID="LoginHyperLink" EnableViewState="false">SIGN IN</asp:HyperLink>
        <p>
            &nbsp;</p>
        
        <p runat="server" id="RegistrationWelcome">
        </p>
        <p>
            If you have any questions or difficulty, email <a href="mailto:support@goodtwo.com">support@goodtwo.com</a> for help. 
        </p>
        <p>
            Passwords are required to be a minimum of
            <%= Membership.MinRequiredPasswordLength %>
            characters in length.
        </p>
        <asp:CreateUserWizard ID="RegisterUser" runat="server" EnableViewState="false" OnCreatedUser="RegisterUser_CreatedUser">
            <WizardSteps>
                <asp:CreateUserWizardStep ID="RegisterUserWizardStep" runat="server">
                    <ContentTemplate>                                                
                        <span class="failureNotification">
                            <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                        </span>
                        <div class="accountInfo">
                            <p runat="server" id="schoolFundraiserData" visible="false">
                                <asp:Literal ID="litSchoolFundraiserLogo" runat="server"></asp:Literal>
                            </p>
                            <fieldset class="register">
                                <legend>GoodTwo Account Information</legend>
                                <table>
                                <tr>
                                    <td><asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:&nbsp;</asp:Label></td>
                                    <td><asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                        CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required."
                                        ValidationGroup="RegisterUserValidationGroup" Font-Bold="true">User Name is required.</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:&nbsp;</asp:Label></td>
                                    <td><asp:TextBox ID="Email" runat="server" CssClass="textEntry"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                                        CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
                                        ValidationGroup="RegisterUserValidationGroup" Font-Bold="true">E-mail is required.</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:&nbsp;</asp:Label></td>
                                    <td><asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                        CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required."
                                        ValidationGroup="RegisterUserValidationGroup" Font-Bold="true">Password is required.</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:&nbsp;</asp:Label></td>
                                    <td><asp:TextBox ID="ConfirmPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" CssClass="failureNotification"
                                        Display="Dynamic" ErrorMessage="Confirm Password is required." ID="ConfirmPasswordRequired"
                                        runat="server" ToolTip="Confirm Password is required." ValidationGroup="RegisterUserValidationGroup"
                                        Font-Bold="true">Confirm Password is required.</asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                                        ControlToValidate="ConfirmPassword" CssClass="failureNotification" Display="Dynamic"
                                        ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="RegisterUserValidationGroup"
                                        Font-Bold="true">The Password and Confirmation Password must match.</asp:CompareValidator></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Password Recovery Question:&nbsp;</asp:Label></td>
                                    <td><asp:TextBox ID="Question" runat="server" CssClass="textEntry"></asp:TextBox>                                    
                                    <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question"
                                        CssClass="failureNotification" ErrorMessage="Question is required." ToolTip="Question is required."
                                        ValidationGroup="RegisterUserValidationGroup" Font-Bold="true">Question is required.</asp:RequiredFieldValidator>
                                    <br />
                                    (Create a question that only you know the answer to. We'll ask it if you lose your
                                    password)</td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Password Recovery Answer:&nbsp;</asp:Label></td>
                                    <td><asp:TextBox ID="Answer" runat="server" CssClass="textEntry"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer"
                                        CssClass="failureNotification" ErrorMessage="Answer is required." ToolTip="Answer is required."
                                        ValidationGroup="RegisterUserValidationGroup" Font-Bold="true">Answer is required.</asp:RequiredFieldValidator></td>
                                </tr>
                                </table>
                                <br />
                                <p runat="server" id="PMCData" visible="false">
                                    <img alt="PMC Logo" src="../Images/pmc_logo11_3c.jpg" />
                                    <br />
                                    <p>
                                    Please enter or verify your profile (eGift) ID. Your profile (eGift) ID/PMC ID is used to identify your PMC rider information.
                                    </p>
                                    <br />
                                    <asp:Label ID="EgiftIDLabel" runat="server" AssociatedControlID="EGIFTID">Profile (eGift) ID:</asp:Label>
                                    <asp:TextBox ID="EGIFTID" runat="server" CssClass="textEntry"></asp:TextBox>
                                    <asp:CustomValidator ID="EGIFTIDValidator" ErrorMessage="Invalid eGiftId" 
                                        runat="server" ToolTip="A valid eGift is Required" ValidationGroup="RegisterUserValidationGroup" 
                                        onservervalidate="EGIFTIDValidator_ServerValidate"></asp:CustomValidator>
                                    <asp:CustomValidator ID="EGIFTIDAvailableValidator" ErrorMessage="This profile (eGift) ID has already been claimed." 
                                        runat="server" ToolTip="This profile (eGift) ID has already been claimed" ValidationGroup="RegisterUserValidationGroup" 
                                        onservervalidate="EGIFTIDAvailableValidator_ServerValidate"></asp:CustomValidator>
                                </p>
                                <p runat="server" id="JimmyData" visible="false">
                                    Please enter or verify your Walker ID (found in your HQ on your Walker Fundraising Page). Your Walker ID is used to identify your Jimmy Fund Walker information.
                                    <br />
                                    <asp:Label ID="JimmyEgiftIDLabel" runat="server" AssociatedControlID="JimmyEgiftID">Walker ID:</asp:Label>
                                    <asp:TextBox ID="JimmyEgiftID" runat="server" CssClass="textEntry"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="WalkerIDRequiredValidator" runat="server" ErrorMessage="Walker ID Required" 
                                        ControlToValidate="JimmyEgiftID" CssClass="failureNotification" Font-Bold="true"
                                        ValidationGroup="RegisterUserValidationGroup" ToolTip="Walker ID Required"></asp:RequiredFieldValidator>
                                    <asp:CustomValidator ID="JimmyFundIDAvailableValidator" ErrorMessage="This Walker ID has already been claimed." 
                                        runat="server" ToolTip="This Walker ID has already been claimed" ValidationGroup="RegisterUserValidationGroup" 
                                        onservervalidate="JimmyFundIDAvailableValidator_ServerValidate"></asp:CustomValidator>
                                    <p></p>
                                    <img alt="Jimmy Fund Logo" src="../Images/DF-JF_horiz_bk.jpg" />
                                </p>

                                <p runat="server" id="programData" visible="false">
                                    <asp:Literal ID="litProgramLogo" runat="server"></asp:Literal>
                                </p>


                            </fieldset>
                          
                            <p class="submitButton">
                                <asp:Button ID="CreateUserButton" runat="server" CommandName="MoveNext" Text="Create User"
                                    ValidationGroup="RegisterUserValidationGroup" />
                            </p>
                        </div>
                    </ContentTemplate>
                    <CustomNavigationTemplate>
                    </CustomNavigationTemplate>
                </asp:CreateUserWizardStep>
<asp:CompleteWizardStep runat="server"></asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
          
    </div>
</asp:Content>
