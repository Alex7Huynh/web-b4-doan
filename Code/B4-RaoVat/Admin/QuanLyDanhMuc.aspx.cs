using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAO;

public partial class QuanLyDanhMuc : BUS.BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Kiểm tra đăng nhập
        if (Session["userID"] == null)
            Response.Redirect("~/TaiKhoan/DangNhap.aspx");
        //Kiểm tra quyền là admin
        if (!LoaiNguoiDungBUS.LaQuanTri(int.Parse(Session["userID"].ToString())))
            Response.Redirect("/B4-RaoVat/Default.aspx");
        //Khởi tạo dữ liệu
    }
    protected void btnThemDMChinh_Click(object sender, EventArgs e)
    {

    }
    protected void btnXoaDMChinh_Click(object sender, EventArgs e)
    {

    }
    protected void btnSuaDMChinh_Click(object sender, EventArgs e)
    {

    }
    protected void btnThemDCCon_Click(object sender, EventArgs e)
    {

    }
    protected void btnXoaDMCon_Click(object sender, EventArgs e)
    {

    }
    protected void btnSuaDMCon_Click(object sender, EventArgs e)
    {

    }
}
