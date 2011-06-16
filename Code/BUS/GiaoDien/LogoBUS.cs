using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class LogoBUS
    {
        public static bool ThemLogo(LOGO logo)
        {
            return LogoDAO.ThemLogo(logo);
        }
        public static bool XoaLogo(int maLogo)
        {
            return LogoDAO.XoaLogo(maLogo);
        }
        public static bool CapNhatLogo(LOGO logo)
        {
            return LogoDAO.CapNhatLogo(logo);
        }
        public static List<LOGO> LayDanhSachLogo()
        {
            return LogoDAO.LayDanhSachLogo();
        }
        public static LOGO TimLogoTheoMa(int maLogo)
        {
            return LogoDAO.TimLogoTheoMa(maLogo);
        }
        public static LOGO TimLogoTheoTen(string tenLogo)
        {
            return LogoDAO.TimLogoTheoTen(tenLogo);
        }
    }
}
