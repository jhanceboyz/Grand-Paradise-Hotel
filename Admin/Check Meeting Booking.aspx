﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Check Meeting Booking.aspx.cs" Inherits="Admin_Check_Accomodation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="style2"> CHECK MEETING BOOKING</h3>
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
            <asp:BoundField DataField="email" HeaderText="email" 
                SortExpression="email" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="age" HeaderText="age" 
                SortExpression="age" />
            <asp:BoundField DataField="city" HeaderText="city" 
                SortExpression="city" />
            <asp:BoundField DataField="Meeting_id" HeaderText="Meeting_id" 
                SortExpression="Meeting_id" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="time" HeaderText="time" 
                SortExpression="time" />
            <asp:DynamicField DataField="Status" HeaderText="Status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
        
        
        SelectCommand="SELECT * FROM [MeetingBookingTable] ORDER BY [booking_id] DESC" 
        DeleteCommand="DELETE FROM [MeetingBookingTable] WHERE [booking_id] = @booking_id" 
        InsertCommand="INSERT INTO [MeetingBookingTable] ([booking_id], [name], [mobile], [email], [gender], [age], [city], [Meeting_id], [date], [time], [Status]) VALUES (@booking_id, @name, @mobile, @email, @gender, @age, @city, @Meeting_id, @date, @time, @Status)" 
        UpdateCommand="UPDATE [MeetingBookingTable] SET [name] = @name, [mobile] = @mobile, [email] = @email, [gender] = @gender, [age] = @age, [city] = @city, [Meeting_id] = @Meeting_id, [date] = @date, [time] = @time, [Status] = @Status WHERE [booking_id] = @booking_id">
        <DeleteParameters>
            <asp:Parameter Name="booking_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="booking_id" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="age" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="Meeting_id" Type="Int32" />
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="time" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="age" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="Meeting_id" Type="Int32" />
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="time" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="booking_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

