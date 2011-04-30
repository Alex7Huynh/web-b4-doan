using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;
using DAO;

namespace BUS
{
    public class DanhMucConBUS
    {
        public static bool themDanhMucCon(DanhMucConDTO dmcDTO)
        {
            return DanhMucConDAO.themDanhMucCon(dmcDTO);
        }
        public static bool xoaDanhMucCon(int maDanhMucCon)
        {
            return DanhMucConDAO.xoaDanhMucCon(maDanhMucCon);
        }
        public static bool capNhatDanhMucCon(DanhMucConDTO dmcDTO)
        {
            return DanhMucConDAO.capNhatDanhMucCon(dmcDTO);
        }
        public static List<DanhMucConDTO> layDanhSachDanhMucCon()
        {
            return DanhMucConDAO.layDanhSachDanhMucCon();
        }
        public static DanhMucConDTO timDanhMucConTheoMa(int maDanhMucCon)
        {
            return DanhMucConDAO.timDanhMucConTheoMa(maDanhMucCon);
        }
    }
}
