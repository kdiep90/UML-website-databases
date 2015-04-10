<%@ Page Title="" Language="C#" MasterPageFile="~/Project3.Master" AutoEventWireup="true" CodeBehind="membersRed.aspx.cs" Inherits="project3.teamRed.membersRed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
    <asp:GridView ID="gvBlue" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="5" SelectedIndex="0"  AllowPaging="True" AllowSorting="True" BackColor="Red" DataKeyNames="weapon">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="weapon" HeaderText="weapon" SortExpression="weapon" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [weapon] FROM [Project3]"></asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource2" Height="50px" Width="125px" BackColor="#999999" ForeColor="Red">
        <Fields>
            <asp:BoundField DataField="damage" HeaderText="damage" SortExpression="damage" />
            <asp:BoundField DataField="element" HeaderText="element" SortExpression="element" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Project3] WHERE [id] = @id" InsertCommand="INSERT INTO [Project3] ([damage], [element]) VALUES (@damage, @element)" SelectCommand="SELECT [damage], [element], [id] FROM [Project3] WHERE ([weapon] = @weapon)" UpdateCommand="UPDATE [Project3] SET [damage] = @damage, [element] = @element WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="damage" Type="String" />
            <asp:Parameter Name="element" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="gvBlue" Name="weapon" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="damage" Type="String" />
            <asp:Parameter Name="element" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
