<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage1.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="content"><div class="container"><div class="inner-page row wp_page is_sidebar"><div id="post-156" class="post-156 page type-page status-publish hentry col-lg-12 col-md-12 col-sm-12 col-xs-12 page-content post-entry">
<div class="vc_row wpb_row vc_row-fluid margin-bottom-none margin-top-30">
    <div class="vc_col-sm-6 margin-bottom-40 wpb_column vc_column_container"><div class="wpb_wrapper">
	    <div class="wpb_text_column wpb_content_element "><div class="wpb_wrapper"><h3>CONTACT INFORMATION</h3></div></div> 		
        <div class="address clearfix margin-right-25 padding-bottom-40 ">
            <div class="icon_address"><p><i class="fa fa-map-marker"></i><strong>Address:</strong></p></div>
		    <div class="contact_address"><p class="margin-bottom-none">Grand Paradise Hotel<br>107 SUNSET BLVD.,<br />BEVERLY HILLS, CA 90210<br />United States</p></div>
		</div>
		<div class="address clearfix address_details margin-right-25 padding-bottom-40"><ul class="margin-bottom-none">
		    <li><i class="fa fa-phone"></i><strong>Phone:</strong> <span>1-800-567-0123</span></li>		        
            <li><i class="fa fa-envelope-o"></i><strong>Email:</strong> <a href="">support@grandparadise.com</a></li>		        
            <li class="padding-bottom-none"><i class="fa fa-laptop"></i><strong>Web:</strong> <a href="http://www.artitworld.com">www.grandparadise.com</a></li>		    
        </ul></div>
		<div class="clearfix"></div>		
	    <div class="wpb_text_column wpb_content_element "><div class="wpb_wrapper"><h3>BUSINESS HOURS</h3></div></div> 
        <table class="table table-bordered no-border font-12px hours_table ">
		    <thead><tr><td colspan="2"><strong>Sales Department</strong></td></tr></thead>
		    <tbody>
                <tr><td>Mon:</td><td>9:00am - 7:00pm</td></tr>
			    <tr><td>Tue:</td><td>9:00am - 7:00pm</td></tr>
			    <tr><td>Wed:</td><td>9:00am - 7:00pm</td></tr>
			    <tr><td>Thu:</td><td>9:00am - 7:00pm</td></tr>
			    <tr><td>Fri:</td><td>9:00am - 7:00pm</td></tr>
			    <tr><td>Sat:</td><td>9:00am - 7:00pm</td></tr>
			    <tr><td>Sun:</td><td>Closed</td></tr>
		    </tbody>
	    </table>
        <table class="table table-bordered no-border font-12px hours_table ">
		    <thead><tr><td colspan="2"><strong>Service Department</strong></td></tr></thead>
		    <tbody>
                <tr><td>Mon:</td><td>8:00am - 12:00pm</td></tr>
			    <tr><td>Tue:</td><td>8:00am - 12:00pm</td></tr>
			    <tr><td>Wed:</td><td>8:00am - 12:00pm</td></tr>
			    <tr><td>Thu:</td><td>8:00am - 12:00pm</td></tr>
			    <tr><td>Fri:</td><td>8:00am - 12:00pm</td></tr>
			    <tr><td>Sat:</td><td>8:00am - 12:00pm</td></tr>
			    <tr><td>Sun:</td><td>8:00am - 12:00pm</td></tr>
		    </tbody>
	    </table>
        <table class="table table-bordered no-border font-12px hours_table ">
		    <thead><tr><td colspan="2"><strong>Management Department</strong></td></tr></thead>
		    <tbody>
                <tr><td>Mon:</td><td>8:00am - 9:00pm</td></tr>
			    <tr><td>Tue:</td><td>8:00am - 9:00pm</td></tr>
			    <tr><td>Wed:</td><td>8:00am - 9:00pm</td></tr>
			    <tr><td>Thu:</td><td>8:00am - 9:00pm</td></tr>
			    <tr><td>Fri:</td><td>8:00am - 9:00pm</td></tr>
			    <tr><td>Sat:</td><td>8:00am - 9:00pm</td></tr>
			    <tr><td>Sun:</td><td>8:00am - 5:00pm</td></tr>
		    </tbody>
	    </table>
	</div></div> 
    <div class="vc_col-sm-6 wpb_column vc_column_container"><div class="wpb_wrapper">
        <div class="wpb_text_column wpb_content_element "><div class="wpb_wrapper"><h3>CONTACT FORM</h3></div></div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <cc1:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" 
            runat="server" Enabled="True" TargetControlID="TextBox1" 
            WatermarkText="Your Name">
        </cc1:TextBoxWatermarkExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ValidationGroup="1"></asp:RequiredFieldValidator><br /><br />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
        <cc1:TextBoxWatermarkExtender ID="TextBox2_TextBoxWatermarkExtender" 
            runat="server" Enabled="True" TargetControlID="TextBox2" 
            WatermarkText="Your Message">
        </cc1:TextBoxWatermarkExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" ValidationGroup="1"></asp:RequiredFieldValidator><br /><br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <cc1:TextBoxWatermarkExtender ID="TextBox3_TextBoxWatermarkExtender" 
            runat="server" Enabled="True" TargetControlID="TextBox3" 
            WatermarkText="Your Email">
        </cc1:TextBoxWatermarkExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" ValidationGroup="1"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="*" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ValidationGroup="1"></asp:RegularExpressionValidator>
        <br />
        <br />
            <asp:TextBox ID="TextBox4" runat="server" MaxLength="10"></asp:TextBox>
        <cc1:FilteredTextBoxExtender ID="TextBox4_FilteredTextBoxExtender" 
            runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox4">
        </cc1:FilteredTextBoxExtender>
        <cc1:TextBoxWatermarkExtender ID="TextBox4_TextBoxWatermarkExtender" 
            runat="server" Enabled="True" TargetControlID="TextBox4" 
            WatermarkText="Your Mobile No">
        </cc1:TextBoxWatermarkExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="*" ControlToValidate="TextBox4" ValidationGroup="1"></asp:RequiredFieldValidator><br /><br />
            <asp:Button ID="Button1" runat="server" Text="Submit" ValidationGroup="1"></asp:Button>
    </div></div> 
</div></div></div></div></section>
</asp:Content>

