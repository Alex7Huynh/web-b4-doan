using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;
using DAO;

namespace BUS
{
    public class NguoiDungBUS
    {
        public static bool themNguoiDung(NguoiDungDTO ndDTO)
        {
            return NguoiDungDAO.themNguoiDung(ndDTO);
        }
        public static bool xoaNguoiDung(int maNguoiDung)
        {
            return NguoiDungDAO.xoaNguoiDung(maNguoiDung);
        }
        public static bool capNhatNguoiDung(NguoiDungDTO ndDTO)
        {
            return NguoiDungDAO.capNhatNguoiDung(ndDTO);
        }
        public static List<NguoiDungDTO> layDanhSachNguoiDung()
        {
            return NguoiDungDAO.layDanhSachNguoiDung();
        }
        public static NguoiDungDTO timNguoiDungTheoMa(int maNguoiDung)
        {
            return NguoiDungDAO.timNguoiDungTheoMa(maNguoiDung);
        }
    }
}
