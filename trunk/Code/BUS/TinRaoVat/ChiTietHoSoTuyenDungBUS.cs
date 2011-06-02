using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class ChiTietHoSoTuyenDungBUS
    {
        public static bool ThemChiTietHoSoTuyenDung(CHITIETHOSOTUYENDUNG chiTietHoSoTuyenDung)
        {
            return ChiTietHoSoTuyenDungDAO.ThemChiTietHoSoTuyenDung(chiTietHoSoTuyenDung);
        }
        public static bool CapNhatChiTietHoSoTuyenDung(CHITIETHOSOTUYENDUNG chiTietHoSoTuyenDung)
        {
            return ChiTietHoSoTuyenDungDAO.CapNhatChiTietHoSoTuyenDung(chiTietHoSoTuyenDung);
        }
        public static List<CHITIETHOSOTUYENDUNG> LayDanhSachChiTietHoSoTuyenDung()
        {
            return ChiTietHoSoTuyenDungDAO.LayDanhSachChiTietHoSoTuyenDung();
        }
        public static CHITIETHOSOTUYENDUNG TimChiTietHoSoTuyenDungTheoMa(int maChiTietHoSoTuyenDung)
        {
            return ChiTietHoSoTuyenDungDAO.TimChiTietHoSoTuyenDungTheoMa(maChiTietHoSoTuyenDung);
        }
        public static List<CHITIETHOSOTUYENDUNG> TimChiTietHoSoTuyenDungTheoMaHoTuyenDung(int maChiTietHoSoTuyenDung)
        {
            return ChiTietHoSoTuyenDungDAO.TimChiTietHoSoTuyenDungTheoMaHoTuyenDung(maChiTietHoSoTuyenDung);
        }
    }
}
