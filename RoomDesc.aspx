<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="RoomDesc.aspx.cs" Inherits="RoomDesc" %>

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
            <asp:DataList ID="DataList2" runat="server" DataKeyField="Roomid" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <h2><asp:Label ID="Label1" runat="server" Text='<%# Eval("roomtype") %>'></asp:Label></h2>
                <p><asp:Label ID="Label2" runat="server" Text='<%# Eval("description") %>'></asp:Label></p>
                <p><asp:Label ID="Label3" runat="server" Text='<%# Eval("description1") %>'></asp:Label></p><br />
                <div class="project_details"><ul><li><i class='fa fa-check-circle'> Price: ₹ <asp:Label ID="Label4" runat="server" Text='<%# Eval("roomrent") %>'></asp:Label>/- For a Day</i></li></ul></div>   
                <asp:Button ID="Button1" runat="server" PostBackUrl='<%# Eval("Roomid", "~/Booking Room.aspx?i={0}") %>' Text="Book Now" />              
            </ItemTemplate>
            </asp:DataList>           
        </div>       
    </div></div>    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [room table] WHERE ([Roomid] = @Roomid)">
        <SelectParameters><asp:QueryStringParameter Name="Roomid" QueryStringField="i" Type="Int32" /></SelectParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>

