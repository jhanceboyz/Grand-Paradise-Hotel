<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Payment For.aspx.cs" Inherits="Payment_For" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 52%;
            padding-right:20px;
            text-align:right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
       <h3 style="text-align: center"> PAYMENT FORM</h3>
       <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
           <asp:View ID="View1" runat="server">
               <table class="style1">
                   <tr>
                       <td class="style2">
                           Booking ID</td>
                       <td>
                           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="style2">
                           Amount To Be Paid</td>
                       <td>
                           <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="style2">
                           Card Type</td>
                       <td>
                           <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="118px">
                               <asp:ListItem Value="0">Select Card Type</asp:ListItem>
                               <asp:ListItem>Debit Card</asp:ListItem>
                               <asp:ListItem>Master Card</asp:ListItem>
                               <asp:ListItem>Visa Card</asp:ListItem>
                               <asp:ListItem>Credit Card</asp:ListItem>
                           </asp:DropDownList>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                               ControlToValidate="DropDownList1" ErrorMessage="Select Card Type" 
                               InitialValue="0" ValidationGroup="a"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="style2">
                           Card Number</td>
                       <td>
                           <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="179px" 
                               AutoPostBack="True" MaxLength="16" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                           <cc1:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" 
                               runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox1">
                           </cc1:FilteredTextBoxExtender>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                               ControlToValidate="TextBox1" ErrorMessage="Enter Card Number" 
                               ValidationGroup="a"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="style2">
                           Name On Card</td>
                       <td>
                           <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="177px"></asp:TextBox>
                           <cc1:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" 
                               runat="server" Enabled="True" TargetControlID="TextBox2" 
                               ValidChars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ">
                           </cc1:FilteredTextBoxExtender>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                               ControlToValidate="TextBox2" ErrorMessage="Enter Name" ValidationGroup="a"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="style2">
                           Expiry Date</td>
                       <td>
                           <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True" 
                               ontextchanged="TextBox3_TextChanged" Height="21px" Width="173px"></asp:TextBox>
                           <cc1:CalendarExtender ID="TextBox3_CalendarExtender" runat="server" 
                               Enabled="True" TargetControlID="TextBox3">
                           </cc1:CalendarExtender>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                               ControlToValidate="TextBox3" ErrorMessage="Expiry Date" ValidationGroup="a"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="style2">
                           CVC/CVV</td>
                       <td>
                           <asp:TextBox ID="TextBox4" runat="server" MaxLength="3" 
                               ontextchanged="TextBox4_TextChanged" TextMode="Password"></asp:TextBox>
                           <cc1:FilteredTextBoxExtender ID="TextBox4_FilteredTextBoxExtender" 
                               runat="server" Enabled="True" TargetControlID="TextBox4" 
                               FilterType="Numbers">
                           </cc1:FilteredTextBoxExtender>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                               ControlToValidate="TextBox4" ErrorMessage="Can't Be Blank" ValidationGroup="a"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="style2">
                           &nbsp;</td>
                       <td>
                           <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                       </td>
                   </tr>
                   <tr>
                       <td class="style2">
                           &nbsp;</td>
                       <td>
                           <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                               Text="Make Payment" ValidationGroup="a" />
                       </td>
                   </tr>
               </table>
           </asp:View>
           <asp:View ID="View2" runat="server">
               Thanx For Book Your Room with Us.. Your Booking Number is
               <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
               .. Your Booking is for the Date
               <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
               &nbsp;and Timing For Your Visit is
               <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
           </asp:View>
       </asp:MultiView>
</asp:Content>

