﻿using System;
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

    }
    protected void btnNhanTin1_Click(object sender, EventArgs e)
    {
        NGUOIDUNG NguoiDung = new NGUOIDUNG();
        TINNHAN TinNhan = new TINNHAN();
        if (Request.Cookies["userID"] != null)
        {
            int userID = int.Parse(Request.Cookies["userID"].Value);
            TinNhan.MaNguoiDung = userID;
        }
        else { Response.Redirect("~/TaiKhoan/DangNhap.aspx"); }
        //Response.Redirect("~/TaiKhoan/NhanTin.aspx");
        TinNhan.MaNguoiNhanTin = NguoiDungBUS.LayNguoiDungTheoTen(ddlNguoiNhanTin.SelectedValue).MaNguoiDung;
        TinNhan.TieuDeTinNhan= txtTieuDe1.Text;
        TinNhan.NoiDungTinNhan = txtNoiDung1.Text;
        TinNhan.ThoiGianNhanTin = DateTime.Now;
        TinNhan.Deleted = false;
        TimKiemBUS.ThemTinNhan(TinNhan);
    }
}
