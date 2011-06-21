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
        public static bool CapNhatHoSoTuyenDung(HOSOTUYENDUNG hoSoTuyenDung)
        {
            return HoSoTuyenDungDAO.CapNhatHoSoTuyenDung(hoSoTuyenDung);
        }
        public static List<HOSOTUYENDUNG> LayDanhSachHoSoTuyenDung()
        {
            return HoSoTuyenDungDAO.LayDanhSachHoSoTuyenDung();
        }
        public static HOSOTUYENDUNG TimHoSoTuyenDungTheoMa(int maHoSoTuyenDung)
        {
            return HoSoTuyenDungDAO.TimHoSoTuyenDungTheoMa(maHoSoTuyenDung);
        }
        public static HOSOTUYENDUNG TimHoSoTuyenDungTheoMaTinRaoVat(int maTinRaoVat)
        {
            return HoSoTuyenDungDAO.TimHoSoTuyenDungTheoMaTinRaoVat(maTinRaoVat);
        }
        public static HOSOTUYENDUNG TimHoSoTuyenDungMoiNhat()
        {
            return HoSoTuyenDungDAO.TimHoSoTuyenDungMoiNhat();
        }
    }
}
