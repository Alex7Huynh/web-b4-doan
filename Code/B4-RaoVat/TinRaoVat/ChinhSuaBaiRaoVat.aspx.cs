using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAO;
using System.IO;
using System.Globalization;
using System.Threading;

public partial class ChinhSuaBaiRaoVat : System.Web.UI.Page
{
    int UserID;
    TINRAOVAT TinRaoVat = new TINRAOVAT();
    DANHMUCCON DanhMucCon = new DANHMUCCON();
    DANHMUCCHINH DanhMucChinh = new DANHMUCCHINH();
    string ThumbnailLocation = "~/images/TinRaoVat/";

    protected override void InitializeCulture()
    {
        if (Request["Language"] != null)
        {
            CultureInfo ci = CultureInfo.CreateSpecificCulture(Request["Language"].ToString());
            Thread.CurrentThread.CurrentCulture = ci;
            Thread.CurrentThread.CurrentUICulture = ci;
        }
        base.InitializeCulture();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "Chỉnh sửa tin rao vặt";
        //Nếu chưa đăng nhập
        Session["userID"] = "19";
        if (Session["userID"] == null)
        {
            Response.Redirect("~/TaiKhoan/DangNhap.aspx");
        }
        //Lấy ID của tin rao vặt
        if (Request.QueryString["id"] != null)
        {
            UserID = int.Parse(Request.QueryString["id"]);
        }

        TinRaoVat = TinRaoVatBUS.TimTinRaoVatTheoMa(UserID);
        DanhMucCon = DanhMucConBUS.TimDanhMucConTheoMa(TinRaoVat.MaDanhMucCon.Value);
        DanhMucChinh = DanhMucChinhBUS.TimDanhMucChinhTheoMa(DanhMucCon.MaDanhMucChinh.Value);

        //Nếu tin rao vặt không phải do user tạo ra
        if (Session["userID"].ToString() != TinRaoVat.MaNguoiDung.Value.ToString())
        {
            //Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
        }
        if (!IsPostBack)
        {
            //Hiển thị view tương ứng với chuyên mục
            if (DanhMucChinh.MaChuyenMuc == 1)
            {
                MultiView1.SetActiveView(View1);
                InitFirstView();
            }
            else if (DanhMucChinh.MaChuyenMuc == 2)
            {
                MultiView1.SetActiveView(View2);
                InitSecondView();
            }
            else if (DanhMucChinh.MaChuyenMuc == 3)
            {
                MultiView1.SetActiveView(View3);
                InitThirdView();
            }
            else if (DanhMucChinh.MaChuyenMuc == 4)
            {
                MultiView1.SetActiveView(View4);
                InitFourthView();
            }
        }
    }

