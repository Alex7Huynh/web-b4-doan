﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class XemDanhSachTinRaoVat : BUS.BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userID"] == null)
            Response.Redirect("~/TaiKhoan/DangNhap.aspx");
    }
}