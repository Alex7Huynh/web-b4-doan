using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAO;

public partial class UserControls_XemNoiDungTin : System.Web.UI.UserControl
{
    public static string idTinRaoVat;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected override void OnPreRender(EventArgs e) 
    {
        //lay ma tin rao vat
        int maTinRaoVat = 1;
        string id;
        if (Request.QueryString["id"] != null)
        {
            id = Request.QueryString["id"];
            idTinRaoVat = Request.QueryString["id"];
        }
        else
            id = idTinRaoVat;

           Int32.TryParse(id, out maTinRaoVat);

        NGUOIDUNG nguoiDung = TinRaoVatBUS.LayNguoiDung(maTinRaoVat);
        
        Session["matinraovat"] = maTinRaoVat.ToString();
        Session["manguoidung"] = nguoiDung.MaNguoiDung.ToString();

        hypXemThongTinLienHe.NavigateUrl = "../DanhMuc/XemThongTinLienHe.aspx?id=" + nguoiDung.MaNguoiDung.ToString();

        CHUYENMUC chuyenMuc = TinRaoVatBUS.LayChuyenMuc(maTinRaoVat);

        FillSummary(chuyenMuc, maTinRaoVat);
        //lbMaTinRaoVat.Text =Session["matinraovat"].ToString();
        base.OnPreRender(e);

        // load cac bai tra loi cua tin rao vat do len
    }

