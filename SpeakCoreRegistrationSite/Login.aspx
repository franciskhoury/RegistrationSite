<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SpeakCoreRegistrationSite.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
     
    <form id="frmLogin" runat="server" autocomplete="off">
    <div class="banner">LOGIN</div>
    <table class="tableclass">
        <tr>
            <td>Please enter the case sensitive password from your official invitation.</td> 
            <td />
        </tr>
        <tr>
            <td>&nbsp;</td> 
            <td />
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" class="labelClass" runat="server" Text="Password:"></asp:Label></td> 
            <td />
        </tr>
        <tr>
            <td colspan="2"><input ID="txtPassword" runat="server" Width="100%" type="password" required="required"/></td>
        </tr>
        <tr>
            <td />
            <td><asp:Button CssClass="button" name="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></td>
        </tr>
    </table>
    <asp:Label ID="InvalidCredentialsMessage" runat="server" ForeColor="Red" Text="Password is invalid. Please try again."
            Visible="False"></asp:Label>
</form>


</asp:Content>

