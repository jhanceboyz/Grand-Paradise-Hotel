<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Booking Wedding.aspx.cs" Inherits="Defaultwed" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style2
        {
           width: 51%;
            text-align:right;
            padding:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 style="text-align: center">
        GIVE YOUR DETAIL TO BOOK A WEDDING</h3>
   
            <table class="style1">
                <tr>
                    <td class="style2">
                        Wedding Type</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Wedding Rent</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Bride Name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <cc1:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" 
                            runat="server" Enabled="True" TargetControlID="TextBox2" 
                            ValidChars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ">
                        </cc1:FilteredTextBoxExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Enter Bride Name" 
                            ValidationGroup="a"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Groom Name</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <cc1:FilteredTextBoxExtender ID="TextBox3_FilteredTextBoxExtender" 
                            runat="server" Enabled="True" TargetControlID="TextBox3" 
                            ValidChars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ">
                        </cc1:FilteredTextBoxExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="Enter Groom Name" 
                            ValidationGroup="a"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Mobile</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" 
                            ontextchanged="TextBox4_TextChanged" MaxLength="10"></asp:TextBox>
                        <cc1:FilteredTextBoxExtender ID="TextBox4_FilteredTextBoxExtender" 
                            runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox4">
                        </cc1:FilteredTextBoxExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="Enter Mobile Number" 
                            ValidationGroup="a"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Invalid" 
                            MaximumValue="99999999999" MinimumValue="7200000000" Type="Double" 
                            ValidationGroup="a"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Email ID</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="Enter Email ID" ValidationGroup="a"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Date</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" AutoPostBack="True" 
                            ontextchanged="TextBox6_TextChanged"></asp:TextBox>
                        <cc1:CalendarExtender ID="TextBox6_CalendarExtender" runat="server" 
                            Enabled="True" TargetControlID="TextBox6">
                        </cc1:CalendarExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="TextBox6" ErrorMessage="Enter Date" ValidationGroup="a"></asp:RequiredFieldValidator>
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Time</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Select Time</asp:ListItem>
                            <asp:ListItem>Morning</asp:ListItem>
                            <asp:ListItem>Noon</asp:ListItem>
                            <asp:ListItem>Evening</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="DropDownList1" ErrorMessage="Select Time" 
                            ValidationGroup="a"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        City</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        <cc1:FilteredTextBoxExtender ID="TextBox8_FilteredTextBoxExtender" 
                            runat="server" Enabled="True" TargetControlID="TextBox8" 
                            ValidChars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ">
                        </cc1:FilteredTextBoxExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="TextBox8" ErrorMessage="Enter City" ValidationGroup="a"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                            Text="Proceed To Payment" ValidationGroup="a" Width="162px" />
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                    </td>
                </tr>
            </table>
        
    </asp:Content>

