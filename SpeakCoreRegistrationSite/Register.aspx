<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" ClientIDMode="Static" CodeBehind="Register.aspx.cs" Inherits="SpeakCoreRegistrationSite.RegistrationForm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <form id="frmRegister" runat="server" autocomplete="off" method="post" novalidate>

        <div class="bannerTop">CONTACT INFORMATION</div>
        <table>
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
                    <asp:TextBox ID="txtFirstName" runat="server" Width="100%" required="required"></asp:TextBox>
                    <%--<input id="txtFirstName" runat="server" width="100%" required="required" />--%>

                </td>
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
                    <asp:DropDownList ID="ddlStates" class="ddlClass" runat="server" required="required">
                        <asp:ListItem Selected="True" Text="Select State" Value=""></asp:ListItem>
                    </asp:DropDownList>
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
                    <input id="txtEmail" runat="server" width="100%" required type="email" /></td>
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
                    <input id="txtConfEmail" runat="server" width="100%" required="required" type="email" /></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td />
            </tr>
            <tr>
                <td colspan="2">
                    <input type="checkbox" id="cbxSubscribe" runat="server" style="width:20px" />&nbsp;&nbsp;<asp:Label ID="lblSubscribe" runat="server" Text="Label">Subscribe to Newsletter</asp:Label>
                </td>
            </tr>
            <tr>
                <td />
                <td>
                    <asp:Button CssClass="button" ID="btnRegContinue" runat="server" Text="Continue" OnClick="btnRegContinue_Click" />
                    <%--<input type="submit" value="Continue" class="button" name="btnRegContinue" runat="server" onclick="btnRegContinue_Click" />--%>
                </td>
            </tr>
        </table>
        <asp:Label ID="RegistrationErrorMessage" runat="server" ForeColor="Red" Text="Registration failed. Please try again or contact an administrator."
            Visible="False"></asp:Label>
        <div>&nbsp;</div>
        <div class="bannerBottom"></div>
    </form>

    <script type="text/javascript">
        function confirmEmail() {
            var email = document.getElementById("txtEmail").value
            var confemail = document.getElementById("txtConfEmail").value
            if (email != confemail) {
                alert('Email does not match!');
            }
        }
    </script>
    <script>$("#frmRegister").validate();</script>

</asp:Content>
