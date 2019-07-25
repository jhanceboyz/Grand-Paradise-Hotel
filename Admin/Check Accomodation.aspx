<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Check Accomodation.aspx.cs" Inherits="Admin_Check_Accomodation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="style2"> CHECK ACCOMODATION BOOKING</h3>
<br />
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" DataKeyNames="booking_id" 
    DataSourceID="SqlDataSource1" Width="100%">
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="booking_id" HeaderText="booking_id" ReadOnly="True" 
            SortExpression="booking_id" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="mobile" HeaderText="mobile" 
            SortExpression="mobile" />
        <asp:BoundField DataField="email_id" HeaderText="email_id" 
            SortExpression="email_id" />
        <asp:BoundField DataField="room_id" HeaderText="room_id" 
            SortExpression="room_id" />
        <asp:BoundField DataField="noofrooms" HeaderText="noofrooms" 
            SortExpression="noofrooms" />
        <asp:BoundField DataField="noofperson" HeaderText="noofperson" 
            SortExpression="noofperson" />
        <asp:BoundField DataField="idproof" HeaderText="idproof" 
            SortExpression="idproof" />
        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
        <asp:BoundField DataField="age" HeaderText="age" 
            SortExpression="age" />
        <asp:BoundField DataField="gender" HeaderText="gender" 
            SortExpression="gender" />
        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
        <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
        <asp:BoundField DataField="Status" HeaderText="Status" 
            SortExpression="Status" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl='<%# Eval("idproof") %>'>Download</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
        DeleteCommand="DELETE FROM [room booking] WHERE [booking_id] = @booking_id" 
        InsertCommand="INSERT INTO [room booking] ([booking_id], [name], [mobile], [email_id], [room_id], [noofrooms], [noofperson], [idproof], [city], [age], [gender], [date], [time], [Status]) VALUES (@booking_id, @name, @mobile, @email_id, @room_id, @noofrooms, @noofperson, @idproof, @city, @age, @gender, @date, @time, @Status)" 
        SelectCommand="SELECT * FROM [room booking] ORDER BY [booking_id] DESC" 
        UpdateCommand="UPDATE [room booking] SET [name] = @name, [mobile] = @mobile, [email_id] = @email_id, [room_id] = @room_id, [noofrooms] = @noofrooms, [noofperson] = @noofperson, [idproof] = @idproof, [city] = @city, [age] = @age, [gender] = @gender, [date] = @date, [time] = @time, [Status] = @Status WHERE [booking_id] = @booking_id">
        <DeleteParameters>
            <asp:Parameter Name="booking_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="booking_id" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="mobile" Type="Decimal" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="room_id" Type="Int32" />
            <asp:Parameter Name="noofrooms" Type="Int32" />
            <asp:Parameter Name="noofperson" Type="Int32" />
            <asp:Parameter Name="idproof" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="time" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="mobile" Type="Decimal" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="room_id" Type="Int32" />
            <asp:Parameter Name="noofrooms" Type="Int32" />
            <asp:Parameter Name="noofperson" Type="Int32" />
            <asp:Parameter Name="idproof" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="time" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="booking_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

