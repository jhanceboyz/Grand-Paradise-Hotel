using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RooMbk : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        data1 dc = new data1();
        
        var dat = from tmp in dc.room_tables where tmp.Roomid == Convert.ToInt32( Request.QueryString["i"].ToString()) select tmp;
        if (dat.Count() != 0)
        {
            Label1.Text = dat.First().roomtype;
            Label2.Text = dat.First().roomrent;
            HiddenField1.Value = dat.First().Roomid.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Literal1.Text == "")
        {
            data1 dc = new data1();
            var data1 = from tmp in dc.room_bookings where tmp.date == TextBox1.Text select tmp;
            if (data1.Count() <= 20)
            {
                var data = from tmp in dc.SystemTables where tmp.id == 1 select tmp;
                room_booking obj = new room_booking();
                obj.booking_id = Convert.ToInt32(data.First().BookingId);
                obj.age = Convert.ToInt16(TextBox5.Text);
                obj.city = TextBox6.Text;
                obj.date = TextBox1.Text;
                obj.email_id = TextBox4.Text;
                obj.gender = RadioButtonList1.SelectedValue;
                obj.mobile = Convert.ToDecimal(TextBox3.Text);
                obj.name = TextBox2.Text;
                obj.noofperson = Convert.ToInt16(DropDownList2.Text);
                obj.noofrooms = Convert.ToInt16(DropDownList1.SelectedValue);
                obj.room_id = Convert.ToInt32(HiddenField1.Value);
                obj.time = DropDownList3.SelectedValue;
                obj.idproof = "~/IdProof/" + obj.booking_id + ".jpg";
                obj.Status = "Booked";
                dc.room_bookings.InsertOnSubmit(obj);
                data.First().BookingId = data.First().BookingId + 1;
                FileUpload1.SaveAs(Server.MapPath(obj.idproof));
                dc.SubmitChanges();
                Session["bid"] = obj.booking_id;
                Session["amnt"] = Label4.Text;
                Session["date"] = TextBox1.Text;
                Session["time"] = DropDownList3.SelectedValue;
                Response.Redirect("~/Payment For.aspx");
            }
            else
            {
                Literal1.Text = "Booking Full For The Selected Date, Kindly Choose Another Date";
            }
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        Label4.Text = (Convert.ToInt32(Label2.Text) * Convert.ToInt32(DropDownList1.SelectedValue)).ToString();
        int j = 3* Convert.ToInt16(DropDownList1.SelectedValue);
        DropDownList2.Items.Clear();
        for (int i = 1; i <= j; i++)
        {

            DropDownList2.Items.Add(i.ToString());
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