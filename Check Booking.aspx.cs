using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Check_Booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = -1;
        data1 dc = new data1();
        var data = from tmp in dc.RoomViews where tmp.booking_id == Convert.ToInt64(TextBox1.Text) select new { tmp.booking_id, tmp.roomtype, tmp.roomrent, tmp.noofrooms, tmp.date, tmp.name, tmp.mobile, tmp.email_id, tmp.Status };
        if (data.Count() != 0)
        {
            GridView1.DataSource = data;
            MultiView1.ActiveViewIndex = 0;
            goto z;
        }
        var data1 = from tmp in dc.SPAViews where tmp.booking_id == Convert.ToInt64(TextBox1.Text) select new { tmp.booking_id, tmp.spatype, tmp.priceofspa, tmp.date, tmp.name, tmp.mobile, tmp.email, tmp.Status };
        if (data1.Count() != 0)
        {
            GridView1.DataSource = data1;
            MultiView1.ActiveViewIndex = 0;
            goto z;
        }
        var data2 = from tmp in dc.ResturantViews where tmp.booking_id == Convert.ToInt64(TextBox1.Text) select new { tmp.booking_id, tmp.ResturantType, tmp.Price, tmp.date, tmp.name, tmp.mobile, tmp.email, tmp.Status }; 
        if (data2.Count() != 0)
        {
            GridView1.DataSource = data2;
            MultiView1.ActiveViewIndex = 0;
            goto z;
        }
        var data3 = from tmp in dc.WeddingViews where tmp.booking_id == Convert.ToInt64(TextBox1.Text) select new { tmp.booking_id, tmp.weddingtype, tmp.priceforveg, tmp.date, tmp.groomname, tmp.mobile, tmp.email, tmp.Status }; 
        if (data3.Count() != 0)
        {
            GridView1.DataSource = data3;
            MultiView1.ActiveViewIndex = 0;
            goto z;
        }
        var data4 = from tmp in dc.MeetingViews where tmp.booking_id == Convert.ToInt64(TextBox1.Text) select new { tmp.booking_id, tmp.event_type, tmp.Price, tmp.date, tmp.name, tmp.mobile, tmp.email, tmp.Status }; ;
        if (data4.Count() != 0)
        {
            GridView1.DataSource = data4;
            MultiView1.ActiveViewIndex = 0;
            goto z;
        }
        var data5 = from tmp in dc.PackageViews where tmp.booking_id == Convert.ToInt64(TextBox1.Text) select new { tmp.booking_id, tmp.PackageType, tmp.Price, tmp.date, tmp.name, tmp.mobile, tmp.email, tmp.Status }; ;
        if (data5.Count() != 0)
        {
            GridView1.DataSource = data5;
            MultiView1.ActiveViewIndex = 0; 
            goto z;
        }
        Literal1.Text = "Please Check Your Booking No";
        goto x;
    z: GridView1.DataBind();
        Literal1.Text = "";
x: TextBox1.Focus();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = -1;
        data1 dc = new data1();
        var data = from tmp in dc.room_bookings where tmp.booking_id == Convert.ToInt64(TextBox1.Text) select tmp;
        if (data.Count() != 0)
        {
            data.First().Status = "Cancelled";
            dc.SubmitChanges();
            goto z;
        }
        var data1 = from tmp in dc.spa_bookings where tmp.booking_id == Convert.ToInt64(TextBox1.Text) select tmp;
        if (data1.Count() != 0)
        {
            data1.First().Status = "Cancelled";
            dc.SubmitChanges();
            goto z;
        }
        var data2 = from tmp in dc.ResturantBookingTables where tmp.booking_id == Convert.ToInt64(TextBox1.Text) select tmp;
        if (data2.Count() != 0)
        {
            data2.First().Status = "Cancelled";
            dc.SubmitChanges();
            goto z;
        }
        var data3 = from tmp in dc.wedding_bookings where tmp.booking_id == Convert.ToInt64(TextBox1.Text) select tmp;
        if (data3.Count() != 0)
        {
            data3.First().Status = "Cancelled";
            dc.SubmitChanges();
            goto z;
        }
        var data4 = from tmp in dc.MeetingBookingTables where tmp.booking_id == Convert.ToInt64(TextBox1.Text) select tmp;
        if (data4.Count() != 0)
        {
            data4.First().Status = "Cancelled";
            dc.SubmitChanges();
            goto z;
        }
        var data5 = from tmp in dc.PackageBookingTables where tmp.booking_id == Convert.ToInt64(TextBox1.Text) select tmp;
        if (data5.Count() != 0)
        {
            data5.First().Status = "Cancelled";
            dc.SubmitChanges();
            goto z;
        }
        Literal1.Text = "Please Check Your Booking No";
        goto x;
    z: dc.SubmitChanges();
        MultiView1.ActiveViewIndex = 1;
    x: TextBox1.Focus();
     
  
    }
}