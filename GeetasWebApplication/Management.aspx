<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Management.aspx.cs" Inherits="GeetasWebApplication.Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn" PostBackUrl="~/ManageMenuItems.aspx">Add New Item</asp:LinkButton>
    <asp:GridView ID="gvMenuItems" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MenuItemID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="385px" Width="100%">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="MenuItemID" HeaderText="MenuItemID" ReadOnly="True" SortExpression="MenuItemID" />
            <asp:BoundField DataField="MenuItemName" HeaderText="MenuItemName" SortExpression="MenuItemName" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            <asp:BoundField DataField="MenuItemPrice" HeaderText="MenuItemPrice" SortExpression="MenuItemPrice" />
            <asp:BoundField DataField="CurrentMenuItem" HeaderText="CurrentMenuItem" SortExpression="CurrentMenuItem" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group22ConnectionString %>" DeleteCommand="DELETE FROM [MenuItem] WHERE [MenuItemID] = @MenuItemID" InsertCommand="INSERT INTO [MenuItem] ([MenuItemName], [Category], [MenuItemPrice], [CurrentMenuItem]) VALUES (@MenuItemName, @Category, @MenuItemPrice, @CurrentMenuItem)" ProviderName="<%$ ConnectionStrings:group22ConnectionString.ProviderName %>" SelectCommand="SELECT [MenuItemID], [MenuItemName], [Category], [MenuItemPrice], [CurrentMenuItem] FROM [MenuItem]" UpdateCommand="UPDATE [MenuItem] SET [MenuItemName] = @MenuItemName, [Category] = @Category, [MenuItemPrice] = @MenuItemPrice, [CurrentMenuItem] = @CurrentMenuItem WHERE [MenuItemID] = @MenuItemID">
        <DeleteParameters>
            <asp:Parameter Name="MenuItemID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MenuItemName" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="MenuItemPrice" Type="Decimal" />
            <asp:Parameter Name="CurrentMenuItem" Type="Byte" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MenuItemName" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="MenuItemPrice" Type="Decimal" />
            <asp:Parameter Name="CurrentMenuItem" Type="Byte" />
            <asp:Parameter Name="MenuItemID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />
<br />
<br />
</asp:Content>
