using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using BUS;

public partial class BaiTraLoi_ChinhSua : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void traloi_TextChanged(object sender, EventArgs e)
    {

    }


    protected void bttTraLoi_Click(object sender, EventArgs e)
    {
        BAITRALOI baiTraLoi = new BAITRALOI();
        DateTime dateTime = DateTime.Now;
        string maTinRaoVat = Session["matinraovat"].ToString();
        string maNguoiDung = Session["manguoidung"].ToString();
        baiTraLoi.MaTinRaoVat = int.Parse(maTinRaoVat); 
        baiTraLoi.MaNguoiDung = int.Parse(maNguoiDung);

        baiTraLoi.NoiDungTraLoi = txttraloi.Text;
        baiTraLoi.ThoiGianTraLoi = dateTime;
        baiTraLoi.Deleted = false;
        
        BaiTraLoiTinRaoVatBUS.ThemBaiTraLoi(baiTraLoi);
        Response.Redirect("~/DanhMuc/XemNoiDungTin.aspx");

    }
}
