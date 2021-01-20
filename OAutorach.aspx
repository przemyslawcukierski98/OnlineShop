<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="OAutorach.aspx.cs" Inherits="OnlineShop.OAutorach" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="AuthorsPanel" runat="server" BackColor="#E8EAE6" Height="846px" HorizontalAlign="Center">
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="LogoutButton" runat="server" BackColor="#654062" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="50px" OnClick="LogoutButton_Click" Text="Wyloguj się" Width="150px" />
    <br />
        <asp:Label ID="OAutorachTitle" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="XX-Large" Text="O autorach"></asp:Label>
        &nbsp;&nbsp;
        <br />
    <br />
    <br />
    <asp:Image ID="MyPhotoImage" runat="server" Height="408px" ImageUrl="~/Images/myPhoto.jpg" Width="397px" />
    <br />
    <br />
    <br />
    <asp:Label ID="OAutorachDescriptionLabel1" runat="server" Font-Bold="False" Font-Names="Gabriola" Font-Size="X-Large" Text="Przemysław Cukierski"></asp:Label>
    <br />
    <asp:Label ID="OAutorachDescriptionLabel2" runat="server" Font-Bold="False" Font-Names="Gabriola" Font-Size="X-Large" Text="Grupa laboratoryjna: 31 INFSP-PSI/A"></asp:Label>
    <br />
    <asp:Label ID="OAutorachDescriptionLabel3" runat="server" Font-Bold="False" Font-Names="Gabriola" Font-Size="X-Large" Text="Data oddania zadania: 20/01/2021 r."></asp:Label>
    <br />
    <br />
    <br />
</asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <asp:Panel ID="FooterPanel" runat="server" BackColor="#654062" Height="250px" HorizontalAlign="Center" style="margin-top: 0px">
        <br />
        <asp:Label ID="PageTitleLabel" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="XX-Large" ForeColor="#F4F4F4" Text="Skontaktuj się z nami!"></asp:Label>
        <br />
        <asp:Label ID="PageTitleLabel0" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="Large" ForeColor="#F4F4F4" Text="adres: ul. Mieszka I 14, 67-320 Małomice"></asp:Label>
        <br />
        <asp:Label ID="PageTitleLabel1" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="Large" ForeColor="#F4F4F4" Text="telefon: 881 052 365"></asp:Label>
        <br />
        <asp:Label ID="PageTitleLabel2" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="Large" ForeColor="#F4F4F4" Text="e-mail: kontakt@twojprezent.pl"></asp:Label>
        <br />

        <br />
    </asp:Panel>

</asp:Content>
