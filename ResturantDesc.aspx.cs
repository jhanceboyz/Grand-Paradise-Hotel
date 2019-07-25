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
        var data = from tmp in dc.ResturantTables where tmp.id == Convert.ToInt16(Request.QueryString["i"]) select tmp;
        if (data.Count() !=0)
        {
        Image1.ImageUrl = data.First().image1;
        Image2.ImageUrl = data.First().image2;
        Image3.ImageUrl = data.First().image3;
        Image4.ImageUrl = data.First().image4;
        Image5.ImageUrl = data.First().image5;
        }
    }
}