using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RoomDesc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        data1 dc = new data1();
        var data = from tmp in dc.wedding_galleries where tmp.Weddingid == Convert.ToInt16(Request.QueryString["i"]) select tmp;
        Queue ob = new Queue();
        foreach (var d in data)
            ob.Enqueue(d.image);
        Image1.ImageUrl = ob.Dequeue().ToString();      
        Image2.ImageUrl = ob.Dequeue().ToString();
        Image3.ImageUrl = ob.Dequeue().ToString();
        Image4.ImageUrl = ob.Dequeue().ToString();
        Image5.ImageUrl = ob.Dequeue().ToString();
    }
}