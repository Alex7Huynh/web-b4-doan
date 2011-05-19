using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAO;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            prevPage = Request.UrlReferrer.ToString();
        }

        int maNguoiDung = 1;
        string id = Request.QueryString["id"];
        Int32.TryParse(id, out maNguoiDung);

        NGUOIDUNG nguoiDung = NguoiDungBUS.LayNguoiDungTheoMa(maNguoiDung);

        lblTên.Text = nguoiDung.TenNguoiDung;
        lblEmail.Text = nguoiDung.Email;
        lblDiaChi.Text = nguoiDung.DiaChi;
        lblDienThoai.Text = nguoiDung.DienThoai;
    }

    static string prevPage = String.Empty;

    protected void btnQuayLai_Click(object sender, EventArgs e)
    {
        Response.Redirect(prevPage);
    }
}
