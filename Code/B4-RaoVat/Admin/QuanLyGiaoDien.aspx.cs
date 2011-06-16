using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using BUS;
using System.IO;

public partial class QuanLyGiaoDien : BUS.BasePage
{
    // Trang này có nhiều khả năng sử dụng update panel
    // Để tui tìm hiểu thử
    protected void Page_Load(object sender, EventArgs e)
    {
        List<string> DanhSachTheme = new List<string>() { "Theme1", "Theme2", "Theme3" };
        ddlTheme.DataSource = DanhSachTheme;
        ddlTheme.DataBind();
    }
    protected void btnChonBanner_Click(object sender, EventArgs e)
    {        
        BANNERGIAODIEN Banner = BannerBUS.TimBannerTheoTen(ddlBanner.SelectedValue);
        CHITIETGIAODIEN ChiTietGiaoDien = ChiTietGiaoDienBUS.TimChiTietGiaoDienTheoMa(1);
        ChiTietGiaoDien.MaBannerGiaoDien = Banner.MaBannerGiaoDien;
        ChiTietGiaoDienBUS.CapNhatChiTietGiaoDien(ChiTietGiaoDien);
        Response.Redirect("~/Admin/QuanLyGiaoDien.aspx");
    }
    protected void btnXoaBanner_Click(object sender, EventArgs e)
    {
        BannerBUS.XoaBanner(BannerBUS.TimBannerTheoTen(ddlBanner.SelectedValue).MaBannerGiaoDien);
        Response.Redirect("~/Admin/QuanLyGiaoDien.aspx");
    }
    protected void btnThemBanner_Click(object sender, EventArgs e)
    {
        if (fupBanner.HasFile)
        {
            try
            {
                string BannerPath = "~/images/Banner/";
                string filename = Path.GetFileName(fupBanner.FileName);
                fupBanner.SaveAs(Server.MapPath(BannerPath) + filename);
                BANNERGIAODIEN Banner = new BANNERGIAODIEN();
                Banner.TenBannerGiaoDien = filename.Substring(0, filename.Length - 4); ;
                Banner.DuongDanBannerGiaoDien = BannerPath + filename;
                Banner.Deleted = false;
                BannerBUS.ThemBanner(Banner);
            }
            catch (Exception ex)
            { Response.Redirect("~/Admin/QuanLyGiaoDien.aspx?addbanner=false"); }
            Response.Redirect("~/Admin/QuanLyGiaoDien.aspx?addbanner=true");
        }
    }
    protected void btnChonLogo_Click(object sender, EventArgs e)
    {
        LOGO Logo = LogoBUS.TimLogoTheoTen(ddlLogo.SelectedValue);
        CHITIETGIAODIEN ChiTietGiaoDien = ChiTietGiaoDienBUS.TimChiTietGiaoDienTheoMa(1);
        ChiTietGiaoDien.MaLogo = Logo.MaLogo;
        ChiTietGiaoDienBUS.CapNhatChiTietGiaoDien(ChiTietGiaoDien);
        Response.Redirect("~/Admin/QuanLyGiaoDien.aspx");
    }
    protected void btnXoaLogo_Click(object sender, EventArgs e)
    {
        LogoBUS.XoaLogo(LogoBUS.TimLogoTheoTen(ddlLogo.SelectedValue).MaLogo);
        Response.Redirect("~/Admin/QuanLyGiaoDien.aspx");
    }
    protected void btnThemLogo_Click(object sender, EventArgs e)
    {
        if (fupLogo.HasFile)
        {
            try
            {
                string LogoPath = "~/images/Logo/";
                string filename = Path.GetFileName(fupLogo.FileName);
                fupLogo.SaveAs(Server.MapPath(LogoPath) + filename);
                LOGO Logo = new LOGO();
                Logo.TenLogo = filename.Substring(0, filename.Length - 4);
                Logo.DuongDanLogo = LogoPath + filename;
                Logo.Deleted = false;
                LogoBUS.ThemLogo(Logo);
            }
            catch (Exception ex)
            { Response.Redirect("~/Admin/QuanLyGiaoDien.aspx?addlogo=false"); }
            Response.Redirect("~/Admin/QuanLyGiaoDien.aspx?addlogo=true");
        }        
    }
    protected void btnChonTheme_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/QuanLyGiaoDien.aspx");
    }
}
