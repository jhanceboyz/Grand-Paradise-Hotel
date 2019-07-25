using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment_For : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["bid"].ToString();
        Label2.Text = Session["amnt"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Literal1.Text == "")
        {
            data1 dc = new data1();
            payment obj = new payment();
            obj.amount = Convert.ToInt32(Label2.Text);
            obj.booking_id = Convert.ToInt32(Label1.Text);
            obj.cardnumber = Convert.ToDecimal(TextBox1.Text);
            obj.cardtype = DropDownList1.SelectedValue;
            obj.expdate = TextBox3.Text;
            obj.nameoncard = TextBox2.Text;
            dc.payments.InsertOnSubmit(obj);
            dc.SubmitChanges();
            MultiView1.ActiveViewIndex = 1;
            Label3.Text = Session["bid"].ToString();
            Label4.Text = Session["date"].ToString();
            Label5.Text = Session["time"].ToString();
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        if (TextBox1.Text.Length == 16)
        {
            Literal1.Text = "";
        }
        else
        {
            Literal1.Text = "Invalid Card No";
        }
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
        if (TextBox4.Text.Length == 3)
        {
            Literal1.Text = "";
        }
        else
        {
            Literal1.Text = "Invalid CVV No";
        }
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        TextBox3_CalendarExtender.SelectedDate = Convert.ToDateTime(TextBox3.Text);
        if (TextBox3_CalendarExtender.SelectedDate <= System.DateTime.Now.Date.Date)
        {
            Literal1.Text = "Invalid Date Selection";
        }
        else
        {
            Literal1.Text = "";
        }
    }
}