using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class ChiTietGiaoDienBUS
    {
        public static bool ThemChiTietGiaoDien(CHITIETGIAODIEN chiTietGiaoDien)
        {
            return ChiTietGiaoDienDAO.ThemChiTietGiaoDien(chiTietGiaoDien);
        }
        public static bool XoaChiTietGiaoDien(int maChiTietGiaoDien)
        {
            return ChiTietGiaoDienDAO.XoaChiTietGiaoDien(maChiTietGiaoDien);
        }
        public static bool CapNhatChiTietGiaoDien(CHITIETGIAODIEN chiTietGiaoDien)
        {
            return ChiTietGiaoDienDAO.CapNhatChiTietGiaoDien(chiTietGiaoDien);
        }
        public static List<CHITIETGIAODIEN> LayDanhSachChiTietGiaoDien()
        {
            return ChiTietGiaoDienDAO.LayDanhSachChiTietGiaoDien();
        }
        public static CHITIETGIAODIEN TimChiTietGiaoDienTheoMa(int maChiTietGiaoDien)
        {
            return ChiTietGiaoDienDAO.TimChiTietGiaoDienTheoMa(maChiTietGiaoDien);
        }
        public static CHITIETGIAODIEN TimChiTietGiaoDienTheoTen(string tenChiTietGiaoDien)
        {
            return ChiTietGiaoDienDAO.TimChiTietGiaoDienTheoTen(tenChiTietGiaoDien);
        }
    }
}
