using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using BUS;

public partial class ChonChuyenMucDang : BUS.BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<DANHMUCCHINH> lstDMC = new List<DANHMUCCHINH>();
        lstDMC = DanhMucChinhBUS.LayDanhSachDanhMucChinh();

        Literal literal = new Literal();
        int index = 0;
        int nColumns = 4;
        Table t = new Table();
        TableRow r = new TableRow();

        foreach (DANHMUCCHINH dmchinh in lstDMC)
        {
            if (index % nColumns == 0)
            {
                r = new TableRow();
            }
            TableCell c = new TableCell();
            c.BorderWidth = 5;
            c.VerticalAlign = VerticalAlign.Top;
            Label lblDanhMucChinh = new Label();
            lblDanhMucChinh.Text = dmchinh.TenDanhMucChinh + "<br/>";
            c.Controls.Add(lblDanhMucChinh);

            List<DANHMUCCON> lstDMCon = new List<DANHMUCCON>();
            lstDMCon = DanhMucConBUS.LayDanhSachDanhMucCon(dmchinh.MaDanhMucChinh);

            foreach (DANHMUCCON dmcon in lstDMCon)
            {
                //Thêm mũi tên
                Image arrow = new Image();
                arrow.ImageUrl = "~/images/muiten_xuong.gif";
                c.Controls.Add(arrow);
                //Thêm khoảng trắng
                literal = new Literal();
                literal.Text = "&nbsp;&nbsp;";
                c.Controls.Add(literal);
                //Danh mục con - hyperlink
                HyperLink a = new HyperLink();
                a.Text = dmcon.TenDanhMucCon;
                a.NavigateUrl = "DangTinRaoVat.aspx?cm=" + dmchinh.MaChuyenMuc
                    + "&main=" + dmchinh.MaDanhMucChinh
                    + "&sub=" + dmcon.MaDanhMucCon;
                c.Controls.Add(a);
                //Ký tự xuống dòng
                literal = new Literal();
                literal.Text = "<br/>";
                c.Controls.Add(literal);
            }
            //Ký tự xuống dòng
            literal = new Literal();
            literal.Text = "<br/>";
            c.Controls.Add(literal);
            r.Cells.Add(c);
            if (index % nColumns != 0)
            {
                t.Rows.Add(r);
            }
            index++;
        }

        Panel1.Controls.Add(t);
    }
}