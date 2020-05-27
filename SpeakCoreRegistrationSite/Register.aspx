<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SpeakCoreRegistrationSite.RegistrationForm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <form id="frmRegister" runat="server" autocomplete="off" novalidate>

        <div class="banner">CONTACT INFORMATION</div>
        <table class="tableclass">
            <tr>
                <td>Please fill in the following required information.</td>
                <td />
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td />
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblFirstName" class="labelClass" runat="server" Text="First Name: *"></asp:Label></td>
                <td />
            </tr>
            <tr>
                <td colspan="2">
                    <input id="txtFirstName" runat="server" width="100%" required="required" /></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td />
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblLastName" class="labelClass" runat="server" Text="Last Name: *"></asp:Label></td>
                <td />
            </tr>
            <tr>
                <td colspan="2">
                    <input id="txtLastName" runat="server" width="100%" required="required" /></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td />
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblState" class="labelClass" runat="server" Text="State: *"></asp:Label></td>
                <td />
            </tr>
            <tr>

                <td>
                    <asp:DropDownList ID="ddlState" class="ddlClass" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td />
            </tr>
            <tr>
                <td>Please provide your email address.</td>
                <td />
            </tr>
            <tr>
                <td>All meeting correspondence will be sent via email.</td>
                <td />
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td />
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblEmail" class="labelClass" runat="server" Text="Email: *"></asp:Label></td>
                <td />
            </tr>
            <tr>
                <td colspan="2">
                    <input id="txtEmail" runat="server" width="100%" required="required" /></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td />
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblConfEmail" class="labelClass" runat="server" Text="Confirm Email: *"></asp:Label></td>
                <td />
            </tr>
            <tr>
                <td colspan="2">
                    <input id="txtConfEmail" runat="server" width="100%" required="required" /></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td />
            </tr>
            <tr>
                <td colspan="2">
                    <asp:CheckBox ID="cbxSubscribe" runat="server" />&nbsp;&nbsp;<asp:Label ID="lblSubscribe" runat="server" Text="Label">Subscribe to Newsletter</asp:Label>
                </td>
            </tr>
            <tr>
                <td />
                <td>
                    <asp:Button CssClass="button" ID="btnRegContinue" runat="server" Text="Continue" OnClick="btnRegContinue_Click" /></td>
            </tr>
        </table>
    </form>

    <%--<script src="~/Scripts/MySrcript.js" type="text/javascript"></script>--%>
</asp:Content>
