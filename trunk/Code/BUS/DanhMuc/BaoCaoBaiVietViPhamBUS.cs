using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class BaoCaoBaiVietViPhamBUS
    {
        public static bool ThemBaoCaoViPham(LICHSUTINRAOVATVIPHAM tinViPham)
        {
            return BaoCaoBaiVietViPhamDAO.ThemBaoCaoViPham(tinViPham);
        }
        public static List<LICHSUTINRAOVATVIPHAM> LayDanhSachTinViPham()
        {
            return BaoCaoBaiVietViPhamDAO.LayDanhSachTinViPham();
        }
    }
}
