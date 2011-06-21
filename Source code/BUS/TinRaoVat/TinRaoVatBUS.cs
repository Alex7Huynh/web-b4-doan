using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Text;
using DAO;

namespace BUS
{
    public class TinRaoVatBUS
    {
        public static bool ThemTinRaoVat(TINRAOVAT tinRaoVat)
        {
            return TinRaoVatDAO.ThemTinRaoVat(tinRaoVat);
        }
        public static bool XoaTinRaoVat(int maTinRaoVat)
        {
            return TinRaoVatDAO.XoaTinRaoVat(maTinRaoVat);
        }
        public static bool XoaTatCaTinRaoVatLienQuan(int maTinRaoVat)
        {
            return TinRaoVatDAO.XoaTatCaTinRaoVatLienQuan(maTinRaoVat);
        }
        public static bool CapNhatTinRaoVat(TINRAOVAT tinRaoVat)
        {
            return TinRaoVatDAO.CapNhatTinRaoVat(tinRaoVat);
        }
        public static List<TINRAOVAT> LayDanhSachTinRaoVat()
        {
            return TinRaoVatDAO.LayDanhSachTinRaoVat();
        }
        public static List<TINRAOVAT> LayDanhSachTinRaoVatMoiNhat()
        {
            return TinRaoVatDAO.LayDanhSachTinRaoVatMoiNhat();
        }
        public static List<TINRAOVAT> LayDanhSachTinRaoVatTheoNoiDung(int maDanhMucCon)
        {
            return TinRaoVatDAO.LayDanhSachTinRaoVatTheoNoiDung(maDanhMucCon);
        }
        public static TINRAOVAT TimTinRaoVatTheoMa(int maTinRaoVat)
        {
            return TinRaoVatDAO.TimTinRaoVatTheoMa(maTinRaoVat);
        }
        public static TINRAOVAT TimTinRaoVatMoiNhat()
        {
            return TinRaoVatDAO.TimTinRaoVatMoiNhat();
        }
        public static CHUYENMUC LayChuyenMuc(int maTinRaoVat)
        {
            return TinRaoVatDAO.LayChuyenMuc(maTinRaoVat);
        }
        public static NGUOIDUNG LayNguoiDung(int maTinRaoVat)
        {
            return TinRaoVatDAO.LayNguoiDung(maTinRaoVat);
        }

        public static List<TINRAOVAT> TimKiem(string tuKhoa)
        {
            if (tuKhoa == "" || tuKhoa == null)
            {
                return new List<TINRAOVAT>();
            }
            return TinRaoVatDAO.TimKiem(tuKhoa);
        }
    }
}
