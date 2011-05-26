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
        Literal literal = new Literal();
        literal = new Literal();
        literal.Text = "<table>";
        Panel1.Controls.Add(literal);
        foreach (DANHMUCCHINH dmchinh in lstDMC)
        {
            Label lblDanhMucChinh = new Label();
            lblDanhMucChinh.Text = dmchinh.TenDanhMucChinh + "<br/>";
            Panel1.Controls.Add(lblDanhMucChinh);
            List<DANHMUCCON> lstDMCon = new List<DANHMUCCON>();
            lstDMCon = DanhMucConBUS.LayDanhSachDanhMucCon(dmchinh.MaDanhMucChinh);
            
            foreach (DANHMUCCON dmcon in lstDMCon)
            {
                //Thêm mũi tên
                Image arrow = new Image();
                arrow.ImageUrl = "~/images/muiten_xuong.gif";
                Panel1.Controls.Add(arrow);
                //Thêm khoảng trắng
                literal = new Literal();
                literal.Text = "&nbsp;&nbsp;";
                Panel1.Controls.Add(literal);                
                //Danh mục con - hyperlink
                HyperLink a = new HyperLink();
                a.Text = dmcon.TenDanhMucCon;
                a.NavigateUrl = "DangTinRaoVat.aspx?chuyenmuc=" + dmchinh.MaChuyenMuc
                    + "&danhmucchinh=" + dmchinh.MaDanhMucChinh
                    + "&danhmuccon=" + dmcon.MaDanhMucCon;
                Panel1.Controls.Add(a);
                //Ký tự xuống dòng
                literal = new Literal();
                literal.Text = "<br/>";
                Panel1.Controls.Add(literal);
            }
            //Ký tự xuống dòng
            literal = new Literal();
            literal.Text = "<br/>";
            Panel1.Controls.Add(literal);
        }
        literal = new Literal();
        literal.Text = "<table>";
        Panel1.Controls.Add(literal);
    }
}
