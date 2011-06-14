using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class BaoCaoNguoiDungViPhamBUS
    {
        public static bool ThemBaoCaoViPham(LICHSUNGUOIDUNGVIPHAM nguoiViPham)
        {
            return BaoCaoNguoiDungViPhamDAO.ThemBaoCaoViPham(nguoiViPham);
        }
    }
}
