using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAO;
using System.IO;

public partial class BaoCaoBaiVietViPham : System.Web.UI.Page
{
    /// <summary>
    /// Page_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ccJoin.ValidateCaptcha(TextBox1.Text);
        if (!ccJoin.UserValidated)
        {
            Label1.Text = "Mã bảo vệ chưa chính xác";
            return;
        }
        else
        {
            Label1.Text = "Thành công";
            Response.Redirect("~/TaiKhoan/BaoCaoBaiVietViPham.aspx");
        }
    }
}