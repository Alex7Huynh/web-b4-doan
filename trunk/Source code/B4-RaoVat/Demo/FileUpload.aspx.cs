using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class DangTinRaoVat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Request.QueryString["chuyenmuc"] != null)
            txt_TieuDe.Text = Request.QueryString["chuyenmuc"];
        List_NoiRao.Text = "acc";

    }
    protected void txt_TieuDe_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ThumbnailLocation = "~/images/";
        if (FileUpload1.HasFile)
        {
            try
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath(ThumbnailLocation) + filename);
                Response.Redirect("~/Default.aspx?rv=submitraovat&ss=success");
            }
            catch (Exception ex)
            {
                Response.Redirect("~/Default.aspx?rv=submitraovat&ss=" + ex.ToString());
            }
        }
    }
    
}
