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
        public static bool CapNhatTinRaoVat(CHITIETHOSOTUYENDUNG chiTietHoSoTuyenDung)
        {
            return ChiTietHoSoTuyenDungDAO.CapNhatChiTietHoSoTuyenDung(chiTietHoSoTuyenDung);
        }
        public static List<CHITIETHOSOTUYENDUNG> LayDanhSachTinRaoVat()
        {
            return ChiTietHoSoTuyenDungDAO.LayDanhSachChiTietHoSoTuyenDung();
        }
        public static CHITIETHOSOTUYENDUNG TimTinRaoVatTheoMa(int maChiTietHoSoTuyenDung)
        {
            return ChiTietHoSoTuyenDungDAO.TimChiTietHoSoTuyenDungTheoMa(maChiTietHoSoTuyenDung);
        }
    }
}
