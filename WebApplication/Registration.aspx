<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <p class="cta"></p>

    <div class="container">
        <div class="section-title" data-aos="zoom-out">
            <h2>Profile</h2>
            <p>Create an Acccount / Sign Up</p>
        </div>

        <asp:Label ID="Login" runat="server" Text="Already have an account? "></asp:Label>
        <a href="Login.aspx">Login</a><br /><br />

        <asp:Label ID="name" runat="server" Text="Full Name"></asp:Label><br />
        <asp:TextBox required="required" ID="txtName" runat="server" Height="43px" Width="404px"></asp:TextBox>
        <br /><br />

        <asp:Label ID="surname" runat="server" Text="Surname"></asp:Label><br />
        <asp:TextBox required="required" ID="txtSurname" runat="server" Height="43px" Width="404px"></asp:TextBox>
        <br /><br />

        <asp:Label ID="username" runat="server" Text="Username"></asp:Label><br />
        <asp:TextBox required="required" ID="txtUsername" runat="server" Height="43px" Width="404px"></asp:TextBox>
        <br /><br />

        <asp:Label ID="email" runat="server" Text="Email address"></asp:Label><br />
        <asp:TextBox ID="txtEmail" runat="server" Height="43px" Width="404px"></asp:TextBox>
        <br /><br />

        <asp:Label ID="Label1" runat="server" Text="Television Crew Department"></asp:Label><br />
        <asp:DropDownList required="required" ID="CrewJob" runat="server" Height="38px" Width="404px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Camera Department</asp:ListItem>
            <asp:ListItem>Sound Department</asp:ListItem>
            <asp:ListItem>Actor & Actresses</asp:ListItem>
            <asp:ListItem>Makeup &amp; Wardrobe</asp:ListItem>
        </asp:DropDownList>
        <br /><br />

        <asp:Label ID="Label2" runat="server" Text="User Type"></asp:Label><br />
        <asp:DropDownList required="required" ID="UserType" runat="server" Height="38px" Width="404px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Individual</asp:ListItem>
            <asp:ListItem>Production House</asp:ListItem>
            <asp:ListItem>Administrator</asp:ListItem>
        </asp:DropDownList>
        <br /><br />

        <asp:Label ID="newpassword" runat="server" Text="Password"></asp:Label><br />
        <asp:TextBox type="password"  required="required" ID="txtPassword" runat="server" Height="43px" Width="404px"
            pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 4 or more characters"></asp:TextBox>
        <br /><br />

        <asp:Label ID="confirmpassword" runat="server" Text="Confirm Password"></asp:Label><br />
        <asp:TextBox type="password" required="required" ID="txtConfirm" runat="server" Height="43px" Width="404px"></asp:TextBox>
        <br />

        <asp:Label runat="server" ID="lblMessage" Text="Password response message"></asp:Label><br /><br />

        <asp:Button ID="btnRegister" runat="server" Text="Register Profile" Height="43px" Width="404px" OnClick="btnRegister_Click" /><br /><br />
            
    </div>
</asp:Content>
