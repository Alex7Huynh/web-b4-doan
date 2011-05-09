using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_Danh_Muc_Chinh : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DanhMucChinhDataSource_Selected(object sender, ObjectDataSourceStatusEventArgs e)
    {
        this.Visible = (e.ReturnValue != null);
    }
}
