<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Konfiguracja.aspx.cs" Inherits="OnlineShop.Konfiguracja" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:Panel ID="KonfiguracjaPanel" runat="server" BackColor="#E8EAE6" Height="2000px" HorizontalAlign="Center">
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Groups] WHERE [GroupId] = @GroupId" InsertCommand="INSERT INTO [Groups] ([GroupId], [Name]) VALUES (@GroupId, @Name)" SelectCommand="SELECT * FROM [Groups]" UpdateCommand="UPDATE [Groups] SET [Name] = @Name WHERE [GroupId] = @GroupId">
            <DeleteParameters>
                <asp:Parameter Name="GroupId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="GroupId" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="GroupId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductId] = @ProductId" InsertCommand="INSERT INTO [Products] ([ProductId], [Name], [Price], [Descirption], [ImageUri], [GroupName]) VALUES (@ProductId, @Name, @Price, @Descirption, @ImageUri, @GroupName)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Price] = @Price, [Descirption] = @Descirption, [ImageUri] = @ImageUri, [GroupName] = @GroupName WHERE [ProductId] = @ProductId">
            <DeleteParameters>
                <asp:Parameter Name="ProductId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductId" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Descirption" Type="String" />
                <asp:Parameter Name="ImageUri" Type="String" />
                <asp:Parameter Name="GroupName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Descirption" Type="String" />
                <asp:Parameter Name="ImageUri" Type="String" />
                <asp:Parameter Name="GroupName" Type="String" />
                <asp:Parameter Name="ProductId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([Imie], [Nazwisko], [Login], [Haslo], [CzyAdmin]) VALUES (@Imie, @Nazwisko, @Login, @Haslo, @CzyAdmin)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [Imie] = @Imie, [Nazwisko] = @Nazwisko, [Login] = @Login, [Haslo] = @Haslo, [CzyAdmin] = @CzyAdmin WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Imie" Type="String" />
                <asp:Parameter Name="Nazwisko" Type="String" />
                <asp:Parameter Name="Login" Type="String" />
                <asp:Parameter Name="Haslo" Type="String" />
                <asp:Parameter Name="CzyAdmin" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Imie" Type="String" />
                <asp:Parameter Name="Nazwisko" Type="String" />
                <asp:Parameter Name="Login" Type="String" />
                <asp:Parameter Name="Haslo" Type="String" />
                <asp:Parameter Name="CzyAdmin" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#654062" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="50px" OnClick="Button1_Click" Text="Wyloguj się" Width="150px" />
        <br />
        <br />
        <asp:Label ID="OAutorachTitle" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="XX-Large" Text="Konfiguracja"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="ZarzadzanieProduktamiTitle" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="X-Large" Text="Zarządzanie produktami"></asp:Label>
        <br />
        <br />
        <br />
        &nbsp;<asp:DetailsView ID="ProductsDetailsView" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ProductId" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="438px" Width="656px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="ProductId" HeaderText="ID produktu" ReadOnly="True" SortExpression="ProductId" />
                <asp:BoundField DataField="Name" HeaderText="Nazwa produktu" SortExpression="Name" />
                <asp:BoundField DataField="Price" HeaderText="Cena produktu" SortExpression="Price" />
                <asp:BoundField DataField="Descirption" HeaderText="Opis produktu" SortExpression="Descirption" />
                <asp:BoundField DataField="ImageUri" HeaderText="URI zdjęcia" SortExpression="ImageUri" />
                <asp:BoundField DataField="GroupName" HeaderText="Nazwa grupy" SortExpression="GroupName" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <br />
        <br />
        <asp:Label ID="ZarzadzanieKategoriamiTitle" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="X-Large" Text="Zarządzanie kategoriami"></asp:Label>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="GroupId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="323px" Width="651px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="GroupId" HeaderText="ID grupy" ReadOnly="True" SortExpression="GroupId" />
                <asp:BoundField DataField="Name" HeaderText="Nazwa grupy" SortExpression="Name" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <br />
        <br />
        <asp:Label ID="ZarzadzanieUzytkownikamiTitle" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="X-Large" Text="Zarządzanie użytkownikami"></asp:Label>
        <br />
        <br />
        <br />
        <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Height="407px" Width="646px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="ID uzytkownika" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Imie" HeaderText="Imię użytkownika" SortExpression="Imie" />
                <asp:BoundField DataField="Nazwisko" HeaderText="Nazwisko użytkownika" SortExpression="Nazwisko" />
                <asp:BoundField DataField="Login" HeaderText="Login użytkownika" SortExpression="Login" />
                <asp:BoundField DataField="Haslo" HeaderText="Hasło użytkownika" SortExpression="Haslo" />
                <asp:BoundField DataField="CzyAdmin" HeaderText="Czy jest administratorem?" SortExpression="CzyAdmin" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
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

