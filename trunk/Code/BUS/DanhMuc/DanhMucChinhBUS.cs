using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class DanhMucChinhBUS
    {
        public static bool ThemDanhMucChinh(DANHMUCCHINH dmcDTO)
        {
            return DanhMucChinhDAO.ThemDanhMucChinh(dmcDTO);
        }
        public static bool XoaDanhMucChinh(int maDanhMucChinh)
        {
            return DanhMucChinhDAO.XoaDanhMucChinh(maDanhMucChinh);
        }
        public static bool CapNhatDanhMucChinh(DANHMUCCHINH dmcDTO)
        {
            return DanhMucChinhDAO.CapNhatDanhMucChinh(dmcDTO);
        }
        public static List<DANHMUCCHINH> LayDanhSachDanhMucChinh()
        {
            return DanhMucChinhDAO.LayDanhSachDanhMucChinh();
        }
        public static List<DANHMUCCHINH> LayDanhSachDanhMucChinhTheoChuyenMuc(int maChuyenMuc)
        {
            return DanhMucChinhDAO.LayDanhSachDanhMucChinhTheoChuyenMuc(maChuyenMuc);
        }
        public static DANHMUCCHINH TimDanhMucChinhTheoMa(int maDanhMucChinh)
        {
            return DanhMucChinhDAO.TimDanhMucChinhTheoMa(maDanhMucChinh);
        }
    }
}
