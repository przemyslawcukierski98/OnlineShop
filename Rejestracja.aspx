<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Rejestracja.aspx.cs" Inherits="OnlineShop.Rejestracja" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:Panel ID="RegistrationPanel" runat="server" Height="1000px" HorizontalAlign="Center">
        <br />
        <asp:Label ID="RejestracjaTitle" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="XX-Large" Text="Rejestracja"></asp:Label>
        <br />
        <br />
        <asp:Label ID="ImieLabel" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="X-Large" Text="Imię:"></asp:Label>
        <br />
        <asp:TextBox ID="ImieTextbox" runat="server" Height="35px" TextMode="Email" Width="350px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="ImieValidationLabel" runat="server" ForeColor="Red" Text="Pole &quot;imię&quot; nie może pozostać puste" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Label ID="NazwiskoLabel" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="X-Large" Text="Nazwisko:"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="NazwiskoTextbox" runat="server" Height="35px" Width="350px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="NazwiskoValidationLabel" runat="server" ForeColor="Red" Text="Pole &quot;nazwisko&quot; nie może pozostać puste" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Label ID="LoginLabel" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="X-Large" Text="Login użytkownika:"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="LoginTextbox" runat="server" Height="35px" TextMode="Password" Width="351px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LoginValidationLabel" runat="server" ForeColor="Red" Text="Pole &quot;login użytkownika&quot; nie może pozostać puste" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Label ID="PasswordLabel" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="X-Large" Text="Hasło użytkownika:"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="PasswordTextbox" runat="server" Height="35px" TextMode="Password" Width="350px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="PasswordValidationLabel" runat="server" ForeColor="Red" Text="Pole &quot;hasło użytkownika&quot; nie może pozostać puste" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="RegistrationButton" runat="server" BackColor="#654062" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="45px" Text="Zarejestruj się" />
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

