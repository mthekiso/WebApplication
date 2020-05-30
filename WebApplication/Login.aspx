<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p class="cta"></p>

    <div class="container">
        <div class="section-title" data-aos="zoom-out">
            <h2>Profile</h2>
            <p>User Login</p>
        </div>

        <asp:Label ID="lblEmail" runat="server" Text="Users Email address"></asp:Label><br />
        <asp:TextBox ID="Email" runat="server" Height="43px" Width="404px"></asp:TextBox>
        <br /><br />
        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label><br />
        <asp:TextBox ID="Password" type="password" placeholder="Password" runat="server" Height="46px" Width="401px"></asp:TextBox>
        <br /><br />

        <asp:Literal ID="Error" runat="server"></asp:Literal> <br />

        <asp:Button ID="btnLog" runat="server" Text="Log in to your account" Height="46px" Width="406px" OnClick="btnLog_Click" /><br /><br />

        <asp:Label ID="reset" runat="server" Text="Forgot "></asp:Label>
        <a href="">Username / Password?</a>
        <br />
        <asp:Label ID="registerlabel" runat="server" Text="Create an account? "></asp:Label>
        <a href="Registration.aspx">Sign Up</a><br /><br />
    
    </div>
</asp:Content>
