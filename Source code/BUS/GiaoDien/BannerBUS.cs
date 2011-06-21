using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class BannerBUS
    {
        public static bool ThemBanner(BANNERGIAODIEN banner)
        {
            return BannerDAO.ThemBanner(banner);
        }
        public static bool XoaBanner(int maBanner)
        {
            return BannerDAO.XoaBanner(maBanner);
        }
        public static bool CapNhatBanner(BANNERGIAODIEN banner)
        {
            return BannerDAO.CapNhatBanner(banner);
        }
        public static List<BANNERGIAODIEN> LayDanhSachBanner()
        {
            return BannerDAO.LayDanhSachBanner();
        }
        public static BANNERGIAODIEN TimBannerTheoMa(int maBanner)
        {
            return BannerDAO.TimBannerTheoMa(maBanner);
        }
        public static BANNERGIAODIEN TimBannerTheoTen(string tenBanner)
        {
            return BannerDAO.TimBannerTheoTen(tenBanner);
        }
    }
}
