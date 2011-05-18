using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class DiaDiemBUS
    {
        public static bool ThemDiaDiem(DIADIEM diaDiem)
        {
            return DiaDiemDAO.ThemDiaDiem(diaDiem);
        }
        public static bool XoaDiaDiem(int maDiaDiem)
        {
            return DiaDiemDAO.XoaDiaDiem(maDiaDiem);
        }
        public static bool CapNhatDiaDiem(DIADIEM diaDiem)
        {
            return DiaDiemDAO.CapNhatDiaDiem(diaDiem);
        }
        public static List<DIADIEM> LayDanhSachDiaDiem()
        {
            return DiaDiemDAO.LayDanhSachDiaDiem();
        }
        public static DIADIEM TimDiaDiemTheoMa(int maDiaDiem)
        {
            return DiaDiemDAO.TimDiaDiemTheoMa(maDiaDiem);
        }
    }
}
