using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAO;
using System.IO;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            List<string> KieuTinRaoVat = new List<string>() { "Tin rao vặt", "Tin rao vặt bất động sản", "Tin rao vặt thường", "Tin tuyển dụng" };
            ddlKieuTinRaoVat.DataSource = KieuTinRaoVat;
            ddlKieuTinRaoVat.DataBind();
        }
    }
    protected void btnTim1_Click(object sender, EventArgs e)
    {
        RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
        if (ddlKieuTinRaoVat.SelectedValue.ToString() == "Tin rao vặt")
        {
            var dsTinRaoVat = from p in db.TINRAOVATs
                              where p.GhiChuHinhAnh.Contains(txtTimKiem.Text.Trim()) || p.Thumbnail.Contains(txtTimKiem.Text.Trim()) ||
                              p.TieuDe.Contains(txtTimKiem.Text.Trim())
                              select p;
            dlTinraovat.DataSource = dsTinRaoVat;
            dlTinraovat.DataBind();
        }
        if (ddlKieuTinRaoVat.SelectedValue.ToString() == "Tin rao vặt bất động sản")
        {
             var dsTinRaoVatBatDongSan = from q in db.TINRAOVATBATDONGSANs
                                        where  q.DiaChi.Contains(txtTimKiem.Text.Trim()) || q.DuongTruocNha.Contains(txtTimKiem.Text.Trim()) ||
                                        q.GiayTo.Contains(txtTimKiem.Text.Trim()) || q.Huong.Contains(txtTimKiem.Text.Trim()) ||
                                        q.LoGioi.Contains(txtTimKiem.Text.Trim()) || q.NoiDungTinRaoVat.Contains(txtTimKiem.Text.Trim())
                                        select q;
            dlTinraovatbatdongsan.DataSource = dsTinRaoVatBatDongSan;
            dlTinraovatbatdongsan.DataBind();
        }
        if (ddlKieuTinRaoVat.SelectedValue.ToString() == "Tin rao vặt thường")
        {
            var dsTinRaoVatThuong = from o in db.TINRAOVATTHUONGs
                                    where o.NoiDungTinRaoVat.Contains(txtTimKiem.Text.Trim())
                                    select o;
            dlTinraovatthuong.DataSource = dsTinRaoVatThuong;
            dlTinraovatthuong.DataBind();
        }
        if (ddlKieuTinRaoVat.SelectedValue == "Tin tuyển dụng")
        {
            var dsTinTuyenDung = from g in db.TINTUYENDUNGs
                                 where g.DiaChiLienHe.Contains(txtTimKiem.Text.Trim()) || g.DienThoai.Contains(txtTimKiem.Text.Trim()) ||
                                 g.Email.Contains(txtTimKiem.Text.Trim()) || g.GioiThieuNhaTuyenDung.Contains(txtTimKiem.Text.Trim()) ||
                                 g.HoSoBaoGom.Contains(txtTimKiem.Text.Trim()) || g.NguoiDaiDien.Contains(txtTimKiem.Text.Trim()) ||
                                 g.QuyenLoiDuocHuong.Contains(txtTimKiem.Text.Trim()) || g.TenNhaTuyenDung.Contains(txtTimKiem.Text.Trim()) ||
                                 g.ThoiGianLamViec.Contains(txtTimKiem.Text.Trim()) || g.ThoiGianThuViec.Contains(txtTimKiem.Text.Trim()) ||
                                 g.ViTriTuyenDung.Contains(txtTimKiem.Text.Trim()) || g.Website.Contains(txtTimKiem.Text.Trim()) ||
                                 g.YeuCauCongViec.Contains(txtTimKiem.Text.Trim()) || g.YeuCauKinhNghiem.Contains(txtTimKiem.Text.Trim())
                                 select g;
            dlTintuyendung.DataSource = dsTinTuyenDung;
            dlTintuyendung.DataBind();
        }
    }
}
