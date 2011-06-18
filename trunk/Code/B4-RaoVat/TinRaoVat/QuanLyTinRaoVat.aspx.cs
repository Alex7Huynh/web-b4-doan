using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAO;
using System.IO;
public partial class Default2 : BUS.BasePage
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        //Kiểm tra đăng nhập
        if (Session["userID"] == null)
            Response.Redirect("~/TaiKhoan/DangNhap.aspx");
        //Kiểm tra quyền là admin
        if (!LoaiNguoiDungBUS.LaQuanTri(int.Parse(Session["userID"].ToString())))
            Response.Redirect("/B4-RaoVat/Default.aspx");
    }
    private void ToggleCheckState(bool checkState) 
    { 
        foreach (GridViewRow row in GridView.Rows) 
        { 
            CheckBox cb = (CheckBox)row.FindControl("Deleted"); 
            if (cb != null) cb.Checked = checkState; 
        } 
    }
    protected void btnSubmit1_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView.Rows)
        {
            CheckBox cb = (CheckBox)row.FindControl("Deleted");
            if (cb != null && cb.Checked) 
            { 
                int maTinRaoVat = Convert.ToInt32(GridView.DataKeys[row.RowIndex].Value);
                TinRaoVatBUS.XoaTatCaTinRaoVatLienQuan(maTinRaoVat);
            }
        }
        GridView.DataBind();
    }
    protected void CheckAll_Click(object sender, EventArgs e)
    {
        ToggleCheckState(true);
    }
    protected void UncheckAll_Click(object sender, EventArgs e)
    {
        ToggleCheckState(false);
    }
}
