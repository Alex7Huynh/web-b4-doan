using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_DanhMucCon : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DanhMucConDataSource_Selected(object sender, ObjectDataSourceStatusEventArgs e)
    {
        this.Visible = (e.ReturnValue != null);
    }
    protected void DanhMucConDataSource_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
    {
        int adId = 1;
        string adIdQs = Request.QueryString["id"];
        Int32.TryParse(adIdQs, out adId);
        e.InputParameters["maDanhMucChinh"] = adId;
    }
}
