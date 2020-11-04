<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="GeetasWebApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Hungry???</h1>
        <br /><br />

        <p class="lead" style="font-family: 'Californian FB'; font-size: 33px; width: 999px;">&nbsp;Look at the Menu</p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Menu" />
        </p>

        <br />

        <p class ="lead"style="font-family: 'Californian FB'; font-size: 33px">Order Now</p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Order Online" />
        </p>

        <br />

        <p class ="lead"style="font-family: 'Californian FB'; font-size: 33px">Place an order using our socials</p>
        <p>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="49px" ImageUrl="~/Resources/whatsapp.png" Width="64px" />
            &nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="49px" ImageUrl="~/Resources/instagram.png" Width="64px" />
            &nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton3" runat="server" Height="49px" ImageUrl="~/Resources/facebook.png" Width="64px" OnClick="ImageButton3_Click" />
        </p>
        
        <br />

        <p class ="lead"style="font-family: 'Californian FB'; font-size: 33px">Call Us</p>
        <p> <asp:ImageButton ID="ImageButton4" runat="server" Height="49px" ImageUrl="~/Resources/phone.png" Width="64px" /></p>
   
    </div>
      

    <div class="row">
        <div class="col-md-4">
            <h2>Place an order now</h2>
            <i class="fas fa-phone-square-alt"></i>
            <i class="fab fa-whatsapp"></i>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>
    

<script src="https://use.fontawesome.com/6929d9a29d.js"></script>
</asp:Content>
