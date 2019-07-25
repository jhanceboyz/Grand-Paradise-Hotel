﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Package.aspx.cs" Inherits="Accomodation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="vc_row wpb_row vc_row-fluid margin-bottom-none padding-bottom-40">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" RepeatColumns="3" >
    <ItemTemplate>  
    <div class="vc_col-sm-12 wpb_column vc_column_container">     
		<div class="wpb_wrapper">
			<div class='featured margin-top-25 '>
                <h5><asp:Label ID="Label4" runat="server" Text='<%# Eval("Packagetype") %>'></asp:Label></h5>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image1") %>' Width="300px" />
                <p><asp:Label ID="Label1" runat="server" Text='<%# Eval("description") %>'></asp:Label></p>
                 
                    <b>Price:</b><br><div class="figure">₹<asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>'></asp:Label><br></div>
			        <br /><br />
                <asp:Button ID="Button2" runat="server" PostBackUrl='<%# Eval("id", "~/PackageDesc.aspx?i={0}") %>' Text="View Gallery" /> &nbsp; &nbsp;
                <asp:Button ID="Button1" runat="server" PostBackUrl='<%# Eval("id", "~/PackageBooking.aspx?i={0}") %>' Text="Book Now" />  
                 	
            </div>
		</div> 
	</div> 
    </ItemTemplate>
    </asp:DataList>
</div>
 
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [PackageTable]"></asp:SqlDataSource>
    
</asp:Content>

