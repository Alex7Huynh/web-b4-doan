using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class DanhMucConBUS
    {
        //public static bool themDanhMucCon(DanhMucConDTO dmcDTO)
        //{
        //    return DanhMucConDAO.themDanhMucCon(dmcDTO);
        //}
        //public static bool xoaDanhMucCon(int maDanhMucCon)
        //{
        //    return DanhMucConDAO.xoaDanhMucCon(maDanhMucCon);
        //}
        //public static bool capNhatDanhMucCon(DanhMucConDTO dmcDTO)
        //{
        //    return DanhMucConDAO.capNhatDanhMucCon(dmcDTO);
        //}
        public static List<DANHMUCCON> layDanhSachDanhMucCon(int maDanhMucChinh)
        {
            return DanhMucConDAO.layDanhSachDanhMucCon(maDanhMucChinh);
        }
        //public static DanhMucConDTO timDanhMucConTheoMa(int maDanhMucCon)
        //{
        //    return DanhMucConDAO.timDanhMucConTheoMa(maDanhMucCon);
        //}
    }
}
