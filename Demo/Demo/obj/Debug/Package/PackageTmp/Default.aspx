<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    Sales Report
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
    <ul>
        <li><a href="http://foursquare.com">4sq</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
    Last Name:&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource" DataTextField="LastName" DataValueField="LastName">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [LastName] FROM [Employees] ORDER BY [LastName]"></asp:SqlDataSource>
&nbsp;
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
    Acme 2014
</asp:Content>
