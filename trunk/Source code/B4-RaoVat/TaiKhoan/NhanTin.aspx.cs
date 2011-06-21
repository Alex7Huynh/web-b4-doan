using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAO;
using System.IO;
public partial class Default2 : BUS.BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnNhanTin1_Click(object sender, EventArgs e)
    {
        TINNHAN TinNhan = new TINNHAN();
        if (Session["userID"] != null)
        {
            int userID = (Int32)Session["userID"];
            TinNhan.MaNguoiDung = userID;
        }
        else { Response.Redirect("~/TaiKhoan/DangNhap.aspx"); }
        Response.Redirect("~/TaiKhoan/NhanTin.aspx");
        TinNhan.MaNguoiNhanTin = NguoiDungBUS.LayNguoiDungTheoTen(ddlNguoiNhanTin.SelectedValue).MaNguoiDung;
        TinNhan.TieuDeTinNhan= txtTieuDe1.Text;
        TinNhan.NoiDungTinNhan = txtNoiDung1.Text;
        TinNhan.ThoiGianNhanTin = DateTime.Now;
        TinNhan.Deleted = false;
        TinNhanBUS.ThemTinNhan(TinNhan);
    }
}
