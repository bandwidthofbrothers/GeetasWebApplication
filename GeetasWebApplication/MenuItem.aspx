<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenuItem.aspx.cs" Inherits="GeetasWebApplication.MenuItem1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td rowspan="4">
                </td>
            <td><h2>
                <asp:Label ID="lblTitle" runat="server" Text="Biryani"></asp:Label>
                
                </h2></td>
        </tr>
        
            
                <asp:Label ID="lblDescription" runat="server" CssClass="detailsDescription"></asp:Label>
            
            
                <asp:Label ID="lblprice" runat="server" CssClass="detailsPrice"></asp:Label>
           
            
                 <asp:DropDownList ID="ddlAmount" runat="server"></asp:DropDownList>
            
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
