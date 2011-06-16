using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class LoaiNguoiDungBUS
    {
        //public static bool themLoaiNguoiDung(LoaiNguoiDungDTO lndDTO)
        //{
        //    return LoaiNguoiDungBUS.themLoaiNguoiDung(lndDTO);
        //}
        //public static bool xoaLoaiNguoiDung(int maLoaiNguoiDung)
        //{
        //    return LoaiNguoiDungBUS.xoaLoaiNguoiDung(maLoaiNguoiDung);
        //}
        //public static bool capNhatLoaiNguoiDung(LoaiNguoiDungDTO lndDTO)
        //{
        //    return LoaiNguoiDungBUS.capNhatLoaiNguoiDung(lndDTO);
        //}
        //public static List<LoaiNguoiDungDTO> layDanhSachLoaiNguoiDung()
        //{
        //    return LoaiNguoiDungBUS.layDanhSachLoaiNguoiDung();
        //}
        public static LOAINGUOIDUNG TimLoaiNguoiDungTheoMa(int maLoaiNguoiDung)
        {
            return LoaiNguoiDungDAO.TimLoaiNguoiDungTheoMa(maLoaiNguoiDung);
        }
        public static int TimMaAdmin()
        {
            return LoaiNguoiDungDAO.TimMaAdmin();
        }
        public static bool LaQuanTri(int maLoaiNguoiDung)
        {
            return LoaiNguoiDungDAO.LaQuanTri(maLoaiNguoiDung);
        }
        public static bool LaNguoiDungVIP(int maLoaiNguoiDung)
        {
            return LoaiNguoiDungDAO.LaNguoiDungVIP(maLoaiNguoiDung);
        }
        public static bool LaNguoiDungThuong(int maLoaiNguoiDung)
        {
            return LoaiNguoiDungDAO.LaNguoiDungThuong(maLoaiNguoiDung);
        }
    }
}
