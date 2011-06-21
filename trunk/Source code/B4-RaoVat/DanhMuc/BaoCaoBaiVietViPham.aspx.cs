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
        if (Session["userID"] == null)
            Response.Redirect("~/TaiKhoan/DangNhap.aspx");
    }

    protected void btnBaoCao1_Click(object sender, EventArgs e)
    {
        LICHSUTINRAOVATVIPHAM tinViPham = new LICHSUTINRAOVATVIPHAM();
        int userID = -1;
        string s = string.Empty;
        if (Session["userID"] == null)
        {
            Response.Redirect("~/TaiKhoan/DangNhap.aspx");
        }
        else
        {
            userID = (Int32)Session["userID"];
        }
        ccJoin.ValidateCaptcha(TextBox1.Text);
        int MaDanhMucCon = int.Parse(Request.QueryString["id"]);
        if(ckbNickSpam.Checked || ckbSpam.Checked || ckbTenSai.Checked || ckbTieuDeSai.Checked)
        {
            tinViPham.MaTinRaoVatViPham = MaDanhMucCon;
            tinViPham.MaNguoiDungBaoCaoViPham = userID;
            tinViPham.ThoiGianBaoCaoViPham = DateTime.Now;
            tinViPham.deleted = false;
            if (ckbNickSpam.Checked)
            {
                s += "Lập nhiều nick đăng tin. ";
            }
            if (ckbSpam.Checked)
            {
                s += "Spam/Làm mới tin/Đăng tin quá qui định. ";
            }
            if (ckbTenSai.Checked)
            {
                s += "Tên sai chuyên mục. ";
            }
            if (ckbTieuDeSai.Checked)
            {
                s += "Tiêu đề tin không dấu. ";
            }
            tinViPham.LyDo = s;
            if (!ccJoin.UserValidated)
            {
                Label1.Text = "Mã bảo vệ chưa chính xác";
                return;
            }
            else
            {
                Label1.Text = "Thành công";
                BaoCaoBaiVietViPhamBUS.ThemBaoCaoViPham(tinViPham);
            }
        }
    }
}