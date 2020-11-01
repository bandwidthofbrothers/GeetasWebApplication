<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenuItem.aspx.cs" Inherits="GeetasWebApplication.MenuItem1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td rowspan="4">
                <asp:Image ID="Image1" runat="server" CssClass="detailsImage" /></td>
            <td><h2>
                <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label>
                <br/>
                </h2></td>
        </tr>
        
            <td>
                <asp:Label ID="lblDescription" runat="server" CssClass="detailsDescription"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblprice" runat="server" CssClass="detailsPrice"></asp:Label>
            </td>
            
            Quantity: <asp:DropDownList ID="ddlAmount" runat="server"></asp:DropDownList>
            
            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
        
        <tr>
            <td>Product number: <asp:Label ID="lblItemNumber" runat="server" Text="Label"></asp:Label></td>
            <td></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Available" CssClass="menuItemPrice"></asp:Label></td>
        </tr>
    </table>
</asp:Content>
