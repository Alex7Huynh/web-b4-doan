using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAO;
using System.IO;

public partial class ChinhSuaBaiRaoVat : System.Web.UI.Page
{
    int MyID;
    TINRAOVAT TinRaoVat = new TINRAOVAT();
    DANHMUCCON DanhMucCon = new DANHMUCCON();
    DANHMUCCHINH DanhMucChinh = new DANHMUCCHINH();
    string ThumbnailLocation = "~/images/TinRaoVat/";

    protected void Page_Load(object sender, EventArgs e)
    {
        //Nếu chưa đăng nhập        
        Session["userID"] = "13";
        if (Session["userID"] == null)
        {
            Response.Redirect("~/TaiKhoan/DangNhap.aspx");
        }
        //Lấy ID của tin rao vặt
        if (Request.QueryString["id"] != null)
        {
            MyID = int.Parse(Request.QueryString["id"]);
        }
        //Hiển thị view tương ứng với chuyên mục
        TinRaoVat = TinRaoVatBUS.TimTinRaoVatTheoMa(MyID);
        DanhMucCon = DanhMucConBUS.TimDanhMucConTheoMa((int)TinRaoVat.MaDanhMucCon);
        DanhMucChinh = DanhMucChinhBUS.TimDanhMucChinhTheoMa((int)DanhMucCon.MaDanhMucChinh);

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
    private void InitFirstView()
    {
        //Hiển thị danh mục
        txtChuyenMuc1.Text = DanhMucChinh.TenDanhMucChinh.Trim() + " > " + DanhMucCon.TenDanhMucCon.Trim();
        //Thời hạn lưu tin
        List<int> ThoiHanLuuTin = new List<int>() { 1, 3, 5, 7, 9, 10, 12, 15, 17, 20, 30 };
        ddlThoiHanLuuTin1.DataSource = ThoiHanLuuTin;
        ddlThoiHanLuuTin1.DataBind();
        //Tin rao vặt        
        for (int i = 0; i < ddlThoiHanLuuTin1.Items.Count; ++i)
            if (ddlThoiHanLuuTin1.SelectedValue == TinRaoVat.ThoiHanLuuTin.ToString())
                ddlThoiHanLuuTin1.SelectedIndex = i;
        DIADIEM DiaDiem = DiaDiemBUS.TimDiaDiemTheoMa((int)TinRaoVat.MaDiaDiem);
        for (int i = 0; i < ddlDiaDiem1.Items.Count; ++i)
            if (ddlDiaDiem1.SelectedValue == DiaDiem.TenDiaDiem.ToString())
                ddlDiaDiem1.SelectedIndex = i;

        txtTieuDe1.Text = TinRaoVat.TieuDe;
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
        for (int i = 0; i < ddlThoiHanLuuTin2.Items.Count; ++i)
            if (ddlThoiHanLuuTin2.SelectedValue == TinRaoVat.ThoiHanLuuTin.ToString())
                ddlThoiHanLuuTin2.SelectedIndex = i;
        DIADIEM DiaDiem = DiaDiemBUS.TimDiaDiemTheoMa((int)TinRaoVat.MaDiaDiem);
        for (int i = 0; i < ddlDiaDiem2.Items.Count; ++i)
            if (ddlDiaDiem2.SelectedValue == DiaDiem.TenDiaDiem.ToString())
                ddlDiaDiem2.SelectedIndex = i;

        txtTieuDe2.Text = TinRaoVat.TieuDe;
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
        ddlMatTien.SelectedIndex = ((bool)TinRaoVatBatDongSan.MatTien == true) ? 0 : 1;
        txtGiayTo.Text = TinRaoVatBatDongSan.GiayTo;
        txtDuongTruocNha.Text = TinRaoVatBatDongSan.DuongTruocNha;
        ckbDien.Checked = (bool)TinRaoVatBatDongSan.DienNhaNuoc;
        ckbNuocMay.Checked = (bool)TinRaoVatBatDongSan.NuocMay;
        txtSoPhongNgu.Text = TinRaoVatBatDongSan.SoPhongNgu.ToString();
        txtSoNhaVeSinh.Text = TinRaoVatBatDongSan.SoNhaVeSinh.ToString();
        txtNamXayDung.Text = TinRaoVatBatDongSan.NamXayDung.ToString();
        ckbPhongKhach.Checked = (bool)TinRaoVatBatDongSan.PhongKhach;
        ckbGaraOto.Checked = (bool)TinRaoVatBatDongSan.GaraOto;
        ckbNhaBep.Checked = (bool)TinRaoVatBatDongSan.NhaBep;
        ckbHoBoi.Checked = (bool)TinRaoVatBatDongSan.HoBoi;
        ckbSanThuong.Checked = (bool)TinRaoVatBatDongSan.SanThuong;
        ckbDieuHoa.Checked = (bool)TinRaoVatBatDongSan.DieuHoa;
        ckbSanVuon.Checked = (bool)TinRaoVatBatDongSan.SanVuon;
        ckbThangMay.Checked = (bool)TinRaoVatBatDongSan.ThangMay;
        ckbGanTruongMauGiao.Checked = (bool)TinRaoVatBatDongSan.GanTruongMauGiao;
        ckbGanTruongCapMot.Checked = (bool)TinRaoVatBatDongSan.GanTruongCap1;
        ckbGanTruongCapHai.Checked = (bool)TinRaoVatBatDongSan.GanTruongCap2;
        ckbGanTruongCapBa.Checked = (bool)TinRaoVatBatDongSan.GanTruongCap3;
        ckbGanCho.Checked = (bool)TinRaoVatBatDongSan.GanCho;
        ckbGanBenhVien.Checked = (bool)TinRaoVatBatDongSan.GanBenhVien;
        ckbGanTrungTamThuongMai.Checked = (bool)TinRaoVatBatDongSan.GanTrungTamThuongMai;
        ckbGanTrungTamGiaiTri.Checked = (bool)TinRaoVatBatDongSan.GanTrungTamGiaiTri;
        ckbGanCongVien.Checked = (bool)TinRaoVatBatDongSan.GanCongVien;
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
    }
    protected void btnCapNhat1_Click(object sender, EventArgs e)
    {

    }
    protected void btnCapNhat2_Click(object sender, EventArgs e)
    {

    }
    protected void btnCapNhat3_Click(object sender, EventArgs e)
    {

    }
    protected void btnCapNhat4_Click(object sender, EventArgs e)
    {

    }
}
