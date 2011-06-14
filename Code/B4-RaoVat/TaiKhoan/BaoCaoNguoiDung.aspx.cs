using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAO;
using System.IO;

public partial class BaoCaoNguoiDungViPham : System.Web.UI.Page
{
    /// <summary>
    /// Page_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnBaoCao1_Click(object sender, EventArgs e)
    {
        NGUOIDUNG NguoiDung = new NGUOIDUNG();
        LICHSUNGUOIDUNGVIPHAM nguoiViPham = new LICHSUNGUOIDUNGVIPHAM();
        int userID = -1;
        if (Session["userID"] == null)
        {
            Response.Redirect("~/TaiKhoan/DangNhap.aspx");
        }
        else
        {
            userID = (Int32)Session["userID"];
        }
        string s=null;
        if(ckbNickSpam.Checked || ckbSpam.Checked || ckbXucPham.Checked || ckbTuSai.Checked)
        {
            nguoiViPham.MaNguoiDungViPham = NguoiDungBUS.LayNguoiDungTheoTen(ddlNguoiViPham.SelectedValue).MaNguoiDung;
            nguoiViPham.MaNguoiDungBaoCaoViPham = userID;
            nguoiViPham.ThoiGianBaoCaoViPham = DateTime.Now;
            nguoiViPham.deleted = false;
            nguoiViPham.ThoiGianCanhCao = 10;
            if (ckbNickSpam.Checked)
            {
                s += "Lập nhiều nick đăng tin. ";
            }
            if (ckbSpam.Checked)
            {
                s += "Post nhiều tin có nội dung như nhau. ";
            }
            if (ckbXucPham.Checked)
            {
                s += "Post bài xúc phạm thành viên khác. ";
            }
            if (ckbTuSai.Checked)
            {
                s += "Dùng từ ngữ không dấu và ngôn ngữ thiếu văn hóa. ";
            }
            nguoiViPham.LyDo = s;
            BaoCaoNguoiDungViPhamBUS.ThemBaoCaoViPham(nguoiViPham);
        }
    }
}