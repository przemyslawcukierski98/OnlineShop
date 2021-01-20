<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Logowanie.aspx.cs" Inherits="OnlineShop.Logowanie" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <asp:Panel ID="LoginPanel" runat="server" HorizontalAlign="Center" Height="549px">
        <asp:Label ID="RejestracjaTitle" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="XX-Large" Text="Logowanie"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="LoginLabel" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="X-Large" Text="Login użytkownika:"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="LoginTextbox" runat="server" Height="35px" Width="350px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="PasswordLabel" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="X-Large" Text="Hasło użytkownika:"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="PasswordTextbox" runat="server" Height="35px" Width="350px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="PasswordValidationLabel" runat="server" ForeColor="Red" Text="Login lub hasło użytkownika są nieprawidłowe" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Button ID="LoginButton" runat="server" BackColor="#654062" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Zaloguj się" OnClick="LoginButton_Click" />
        <br />
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

