<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EditProducts.aspx.cs" Inherits="Funds_EditProducts" %>


<%@ Register TagPrefix="head" TagName="InteriorHead" Src="~/InteriorHeader.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
<asp:HiddenField ID="pCounter" runat="server" Value="" />
<script type="text/javascript">
    function checkCheckBoxesMore(source, args) {
        var counter;
        var hiddenField = document.getElementsByTagName('input');
        for(var i = 0; i<hiddenField.length; i++)  {
            if (hiddenField[i].type == 'checkbox') {
                if (hiddenField[i].checked) {
                    counter++;
                    if (counter > 3) {
                        args.isValid = false;
                        return;
                    }
                }
            }
        }
        args.isValid = true;
    }
    function checkCheckBoxesZero(source, args) {
        var hiddenField = document.getElementsByTagName('input');
        for (var i = 0; i < hiddenField.length; i++) {
            if (hiddenField[i].type == 'checkbox') {
                if (hiddenField[i].checked) {
                    args.isValid = true;
                    return;
                }
            }
        }
        args.isValid = false;
    }
</script>
    <div id="header">
        <head:InteriorHead ID="InteriorHead1" runat="server" />
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
<br />
    <div id="EventSetup" runat="server">
        <h2>SELECT DEALS <span style="color:#BCE954; font-size:x-small; font-weight:bolder;">  (You may select up to three deals for your page.)</span></h2> 
        <p>Below are the deals available for your fundraising campaign, including a description of the deal itself, the cost, and the amount donated. Select a deal by checking box to the left. You may only select THREE deals for your page, but you may come back at any time to change your deals.</p>
        <p>When you’ve picked your deals, scroll down and click Next. You’ll be asked to sign off on the legal stuff and then brought to your completed fundraising page.</p>
    </div>
    <asp:CustomValidator ID="validateCheckBoxMore" EnableClientScript="true" runat="server" ErrorMessage="You have selected too many products!" ClientValidationFunction="checkCheckBoxesMore" OnServerValidate="validateCheckBoxesMore"></asp:CustomValidator><br />
    <asp:CustomValidator ID="validateCheckBoxZero" EnableClientScript="true" runat="server" ErrorMessage="You have not selected any products!" ClientValidationFunction="checkCheckBoxesZero" OnServerValidate="validateCheckBoxesZero"></asp:CustomValidator>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="false" ></asp:PlaceHolder>
    <br />
    
    <asp:Button ID="Button2" runat="server"  onclick="Button2_Click" 
        Text="Save Products" /><br />
    <asp:HiddenField ID="checkBoxCounter" runat="server" Value="0" />
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="HeadContent" >

</asp:Content>

