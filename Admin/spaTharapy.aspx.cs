using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class spaTable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data1 dc = new data1();
        var data = from tmp in dc.SystemTables where tmp.id == 1 select tmp; 
        spatharapy obj = new spatharapy();
        obj.spatype = TextBox1.Text;
        obj.description = TextBox2.Text;
        obj.priceofspa = TextBox4.Text;
        obj.image = "~/images/spa/" + data.First().ImageId + ".jpj";
        data.First().ImageId = data.First().ImageId + 1;
        dc.spatharapies.InsertOnSubmit(obj);
        FileUpload1.SaveAs(Server.MapPath(obj.image));
        dc.SubmitChanges();
    }
}