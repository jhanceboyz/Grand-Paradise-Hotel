using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_wedding_gallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data1 dc = new data1();
        var data = from tmp in dc.SystemTables where tmp.id == 1 select tmp; 
        wedding_gallery obj = new wedding_gallery();
        obj.Weddingid = Convert.ToInt16(DropDownList1.Text);
        obj.image = "~/images/wedding/" + TextBox1.Text + ".jpj";
        obj.caption = TextBox1.Text;
        dc.wedding_galleries.InsertOnSubmit(obj);
        data.First().ImageId = data.First().ImageId + 1;
        FileUpload1.SaveAs(Server.MapPath(obj.image));
        dc.SubmitChanges();


    }
}