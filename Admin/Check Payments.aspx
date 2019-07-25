<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Check Payments.aspx.cs" Inherits="Admin_Check_Accomodation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">

        .style2
        {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="style2"> CHECK ALL PAYMENT DETAILS</h3>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="payment_id" 
        DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:BoundField DataField="payment_id" HeaderText="payment_id" ReadOnly="True" 
                SortExpression="payment_id" />
            <asp:BoundField DataField="booking_id" HeaderText="booking_id" 
                SortExpression="booking_id" />
            <asp:BoundField DataField="amount" HeaderText="amount" 
                SortExpression="amount" />
            <asp:BoundField DataField="cardtype" HeaderText="cardtype" 
                SortExpression="cardtype" />
            <asp:BoundField DataField="cardnumber" HeaderText="cardnumber" 
                SortExpression="cardnumber" />
            <asp:BoundField DataField="nameoncard" HeaderText="nameoncard" 
                SortExpression="nameoncard" />
            <asp:BoundField DataField="expdate" HeaderText="expdate" 
                SortExpression="expdate" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
        SelectCommand="SELECT * FROM [payment] ORDER BY [booking_id] DESC">
    </asp:SqlDataSource>
</asp:Content>

