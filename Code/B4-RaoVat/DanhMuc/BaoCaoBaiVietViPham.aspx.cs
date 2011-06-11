using System;
using BUS;
using DAO;

public partial class DangTinRaoVat : BUS.BasePage
{
   /// <summary>
    /// Page_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnBaoCao1_Click(object sender, EventArgs e)
    {
        LICHSUTINRAOVATVIPHAM tinViPham = new LICHSUTINRAOVATVIPHAM();
        int idMaTinViPham=1;
        if(ckbNickSpam.Checked || ckbSpam.Checked || ckbTenSai.Checked || ckbTieuDeSai.Checked)
        {
            tinViPham.MaTinRaoVatViPham = idMaTinViPham;
            tinViPham.MaNguoiDungBaoCaoViPham = 2;
            tinViPham.ThoiGianBaoCaoViPham = DateTime.Now;
            tinViPham.deleted = false;
            BaoCaoBaiVietViPhamBUS.ThemBaoCaoViPham(tinViPham);
        }
    }
}