using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_wedding : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data1 dc = new data1();
        var data = from tmp in dc.SystemTables where tmp.id == 1 select tmp; 
        wedding_type obj = new wedding_type();
        obj.weddingtype = TextBox1.Text;
        obj.description1 = TextBox2.Text;
        obj.description2 = TextBox3.Text;
        obj.priceforveg = TextBox4.Text;
        obj.pricefornonveg = TextBox5.Text;
        obj.pricewithalcohol = TextBox6.Text;
        obj.image = "~/Images/Wedding/" + data.First().ImageId + ".jpg";
        dc.wedding_types.InsertOnSubmit(obj);
        data.First().ImageId = data.First().ImageId + 1;
        dc.SubmitChanges();

    }
}