    private void InitFirstView()
    {
        //Hiển thị danh mục
        txtChuyenMuc1.Text = DanhMucChinh.TenDanhMucChinh.Trim() + " > " + DanhMucCon.TenDanhMucCon.Trim();
        //Thời hạn lưu tin
        List<int> ThoiHanLuuTin = new List<int>() { 1, 3, 5, 7, 9, 10, 12, 15, 17, 20, 30 };
        ddlThoiHanLuuTin1.DataSource = ThoiHanLuuTin;
        ddlThoiHanLuuTin1.DataBind();
        //Tin rao vặt        
        txtTieuDe1.Text = TinRaoVat.TieuDe;
        ddlThoiHanLuuTin1.SelectedValue = TinRaoVat.ThoiHanLuuTin.ToString();
        ddlDiaDiem1.SelectedValue = DiaDiemBUS.TimDiaDiemTheoMa(TinRaoVat.MaDiaDiem.Value).TenDiaDiem;
        txtGhiChuAnh1.Text = TinRaoVat.GhiChuHinhAnh;
        hplHinhAnh1.Text = TinRaoVat.Thumbnail;
        hplHinhAnh1.NavigateUrl = ThumbnailLocation + TinRaoVat.Thumbnail;

        //Thêm tin rao vặt thường
        TINRAOVATTHUONG TinRaoVatThuong = TinRaoVatThuongBUS.TimTinRaoVatThuongTheoMaTinRaoVat(TinRaoVat.MaTinRaoVat);
        txtNoiDung1.Text = TinRaoVatThuong.NoiDungTinRaoVat;
        txtGia1.Text = TinRaoVatThuong.Gia.ToString();
    }
    private void InitSecondView()
    {
        //Hiển thị danh mục
        txtChuyenMuc2.Text = DanhMucChinh.TenDanhMucChinh.Trim() + " > " + DanhMucCon.TenDanhMucCon.Trim();
        //Thời hạn lưu tin
        List<int> ThoiHanLuuTin = new List<int>() { 1, 3, 5, 7, 9, 10, 12, 15, 17, 20, 30 };
        ddlThoiHanLuuTin2.DataSource = ThoiHanLuuTin;
        ddlThoiHanLuuTin2.DataBind();
        //Vị trí
        List<string> ViTri = new List<string>() { "Mặt tiền", "Trong hẻm" };
        ddlMatTien.DataSource = ViTri;
        ddlMatTien.DataBind();
        //Tin rao vặt
        txtTieuDe2.Text = TinRaoVat.TieuDe;
        ddlThoiHanLuuTin2.SelectedValue = TinRaoVat.ThoiHanLuuTin.ToString();
        ddlDiaDiem2.SelectedValue = DiaDiemBUS.TimDiaDiemTheoMa(TinRaoVat.MaDiaDiem.Value).TenDiaDiem;
        txtGhiChuAnh2.Text = TinRaoVat.GhiChuHinhAnh;
        hplHinhAnh2.Text = TinRaoVat.Thumbnail;
        hplHinhAnh2.NavigateUrl = ThumbnailLocation + TinRaoVat.Thumbnail;

        //Thêm tin rao vặt bất động sản
        TINRAOVATBATDONGSAN TinRaoVatBatDongSan = TinRaoVatBatDongSanBUS.TimTinRaoVatBatDongSanTheoMaTinRaoVat(TinRaoVat.MaTinRaoVat);
        txtNoiDung2.Text = TinRaoVatBatDongSan.NoiDungTinRaoVat;
        txtGia2.Text = TinRaoVatBatDongSan.Gia.ToString();
        txtDiaChi.Text = TinRaoVatBatDongSan.DiaChi;
        txtDienTich.Text = TinRaoVatBatDongSan.DienTich.ToString();
        txtHuong.Text = TinRaoVatBatDongSan.Huong;
        txtHuong.Text = TinRaoVatBatDongSan.LoGioi;
        txtLau.Text = TinRaoVatBatDongSan.Lau.ToString();
        txtLung.Text = TinRaoVatBatDongSan.Lung.ToString();
        ddlMatTien.SelectedIndex = (TinRaoVatBatDongSan.MatTien.Value == true) ? 0 : 1;
        txtGiayTo.Text = TinRaoVatBatDongSan.GiayTo;
        txtDuongTruocNha.Text = TinRaoVatBatDongSan.DuongTruocNha;
        ckbDien.Checked = TinRaoVatBatDongSan.DienNhaNuoc.Value;
        ckbNuocMay.Checked = TinRaoVatBatDongSan.NuocMay.Value;
        txtSoPhongNgu.Text = TinRaoVatBatDongSan.SoPhongNgu.ToString();
        txtSoNhaVeSinh.Text = TinRaoVatBatDongSan.SoNhaVeSinh.ToString();
        txtNamXayDung.Text = TinRaoVatBatDongSan.NamXayDung.ToString();
        ckbPhongKhach.Checked = TinRaoVatBatDongSan.PhongKhach.Value;
        ckbGaraOto.Checked = TinRaoVatBatDongSan.GaraOto.Value;
        ckbNhaBep.Checked = TinRaoVatBatDongSan.NhaBep.Value;
        ckbHoBoi.Checked = TinRaoVatBatDongSan.HoBoi.Value;
        ckbSanThuong.Checked = TinRaoVatBatDongSan.SanThuong.Value;
        ckbDieuHoa.Checked = TinRaoVatBatDongSan.DieuHoa.Value;
        ckbSanVuon.Checked = TinRaoVatBatDongSan.SanVuon.Value;
        ckbThangMay.Checked = TinRaoVatBatDongSan.ThangMay.Value;
        ckbGanTruongMauGiao.Checked = TinRaoVatBatDongSan.GanTruongMauGiao.Value;
        ckbGanTruongCapMot.Checked = TinRaoVatBatDongSan.GanTruongCap1.Value;
        ckbGanTruongCapHai.Checked = TinRaoVatBatDongSan.GanTruongCap2.Value;
        ckbGanTruongCapBa.Checked = TinRaoVatBatDongSan.GanTruongCap3.Value;
        ckbGanCho.Checked = TinRaoVatBatDongSan.GanCho.Value;
        ckbGanBenhVien.Checked = TinRaoVatBatDongSan.GanBenhVien.Value;
        ckbGanTrungTamThuongMai.Checked = TinRaoVatBatDongSan.GanTrungTamThuongMai.Value;
        ckbGanTrungTamGiaiTri.Checked = TinRaoVatBatDongSan.GanTrungTamGiaiTri.Value;
        ckbGanCongVien.Checked = TinRaoVatBatDongSan.GanCongVien.Value;
    }
    private void InitThirdView()
    {
        //Thời gian làm việc
        List<string> ThoiGianLamViec = new List<string>() { "Hành chánh", "Bán thời gian", "Theo ca", "Thỏa thuận" };
        ddlThoiGianLamViec.DataSource = ThoiGianLamViec;
        ddlThoiGianLamViec.DataBind();
        //Thời hạn lưu tin
        List<int> ThoiHanLuuTin = new List<int>() { 1, 3, 5, 7, 9, 10, 12, 15, 17, 20, 30 };
        ddlThoiHanLuuTin3.DataSource = ThoiHanLuuTin;
        ddlThoiHanLuuTin3.DataBind();

        //Tin rao vặt
        txtTieuDe3.Text = TinRaoVat.TieuDe;
        ddlThoiHanLuuTin3.SelectedValue = TinRaoVat.ThoiHanLuuTin.ToString();
        ddlDiaDiem3.SelectedValue = DiaDiemBUS.TimDiaDiemTheoMa(TinRaoVat.MaDiaDiem.Value).TenDiaDiem;
        txtGhiChuAnh3.Text = TinRaoVat.GhiChuHinhAnh;
        hplHinhAnh3.Text = TinRaoVat.Thumbnail;
        hplHinhAnh3.NavigateUrl = ThumbnailLocation + TinRaoVat.Thumbnail;

        //Tin tuyển dụng
        TINTUYENDUNG TinTuyenDung = TinTuyenDungBUS.TimTinTuyenDungTheoMaTinRaoVat(TinRaoVat.MaTinRaoVat);
        txtTenNhaTuyenDung.Text = TinTuyenDung.TenNhaTuyenDung;
        txtGioiThieuNhaTuyenDung.Text = TinTuyenDung.GioiThieuNhaTuyenDung;
        txtWebsite.Text = TinTuyenDung.Website;
        txtNguoiDaiDien.Text = TinTuyenDung.NguoiDaiDien;
        txtDiaChiLienHe.Text = TinTuyenDung.DiaChiLienHe;
        txtDienThoai.Text = TinTuyenDung.DienThoai;
        txtEmail.Text = TinTuyenDung.Email;
        ddlNganhNghe3.SelectedValue = NganhNgheBUS.TimNganhNgheTheoMa(TinTuyenDung.MaNganhNghe.Value).TenNganhNghe;
        txtViTriTuyenDung.Text = TinTuyenDung.ViTriTuyenDung;
        txtYeuCauCongViec.Text = TinTuyenDung.YeuCauCongViec;
        txtYeuCauKinhNghiem.Text = TinTuyenDung.YeuCauKinhNghiem;
        ddlThoiGianLamViec.SelectedValue = TinTuyenDung.ThoiGianLamViec;
        txtSoLuongCanTuyen.Text = TinTuyenDung.SoLuongCanTuyen.ToString();
        txtMucLuongKhoiDiem.Text = TinTuyenDung.MucLuongKhoiDiem.ToString();
        txtThoiGianThuViec.Text = TinTuyenDung.ThoiGianThuViec;
        txtLuongThuViec.Text = TinTuyenDung.LuongThuViec.ToString();
        txtQuyenLoiDuocHuong.Text = TinTuyenDung.QuyenLoiDuocHuong;
        txtHoSoBaoGom.Text = TinTuyenDung.HoSoBaoGom;
        cldThoiHanKetThucNopHoSo.SelectedDate = TinTuyenDung.ThoiHanKetThucNopHoSo.Value;
    }
    private void InitFourthView()
    {
        //Bằng cấp
        List<string> BangCap = new List<string>() { "Trung học", "Trung cấp", "Cao đẳng", "Đaị học", "Cử nhân", "Thạc sĩ", "Tiến sĩ" };
        ddlBangCap.DataSource = BangCap;
        ddlBangCap.DataBind();
        //Cấp bậc
        List<string> CapBac = new List<string>() { "Mới đi làm", "Nhân viên", "Kỹ thuật viên", "Kỹ sư", "Chuyên viên", "Giám sát viên", "Tổ trưởng", "Huấn luyện viên", "Quản lý", "Giám đốc", "Tổng giám đốc" };
        ddlCapBac.DataSource = CapBac;
        ddlCapBac.DataBind();
        //Chức danh
        List<string> ChucDanh = new List<string>() { "Nhân viên", "Tổ trưởng", "Quản lý", "Giám đốc" };
        ddlChucDanh.DataSource = ChucDanh;
        ddlChucDanh.DataBind();
        //Thời gian làm việc
        List<string> ThoiGianLamViec = new List<string>() { "Hành chánh", "Bán thời gian", "Theo ca", "Thỏa thuận" };
        ddlThoiGianLamViec4.DataSource = ThoiGianLamViec;
        ddlThoiGianLamViec4.DataBind();
        //Thời hạn lưu tin
        List<int> ThoiHanLuuTin = new List<int>() { 1, 3, 5, 7, 9, 10, 12, 15, 17, 20, 30 };
        ddlThoiHanLuuTin4.DataSource = ThoiHanLuuTin;
        ddlThoiHanLuuTin4.DataBind();

        //Tin rao vặt
        txtTieuDe4.Text = TinRaoVat.TieuDe;
        ddlThoiHanLuuTin4.SelectedValue = TinRaoVat.ThoiHanLuuTin.ToString();
        ddlDiaDiem4.SelectedValue = DiaDiemBUS.TimDiaDiemTheoMa(TinRaoVat.MaDiaDiem.Value).TenDiaDiem;
        txtGhiChuAnh4.Text = TinRaoVat.GhiChuHinhAnh;
        hplHinhAnh4.Text = TinRaoVat.Thumbnail;
        hplHinhAnh4.NavigateUrl = ThumbnailLocation + TinRaoVat.Thumbnail;

        //Hồ sơ tuyển dụng
        HOSOTUYENDUNG HoSoTuyenDung = HoSoTuyenDungBUS.TimHoSoTuyenDungTheoMaTinRaoVat(TinRaoVat.MaTinRaoVat);
        ckbDongYHienThi.Checked = HoSoTuyenDung.DongYHienThi.Value;
        txtHoTen.Text = HoSoTuyenDung.HoTen;
        cldNgaySinh.SelectedDate = HoSoTuyenDung.NgaySinh.Value;
        ckbGioiTinh.Checked = HoSoTuyenDung.GioiTinh.Value;
        ckbTinhTrangHonNhan.Checked = HoSoTuyenDung.TinhTrangHonNhan.Value;
        txtQuocTich.Text = HoSoTuyenDung.QuocTich;
        txtDiaChiLienLac.Text = HoSoTuyenDung.DiaChiLienLac;
        txtDienThoai4.Text = HoSoTuyenDung.SoDienThoai;
        txtDiDong.Text = HoSoTuyenDung.DiDong;
        txtEmail4.Text = HoSoTuyenDung.Email;
        txtThongTinHocVan.Text = HoSoTuyenDung.ThongTinHocVan;
        ddlBangCap.SelectedValue = HoSoTuyenDung.BangCap;
        txtTrinhDoNgoaiNgu.Text = HoSoTuyenDung.NgoaiNgu;
        txtKyNang.Text = HoSoTuyenDung.KyNang;
        //Cấp bậc
        ddlCapBac.SelectedValue = HoSoTuyenDung.CapBac;
        txtSoNamKinhNghiem.Text = HoSoTuyenDung.SoNamKinhNghiem.ToString();
        txtCongTyLamViec.Text = HoSoTuyenDung.CongTyLamViec;
        ddlChucDanh.SelectedValue = HoSoTuyenDung.ChucDanh;
        txtTomTatKinhNghiem.Text = HoSoTuyenDung.TomTatKinhNghiem;
        txtMoTaCongViecLyTuong.Text = HoSoTuyenDung.MoTaCongViecLyTuong;
        txtNguyenVong.Text = HoSoTuyenDung.NguyenVong;
        //Thời gian làm việc
        ddlThoiGianLamViec4.SelectedValue = HoSoTuyenDung.ThoiGianLamViec;
        txtLuongMongMuon.Text = HoSoTuyenDung.LuongMongMuon;

        //Chi tiết hồ sơ tuyển dụng
        List<CHITIETHOSOTUYENDUNG> lstChiTietHoSoTuyenDung = ChiTietHoSoTuyenDungBUS.TimChiTietHoSoTuyenDungTheoMaHoTuyenDung(HoSoTuyenDung.MaHoSoTuyenDung);
        if (lstChiTietHoSoTuyenDung.Count != 0)
        {
            NGANHNGHE NganhNghe = NganhNgheBUS.TimNganhNgheTheoMa(lstChiTietHoSoTuyenDung[0].MaNganhNghe.Value);
            ddlNganhNghe4a.SelectedValue = NganhNghe.TenNganhNghe;
        }
        if (lstChiTietHoSoTuyenDung.Count > 0 && lstChiTietHoSoTuyenDung[1] != null)
        {
            NGANHNGHE NganhNghe = NganhNgheBUS.TimNganhNgheTheoMa(lstChiTietHoSoTuyenDung[1].MaNganhNghe.Value);
            ddlNganhNghe4b.SelectedValue = NganhNghe.TenNganhNghe;
        }
        if (lstChiTietHoSoTuyenDung.Count > 1 && lstChiTietHoSoTuyenDung[2] != null)
        {
            NGANHNGHE NganhNghe = NganhNgheBUS.TimNganhNgheTheoMa(lstChiTietHoSoTuyenDung[2].MaNganhNghe.Value);
            ddlNganhNghe4c.SelectedValue = NganhNghe.TenNganhNghe;
        }
    }

