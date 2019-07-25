using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Spa_Gallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data1 dc = new data1();
        var data = from tmp in dc.SystemTables where tmp.id == 1 select tmp; 
        spagallery obj = new spagallery();
        obj.spaid = Convert.ToInt16(DropDownList1.Text);
        obj.image = "~/images/spa/" + data.First().ImageId + ".jpj";
        obj.caption = TextBox1.Text;       
        dc.spagalleries.InsertOnSubmit(obj);
        data.First().ImageId = data.First().ImageId + 1;
        FileUpload1.SaveAs(Server.MapPath(obj.image));
        dc.SubmitChanges();
    }
}