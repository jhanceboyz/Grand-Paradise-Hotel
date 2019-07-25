using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Room_Gallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data1 dc = new data1();
        var data = from tmp in dc.SystemTables where tmp.id == 1 select tmp; 
        room_gallery_table obj= new room_gallery_table();
        obj.roomid = Convert.ToInt16(DropDownList1.SelectedValue);
        obj.image = "~/Images/Room/" + data.First().ImageId + ".jpg";
        obj.caption = TextBox3.Text;       
        dc.room_gallery_tables.InsertOnSubmit(obj);
        data.First().ImageId = data.First().ImageId + 1;
        FileUpload1.SaveAs(Server.MapPath(obj.image));
        dc.SubmitChanges();

    }
}