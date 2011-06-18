using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class TinRaoVatDaLuuBUS
    {
        public static bool ThemTinRaoVatDaLuu(TINRAOVATDALUU tinRaoVatDaLuu)
        {
            return TinRaoVatDaLuuDAO.ThemTinRaoVatDaLuu(tinRaoVatDaLuu);
        }
        public static bool XoaTinRaoVatViPham(int maTinRaoVatViPham)
        {
            return TinRaoVatDaLuuDAO.XoaTinRaoVatViPham(maTinRaoVatViPham);
        }
    }
}
