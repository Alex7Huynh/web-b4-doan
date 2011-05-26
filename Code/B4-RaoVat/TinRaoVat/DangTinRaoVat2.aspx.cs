using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DangTinRaoVat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Request.QueryString["chuyenmuc"] != null)
            txt_TieuDe.Text = Request.QueryString["chuyenmuc"];        

    }
    protected void txt_TieuDe_TextChanged(object sender, EventArgs e)
    {

    }
}
