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
        public static bool CapNhatTinTuyenDung(TINTUYENDUNG tinTuyenDung)
        {
            return TinTuyenDungDAO.CapNhatTinTuyenDung(tinTuyenDung);
        }
        public static List<TINTUYENDUNG> LayDanhSachTinTuyenDung()
        {
            return TinTuyenDungDAO.LayDanhSachTinTuyenDung();
        }
        public static TINTUYENDUNG TimTinTuyenDungTheoMa(int maTinTuyenDung)
        {
            return TinTuyenDungDAO.TimTinTuyenDungTheoMa(maTinTuyenDung);
        }
        public static TINTUYENDUNG TimTinTuyenDungTheoMaTinRaoVat(int maTinRaoVat)
        {
            return TinTuyenDungDAO.TimTinTuyenDungTheoMaTinRaoVat(maTinRaoVat);
        }
    }
}
