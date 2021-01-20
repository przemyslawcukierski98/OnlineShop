<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Cennik.aspx.cs" Inherits="OnlineShop.Cennik" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="CennikPanel" runat="server" BackColor="#E8EAE6" Height="1900px" HorizontalAlign="Center">
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([GroupName] = @GroupName)" DeleteCommand="DELETE FROM [Products] WHERE [ProductId] = @ProductId" InsertCommand="INSERT INTO [Products] ([ProductId], [Name], [Price], [Descirption], [ImageUri], [GroupName]) VALUES (@ProductId, @Name, @Price, @Descirption, @ImageUri, @GroupName)" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Price] = @Price, [Descirption] = @Descirption, [ImageUri] = @ImageUri, [GroupName] = @GroupName WHERE [ProductId] = @ProductId">
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
            <SelectParameters>
                <asp:ControlParameter ControlID="GroupDropDown" Name="GroupName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Descirption" Type="String" />
                <asp:Parameter Name="ImageUri" Type="String" />
                <asp:Parameter Name="GroupName" Type="String" />
                <asp:Parameter Name="ProductId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Groups]"></asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="LogoutButton" runat="server" BackColor="#654062" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="50px" OnClick="LogoutButton_Click" style="margin-left: 0px; margin-bottom: 0px" Text="Wyloguj się" Width="150px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="OAutorachTitle" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="XX-Large" Text="Cennik"></asp:Label>
        <br />
        <br />
        <asp:Label ID="CategoriesLabel" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="X-Large" Text="Wybierz kategorię:"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="GroupDropDown" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" style="margin-left: 0px" Width="379px">
        </asp:DropDownList>
        &nbsp;&nbsp;
        <asp:Button ID="ChooseButton" runat="server" BackColor="#654062" BorderStyle="Solid" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="45px" Text="Wybierz" Width="120px" />
        <br />
        <br />
        <br />
        <asp:Label ID="ProductsLabel" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="X-Large" Text="Wybierz produkt:"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="ProductsGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" GridLines="None" style="margin-right: 89px" Width="1383px" OnSelectedIndexChanged="ProductsGridView_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ProductId" HeaderText="ID produktu" ReadOnly="True" SortExpression="ProductId" />
                <asp:BoundField DataField="Name" HeaderText="Nazwa" SortExpression="Name" />
                <asp:BoundField DataField="Price" HeaderText="Cena" SortExpression="Price" />
                <asp:BoundField DataField="Descirption" HeaderText="Opis produktu" SortExpression="Descirption" />
                <asp:BoundField DataField="ImageUri" SortExpression="ImageUri" HeaderText="Zdjęcie" Visible="False" />
                <asp:BoundField DataField="GroupName" HeaderText="GroupName" SortExpression="GroupName" Visible="False" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <br />
        <asp:GridView ID="GridViewPom" runat="server" Visible="False">
        </asp:GridView>
        <br />
        <asp:Label ID="ProductsDetailsLabel" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="X-Large" Text="Wyszukaj produkt:"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="SearchProductTextbox" runat="server" Height="30px" Width="500px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="#654062" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="43px" OnClick="Button1_Click" Text="Szukaj" Width="112px" />
        <br />
        <br />
        <br />
        <asp:Panel ID="ProductDetailsPanel" runat="server" Height="753px" BackColor="#E9C496" Visible="False">
            <br />
            <br />
            <asp:Label ID="NameOfProductLabel" runat="server" Font-Names="Javanese Text" Font-Size="X-Large" Text="nazwa produktu" Font-Bold="True" ForeColor="#433D3C"></asp:Label>
            <br />
            <asp:Label ID="NameOfCategoryLabel" runat="server" Font-Names="Javanese Text" Font-Size="X-Large" ForeColor="#944E6C" Text="kategoria" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <asp:Image ID="ProductImage" runat="server" Height="312px" Width="340px" BorderStyle="Solid" ForeColor="#6600FF" />
            <br />
            <br />
            <br />
            <asp:Label ID="DescriptionLabel" runat="server" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#944E6C" Text="opis produktu" Font-Bold="False" Font-Italic="False"></asp:Label>
            <br />
            <br />
            <asp:Label ID="PriceLabel" runat="server" Font-Names="Javanese Text" Font-Size="X-Large" ForeColor="#6600FF" Text="cena" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
        <br />
        <br />
        <br />
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
