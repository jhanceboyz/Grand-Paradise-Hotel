
Partial Class Contact
    Inherits System.Web.UI.Page

    
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim dc As New data1
        Dim obj As New FeedBack_Table
        obj.Name = TextBox1.Text
        obj.Message = TextBox2.Text
        obj.Mobile = TextBox4.Text
        obj.Email = TextBox3.Text
        dc.FeedBack_Tables.InsertOnSubmit(obj)
        dc.SubmitChanges()
        Response.Redirect("Contact.aspx")
    End Sub
End Class
