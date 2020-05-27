<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SpeakCoreRegistrationSite.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >

    <form id="frmLogin" runat="server" >
    <div class="banner">LOGIN</div>
    <table class="tableclass">
        <tr>
            <td>Please enter the case sensitive password from your official invitation.</td> 
            <td />
        </tr>
        <tr>
            <td><b>Password:</b></td> 
            <td />
        </tr>
        <tr>
            <td colspan="2"><asp:TextBox ID="txtPassword" runat="server" Width="100%"></asp:TextBox></td>
        </tr>
        <tr>
            <td />
            <td><asp:Button CssClass="button" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></td>
        </tr>
    </table>
</form>


</asp:Content>

