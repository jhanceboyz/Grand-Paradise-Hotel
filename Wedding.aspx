<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Wedding.aspx.cs" Inherits="Accomodation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="vc_row wpb_row vc_row-fluid margin-bottom-none padding-bottom-40">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="weddingid" DataSourceID="SqlDataSource1" RepeatColumns="3" >
    <ItemTemplate>  
    <div class="vc_col-sm-12 wpb_column vc_column_container">     
		<div class="wpb_wrapper">
			<div class='featured margin-top-25 '>
                <h5><asp:Label ID="Label3" runat="server" Text='<%# Eval("weddingtype") %>'></asp:Label></h5>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Width="300px" />
                <p><asp:Label ID="Label1" runat="server" Text='<%# Eval("description1") %>'></asp:Label></p>
                 
                    <b>Price For Veg:</b><br><div class="figure">₹<asp:Label ID="Label2" runat="server" Text='<%# Eval("priceforveg") %>'></asp:Label><br></div>
                    <b>Price For Non Veg:</b><br><div class="figure">₹<asp:Label ID="Label4" runat="server" Text='<%# Eval("pricefornonveg") %>'></asp:Label><br></div>
                    <b>Price For Alcohol:</b><br><div class="figure">₹<asp:Label ID="Label5" runat="server" Text='<%# Eval("pricewithalcohol") %>'></asp:Label><br></div>
			        <br /><br />
                <asp:Button ID="Button2" runat="server" PostBackUrl='<%# Eval("weddingid", "~/WeddingDesc.aspx?i={0}") %>' Text="View Gallery" /> &nbsp; &nbsp;
                <asp:Button ID="Button1" runat="server" PostBackUrl='<%# Eval("weddingid", "~/Booking Wedding.aspx?i={0}") %>' Text="Book Now" />  	
            </div>
		</div> 
	</div> 
    </ItemTemplate>
    </asp:DataList>
</div>
 
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [wedding type]"></asp:SqlDataSource>
    
</asp:Content>

