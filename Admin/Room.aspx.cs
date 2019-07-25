using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data1 dc = new data1();
        var data = from tmp in dc.SystemTables where tmp.id == 1 select tmp; 
        room_table obj = new room_table();
        obj.roomtype =  TextBox5.Text;
        obj.description = TextBox3.Text;
        obj.image = "~/Images/Room/" + data.First().ImageId + ".jpg";
        obj.roomrent = TextBox4.Text;
        dc.room_tables.InsertOnSubmit(obj);
        data.First().ImageId = data.First().ImageId + 1;
        FileUpload1.SaveAs(Server.MapPath(obj.image));
        dc.SubmitChanges();

    }
}