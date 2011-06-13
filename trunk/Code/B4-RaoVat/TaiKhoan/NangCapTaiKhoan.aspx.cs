using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using PAYPALAPI;
using DAO;
using BUS;
public partial class TaiKhoan_NangCapTaiKhoan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Dropcard.Text = Dropcard.Items[1].Value.ToString();
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        
        PayPalGateway pp = new PayPalGateway();
        PayPalReturn rv = pp.Pay("123", "12", "huynh van", "thang", "267/6 le dinh can binh tan", "HCM", "CA", "US", "United States", "12345", "MasterCard", "5490995941921857", "027", "2", "2015");
        if (rv.IsSucess)
        {
            string TenNguoiDung = Session["UserName"] as string;
            NGUOIDUNG NguoiDung = new NGUOIDUNG();
            NguoiDung = NguoiDungBUS.LayNguoiDungTheoTen(TenNguoiDung);
            NguoiDung.MaLoaiNguoiDung = 2;
            NguoiDungBUS.ChinhSuaLoaiNguoiDung(NguoiDung);
            lbMessage.Text = "nang cap thanh cong ";

        }
        else
        {
            lbMessage.Text = "giao dich that bai ";
        }
    }
    protected void tbcountry_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Dropcard_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