    protected void btnCapNhat1_Click(object sender, EventArgs e)
    {
        //Cập nhật tin rao vặt
        TINRAOVAT TinRaoVatMoi = TinRaoVatBUS.TimTinRaoVatTheoMa(TinRaoVat.MaTinRaoVat);        
        TinRaoVatMoi.ThoiGianDang = DateTime.Now;
        TinRaoVatMoi.ThoiHanLuuTin = int.Parse(ddlThoiHanLuuTin1.SelectedValue);
        TinRaoVatMoi.MaDiaDiem = DiaDiemBUS.TimDiaDiemTheoTen(ddlDiaDiem1.SelectedValue).MaDiaDiem;

        //Kiểm tra đăng nhập
        if (Session["userID"] != null)
        {
            //Kiểm tra quyền hạn chỉnh sửa (nếu là người đăng)
            if (Session["userID"].ToString() != TinRaoVat.MaNguoiDung.Value.ToString())
            {
                Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
            }
        }
        else { Response.Redirect("~/TaiKhoan/DangNhap.aspx"); }

        TinRaoVatMoi.MaDanhMucCon = TinRaoVat.MaDanhMucCon;
        TinRaoVatMoi.TieuDe = txtTieuDe1.Text;
        ////Thumbnail
        if (fupHinhAnh1.HasFile)
        {
            try
            {
                string filename = Path.GetFileName(fupHinhAnh1.FileName);
                fupHinhAnh1.SaveAs(Server.MapPath(ThumbnailLocation) + filename);
                TinRaoVatMoi.Thumbnail = filename;
                TinRaoVatMoi.GhiChuHinhAnh = txtGhiChuAnh1.Text;
            }
            catch (Exception ex)
            { Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail"); }
        }

        if (!TinRaoVatBUS.CapNhatTinRaoVat(TinRaoVatMoi))
        {
            Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
        }

        //Cập nhật tin rao vặt thường
        TINRAOVATTHUONG TinRaoVatThuong = TinRaoVatThuongBUS.TimTinRaoVatThuongTheoMaTinRaoVat(TinRaoVat.MaTinRaoVat);
        TinRaoVatThuong.NoiDungTinRaoVat = txtNoiDung1.Text;
        TinRaoVatThuong.Gia = int.Parse(txtGia1.Text);

        if (!TinRaoVatThuongBUS.CapNhatTinRaoVatThuong(TinRaoVatThuong))
        {
            Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
        }
        //Cập nhật thành công
        Response.Redirect("~/Default.aspx?rv=submitraovat&ss=success");
    }
    protected void btnCapNhat2_Click(object sender, EventArgs e)
    {
        //Cập nhật tin rao vặt
        TINRAOVAT TinRaoVatMoi = TinRaoVatBUS.TimTinRaoVatTheoMa(TinRaoVat.MaTinRaoVat);
        TinRaoVatMoi.ThoiGianDang = DateTime.Now;
        TinRaoVatMoi.ThoiHanLuuTin = int.Parse(ddlThoiHanLuuTin2.SelectedValue);
        TinRaoVatMoi.MaDiaDiem = DiaDiemBUS.TimDiaDiemTheoTen(ddlDiaDiem2.SelectedValue).MaDiaDiem;

        //Kiểm tra đăng nhập
        if (Session["userID"] != null)
        {
            //Kiểm tra quyền hạn chỉnh sửa (nếu là người đăng)
            if (Session["userID"].ToString() != TinRaoVat.MaNguoiDung.Value.ToString())
            {
                Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
            }
        }
        else { Response.Redirect("~/TaiKhoan/DangNhap.aspx"); }

        TinRaoVatMoi.MaDanhMucCon = TinRaoVat.MaDanhMucCon;
        TinRaoVatMoi.TieuDe = txtTieuDe2.Text;
        //Thumbnail
        if (fupHinhAnh2.HasFile)
        {
            try
            {
                string filename = Path.GetFileName(fupHinhAnh2.FileName);
                fupHinhAnh2.SaveAs(Server.MapPath(ThumbnailLocation) + filename);
                TinRaoVatMoi.Thumbnail = filename;
                TinRaoVatMoi.GhiChuHinhAnh = txtGhiChuAnh2.Text;
            }
            catch (Exception ex)
            { Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail"); }
        }

        if (!TinRaoVatBUS.CapNhatTinRaoVat(TinRaoVatMoi))
        {
            Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
        }

        //Cập nhật tin rao vặt bất động sản
        TINRAOVATBATDONGSAN TinRaoVatBatDongSan = TinRaoVatBatDongSanBUS.TimTinRaoVatBatDongSanTheoMaTinRaoVat(TinRaoVat.MaTinRaoVat);
        TinRaoVatBatDongSan.NoiDungTinRaoVat = txtNoiDung2.Text;
        TinRaoVatBatDongSan.Gia = int.Parse(txtGia2.Text);
        TinRaoVatBatDongSan.DiaChi = txtDiaChi.Text;
        TinRaoVatBatDongSan.DienTich = int.Parse(txtDienTich.Text);
        TinRaoVatBatDongSan.Huong = txtHuong.Text;
        TinRaoVatBatDongSan.LoGioi = txtHuong.Text;
        TinRaoVatBatDongSan.Lau = int.Parse(txtLau.Text);
        TinRaoVatBatDongSan.Lung = int.Parse(txtLung.Text);
        TinRaoVatBatDongSan.MatTien = ddlMatTien.SelectedIndex == 0 ? true : false;
        TinRaoVatBatDongSan.GiayTo = txtGiayTo.Text;
        TinRaoVatBatDongSan.DuongTruocNha = txtDuongTruocNha.Text;
        TinRaoVatBatDongSan.DienNhaNuoc = ckbDien.Checked;
        TinRaoVatBatDongSan.NuocMay = ckbNuocMay.Checked;
        TinRaoVatBatDongSan.SoPhongNgu = int.Parse(txtSoPhongNgu.Text);
        TinRaoVatBatDongSan.SoNhaVeSinh = int.Parse(txtSoNhaVeSinh.Text);
        TinRaoVatBatDongSan.NamXayDung = int.Parse(txtNamXayDung.Text);
        TinRaoVatBatDongSan.PhongKhach = ckbPhongKhach.Checked;
        TinRaoVatBatDongSan.GaraOto = ckbGaraOto.Checked;
        TinRaoVatBatDongSan.NhaBep = ckbNhaBep.Checked;
        TinRaoVatBatDongSan.HoBoi = ckbHoBoi.Checked;
        TinRaoVatBatDongSan.SanThuong = ckbSanThuong.Checked;
        TinRaoVatBatDongSan.DieuHoa = ckbDieuHoa.Checked;
        TinRaoVatBatDongSan.SanVuon = ckbSanVuon.Checked;
        TinRaoVatBatDongSan.ThangMay = ckbThangMay.Checked;
        TinRaoVatBatDongSan.GanTruongMauGiao = ckbGanTruongMauGiao.Checked;
        TinRaoVatBatDongSan.GanTruongCap1 = ckbGanTruongCapMot.Checked;
        TinRaoVatBatDongSan.GanTruongCap2 = ckbGanTruongCapHai.Checked;
        TinRaoVatBatDongSan.GanTruongCap3 = ckbGanTruongCapBa.Checked;
        TinRaoVatBatDongSan.GanCho = ckbGanCho.Checked;
        TinRaoVatBatDongSan.GanBenhVien = ckbGanBenhVien.Checked;
        TinRaoVatBatDongSan.GanTrungTamThuongMai = ckbGanTrungTamThuongMai.Checked;
        TinRaoVatBatDongSan.GanTrungTamGiaiTri = ckbGanTrungTamGiaiTri.Checked;
        TinRaoVatBatDongSan.GanCongVien = ckbGanCongVien.Checked;

        if (!TinRaoVatBatDongSanBUS.CapNhatTinRaoVatBatDongSan(TinRaoVatBatDongSan))
        {
            Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
        }
        //Cập nhật thành công
        Response.Redirect("~/Default.aspx?rv=submitraovat&ss=success");
    }
    protected void btnCapNhat3_Click(object sender, EventArgs e)
    {
        //Cập nhật tin rao vặt
        TINRAOVAT TinRaoVatMoi = TinRaoVatBUS.TimTinRaoVatTheoMa(TinRaoVat.MaTinRaoVat);
        TinRaoVatMoi.ThoiGianDang = DateTime.Now;
        TinRaoVatMoi.ThoiHanLuuTin = int.Parse(ddlThoiHanLuuTin3.SelectedValue);
        TinRaoVatMoi.MaDiaDiem = DiaDiemBUS.TimDiaDiemTheoTen(ddlDiaDiem3.SelectedValue).MaDiaDiem;

        //Kiểm tra đăng nhập
        if (Session["userID"] != null)
        {
            //Kiểm tra quyền hạn chỉnh sửa (nếu là người đăng)
            if (Session["userID"].ToString() != TinRaoVat.MaNguoiDung.Value.ToString())
            {
                Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
            }
        }
        else { Response.Redirect("~/TaiKhoan/DangNhap.aspx"); }

        TinRaoVatMoi.MaDanhMucCon = TinRaoVat.MaDanhMucCon;
        TinRaoVatMoi.TieuDe = txtTieuDe3.Text;
        //Thumbnail
        if (fupHinhAnh3.HasFile)
        {
            try
            {
                string filename = Path.GetFileName(fupHinhAnh3.FileName);
                fupHinhAnh3.SaveAs(Server.MapPath(ThumbnailLocation) + filename);
                TinRaoVatMoi.Thumbnail = filename;
                TinRaoVatMoi.GhiChuHinhAnh = txtGhiChuAnh3.Text;
            }
            catch (Exception ex)
            { Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail"); }
        }

        if (!TinRaoVatBUS.CapNhatTinRaoVat(TinRaoVatMoi))
        {
            Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
        }

        //Cập nhật tin tuyển dụng
        TINTUYENDUNG TinTuyenDung = TinTuyenDungBUS.TimTinTuyenDungTheoMaTinRaoVat(TinRaoVat.MaTinRaoVat);
        TinTuyenDung.TenNhaTuyenDung = txtTenNhaTuyenDung.Text;
        TinTuyenDung.GioiThieuNhaTuyenDung = txtGioiThieuNhaTuyenDung.Text;
        TinTuyenDung.Website = txtWebsite.Text;
        TinTuyenDung.NguoiDaiDien = txtNguoiDaiDien.Text;
        TinTuyenDung.DiaChiLienHe = txtDiaChiLienHe.Text;
        TinTuyenDung.DienThoai = txtDienThoai.Text;
        TinTuyenDung.Email = txtEmail.Text;
        TinTuyenDung.MaNganhNghe = NganhNgheBUS.TimNganhNgheTheoTen(ddlNganhNghe3.SelectedValue).MaNganhNghe;
        TinTuyenDung.ViTriTuyenDung = txtViTriTuyenDung.Text;
        TinTuyenDung.YeuCauCongViec = txtYeuCauCongViec.Text;
        TinTuyenDung.YeuCauKinhNghiem = txtYeuCauKinhNghiem.Text;
        TinTuyenDung.ThoiGianLamViec = ddlThoiGianLamViec.SelectedValue;
        TinTuyenDung.SoLuongCanTuyen = int.Parse(txtSoLuongCanTuyen.Text);
        TinTuyenDung.MucLuongKhoiDiem = int.Parse(txtMucLuongKhoiDiem.Text);
        TinTuyenDung.ThoiGianThuViec = txtThoiGianThuViec.Text;
        TinTuyenDung.LuongThuViec = int.Parse(txtLuongThuViec.Text);
        TinTuyenDung.QuyenLoiDuocHuong = txtQuyenLoiDuocHuong.Text;
        TinTuyenDung.HoSoBaoGom = txtHoSoBaoGom.Text;
        TinTuyenDung.ThoiHanKetThucNopHoSo = cldThoiHanKetThucNopHoSo.SelectedDate;

        if (!TinTuyenDungBUS.CapNhatTinTuyenDung(TinTuyenDung))
        {
            Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
        }
        //Thêm thành công
        Response.Redirect("~/Default.aspx?rv=submitraovat&ss=success");
    }
    protected void btnCapNhat4_Click(object sender, EventArgs e)
    {
        //Cập nhật tin rao vặt
        TINRAOVAT TinRaoVatMoi = TinRaoVatBUS.TimTinRaoVatTheoMa(TinRaoVat.MaTinRaoVat);        
        TinRaoVatMoi.ThoiGianDang = DateTime.Now;
        TinRaoVatMoi.ThoiHanLuuTin = int.Parse(ddlThoiHanLuuTin4.SelectedValue);
        TinRaoVatMoi.MaDiaDiem = DiaDiemBUS.TimDiaDiemTheoTen(ddlDiaDiem4.SelectedValue).MaDiaDiem;

        //Kiểm tra đăng nhập
        if (Session["userID"] != null)
        {
            //Kiểm tra quyền hạn chỉnh sửa (nếu là người đăng)
            if (Session["userID"].ToString() != TinRaoVat.MaNguoiDung.Value.ToString())
            {
                Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
            }
        }
        else { Response.Redirect("~/TaiKhoan/DangNhap.aspx"); }

        TinRaoVatMoi.MaDanhMucCon = TinRaoVat.MaDanhMucCon;
        TinRaoVatMoi.TieuDe = txtTieuDe4.Text;
        //Thumbnail
        if (fupHinhAnh4.HasFile)
        {
            try
            {
                string filename = Path.GetFileName(fupHinhAnh4.FileName);
                fupHinhAnh4.SaveAs(Server.MapPath(ThumbnailLocation) + filename);
                TinRaoVatMoi.Thumbnail = filename;
                TinRaoVatMoi.GhiChuHinhAnh = txtGhiChuAnh4.Text;
            }
            catch (Exception ex)
            { Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail"); }
        }

        if (!TinRaoVatBUS.CapNhatTinRaoVat(TinRaoVatMoi))
        {
            Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
        }

        //Cập nhật hồ sơ tuyển dụng
        HOSOTUYENDUNG HoSoTuyenDung = HoSoTuyenDungBUS.TimHoSoTuyenDungTheoMaTinRaoVat(TinRaoVat.MaTinRaoVat);
        HoSoTuyenDung.DongYHienThi = ckbDongYHienThi.Checked;
        HoSoTuyenDung.HoTen = txtHoTen.Text;
        HoSoTuyenDung.NgaySinh = cldNgaySinh.SelectedDate;
        HoSoTuyenDung.GioiTinh = ckbGioiTinh.Checked;
        HoSoTuyenDung.TinhTrangHonNhan = ckbTinhTrangHonNhan.Checked;
        HoSoTuyenDung.QuocTich = txtQuocTich.Text;
        HoSoTuyenDung.DiaChiLienLac = txtDiaChiLienLac.Text;
        HoSoTuyenDung.SoDienThoai = txtDienThoai4.Text;
        HoSoTuyenDung.DiDong = txtDiDong.Text;
        HoSoTuyenDung.Email = txtEmail4.Text;
        HoSoTuyenDung.ThongTinHocVan = txtThongTinHocVan.Text;
        HoSoTuyenDung.BangCap = ddlBangCap.SelectedValue;
        HoSoTuyenDung.NgoaiNgu = txtTrinhDoNgoaiNgu.Text;
        HoSoTuyenDung.KyNang = txtKyNang.Text;
        HoSoTuyenDung.CapBac = ddlCapBac.SelectedValue;
        HoSoTuyenDung.SoNamKinhNghiem = int.Parse(txtSoNamKinhNghiem.Text);
        HoSoTuyenDung.CongTyLamViec = txtCongTyLamViec.Text;
        HoSoTuyenDung.ChucDanh = ddlChucDanh.SelectedValue;
        HoSoTuyenDung.TomTatKinhNghiem = txtTomTatKinhNghiem.Text;
        HoSoTuyenDung.MoTaCongViecLyTuong = txtMoTaCongViecLyTuong.Text;
        HoSoTuyenDung.NguyenVong = txtNguyenVong.Text;
        HoSoTuyenDung.ThoiGianLamViec = ddlThoiGianLamViec4.SelectedValue;
        HoSoTuyenDung.LuongMongMuon = txtLuongMongMuon.Text;

        if (!HoSoTuyenDungBUS.CapNhatHoSoTuyenDung(HoSoTuyenDung))
        {
            Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
        }
        //Cập nhật chi tiết hồ sơ tuyển dụng
        List<CHITIETHOSOTUYENDUNG> lstChiTietHoSoTuyenDung = ChiTietHoSoTuyenDungBUS.TimChiTietHoSoTuyenDungTheoMaHoTuyenDung(HoSoTuyenDung.MaHoSoTuyenDung);
        if (lstChiTietHoSoTuyenDung.Count != 0)
        {
            lstChiTietHoSoTuyenDung[0].MaNganhNghe = NganhNgheBUS.TimNganhNgheTheoTen(ddlNganhNghe4a.SelectedValue).MaNganhNghe;
            if (!ChiTietHoSoTuyenDungBUS.CapNhatChiTietHoSoTuyenDung(lstChiTietHoSoTuyenDung[0]))
            {
                Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
            }
        }
        if (lstChiTietHoSoTuyenDung.Count > 0 && lstChiTietHoSoTuyenDung[1] != null)
        {
            lstChiTietHoSoTuyenDung[1].MaNganhNghe = NganhNgheBUS.TimNganhNgheTheoTen(ddlNganhNghe4b.SelectedValue).MaNganhNghe;
            if (!ChiTietHoSoTuyenDungBUS.CapNhatChiTietHoSoTuyenDung(lstChiTietHoSoTuyenDung[1]))
            {
                Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
            }
        }
        if (lstChiTietHoSoTuyenDung.Count > 1 && lstChiTietHoSoTuyenDung[2] != null)
        {
            lstChiTietHoSoTuyenDung[2].MaNganhNghe = NganhNgheBUS.TimNganhNgheTheoTen(ddlNganhNghe4c.SelectedValue).MaNganhNghe;
            if (!ChiTietHoSoTuyenDungBUS.CapNhatChiTietHoSoTuyenDung(lstChiTietHoSoTuyenDung[2]))
            {
                Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
            }
        }

        //Cập nhật thành công
        Response.Redirect("~/Default.aspx?rv=submitraovat&ss=success");
    }
}
