<%@ Page Title="Log In" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="RecoverPassword.aspx.cs" Inherits="Account_RecoverPassword" %>

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
        <h2>
            Password Reset</h2>
        <asp:PasswordRecovery OnVerifyingUser="validateUserEmail" SuccessText="Your password was successfully reset and emailed to you."
            QuestionFailureText="Incorrect answer. Please try again." runat="server" ID="PWRecovery"
            UserNameFailureText="Username not found.">
            <MailDefinition IsBodyHtml="true" BodyFileName="passwordRecoverEmail.txt" From="fundraisers@goodtwo.com"
                Subject="Password Reset" Priority="High">
            </MailDefinition>
            <UserNameTemplate>
                <p>
                    The steps below will allow you to have a new password sent to the registered email
                    address.</p>
                <dl>
                    <dt>Username</dt>
                    <dd>
                        <asp:TextBox ID="Username" runat="server" />
                    </dd>
                    <dt>Email</dt>
                    <dd>
                        <asp:TextBox ValidationGroup="PWRecovery" runat="server" ID="EmailAddressTB">
                        </asp:TextBox>
                    </dd>
                    <dt></dt>
                    <dd>
                        <asp:Button ID="submit" CausesValidation="true" ValidationGroup="PWRecovery" runat="server"
                            CommandName="Submit" Text="Submit" />
                    </dd>
                    <dt></dt>
                    <dd>
                        <span class="failureNotification">
                            <asp:Literal ID="ErrorLiteral" runat="server"></asp:Literal>
                        </span>
                    </dd>
                </dl>
            </UserNameTemplate>
            <QuestionTemplate>
                <p>
                    You must answer your recovery question in order to have a new email sent to you.
                </p>
                <dl>
                    <dt>Question:</dt>
                    <dd>
                        <asp:Literal runat="server" ID="Question" />
                    </dd>
                    <dt></dt>
                    <dt>Answer:</dt>
                    <dd>
                        <asp:TextBox runat="server" ID="Answer" />
                    </dd>
                    <dt></dt>
                    <dd>
                        <asp:Button runat="server" ID="submit" Text="Submit" CommandName="submit" />
                    </dd>
                    <dt></dt>
                    <dd>
                        <span class="failureNotification">
                            <asp:Literal ID="FailureText" runat="server">
                            </asp:Literal>
                        </span>
                    </dd>
                </dl>
            </QuestionTemplate>
        </asp:PasswordRecovery>
        <p>
            <asp:HyperLink ID="RegisterHyperLink" runat="server" EnableViewState="false">Register </asp:HyperLink>
            to setup a new account and start your fundraiser
        </p>
        <p>
            <asp:HyperLink runat="server" ID="LoginHyperLink" EnableViewState="false">SIGN IN</asp:HyperLink>
        </p>
    </div>
</asp:Content>
