using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using BUS;

public partial class Default2 : BUS.BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //RaoVatDataClassesDataContext NguoiDung = new RaoVatDataClassesDataContext();
        if (Session["UserName"] as string != null)
        {
            NGUOIDUNG NguoiDung = new NGUOIDUNG();
            NguoiDung = NguoiDungDAO.LayNguoiDungTheoTen(Session["UserName"] as string);

            lblTenDangNhap.Text = NguoiDung.TenNguoiDung.ToString();
            if (NguoiDung.Email != null)
            {
                lblEmail.Text = NguoiDung.Email.ToString();
            }
            else
                lblEmail.Text = "Chưa có thông tin";

            if (NguoiDung.DienThoai != null)
            {
                lblDienThoai.Text = NguoiDung.DienThoai.ToString();
            }
            else
                lblDienThoai.Text = "Chưa có thông tin";

            if (NguoiDung.DiaChi != null)
            {
                lblDiaChi.Text = NguoiDung.DiaChi.ToString();
            }
            else
                lblDiaChi.Text = "Chưa có thông tin";

            if (NguoiDung.MaKichHoatTaiKhoan != null)
            {
                lblMaKH.Text = NguoiDung.MaKichHoatTaiKhoan.ToString();
            }
            else
                lblMaKH.Text = "Chưa có thông tin";
            if (NguoiDung.TinhTrangKichHoatTaiKhoan != null)
            {
                lblTrinhTrangKH.Text = NguoiDung.TinhTrangKichHoatTaiKhoan.ToString();
            }
            else
                lblTrinhTrangKH.Text = "Chưa có thông tin";

            if (NguoiDung.ThoiGianDangKy != null)
            {
                lblThoiGianDK.Text = NguoiDung.ThoiGianDangKy.ToString();
            }
            else
                lblThoiGianDK.Text = "Chưa có thông tin";
            if (NguoiDung.ThoiGianHetHan != null)
            {
                lblThoiGianHH.Text = NguoiDung.ThoiGianHetHan.ToString();
            }
            else
                lblThoiGianHH.Text = "Chưa có thông tin";
            LOAINGUOIDUNG LoaiNguoiDung = LoaiNguoiDungBUS.TimLoaiNguoiDungTheoMa(NguoiDung.MaLoaiNguoiDung.Value);
            lblLoaiNguoiDung.Text = LoaiNguoiDung.TenLoaiNguoiDung;            
        }
        else
        {
            Response.Redirect("..\\TaiKhoan\\DangNhap.aspx");
        }
    }
    protected void btnNangCap_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/TaiKhoan/NangCapTaiKhoan.aspx");
    }
    protected void bntThayDoiThongTin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/TaiKhoan/ThayDoiThongTinTaiKhoan.aspx");
    }
}
