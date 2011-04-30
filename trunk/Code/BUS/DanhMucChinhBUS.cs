using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;
using DAO;

namespace BUS
{
    public class DanhMucChinhBUS
    {
        public static bool themDanhMucChinh(DanhMucChinhDTO dmcDTO)
        {
            return DanhMucChinhDAO.themDanhMucChinh(dmcDTO);
        }
        public static bool xoaDanhMucChinh(int maDanhMucChinh)
        {
            return DanhMucChinhDAO.xoaDanhMucChinh(maDanhMucChinh);
        }
        public static bool capNhatDanhMucChinh(DanhMucChinhDTO dmcDTO)
        {
            return DanhMucChinhDAO.capNhatDanhMucChinh(dmcDTO);
        }
        public static List<DanhMucChinhDTO> layDanhSachDanhMucChinh()
        {
            return DanhMucChinhDAO.layDanhSachDanhMucChinh();
        }
        public static DanhMucChinhDTO timDanhMucChinhTheoMa(int maDanhMucChinh)
        {
            return DanhMucChinhDAO.timDanhMucChinhTheoMa(maDanhMucChinh);
        }
    }
}
