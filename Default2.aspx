<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:DataList ID="DataList1" runat="server" DataKeyField="Roomid" DataSourceID="SqlDataSource2">
<ItemTemplate>
    <asp:Label ID="Label1" runat="server" Text='<%# Eval("description") %>'></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text='<%# Eval("description1") %>'></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Text='<%# Eval("roomtype") %>'></asp:Label>
    <br />
    <asp:Label ID="Label4" runat="server" Text='<%# Eval("roomrent") %>'></asp:Label>
    <br />
</ItemTemplate>
</asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [room table] WHERE ([Roomid] = @Roomid)">
        <SelectParameters><asp:QueryStringParameter Name="Roomid" QueryStringField="i" Type="Int32" /></SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