    private void FillSummary(CHUYENMUC chuyenMuc, int maTinRaoVat)
    {
        switch (chuyenMuc.TenChuyenMuc)
        {
            case "Thường":
                MultiView1.ActiveViewIndex = 0;
                //Get Data
                TINRAOVATTHUONG tinRaoVatThuong = TinRaoVatThuongBUS.TimTinRaoVatThuongTheoMaTinRaoVat(maTinRaoVat);
                //Show Data
                lblNoiDungThuong.Text = tinRaoVatThuong.NoiDungTinRaoVat;
                lblGiaThuong.Text = tinRaoVatThuong.Gia.ToString();
                break;
            case "Bất Động Sản":
                MultiView1.ActiveViewIndex = 1;
                //Get Data
                TINRAOVATBATDONGSAN tinRaoVatBatDongSan = TinRaoVatBatDongSanBUS.TimTinRaoVatBatDongSanTheoMaTinRaoVat(maTinRaoVat);
                //Show Data
                
                //Nội Dung
                lblNoiDung.Text = tinRaoVatBatDongSan.NoiDungTinRaoVat;
                lblGia.Text = tinRaoVatBatDongSan.Gia.ToString();
                lblDiaChi.Text = tinRaoVatBatDongSan.DiaChi;
                lblDienTich.Text = tinRaoVatBatDongSan.DienTich.ToString() + "mét vuông";
                lblHuong.Text = tinRaoVatBatDongSan.Huong;
                lblLoGioi.Text = tinRaoVatBatDongSan.LoGioi;
                lblLau.Text = tinRaoVatBatDongSan.Lau.ToString();
                lblLung.Text = tinRaoVatBatDongSan.Lung.ToString();
                chkMatTien.Checked = tinRaoVatBatDongSan.MatTien.Value;
                lblGiayTo.Text = tinRaoVatBatDongSan.GiayTo;
                lblDuongTruocNha.Text = tinRaoVatBatDongSan.DuongTruocNha;
                chkDienNhaNuoc.Checked = tinRaoVatBatDongSan.DienNhaNuoc.Value;
                chkNuocMay.Checked = tinRaoVatBatDongSan.NuocMay.Value;
                lblSoPhongNgu.Text = tinRaoVatBatDongSan.SoPhongNgu.ToString();
                lblSoNhaVeSinh.Text = tinRaoVatBatDongSan.SoNhaVeSinh.ToString();
                lblNamXayDung.Text = tinRaoVatBatDongSan.NamXayDung.ToString();

                //Nội Thất, Tiện Nghi
                chkPhongKhach.Checked = tinRaoVatBatDongSan.PhongKhach.Value;
                chkGaraOto.Checked = tinRaoVatBatDongSan.GaraOto.Value;
                chkNhaBep.Checked = tinRaoVatBatDongSan.NhaBep.Value;
                chkHoBoi.Checked = tinRaoVatBatDongSan.HoBoi.Value;
                chkSanThuong.Checked = tinRaoVatBatDongSan.SanThuong.Value;
                chkDieuHoa.Checked = tinRaoVatBatDongSan.DieuHoa.Value;
                chkSanVuon.Checked = tinRaoVatBatDongSan.SanVuon.Value;
                chkThangMay.Checked = tinRaoVatBatDongSan.ThangMay.Value;

                //Văn Hóa, Xã Hội
                chkGanTruongMauGiao.Checked = tinRaoVatBatDongSan.GanTruongMauGiao.Value;
                chkGanTruongCap1.Checked = tinRaoVatBatDongSan.GanTruongCap1.Value;
                chkGanTruongCap2.Checked = tinRaoVatBatDongSan.GanTruongCap2.Value;
                chkGanTruongCap3.Checked = tinRaoVatBatDongSan.GanTruongCap3.Value;
                chkGanCho.Checked = tinRaoVatBatDongSan.GanCho.Value;
                chkGanBenhVien.Checked = tinRaoVatBatDongSan.GanBenhVien.Value;
                chkGanTrungTamThuongMai.Checked = tinRaoVatBatDongSan.GanTrungTamThuongMai.Value;
                chkGanTrungTamGiaiTri.Checked = tinRaoVatBatDongSan.GanTrungTamGiaiTri.Value;
                chkGanCongVien.Checked = tinRaoVatBatDongSan.GanCongVien.Value;
                break;
            case "Tin Tuyển Dụng":
                MultiView1.ActiveViewIndex = 2;
                //Get Data
                TINTUYENDUNG tinTuyenDung = TinTuyenDungBUS.TimTinTuyenDungTheoMaTinRaoVat(maTinRaoVat);
                //Show Data

                //Thông Tin Nhà Tuyển Dụng
                lblTenNhaTuyenDung.Text = tinTuyenDung.TenNhaTuyenDung;
                lblGioiThieuNhaTuyenDung.Text = tinTuyenDung.GioiThieuNhaTuyenDung;
                hypWebsite.NavigateUrl = tinTuyenDung.Website;
                lblNguoiDaiDien.Text = tinTuyenDung.NguoiDaiDien;
                lblDiaChiLienHe.Text = tinTuyenDung.DiaChiLienHe;
                lblDienThoai.Text = tinTuyenDung.DienThoai;
                lblEmail.Text = tinTuyenDung.Email;

                //Thông Tin Công Việc
                lblViTriTuyenDung.Text = tinTuyenDung.ViTriTuyenDung;
                lblYeuCauCongViec.Text = tinTuyenDung.YeuCauCongViec;
                lblYeuCauKinhNghiem.Text = tinTuyenDung.YeuCauKinhNghiem;
                lblThoiGianLamViec.Text = tinTuyenDung.ThoiGianLamViec;
                lblSoLuongCanTuyen.Text = tinTuyenDung.SoLuongCanTuyen.ToString() + "Vị Trí";
                lblMucLuongKhoiDiem.Text = tinTuyenDung.MucLuongKhoiDiem.ToString() + "Đồng";
                lblThoiGianThuViec.Text = tinTuyenDung.ThoiGianThuViec;
                lblLuongThuViec.Text = tinTuyenDung.LuongThuViec.ToString() + "Đồng";
                lblQuyenLoiDuocHuong.Text = tinTuyenDung.QuyenLoiDuocHuong;
                lblHoSoBaoGom.Text = tinTuyenDung.HoSoBaoGom;
                lblThoiHanKetThucNopHoSo.Text = tinTuyenDung.ThoiHanKetThucNopHoSo.ToString();
                break;
            case "Hồ Sơ Tuyển Dụng":
                MultiView1.ActiveViewIndex = 3;
                //Get Data
                HOSOTUYENDUNG hoSoTuyenDung = HoSoTuyenDungBUS.TimHoSoTuyenDungTheoMaTinRaoVat(maTinRaoVat);
                //Show Data

                //Thông Tin Cá Nhân.
                lblTen.Text = hoSoTuyenDung.HoTen;
                lblNgaySinh.Text = hoSoTuyenDung.NgaySinh.ToString();
                if (hoSoTuyenDung.GioiTinh == true)
                {
                    chkNam.Checked = true;
                    chkNu.Checked = false;
                }
                else
                {
                    chkNam.Checked = false;
                    chkNu.Checked = true;
                }
                chkTinhTrangHonNhan.Checked = hoSoTuyenDung.TinhTrangHonNhan.Value;
                lblQuocTich.Text = hoSoTuyenDung.QuocTich;
                lblDiaChiLienLac.Text = hoSoTuyenDung.DiaChiLienLac;
                lblSoDienThoai.Text = hoSoTuyenDung.SoDienThoai;
                lblDiDong.Text = hoSoTuyenDung.DiDong;
                lblEmailCaNhan.Text = hoSoTuyenDung.Email;

                //Học Vấn
                lblThongTinHocVan.Text = hoSoTuyenDung.ThongTinHocVan;
                lblBangCap.Text = hoSoTuyenDung.BangCap;
                lblNgoaiNgu.Text = hoSoTuyenDung.NgoaiNgu;
                lblKyNang.Text = hoSoTuyenDung.KyNang;

                //Kinh Nghiệm Làm Việc.
                lblCapBac.Text = hoSoTuyenDung.CapBac;
                lblSoNamKinhNghiem.Text = hoSoTuyenDung.SoNamKinhNghiem.ToString() + "Năm";
                lblCongTyLamViec.Text = hoSoTuyenDung.CongTyLamViec;
                lblChucDanh.Text = hoSoTuyenDung.ChucDanh;
                lblTomTatKinhNghiem.Text = hoSoTuyenDung.TomTatKinhNghiem;
                lblMoTaCongViecLyTuong.Text = hoSoTuyenDung.MoTaCongViecLyTuong;
                lblNguyenVong.Text = hoSoTuyenDung.NguyenVong;
                lblThoiGianLamViecMongMuon.Text = hoSoTuyenDung.ThoiGianLamViec;
                lblLuongMongMuon.Text = hoSoTuyenDung.LuongMongMuon;
                break;
            default:
                break;
        }
    }
    protected void btt_TraLoi_Click(object sender, EventArgs e)
    {       
        Response.Redirect("~/TinRaoVat/TraLoiTinRaoVat.aspx");
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}
