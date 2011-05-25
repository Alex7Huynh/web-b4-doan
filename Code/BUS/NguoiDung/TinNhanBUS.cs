using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class TinNhanBUS
    {
        public static List<TINNHAN> LayDanhSachTinNhan()
        {
            return TinNhanDAO.LayDanhSachTinNhan();
        }
    }
}
