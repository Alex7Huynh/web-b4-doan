using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using BUS;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] as string != null)
        {
            NGUOIDUNG NguoiDung = new NGUOIDUNG();
            NguoiDung = NguoiDungDAO.LayNguoiDungTheoTen(Session["UserName"] as string);

            lblTenDangNhap.Text = NguoiDung.TenNguoiDung.ToString();
            if (NguoiDung.Email != null)
            {
                txtEmail.Text = NguoiDung.Email.ToString();
            }
            else
                txtEmail.Text = "Chưa có thông tin";

            if (NguoiDung.DienThoai != null)
            {
                txtDT.Text = NguoiDung.DienThoai.ToString();
            }
            else
                txtDT.Text = "Chưa có thông tin";

            if (NguoiDung.DiaChi != null)
            {
                txtDiaChi.Text = NguoiDung.DiaChi.ToString();
            }
            else
                txtDiaChi.Text = "Chưa có thông tin";

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

    private void ThayDoiThongTinUser()
    {
        if (Session["UserName"] as string != null)
        {
            RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();

            if (db.NGUOIDUNGs.Where(p => p.TenNguoiDung == this.lblTenDangNhap.Text).Count() == 1)
            {
                NGUOIDUNG NguoiDungUpdate = new NGUOIDUNG();
                NguoiDungUpdate.Email = txtEmail.Text.ToString().Trim();
                NguoiDungUpdate.DienThoai = txtDT.Text.ToString().Trim();
                NguoiDungUpdate.DiaChi = txtDiaChi.Text.ToString().Trim();
                
                if (NguoiDungDAO.ChinhSuaNguoiDung(NguoiDungUpdate))
                {
                    lblThankYou.Text = "Cảm ơn bạn, thông tin của bạn đã thay đổi thành công.";
                }

            }

        }
        else
        {
            Response.Redirect("..\\TaiKhoan\\DangNhap.aspx");
        }
    }
    protected void bntDongY_Click(object sender, EventArgs e)
    {
        ThayDoiThongTinUser();
    }
}
