<%@ Page Title="" Language="C#" MasterPageFile="~/Project3.Master" AutoEventWireup="true" CodeBehind="overview.aspx.cs" Inherits="Project3.Admin.overview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
    <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName" />
        </Columns>
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project3ConnectionString %>" SelectCommand="SELECT u.UserName, r.RoleName FROM aspnet_Users AS u INNER JOIN aspnet_UsersInRoles AS ur ON u.UserId = ur.UserId INNER JOIN aspnet_Roles AS r ON ur.RoleId = r.RoleId WHERE (u.ApplicationId IN (SELECT ApplicationId FROM aspnet_Applications AS a WHERE (ApplicationName = 'Project3')))"></asp:SqlDataSource>
    
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
