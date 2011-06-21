using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void MessageBox(string msg)
    {
        Label lbl = new Label();
        lbl.Text = "<script language='javascript'>" + Environment.NewLine + "window.alert('" + msg + "')</script>";
        Page.Controls.Add(lbl);

        //string message = "<script language=javascript>alert('Không thể thực hiện được');</script>";
        //this.Page.RegisterStartupScript("script", message);
    }
    protected void btnMessageBox_Click(object sender, EventArgs e)
    {
        //Response.Write("<script>alert('Hello')</script>");
        MessageBox("Nhấn cái gì? Tắt đi.");
    }
}
