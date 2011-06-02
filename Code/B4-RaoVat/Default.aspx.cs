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
        if (Request.QueryString["ss"] != null)
        {
            string result = Request.QueryString["ss"];
            if (result == "fail")
            {
                MessageBox("Thao tác thất bại! Vui lòng thử lại.");
            }
            else if (result == "fail") { MessageBox("Thao tác thành công!"); }
        }
    }
    private void MessageBox(string msg)
    {
        //Cách 1
        Label lbl = new Label();
        lbl.Text = "<script language='javascript'>" + Environment.NewLine + "window.alert('" + msg + "')</script>";
        Page.Controls.Add(lbl);

        //Cách 2
        //string message = "<script language=javascript>alert('Không thể thực hiện được');</script>";
        //this.Page.RegisterStartupScript("script", message);
    }
}
