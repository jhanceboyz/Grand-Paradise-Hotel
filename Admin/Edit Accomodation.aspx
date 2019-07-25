<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Edit Accomodation.aspx.cs" Inherits="Admin_Check_Accomodation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">

        .style2
        {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="style2"> EDIT ACCOMODATION TYPE</h3>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="Roomid" 
        DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            <asp:BoundField DataField="roomtype" HeaderText="roomtype" 
                SortExpression="roomtype" />
            <asp:BoundField DataField="Roomid" HeaderText="Roomid" 
                SortExpression="Roomid" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="roomrent" HeaderText="roomrent" 
                SortExpression="roomrent" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
        SelectCommand="SELECT [roomtype], [Roomid], [roomrent] FROM [room table]" 
        DeleteCommand="DELETE FROM [room table] WHERE [Roomid] = @Roomid" 
        InsertCommand="INSERT INTO [room table] ([roomtype], [roomrent]) VALUES (@roomtype, @roomrent)" 
        UpdateCommand="UPDATE [room table] SET [roomtype] = @roomtype, [roomrent] = @roomrent WHERE [Roomid] = @Roomid">
        <DeleteParameters>
            <asp:Parameter Name="Roomid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="roomtype" Type="String" />
            <asp:Parameter Name="roomrent" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="roomtype" Type="String" />
            <asp:Parameter Name="roomrent" Type="String" />
            <asp:Parameter Name="Roomid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

