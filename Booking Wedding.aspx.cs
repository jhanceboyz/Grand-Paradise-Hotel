using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Defaultwed : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
          data1 dc = new data1();
        
        var dat = from tmp in dc.wedding_types where tmp.weddingid == Convert.ToInt32( Request.QueryString["i"].ToString()) select tmp;
        if (dat.Count() != 0)
        {
            Label1.Text = dat.First().weddingtype;
            Label2.Text = dat.First().pricefornonveg;
            HiddenField1.Value = dat.First().weddingid.ToString();
        }
            

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         if (Literal1.Text == "")
        {
            data1 dc = new data1();
            var data = from tmp in dc.SystemTables where tmp.id == 1 select tmp;
            wedding_booking obj = new wedding_booking();
            obj.booking_id = Convert.ToInt32(data.First().BookingId);
            obj.bridename= TextBox2.Text;
            obj.groomname=TextBox3.Text;
            obj.date = TextBox6.Text;
            obj.email = TextBox5.Text;
            obj.mobile = TextBox4.Text;
            obj.wedding_id = HiddenField1.Value;
            obj.time=DropDownList1.SelectedValue;
            obj.Status = "Booked";
            dc.wedding_bookings.InsertOnSubmit(obj);
            data.First().BookingId = data.First().BookingId + 1;
            dc.SubmitChanges();
            Session["bid"] = obj.booking_id;
            Session["amnt"] = Label2.Text;
            Session["date"] = TextBox6.Text;
            Session["time"] = DropDownList1.SelectedValue;
            Response.Redirect("~/Payment For.aspx");
    }
}protected void  TextBox4_TextChanged(object sender, EventArgs e)
{

    if (TextBox4.Text.Length==10)
        {
            Literal1.Text = "";
        }
        else
        {
            Literal1.Text = "Invalid Phone No";
        }
    }

    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {
        TextBox6_CalendarExtender.SelectedDate = Convert.ToDateTime(TextBox6.Text);
        if (TextBox6_CalendarExtender.SelectedDate <= System.DateTime.Now.Date.Date)
        {
            Literal1.Text = "Invalid Date Selection";
        }
        else
        {
            Literal1.Text = "";
        }
    }
}