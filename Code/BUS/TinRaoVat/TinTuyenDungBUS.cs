using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class TinTuyenDungBUS
    {
        public static bool ThemTinTuyenDung(TINTUYENDUNG tinTuyenDung)
        {
            return TinTuyenDungDAO.ThemTinTuyenDung(tinTuyenDung);
        }
        public static bool XoaTinTuyenDung(int maTinTuyenDung)
        {
            return TinTuyenDungDAO.XoaTinTuyenDung(maTinTuyenDung);
        }
        public static bool CapNhatTinRaoVat(TINTUYENDUNG tinTuyenDung)
        {
            return TinTuyenDungDAO.CapNhatTinTuyenDung(tinTuyenDung);
        }
        public static List<TINTUYENDUNG> LayDanhSachTinRaoVat()
        {
            return TinTuyenDungDAO.LayDanhSachTinTuyenDung();
        }
        public static TINTUYENDUNG TimTinRaoVatTheoMa(int maTinTuyenDung)
        {
            return TinTuyenDungDAO.TimTinTuyenDungTheoMa(maTinTuyenDung);
        }
    }
}
