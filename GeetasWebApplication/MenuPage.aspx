<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenuPage.aspx.cs" Inherits="GeetasWebApplication.MenuPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="PnllMenuItems" runat="server" CssClass="col-xs-2">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Resources/Briyani_Icon.jpg" Height="174px" Width="183px" />
        
       </asp:Panel>
    
    <asp:Panel ID="Panel2" runat="server" CssClass="col-xs-2">
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Resources/BunnyChowIcon.jpg" Height="174px" Width="183px"/>
</asp:Panel>

     <asp:Panel ID="Panel4" runat="server" CssClass="col-xs-2">
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Resources/Pasta_Icon.jpg" Height="174px" Width="183px"/>
</asp:Panel>
<div style="clear:both">
    <asp:Panel ID="Panel3" runat="server" CssClass="col-xs-2">
        <asp:Button ID="Button1" runat="server" Text="Biryani" />
        </asp:Panel>
    <asp:Panel ID="panel5" runat="server" CssClass="col-xs-2">
         <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Bunny Chow" />
    </asp:Panel>
       <asp:Panel ID="panel6" runat="server" CssClass="col-xs-2">
         <asp:Button ID="Button3" runat="server" OnClick="Button2_Click" Text="Pasta Dishes"/>
    </asp:Panel>
    
    
    </div>
</asp:Content>
