using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using BUS;

public partial class TraLoiTinRaoVat : BUS.BasePage
{
    static string PrevPage = String.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PrevPage = Request.UrlReferrer.ToString();
        }
    }   
  
    protected void btnTraLoi_Click(object sender, EventArgs e)
    {
        BAITRALOI BaiTraLoi = new BAITRALOI();
        DateTime dateTime = DateTime.Now;
        string maTinRaoVat = Session["matinraovat"].ToString();
        string maNguoiDung = Session["manguoidung"].ToString();
        BaiTraLoi.MaTinRaoVat = int.Parse(maTinRaoVat);
        BaiTraLoi.MaNguoiDung = int.Parse(maNguoiDung);

        BaiTraLoi.NoiDungTraLoi = Editor1.Content;
        BaiTraLoi.ThoiGianTraLoi = dateTime;
        BaiTraLoi.Deleted = false;

        BaiTraLoiTinRaoVatBUS.ThemBaiTraLoi(BaiTraLoi);
        Response.Redirect(PrevPage);
        //Response.Redirect("~/DanhMuc/XemNoiDungTin.aspx");
    }
}
