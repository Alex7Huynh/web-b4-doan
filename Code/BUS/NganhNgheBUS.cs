using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class NganhNgheBUS
    {
        public static bool ThemNganhNghe(NGANHNGHE ngangNghe)
        {
            return NganhNgheDAO.ThemNganhNghe(ngangNghe);
        }
        public static bool CapNhatNganhNghe(NGANHNGHE ngangNghe)
        {
            return CapNhatNganhNghe(ngangNghe);
        }
        public static List<NGANHNGHE> LayDanhSachNganhNghe()
        {
            return NganhNgheDAO.LayDanhSachNganhNghe();
        }
        public static NGANHNGHE TimNganhNgheTheoMa(int maNganhNghe)
        {
            return NganhNgheDAO.TimNganhNgheTheoMa(maNganhNghe);
        }
    }
}
