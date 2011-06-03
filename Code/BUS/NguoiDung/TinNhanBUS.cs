using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class TimKiemBUS
    {
        public static bool ThemTinNhan(TINNHAN tinNhan)
        {
            return TimKiemDAO.ThemTinNhan(tinNhan);
        }
        public static List<TINNHAN> LayDanhSachTinNhan()
        {
            return TimKiemDAO.LayDanhSachTinNhan();
        }
    }
}
