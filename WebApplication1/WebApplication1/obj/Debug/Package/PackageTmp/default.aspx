<%@ Page Title="" Language="C#" MasterPageFile="~/Project1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    <h1>Login Page</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
    <p>User Login ID:</p>
    <asp:TextBox ID="UserLoginID" runat="server"></asp:TextBox>
    <p>Password:</p>
    <asp:TextBox ID="UserPassword" TextMode="password" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnUserSubmit" runat="server" Text="Login" onClick="UserSubmit_Click"/>
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
