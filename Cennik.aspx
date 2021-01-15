<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Cennik.aspx.cs" Inherits="OnlineShop.Cennik" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="CennikPanel" runat="server" BackColor="#E8EAE6" Height="1200px" HorizontalAlign="Center">
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([GroupName] = @GroupName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GroupDropDown" Name="GroupName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Groups]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="OAutorachTitle" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="XX-Large" Text="Cennik"></asp:Label>
        <br />
        <asp:Label ID="CategoriesLabel" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="X-Large" Text="Wybierz kategorię:"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="GroupDropDown" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" style="margin-left: 0px" Width="379px">
        </asp:DropDownList>
        &nbsp;&nbsp;
        <asp:Button ID="ChooseButton" runat="server" BackColor="#654062" BorderStyle="None" Font-Bold="True" Font-Names="Gabriola" Font-Size="Large" ForeColor="White" Height="60px" Text="Wybierz" Width="125px" />
        <br />
        <br />
        <br />
        <asp:Label ID="ProductsLabel" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="X-Large" Text="Wybierz produkt:"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="ProductsGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" GridLines="None" style="margin-right: 89px" Width="1383px">
            <Columns>
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Descirption" HeaderText="Descirption" SortExpression="Descirption" />
                <asp:BoundField DataField="ImageUri" HeaderText="ImageUri" SortExpression="ImageUri" />
                <asp:BoundField DataField="GroupName" HeaderText="GroupName" SortExpression="GroupName" />
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
        <br />
        <asp:Label ID="ProductsDetailsLabel" runat="server" Font-Bold="True" Font-Names="Gabriola" Font-Size="X-Large" Text="Szczegóły wybranego produktu:"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
