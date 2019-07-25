<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Check Booking.aspx.cs" Inherits="Check_Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h3>Check Your Booking Status</h3>

    <table class="nav-justified">
        <tr>
            <td style="text-align:right; width:52%; padding:10px; font-size:large; font-weight:bold">
                Please Give Your Booking No Here</td>
            <td style="padding:10px">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align:right; width:52%; padding:10px; font-size:large; font-weight:bold">
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
            <td style="padding:10px">
                <asp:Button ID="Button1" runat="server" Text="Check Status" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>

    <br />
    <p style="text-align:center">
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <br />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Cancel Your Booking" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <table class="nav-justified">
                    <tr>
                        <td style="text-align:center; width:52%; padding:10px; font-size:large; font-weight:bold">
                            Sorry For Having Inconvience. Our Team will soon get in touch with you..<br /> 
                            Have A Nice Day..</td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <br />
    </p>

</asp:Content>

