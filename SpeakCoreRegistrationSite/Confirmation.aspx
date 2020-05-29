<%@ Page Title="Confirmation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="SpeakCoreRegistrationSite.Confirmation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <form id="frmConfirmation" runat="server" autocomplete="off">
        <div class="bannerTop">COMPLETE</div>
        <table class="tableclass">
            <tr>
                <td>
                    <div class="emphaticText">Thank you for registering!</div>
                </td>
                <td />
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td />
            </tr>
            <tr>
                <td>
                You should receive a confirmation email momentarily containing additional details. 
            <td />
            </tr>
        </table>
        <div>&nbsp;</div>
        <div class="bannerBottom"></div>
    </form>


</asp:Content>


