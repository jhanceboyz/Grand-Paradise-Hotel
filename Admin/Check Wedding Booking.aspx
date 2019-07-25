<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Check Wedding Booking.aspx.cs" Inherits="Admin_Check_Accomodation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="style2"> CHECK WEDDING BOOKING</h3>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="booking_id" 
        DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="booking_id" HeaderText="booking_id" ReadOnly="True" 
                SortExpression="booking_id" />
            <asp:BoundField DataField="bridename" HeaderText="bridename" 
                SortExpression="bridename" />
            <asp:BoundField DataField="groomname" HeaderText="groomname" 
                SortExpression="groomname" />
            <asp:BoundField DataField="email" HeaderText="email" 
                SortExpression="email" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
            <asp:BoundField DataField="city" HeaderText="city" 
                SortExpression="city" />
            <asp:BoundField DataField="wedding_id" HeaderText="wedding_id" 
                SortExpression="wedding_id" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
        
    SelectCommand="SELECT * FROM [wedding booking] ORDER BY [booking_id] DESC" 
        DeleteCommand="DELETE FROM [wedding booking] WHERE [booking_id] = @booking_id" 
        InsertCommand="INSERT INTO [wedding booking] ([booking_id], [bridename], [groomname], [email], [mobile], [city], [wedding_id], [date], [time], [Status]) VALUES (@booking_id, @bridename, @groomname, @email, @mobile, @city, @wedding_id, @date, @time, @Status)" 
        UpdateCommand="UPDATE [wedding booking] SET [bridename] = @bridename, [groomname] = @groomname, [email] = @email, [mobile] = @mobile, [city] = @city, [wedding_id] = @wedding_id, [date] = @date, [time] = @time, [Status] = @Status WHERE [booking_id] = @booking_id">
        <DeleteParameters>
            <asp:Parameter Name="booking_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="booking_id" Type="Int32" />
            <asp:Parameter Name="bridename" Type="String" />
            <asp:Parameter Name="groomname" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="wedding_id" Type="String" />
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="time" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="bridename" Type="String" />
            <asp:Parameter Name="groomname" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="wedding_id" Type="String" />
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="time" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="booking_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

