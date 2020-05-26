<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SpeakCoreRegistrationSite.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



            <asp:Panel ID="pnlLogin" runat="server">
                <div>Please enter the case sensitive password from your official invitation.</div>
                <div><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></div>
                <asp:Button CssClass="button" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </asp:Panel>


</asp:Content>

