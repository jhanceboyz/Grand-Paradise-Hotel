using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Defaultspa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
 data1 dc = new data1();
        
        var dat = from tmp in dc.ResturantTables where tmp.id == Convert.ToInt32( Request.QueryString["i"].ToString()) select tmp;
        if (dat.Count() != 0)
        {
            Label1.Text = dat.First().ResturantType;
            Label2.Text = dat.First().Price.ToString();
            HiddenField1.Value = dat.First().id.ToString();
        }
            
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        if (TextBox3.Text.Length == 10)
        {
            Literal1.Text = "";
        }
        else
        {
            Literal1.Text = "Invalid Phone No";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Literal1.Text == "")
        {
            data1 dc = new data1();
            var data = from tmp in dc.SystemTables where tmp.id == 1 select tmp;
            ResturantBookingTable obj = new ResturantBookingTable();
            obj.booking_id = Convert.ToInt32(data.First().BookingId);
            obj.age = TextBox5.Text;
            obj.city = TextBox6.Text;
            obj.date = TextBox1.Text;
            obj.email = TextBox4.Text;
            obj.gender = RadioButtonList1.SelectedValue;
            obj.mobile = TextBox3.Text;
            obj.name = TextBox2.Text;
            obj.time = DropDownList3.SelectedValue;
            obj.Status = "Booked";
            obj.Resturant_id = Convert.ToInt32( HiddenField1.Value);
            dc.ResturantBookingTables.InsertOnSubmit(obj);
            data.First().BookingId = data.First().BookingId + 1;           
            dc.SubmitChanges();
            Session["bid"] = obj.booking_id;
            Session["amnt"] = Label2.Text;
            Session["date"] = TextBox1.Text;
            Session["time"] = DropDownList3.SelectedValue;
            Response.Redirect("~/Payment For.aspx");
        }
    }
   
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        TextBox1_CalendarExtender.SelectedDate = Convert.ToDateTime(TextBox1.Text);
        if (TextBox1_CalendarExtender.SelectedDate <= System.DateTime.Now.Date.Date)
        {
            Literal1.Text = "Invalid Date Selection";
        }
        else
        {
            Literal1.Text = "";
        }
    }
}
