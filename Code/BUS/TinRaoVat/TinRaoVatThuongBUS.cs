using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class TinRaoVatThuongBUS
    {
        public static bool ThemTinRaoVatThuong(TINRAOVATTHUONG tinRaoVatThuong)
        {
            return TinRaoVatThuongDAO.ThemTinRaoVatThuong(tinRaoVatThuong);
        }
        public static bool XoaTinRaoVatThuong(int maTinRaoVatThuong)
        {
            return TinRaoVatThuongDAO.XoaTinRaoVatThuong(maTinRaoVatThuong);
        }
        public static bool CapNhatTinRaoVat(TINRAOVATTHUONG tinRaoVatThuong)
        {
            return TinRaoVatThuongDAO.CapNhatTinRaoVatThuong(tinRaoVatThuong);
        }
        public static List<TINRAOVATTHUONG> LayDanhSachTinRaoVat()
        {
            return TinRaoVatThuongDAO.LayDanhSachTinRaoVatThuong();
        }
        public static TINRAOVATTHUONG TimTinRaoVatTheoMa(int maTinRaoVatThuong)
        {
            return TinRaoVatThuongDAO.TimTinRaoVatThuongTheoMa(maTinRaoVatThuong);
        }
    }
}
