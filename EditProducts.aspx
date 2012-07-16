<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EditProducts.aspx.cs" Inherits="Funds_EditProducts" %>


<%@ Register TagPrefix="head" TagName="InteriorHead" Src="~/InteriorHeader.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
<asp:HiddenField ID="pCounter" runat="server" Value="" />
<script type="text/javascript">
    function checkCheckBoxes(source, args) {
        var counter;
        var hiddenField = document.getElementsByTagName('input');
        for(var i = 0; i<hiddenField.length; i++)  {
            if (hiddenField[i].type == 'checkbox') {
                if (hiddenField[i].checked) {
                    counter++;
                }
            }
        }
        if (counter > 0 && counter < 4) 
        {
            args.isValid = true;
            
        }
        else {
            args.isValid = false;          
        }
    }
</script>
    <div id="header">
        <head:InteriorHead ID="InteriorHead1" runat="server" />
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
<br />
<div id="EventSetup" runat="server">
    <h2>Edit Products <span style="color:#BCE954; font-size:x-small; font-weight:bolder;">  (YOU CAN ONLY CHOOSE 3 PRODUCTS)</span></h2> 
    These are the products that your contributors can receive deals from.  Products will be displayed on your page until you decide to edit a product, or when your event expires.
    </div>
    <asp:CustomValidator ID="validateCheckBox" EnableClientScript="true" runat="server" ErrorMessage="You have not selected any products! / selected too many products!" ClientValidationFunction="checkCheckBoxes" OnServerValidate="validateCheckBoxes"></asp:CustomValidator>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="false" ></asp:PlaceHolder>
    <br />
    
    <asp:Button ID="Button2" runat="server"  onclick="Button2_Click" 
        Text="Save Products" /><br />
    <asp:HiddenField ID="checkBoxCounter" runat="server" Value="0" />
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="HeadContent" >

</asp:Content>

