using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAO;
using System.IO;
public partial class Default2 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

        //TINNHAN TinNhan = new TINNHAN();
        //if (Request.Cookies["userID"] != null)
        //{
        //    int userID = int.Parse(Request.Cookies["userID"].Value);
        //    TinNhan.MaNguoiDung = userID;
        //}
        //else { Response.Redirect("~/TaiKhoan/DangNhap.aspx"); }
        Response.Cookies["userID"].Value = "11";
    }
}
