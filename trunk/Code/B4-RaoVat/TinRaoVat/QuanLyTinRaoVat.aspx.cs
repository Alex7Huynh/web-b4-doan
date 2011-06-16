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
        TINRAOVAT tinRaoVat = new TINRAOVAT();
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
