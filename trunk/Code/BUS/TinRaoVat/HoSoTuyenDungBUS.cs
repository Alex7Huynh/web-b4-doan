using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class HoSoTuyenDungBUS
    {
        public static bool ThemHoSoTuyenDung(HOSOTUYENDUNG hoSoTuyenDung)
        {
            return HoSoTuyenDungDAO.ThemHoSoTuyenDung(hoSoTuyenDung);
        }
        public static bool XoaHoSoTuyenDung(int maHoSoTuyenDung)
        {
            return HoSoTuyenDungDAO.XoaHoSoTuyenDung(maHoSoTuyenDung);
        }
        public static bool CapNhatTinRaoVat(HOSOTUYENDUNG hoSoTuyenDung)
        {
            return HoSoTuyenDungDAO.CapNhatHoSoTuyenDung(hoSoTuyenDung);
        }
        public static List<HOSOTUYENDUNG> LayDanhSachTinRaoVat()
        {
            return HoSoTuyenDungDAO.LayDanhSachHoSoTuyenDung();
        }
        public static HOSOTUYENDUNG TimTinRaoVatTheoMa(int maHoSoTuyenDung)
        {
            return HoSoTuyenDungDAO.TimHoSoTuyenDungTheoMa(maHoSoTuyenDung);
        }
    }
}
