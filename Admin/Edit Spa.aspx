<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Edit Spa.aspx.cs" Inherits="Admin_Check_Accomodation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">

        .style2
        {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="style2"> EDIT SPA TYPE</h3>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="spaid" 
        DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            <asp:BoundField DataField="spaid" HeaderText="spaid" 
                SortExpression="spaid" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="spatype" HeaderText="spatype" 
                SortExpression="spatype" />
            <asp:BoundField DataField="priceofspa" HeaderText="priceofspa" 
                SortExpression="priceofspa" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
        SelectCommand="SELECT [spaid], [spatype], [priceofspa] FROM [spatharapy]" 
        DeleteCommand="DELETE FROM [spatharapy] WHERE [spaid] = @spaid" 
        InsertCommand="INSERT INTO [spatharapy] ([spatype], [priceofspa]) VALUES (@spatype, @priceofspa)" 
        
        UpdateCommand="UPDATE [spatharapy] SET [spatype] = @spatype, [priceofspa] = @priceofspa WHERE [spaid] = @spaid">
        <DeleteParameters>
            <asp:Parameter Name="spaid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="spatype" Type="String" />
            <asp:Parameter Name="priceofspa" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="spatype" Type="String" />
            <asp:Parameter Name="priceofspa" Type="String" />
            <asp:Parameter Name="spaid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

