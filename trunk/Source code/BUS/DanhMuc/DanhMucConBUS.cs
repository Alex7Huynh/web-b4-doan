using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class DanhMucConBUS
    {
        public static bool ThemDanhMucCon(DANHMUCCON danhMucCon)
        {
            return DanhMucConDAO.ThemDanhMucCon(danhMucCon);
        }
        public static bool XoaDanhMucCon(int maDanhMucCon)
        {
            return DanhMucConDAO.XoaDanhMucCon(maDanhMucCon);
        }
        public static bool CapNhatDanhMucCon(DANHMUCCON danhMucCon)
        {
            return DanhMucConDAO.CapNhatDanhMucCon(danhMucCon);
        }
        public static List<DANHMUCCON> LayDanhSachDanhMucCon(int maDanhMucChinh)
        {
            return DanhMucConDAO.LayDanhSachDanhMucCon(maDanhMucChinh);
        }
        public static DANHMUCCON TimDanhMucConTheoMa(int maDanhMucCon)
        {
            return DanhMucConDAO.TimDanhMucConTheoMa(maDanhMucCon);
        }
    }
}
