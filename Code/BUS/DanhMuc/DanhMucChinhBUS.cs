using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class DanhMucChinhBUS
    {
        public static bool themDanhMucChinh(DANHMUCCHINH dmcDTO)
        {
            return DanhMucChinhDAO.themDanhMucChinh(dmcDTO);
        }
        public static bool xoaDanhMucChinh(int maDanhMucChinh)
        {
            return DanhMucChinhDAO.xoaDanhMucChinh(maDanhMucChinh);
        }
        public static bool capNhatDanhMucChinh(DANHMUCCHINH dmcDTO)
        {
            return DanhMucChinhDAO.capNhatDanhMucChinh(dmcDTO);
        }
        public static List<DANHMUCCHINH> layDanhSachDanhMucChinh()
        {
            return DanhMucChinhDAO.layDanhSachDanhMucChinh();
        }
        public static DANHMUCCHINH timDanhMucChinhTheoMa(int maDanhMucChinh)
        {
            return DanhMucChinhDAO.timDanhMucChinhTheoMa(maDanhMucChinh);
        }
    }
}
