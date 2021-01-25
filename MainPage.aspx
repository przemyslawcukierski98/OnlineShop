<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="OnlineShop.MainPage" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:Panel ID="MainPagePanel" runat="server" BackColor="#E8EAE6" Height="600px" HorizontalAlign="Center" style="margin-bottom: 27px">
    <br />
    <asp:Label ID="StronaGlownaTitle" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="XX-Large" Text="Strona główna"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="StronaGlownaDescription" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="XX-Large" Text="Witaj na stronie głównej Naszego sklepu. Zapraszamy do zakupów!"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <asp:Image ID="ImageView" runat="server" Height="263px" ImageUrl="~/Images/logo.png" Width="262px" />

        <br />
    </asp:Panel>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:Panel ID="FooterPanel" runat="server" BackColor="#654062" Height="250px" HorizontalAlign="Center" style="margin-top: 105px">
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
