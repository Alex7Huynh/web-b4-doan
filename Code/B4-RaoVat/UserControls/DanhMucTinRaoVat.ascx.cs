using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_TinRaoVatMoiNhat : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DanhMucTinRaoVatDataSource_Selected(object sender, ObjectDataSourceStatusEventArgs e)
    {
        this.Visible = (e.ReturnValue != null);
    }
    protected void DanhMucTinRaoVatDataSource_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
    {
        int maDanhMucCon = 1;
        string id = Request.QueryString["id"];
        Int32.TryParse(id, out maDanhMucCon);
        e.InputParameters["maDanhMucCon"] = maDanhMucCon;
    }
}
