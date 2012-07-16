<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <!-- You need to add this ScriptManager -->
    <asp:ScriptManager ID="scriptMgr" runat="server" />
    <div>
        This example demonstrates the benefits of an UpdatePanel.
    </div>
    <br />
    <!-- Only this area is updated on PostBack -->
    <asp:UpdatePanel ID="updatePnl" runat="server">
        <ContentTemplate>
            <fieldset>
                <legend>Panel with random names</legend>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generate random names"
                    Width="200px" />
                <br />
                <div style="height: 35px; padding-top: 5px; padding-bottom: 5px">
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="updatePnl"
                        DisplayAfter="100" DynamicLayout="true">
                        <ProgressTemplate>
                            <img border="0" src="Images/loading.gif" alt="loading" />
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                </div>
                <asp:Label Font-Bold="true" ID="lblNames" runat="server" Text="">
                </asp:Label>
                <br />
            </fieldset>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
