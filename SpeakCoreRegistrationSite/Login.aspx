<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SpeakCoreRegistrationSite.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" novalidate>

    <form id="frmLogin" runat="server" autocomplete="off">
        <div class="bannerTop">LOGIN</div>
        <table>
            <tr>
                <td>Please enter the case sensitive password from your official invitation.</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPassword" class="labelClass" runat="server" Text="Password:"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <input id="txtPassword" runat="server" width="100%" type="password" required /></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="InvalidCredentialsMessage" runat="server" ForeColor="Red" Text="Password is invalid. Please try again."
                        Visible="False"></asp:Label></td>
                <td>
                    <asp:Button CssClass="button" name="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></td>
            </tr>
        </table>
            <div>&nbsp;</div>
    <div class="bannerBottom"></div>
    </form>

    <script>$("#frmLogin").validate();</script>

</asp:Content>

