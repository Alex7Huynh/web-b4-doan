using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class TinRaoVatThuongBUS
    {
        public static bool ThemTinRaoVat(TINRAOVAT tinRaoVat)
        {
            return TinRaoVatThuongDAO.ThemTinRaoVat(tinRaoVat);
        }
        public static bool XoaTinRaoVat(int maTinRaoVat)
        {
            return TinRaoVatThuongDAO.XoaTinRaoVat(maTinRaoVat);
        }
        public static bool CapNhatTinRaoVat(TINRAOVAT tinRaoVat)
        {
            return TinRaoVatThuongDAO.CapNhatTinRaoVat(tinRaoVat);
        }
        public static List<TINRAOVAT> LayDanhSachTinRaoVat()
        {
            return TinRaoVatThuongDAO.LayDanhSachTinRaoVatThuong();
        }
        public static TINRAOVAT TimTinRaoVatTheoMa(int maTinRaoVat)
        {
            return TinRaoVatThuongDAO.TimTinRaoVatThuongTheoMa(maTinRaoVat);
        }
    }
}
