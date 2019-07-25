<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Edit Wedding.aspx.cs" Inherits="Admin_Check_Accomodation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">

        .style2
        {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="style2"> EDIT WEDDING TYPE</h3>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="weddingid" 
        DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            <asp:BoundField DataField="weddingid" HeaderText="weddingid" 
                SortExpression="weddingid" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="weddingtype" HeaderText="weddingtype" 
                SortExpression="weddingtype" />
            <asp:BoundField DataField="priceforveg" HeaderText="priceforveg" 
                SortExpression="priceforveg" />
            <asp:BoundField DataField="pricefornonveg" HeaderText="pricefornonveg" 
                SortExpression="pricefornonveg" />
            <asp:BoundField DataField="pricewithalcohol" HeaderText="pricewithalcohol" 
                SortExpression="pricewithalcohol" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
        SelectCommand="SELECT [weddingid], [weddingtype], [priceforveg], [pricefornonveg], [pricewithalcohol] FROM [wedding type]" 
        DeleteCommand="DELETE FROM [wedding type] WHERE [weddingid] = @weddingid" 
        InsertCommand="INSERT INTO [wedding type] ([weddingtype], [priceforveg], [pricefornonveg], [pricewithalcohol]) VALUES (@weddingtype, @priceforveg, @pricefornonveg, @pricewithalcohol)" 
        
        UpdateCommand="UPDATE [wedding type] SET [weddingtype] = @weddingtype, [priceforveg] = @priceforveg, [pricefornonveg] = @pricefornonveg, [pricewithalcohol] = @pricewithalcohol WHERE [weddingid] = @weddingid">
        <DeleteParameters>
            <asp:Parameter Name="weddingid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="weddingtype" Type="String" />
            <asp:Parameter Name="priceforveg" Type="String" />
            <asp:Parameter Name="pricefornonveg" Type="String" />
            <asp:Parameter Name="pricewithalcohol" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="weddingtype" Type="String" />
            <asp:Parameter Name="priceforveg" Type="String" />
            <asp:Parameter Name="pricefornonveg" Type="String" />
            <asp:Parameter Name="pricewithalcohol" Type="String" />
            <asp:Parameter Name="weddingid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

