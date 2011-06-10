using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //RaoVatDataClassesDataContext ng = new RaoVatDataClassesDataContext();
        if (Session["UserName"] as string != null)
        {
            NGUOIDUNG ng = new NGUOIDUNG();
            ng = NguoiDungDAO.LayNguoiDungTheoTen(Session["UserName"] as string);

            lblTenDangNhap.Text = ng.TenNguoiDung.ToString();
            if (ng.Email != null)
            {
                lblEmail.Text = ng.Email.ToString();
            }
            else
                lblEmail.Text = "Chưa có thông tin";

            if (ng.DienThoai != null)
            {
                lblDienThoai.Text = ng.DienThoai.ToString();
            }
            else
                lblDienThoai.Text = "Chưa có thông tin";

            if (ng.DiaChi != null)
            {
                lblDiaChi.Text = ng.DiaChi.ToString();
            }
            else
                lblDiaChi.Text = "Chưa có thông tin";

            if (ng.MaKichHoatTaiKhoan != null)
            {
                lblMaKH.Text = ng.MaKichHoatTaiKhoan.ToString();
            }
            else
                lblMaKH.Text = "Chưa có thông tin";
            if (ng.TinhTrangKichHoatTaiKhoan != null)
            {
                lblTrinhTrangKH.Text = ng.TinhTrangKichHoatTaiKhoan.ToString();
            }
            else
                lblTrinhTrangKH.Text = "Chưa có thông tin";

            if (ng.ThoiGianDangKy != null)
            {
                lblThoiGianDK.Text = ng.ThoiGianDangKy.ToString();
            }
            else
                lblThoiGianDK.Text = "Chưa có thông tin";
            if (ng.ThoiGianHetHan != null)
            {
                lblThoiGianHH.Text = ng.ThoiGianHetHan.ToString();
            }
            else
                lblThoiGianHH.Text = "Chưa có thông tin";
            if (ng.MaLoaiNguoiDung != null)
            {
                if (ng.MaLoaiNguoiDung == 1)
                {
                    lblLoaiNguoiDung.Text = "Thành viên thường";
                }
                if (ng.MaLoaiNguoiDung == 2)
                {
                    lblLoaiNguoiDung.Text = "Thành viên Vip";
                }
                if (ng.MaLoaiNguoiDung == 3)
                {
                    lblLoaiNguoiDung.Text = "Mod";
                }
                if (ng.MaLoaiNguoiDung == 4)
                {
                    lblLoaiNguoiDung.Text = "Quản Trị Viên";
                }
                if (ng.MaLoaiNguoiDung == 5)
                {
                    lblLoaiNguoiDung.Text = "Khách";
                }
            }
            else
                lblLoaiNguoiDung.Text = "Khách";
        }
        else
        {
            Response.Redirect("..\\TaiKhoan\\DangNhap.aspx");
        }
    }
}
