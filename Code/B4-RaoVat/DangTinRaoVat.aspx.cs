using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAO;

public partial class DangTinRaoVat : System.Web.UI.Page
{
    string DanhMucChinh = string.Empty;
    string DanhMucCon = string.Empty;
    /// <summary>
    /// Page_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        string ChuyenMuc = string.Empty;
        int MaDanhMucChinh;
        int MaDanhMucCon;

        if (Request.QueryString["chuyenmuc"] != null)
            ChuyenMuc = Request.QueryString["chuyenmuc"];
        if (Request.QueryString["danhmucchinh"] != null)
        {
            MaDanhMucChinh = int.Parse(Request.QueryString["danhmucchinh"]);
            DanhMucChinh = DanhMucChinhBUS.TimDanhMucChinhTheoMa(MaDanhMucChinh).TenDanhMucChinh.Trim();
        }
        if (Request.QueryString["danhmuccon"] != null)
        {
            MaDanhMucCon = int.Parse(Request.QueryString["danhmuccon"]);
            DanhMucCon = DanhMucConBUS.TimDanhMucConTheoMa(MaDanhMucCon).TenDanhMucCon.Trim();
        }

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
        }
    }
    /// <summary>
    /// Đồng ý đăng tin rao vặt bất động sản
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnDangTin2_Click(object sender, EventArgs e)
    {

    }
    /// <summary>
    /// Đồng ý đăng tin tuyển dụng
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnDangTin3_Click(object sender, EventArgs e)
    {

    }
    /// <summary>
    /// Đồng ý đăng hồ sơ tuyển dụng
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnDangTin4_Click(object sender, EventArgs e)
    {

    }
}
