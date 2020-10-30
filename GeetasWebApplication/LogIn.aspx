<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="GeetasWebApplication.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

  <p>&nbsp;</p> 
    <p>E-mail</p>
    <p> <asp:TextBox ID="EmailTxt" runat="server" Width="244px"></asp:TextBox></p>
   
   <p>Password</p>
    <p>
        <input id="Password1" type="password" /></p>
   <p><asp:Button ID="loginBtn" runat="server" Text="Login" OnClick="loginBtn_Click"></asp:Button></p>  
         
        <p>Not registered yet? Sign up here</p>
      <p>Name</p>
        <p><asp:TextBox ID="nameTxt" runat="server" Width="244px"></asp:TextBox></p>
        <p>E-mail</p>
        <p><asp:TextBox ID="Textbox1" runat="server" Width="244px"></asp:TextBox></p>
        <p>Contact Number</p>
        <p><asp:TextBox ID="cellTxt" runat="server" Width="244px"></asp:TextBox></p>
        <p>Address</p>
        <p><asp:TextBox ID="addressTxt" runat="server" Width="244px"></asp:TextBox></p>
    <p>Password</p>
    <p>
        <input id="Text1" type="text" /></p>
    <p><asp:Button ID="RegisterBtn" runat="server" Text="Register" OnClick="RegisterBtn_Click"></asp:Button></p>






</asp:Content>

