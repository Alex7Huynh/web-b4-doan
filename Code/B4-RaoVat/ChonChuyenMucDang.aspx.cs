using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using BUS;
public partial class ChonChuyenMucDang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<DANHMUCCHINH> lstDMC = new List<DANHMUCCHINH>();
        lstDMC = DanhMucChinhBUS.LayDanhSachDanhMucChinh();
        foreach (DANHMUCCHINH dmchinh in lstDMC)
        {
            Label lblDanhMucChinh = new Label();
            lblDanhMucChinh.Text = dmchinh.TenDanhMucChinh + "<br/>";
            Panel1.Controls.Add(lblDanhMucChinh);
            List<DANHMUCCON> lstDMCon = new List<DANHMUCCON>();
            lstDMCon = DanhMucConBUS.LayDanhSachDanhMucCon(dmchinh.MaDanhMucChinh);
            foreach (DANHMUCCON dmcon in lstDMCon)
            {
                //Ký tự đầu
                Literal b = new Literal();
                b.Text = "--> ";
                Panel1.Controls.Add(b);
                //
                HyperLink a = new HyperLink();
                a.Text = dmcon.TenDanhMucCon;
                a.NavigateUrl = "DangTinRaoVat.aspx?chuyenmuc=" + dmchinh.MaChuyenMuc
                    + "&danhmucchinh=" + dmchinh.MaDanhMucChinh
                    + "&danhmuccon=" + dmcon.MaDanhMucCon;
                Panel1.Controls.Add(a);
                //Ký tự xuống dòng
                b = new Literal();
                b.Text = "<br/>";
                Panel1.Controls.Add(b);
            }
            Literal c = new Literal();
            c.Text = "<br/>";
            Panel1.Controls.Add(c);
        }
    }
}
