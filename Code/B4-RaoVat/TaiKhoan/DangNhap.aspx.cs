using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using BUS;

public partial class Default2 : BUS.BasePage
{
    static string PrevPage = String.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        this.lblUserName.Text = Session["UserName"] as string;
        if (!IsPostBack)
        {
            PrevPage = Request.UrlReferrer.ToString();
        }
    }
    protected void Login1_LoggedIn(object sender, EventArgs e)
    {        
        NGUOIDUNG NguoiDung = NguoiDungBUS.LayNguoiDungTheoTen(this.Login1.UserName);
        Session["userID"] = NguoiDung.MaNguoiDung;
        Session["userTypeID"] = NguoiDung.MaLoaiNguoiDung;
        Session["UserName"] = this.Login1.UserName;
    }
    protected void Login1_LoggingIn(object sender, LoginCancelEventArgs e)
    {

    }
    protected void Login1_LoginError(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();

        if (db.NGUOIDUNGs.Where(p => p.TenNguoiDung == this.Login1.UserName && p.MatKhau == this.Login1.Password).Count() == 1)
        {            
            e.Authenticated = true;
            if(PrevPage != string.Empty)
                Response.Redirect(PrevPage);
            else
                Response.Redirect("/B4-RaoVat/Default.aspx");
        }
        else
            e.Authenticated = false;
    }
    protected void lbntDangXuat_Click(object sender, EventArgs e)
    {
        this.lblUserName.Text = null;
        Session["userID"] = null;
        Session["userTypeID"] = null;
        Session["UserName"] = null;
    }
}
