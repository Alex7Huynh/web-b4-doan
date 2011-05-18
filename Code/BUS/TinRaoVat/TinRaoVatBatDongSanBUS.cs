using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class TinRaoVatBatDongSanBUS
    {
        public static bool ThemTinRaoVatBatDongSan(TINRAOVATBATDONGSAN tinRaoVatBatDongSan)
        {
            return TinRaoVatBatDongSanDAO.ThemTinRaoVatBatDongSan(tinRaoVatBatDongSan);
        }
        public static bool XoaTinRaoVatBatDongSan(int maTinRaoVatBatDongSan)
        {
            return TinRaoVatBatDongSanDAO.XoaTinRaoVatBatDongSan(maTinRaoVatBatDongSan);
        }
        public static bool CapNhatTinRaoVat(TINRAOVATBATDONGSAN tinRaoVatBatDongSan)
        {
            return TinRaoVatBatDongSanDAO.CapNhatTinRaoVatBatDongSan(tinRaoVatBatDongSan);
        }
        public static List<TINRAOVATBATDONGSAN> LayDanhSachTinRaoVat()
        {
            return TinRaoVatBatDongSanDAO.LayDanhSachTinRaoVatBatDongSan();
        }
        public static TINRAOVATBATDONGSAN TimTinRaoVatTheoMa(int maTinRaoVatBatDongSan)
        {
            return TinRaoVatBatDongSanDAO.TimTinRaoVatBatDongSanTheoMa(maTinRaoVatBatDongSan);
        }
    }
}
