using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using BUS;
public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Khi load lan dau tien thi hien thi ten user la khach
        ViewUserName();
        ThayDoiURLChonNgonNgu();
        KhoiTaoGiaoDien();
        //Label9.Text = Session["MyTheme"].ToString();
    }
    protected void Page_PreInit(object sender, EventArgs e)
    {
        //if (Session["MyTheme"] != null)
        //    Page.Theme = Session["MyTheme"].ToString();
        //Page.Theme = "Theme2";
    }
    protected void linkbntXemThongTin_Click(object sender, EventArgs e)
    {
        Response.Redirect("/B4-RaoVat/TaiKhoan/XemThongTinTaiKhoan.aspx");
    }
    protected void linkbntDangXuat_Click(object sender, EventArgs e)
    {        
        lblWelcome.Text = "Guest-Khách";
        Session["UserName"] = null;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

    }
    private void ThayDoiURLChonNgonNgu()
    {
        string FullPath = Request.Url.AbsolutePath;
        string Query = Request.Url.Query;
        //Đã có truy vấn gì đó và đang chọn ngôn ngữ
        if (Query.Contains("&Language"))
        {
            int pos = Query.IndexOf("&Language");
            Query = Query.Substring(0, pos);
        }
        if (!Query.Contains("?Language"))
            FullPath += Query;

        if (Request.Url.Query == string.Empty || Query.Contains("?Language"))
            FullPath += "?Language=";
        else
            FullPath += "&Language=";

        ImageButton1.PostBackUrl = FullPath + "vi";
        ImageButton2.PostBackUrl = FullPath + "en-us";
    }
    private void KhoiTaoGiaoDien()
    {
        CHITIETGIAODIEN ChiTietGiaoDien = ChiTietGiaoDienBUS.TimChiTietGiaoDienTheoMa(1);
        BANNERGIAODIEN Banner = BannerBUS.TimBannerTheoMa(ChiTietGiaoDien.MaBannerGiaoDien.Value);
        LOGO Logo = LogoBUS.TimLogoTheoMa(ChiTietGiaoDien.MaLogo.Value);

        imgBanner.ImageUrl = Banner.DuongDanBannerGiaoDien;
        imgLogo.ImageUrl = Logo.DuongDanLogo;

    }
    private void ViewUserName()
    {
        if (Session["UserName"] != null)
        {
            lblWelcome.Text = Session["UserName"] as string;
        }
        else
            lblWelcome.Text = "Guest-Khách";
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Response.Redirect("/B4-RaoVat/TimKiem.aspx?search=" + txtTimKiemMaster.Text);
    }
}