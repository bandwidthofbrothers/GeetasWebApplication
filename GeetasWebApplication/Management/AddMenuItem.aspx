<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageMenuItems.aspx.cs" Inherits="GeetasWebApplication.ManageMenuItems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        ID:</p>
    <p>
        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
    </p>
    <p>
        Item Name:</p>
    <p>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    </p>
    <p>
        Category:</p>
    <p>
        <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>
    </p>
    <p>
        Price:</p>
    <p>
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
    </p>
    <p>
        Add to current menu:</p>
    <p>
        <asp:DropDownList ID="DDL1" runat="server">
            <asp:ListItem Value="1">Yes</asp:ListItem>
            <asp:ListItem Value="0">No</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </p>
    <p>
        <asp:Label ID="lblResult" runat="server"></asp:Label>
    </p>
</asp:Content>