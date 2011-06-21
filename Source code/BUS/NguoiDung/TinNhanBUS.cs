using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class TinNhanBUS
    {
        public static bool ThemTinNhan(TINNHAN tinNhan)
        {
            return TinNhanDAO.ThemTinNhan(tinNhan);
        }
        public static List<TINNHAN> LayDanhSachTinNhan()
        {
            return TinNhanDAO.LayDanhSachTinNhan();
        }
    }
}
