<%@ Page Title="" Language="C#" MasterPageFile="~/Project1.Master" AutoEventWireup="true" CodeBehind="userAdmin.aspx.cs" Inherits="WebApplication1.userAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    <h1>Users</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
    <asp:GridView ID="gvUserRoles" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="user_full_name" HeaderText="user_full_name" SortExpression="user_full_name" />
            <asp:BoundField DataField="role_name" HeaderText="role_name" SortExpression="role_name" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT m.user_full_name, u.role_name FROM MyUsers AS m INNER JOIN UserRoles AS u ON m.user_login_id = u.user_login_id"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
