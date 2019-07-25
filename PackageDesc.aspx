<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="PackageDesc.aspx.cs" Inherits="RoomDesc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row margin-top-30">
    <div class="col-lg-8 col-md-8 col-xs-12 left-content padding-left-none xs-padding-bottom-40 sm-padding-bottom-40" ><div class="slider padding-left-none padding-right-none"><div class="flexslider flexslider2"><ul class="slides item">
        <li><asp:Image ID="Image1" runat="server" ImageUrl="" Height="450px"/></li>
        <li><asp:Image ID="Image2" runat="server" ImageUrl="" Height="450px"/></li> 
        <li><asp:Image ID="Image3" runat="server" ImageUrl="" Height="450px"/></li> 
        <li><asp:Image ID="Image4" runat="server" ImageUrl="" Height="450px"/></li> 
        <li><asp:Image ID="Image5" runat="server" ImageUrl="" Height="450px"/></li>   
    </ul></div></div></div>
    
    <div class="col-lg-4 col-md-4 right-content padding-right-none xs-padding-left-none sm-padding-left-none"><div class="right_site_job">
        <div class="job sm-padding-bottom-40 xs-padding-bottom-40 xs-padding-top-30">
            <asp:DataList ID="DataList2" runat="server" DataKeyField="id" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <h2><asp:Label ID="Label1" runat="server" Text='<%# Eval("Packagetype") %>'></asp:Label></h2>
                <p><asp:Label ID="Label2" runat="server" Text='<%# Eval("description") %>'></asp:Label></p>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("description1") %>' Font-Bold="True"></asp:Label><br />
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("description2") %>'></asp:Label><br />
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("description3") %>'></asp:Label><br />
                <asp:Label ID="Label7" runat="server" Text='<%# Eval("description4") %>'></asp:Label><br />
                <asp:Label ID="Label8" runat="server" Text='<%# Eval("description5") %>'></asp:Label><br />
                <asp:Label ID="Label9" runat="server" Text='<%# Eval("description6") %>'></asp:Label><br />
                <asp:Label ID="Label10" runat="server" Text='<%# Eval("description7") %>'></asp:Label><br />
                <asp:Label ID="Label11" runat="server" Text='<%# Eval("description8") %>'></asp:Label><br />
                <asp:Label ID="Label12" runat="server" Text='<%# Eval("description9") %>'></asp:Label><br />
                <asp:Label ID="Label13" runat="server" Text='<%# Eval("description10") %>'></asp:Label><br />
                <div class="project_details"><ul><li><i class='fa fa-check-circle'> Price: ₹ <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>/- For a Package</i></li></ul></div>               
                <asp:Button ID="Button1" runat="server" PostBackUrl='<%# Eval("id", "~/PackageBooking.aspx?i={0}") %>' Text="Book Now" />  
            </ItemTemplate>
            </asp:DataList>           
        </div>       
    </div></div>    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Packagetable] WHERE ([id] = @id)">
        <SelectParameters><asp:QueryStringParameter Name="id" QueryStringField="i" Type="Int32" /></SelectParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>

