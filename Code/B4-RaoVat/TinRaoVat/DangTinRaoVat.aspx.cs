using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAO;
using System.IO;

public partial class DangTinRaoVat : System.Web.UI.Page
{
    string DanhMucChinh = string.Empty;
    string DanhMucCon = string.Empty;
    int MaDanhMucCon;
    string ThumbnailLocation = "~/images/TinRaoVat/";

    /// <summary>
    /// Page_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        string ChuyenMuc = string.Empty;
        int MaDanhMucChinh;
        //Lấy thông tin chuyên mục, danh mục chính, danh mục con
        if (Request.QueryString["cm"] != null)
            ChuyenMuc = Request.QueryString["cm"];
        if (Request.QueryString["main"] != null)
        {
            MaDanhMucChinh = int.Parse(Request.QueryString["main"]);
            DanhMucChinh = DanhMucChinhBUS.TimDanhMucChinhTheoMa(MaDanhMucChinh).TenDanhMucChinh.Trim();
        }
        if (Request.QueryString["sub"] != null)
        {
            MaDanhMucCon = int.Parse(Request.QueryString["sub"]);
            DanhMucCon = DanhMucConBUS.TimDanhMucConTheoMa(MaDanhMucCon).TenDanhMucCon.Trim();
        }
        //Hiển thị view tương ứng với chuyên mục
        if (ChuyenMuc == "1")
        {
            MultiView1.SetActiveView(View1);
            InitFirstView();
        }
        else if (ChuyenMuc == "2")
        {
            MultiView1.SetActiveView(View2);
            InitSecondView();
        }
        else if (ChuyenMuc == "3")
        {
            MultiView1.SetActiveView(View3);
            InitThirdView();
        }
        else if (ChuyenMuc == "4")
        {
            MultiView1.SetActiveView(View4);
            InitFourthView();
        }
    }
    /// <summary>
    /// Khởi tạo dữ liệu cho View1
    /// </summary>
    private void InitFirstView()
    {
        //Hiển thị danh mục
        txtChuyenMuc1.Text = DanhMucChinh + " > " + DanhMucCon;
        //Thời hạn lưu tin
        List<int> ThoiHanLuuTin = new List<int>() { 1, 3, 5, 7, 9, 10, 12, 15, 17, 20, 30 };
        ddlThoiHanLuuTin1.DataSource = ThoiHanLuuTin;
        ddlThoiHanLuuTin1.DataBind();
    }
    /// <summary>
    /// Khởi tạo dữ liệu cho View2
    /// </summary>
    private void InitSecondView()
    {
        //Hiển thị danh mục
        txtChuyenMuc2.Text = DanhMucChinh + " > " + DanhMucCon;
        //Thời hạn lưu tin
        List<int> ThoiHanLuuTin = new List<int>() { 1, 3, 5, 7, 9, 10, 12, 15, 17, 20, 30 };
        ddlThoiHanLuuTin2.DataSource = ThoiHanLuuTin;
        ddlThoiHanLuuTin2.DataBind();
        //Vị trí
        List<string> ViTri = new List<string>() { "Mặt tiền", "Trong hẻm" };
        ddlMatTien.DataSource = ViTri;
        ddlMatTien.DataBind();
    }
    /// <summary>
    /// Khởi tạo dữ liệu cho View3
    /// </summary>
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
    }
    /// <summary>
    /// Khởi tạo dữ liệu cho View4
    /// </summary>
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
    }
    /// <summary>
    /// Đồng ý đăng tin rao vặt thường
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnDangTin1_Click(object sender, EventArgs e)
    {
        if (ckbDongY1.Checked)
        {
            //Thêm tin rao vặt
            TINRAOVAT TinRaoVat = new TINRAOVAT();
            TinRaoVat.ThoiGianDang = DateTime.Now;
            TinRaoVat.ThoiHanLuuTin = int.Parse(ddlThoiHanLuuTin1.SelectedValue);
            TinRaoVat.MaDiaDiem = DiaDiemBUS.TimDiaDiemTheoTen(ddlDiaDiem1.SelectedValue).MaDiaDiem;
            TinRaoVat.SoLanXem = 0;
            ////Mã người dùng
            if (Session["userID"] != null)
            {
                int userID = int.Parse(Session["userID"].ToString());
                TinRaoVat.MaNguoiDung = userID;
            }
            else { Response.Redirect("~/TaiKhoan/DangNhap.aspx"); }

            TinRaoVat.MaDanhMucCon = MaDanhMucCon;
            TinRaoVat.TieuDe = txtTieuDe1.Text;
            //Thumbnail            
            if (fupHinhAnh1.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(fupHinhAnh1.FileName);
                    fupHinhAnh1.SaveAs(Server.MapPath(ThumbnailLocation) + filename);
                    TinRaoVat.Thumbnail = filename;
                    TinRaoVat.GhiChuHinhAnh = txtGhiChuAnh1.Text;
                }
                catch (Exception ex)
                {
                    Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
                }
            }
            TinRaoVat.Deleted = false;
            if (!TinRaoVatBUS.ThemTinRaoVat(TinRaoVat))
            {
                Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
            }

            //Thêm tin rao vặt thường
            TINRAOVATTHUONG TinRaoVatThuong = new TINRAOVATTHUONG();
            TinRaoVatThuong.MaTinRaoVat = TinRaoVatBUS.TimTinRaoVatMoiNhat().MaTinRaoVat;
            TinRaoVatThuong.NoiDungTinRaoVat = txtNoiDung1.Text;
            TinRaoVatThuong.Gia = int.Parse(txtGia1.Text);            
            TinRaoVatThuong.Deleted = false;
            if (!TinRaoVatThuongBUS.ThemTinRaoVatThuong(TinRaoVatThuong))
            {
                Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
            }
            //Thêm thành công
            Response.Redirect("~/Default.aspx?rv=submitraovat&ss=success");
        }
        
    }
    /// <summary>
    /// Đồng ý đăng tin rao vặt bất động sản
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnDangTin2_Click(object sender, EventArgs e)
    {
        if (ckbDongY2.Checked)
        {
            //Thêm tin rao vặt
            
            TINRAOVAT TinRaoVat = new TINRAOVAT();
            TinRaoVat.ThoiGianDang = DateTime.Now;
            TinRaoVat.ThoiHanLuuTin = int.Parse(ddlThoiHanLuuTin2.SelectedValue);
            TinRaoVat.MaDiaDiem = DiaDiemBUS.TimDiaDiemTheoTen(ddlDiaDiem2.SelectedValue).MaDiaDiem;
            TinRaoVat.SoLanXem = 0;
            ////Mã người dùng
            if (Request.Cookies["userID"] != null)
            {
                int userID = int.Parse(Request.Cookies["userID"].Value);
                TinRaoVat.MaNguoiDung = userID;
            }
            else { Response.Redirect("~/TaiKhoan/DangNhap.aspx"); }

            TinRaoVat.MaDanhMucCon = MaDanhMucCon;
            TinRaoVat.TieuDe = txtTieuDe2.Text;
            //Thumbnail            
            if (fupHinhAnh2.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(fupHinhAnh2.FileName);
                    fupHinhAnh2.SaveAs(Server.MapPath(ThumbnailLocation) + filename);
                    TinRaoVat.Thumbnail = filename;
                    TinRaoVat.GhiChuHinhAnh = txtGhiChuAnh2.Text;
                }
                catch (Exception ex)
                {
                    Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
                }
            }
            TinRaoVat.Deleted = false;
            if (!TinRaoVatBUS.ThemTinRaoVat(TinRaoVat))
            {
                Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
            }

            //Thêm tin rao vặt bất động sản
            TINRAOVATBATDONGSAN TinRaoVatBatDongSan = new TINRAOVATBATDONGSAN();
            TinRaoVatBatDongSan.MaTinRaoVat = TinRaoVatBUS.TimTinRaoVatMoiNhat().MaTinRaoVat;
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
            TinRaoVatBatDongSan.DienNhaNuoc = ckbDien.Checked ? true : false;
            TinRaoVatBatDongSan.NuocMay = ckbNuocMay.Checked ? true : false;
            TinRaoVatBatDongSan.SoPhongNgu = int.Parse(txtSoPhongNgu.Text);
            TinRaoVatBatDongSan.SoNhaVeSinh = int.Parse(txtSoNhaVeSinh.Text);
            TinRaoVatBatDongSan.NamXayDung = int.Parse(txtNamXayDung.Text);
            TinRaoVatBatDongSan.PhongKhach = ckbPhongKhach.Checked ? true : false;
            TinRaoVatBatDongSan.GaraOto = ckbGaraOto.Checked ? true : false;
            TinRaoVatBatDongSan.NhaBep = ckbNhaBep.Checked ? true : false;
            TinRaoVatBatDongSan.HoBoi = ckbHoBoi.Checked ? true : false;
            TinRaoVatBatDongSan.SanThuong = ckbSanThuong.Checked ? true : false;
            TinRaoVatBatDongSan.DieuHoa = ckbDieuHoa.Checked ? true : false;
            TinRaoVatBatDongSan.SanVuon = ckbSanVuon.Checked ? true : false;
            TinRaoVatBatDongSan.ThangMay = ckbThangMay.Checked ? true : false;
            TinRaoVatBatDongSan.GanTruongMauGiao = ckbGanTruongMauGiao.Checked ? true : false;
            TinRaoVatBatDongSan.GanTruongCap1 = ckbGanTruongCapMot.Checked ? true : false;
            TinRaoVatBatDongSan.GanTruongCap2 = ckbGanTruongCapHai.Checked ? true : false;
            TinRaoVatBatDongSan.GanTruongCap3 = ckbGanTruongCapBa.Checked ? true : false;
            TinRaoVatBatDongSan.GanCho = ckbGanCho.Checked ? true : false;
            TinRaoVatBatDongSan.GanBenhVien = ckbGanBenhVien.Checked ? true : false;
            TinRaoVatBatDongSan.GanTrungTamThuongMai = ckbGanTrungTamThuongMai.Checked ? true : false;
            TinRaoVatBatDongSan.GanTrungTamGiaiTri = ckbGanTrungTamGiaiTri.Checked ? true : false;
            TinRaoVatBatDongSan.GanCongVien = ckbGanCongVien.Checked ? true : false;
                        
            TinRaoVatBatDongSan.Deleted = false;
            
            if (!TinRaoVatBatDongSanBUS.ThemTinRaoVatBatDongSan(TinRaoVatBatDongSan))
            {
                Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
            }
            //Thêm thành công
            Response.Redirect("~/Default.aspx?rv=submitraovat&ss=success");
        }       
    }
    /// <summary>
    /// Đồng ý đăng tin tuyển dụng
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnDangTin3_Click(object sender, EventArgs e)
    {
        //Thêm tin rao vặt
        TINRAOVAT TinRaoVat = new TINRAOVAT();
        TinRaoVat.ThoiGianDang = DateTime.Now;
        TinRaoVat.ThoiHanLuuTin = int.Parse(ddlThoiHanLuuTin3.SelectedValue);
        //TinRaoVat.MaDiaDiem = DiaDiemBUS.TimDiaDiemTheoTen(ddlDiaDiem2.SelectedValue).MaDiaDiem;
        TinRaoVat.SoLanXem = 0;
        ////Mã người dùng
        if (Request.Cookies["userID"] != null)
        {
            int userID = int.Parse(Request.Cookies["userID"].Value);
            TinRaoVat.MaNguoiDung = userID;
        }
        else { Response.Redirect("~/TaiKhoan/DangNhap.aspx"); }

        TinRaoVat.MaDanhMucCon = MaDanhMucCon;
        //TinRaoVat.TieuDe = txtTieuDe2.Text;
        //Thumbnail            
        if (fupHinhAnh3.HasFile)
        {
            try
            {
                string filename = Path.GetFileName(fupHinhAnh3.FileName);
                fupHinhAnh3.SaveAs(Server.MapPath(ThumbnailLocation) + filename);
                TinRaoVat.Thumbnail = filename;
                TinRaoVat.GhiChuHinhAnh = txtGhiChuAnh3.Text;
            }
            catch (Exception ex)
            {
                Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
            }
        }

        TinRaoVat.Deleted = false;
        if (!TinRaoVatBUS.ThemTinRaoVat(TinRaoVat))
        {
            Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
        }

        //Thêm hồ sơ tuyển dụng
        HOSOTUYENDUNG HoSoTuyenDung = new HOSOTUYENDUNG();
        HoSoTuyenDung.MaTinRaoVat = TinRaoVatBUS.TimTinRaoVatMoiNhat().MaTinRaoVat;
        HoSoTuyenDung.DongYHienThi = ckbDongYHienThi.Checked ? true : false;
        HoSoTuyenDung.HoTen = txtHoTen.Text;
        HoSoTuyenDung.NgaySinh = cldNgaySinh.SelectedDate;
        HoSoTuyenDung.GioiTinh = ckbGioiTinh.Checked ? true : false;
        HoSoTuyenDung.TinhTrangHonNhan = ckbTinhTrangHonNhan.Checked ? true : false;
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
        
	    HoSoTuyenDung.Deleted = false;

        if (!HoSoTuyenDungBUS.ThemHoSoTuyenDung(HoSoTuyenDung))
        {
            Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
        }
        //Thêm chi tiết hồ sơ tuyển dụng
        int MaHoSoTuyenDung = HoSoTuyenDungBUS.TimHoSoTuyenDungMoiNhat().MaHoSoTuyenDung;

        CHITIETHOSOTUYENDUNG ChiTietHSTD = new CHITIETHOSOTUYENDUNG();
        ChiTietHSTD.MaHoSoTuyenDung = MaHoSoTuyenDung;
        ChiTietHSTD.MaNganhNghe = NganhNgheBUS.TimNganhNgheTheoTen(ddlNganhNghe4a.SelectedValue).MaNganhNghe;
        if (!ChiTietHoSoTuyenDungBUS.ThemChiTietHoSoTuyenDung(ChiTietHSTD))
        {
            Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
        }

        ChiTietHSTD = new CHITIETHOSOTUYENDUNG();
        ChiTietHSTD.MaHoSoTuyenDung = MaHoSoTuyenDung;
        ChiTietHSTD.MaNganhNghe = NganhNgheBUS.TimNganhNgheTheoTen(ddlNganhNghe4b.SelectedValue).MaNganhNghe;
        if(!ChiTietHoSoTuyenDungBUS.ThemChiTietHoSoTuyenDung(ChiTietHSTD))
        {
            Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
        }

        ChiTietHSTD = new CHITIETHOSOTUYENDUNG();
        ChiTietHSTD.MaHoSoTuyenDung = MaHoSoTuyenDung;
        ChiTietHSTD.MaNganhNghe = NganhNgheBUS.TimNganhNgheTheoTen(ddlNganhNghe4c.SelectedValue).MaNganhNghe;
        if(!ChiTietHoSoTuyenDungBUS.ThemChiTietHoSoTuyenDung(ChiTietHSTD))
        {
            Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
        }

        //Thêm thành công
        Response.Redirect("~/Default.aspx?rv=submitraovat&ss=success");
    }
    /// <summary>
    /// Đồng ý đăng hồ sơ tuyển dụng
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnDangTin4_Click(object sender, EventArgs e)
    {
        //Thêm tin rao vặt
        TINRAOVAT TinRaoVat = new TINRAOVAT();
        TinRaoVat.ThoiGianDang = DateTime.Now;
        TinRaoVat.ThoiHanLuuTin = int.Parse(ddlThoiHanLuuTin4.SelectedValue);
        //TinRaoVat.MaDiaDiem = DiaDiemBUS.TimDiaDiemTheoTen(ddlDiaDiem2.SelectedValue).MaDiaDiem;
        TinRaoVat.SoLanXem = 0;
        ////Mã người dùng
        if (Request.Cookies["userID"] != null)
        {
            int userID = int.Parse(Request.Cookies["userID"].Value);
            TinRaoVat.MaNguoiDung = userID;
        }
        else { Response.Redirect("~/TaiKhoan/DangNhap.aspx"); }

        TinRaoVat.MaDanhMucCon = MaDanhMucCon;
        //TinRaoVat.TieuDe = txtTieuDe2.Text;
        //Thumbnail
        if (fupHinhAnh4.HasFile)
        {
            try
            {
                string filename = Path.GetFileName(fupHinhAnh4.FileName);
                fupHinhAnh4.SaveAs(Server.MapPath(ThumbnailLocation) + filename);
                TinRaoVat.Thumbnail = filename;
                TinRaoVat.GhiChuHinhAnh = txtGhiChuAnh4.Text;
            }
            catch (Exception ex)
            {
                Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
            }
        }

        TinRaoVat.Deleted = false;
        if (!TinRaoVatBUS.ThemTinRaoVat(TinRaoVat))
        {
            Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
        }

        //Thêm tin tuyển dụng
        TINTUYENDUNG TinTuyenDung = new TINTUYENDUNG();
        TinTuyenDung.MaTinRaoVat = TinRaoVatBUS.TimTinRaoVatMoiNhat().MaTinRaoVat;
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
        if (!TinTuyenDungBUS.ThemTinTuyenDung(TinTuyenDung))
        {
            Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail");
        }
        //Thêm thành công
        Response.Redirect("~/Default.aspx?rv=submitraovat&ss=success");
    }
}