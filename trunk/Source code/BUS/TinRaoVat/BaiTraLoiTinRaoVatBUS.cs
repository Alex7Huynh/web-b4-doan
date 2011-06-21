using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class BaiTraLoiTinRaoVatBUS
    {
        public static bool ThemBaiTraLoi(BAITRALOI baiTraLoi)
        {
            return BaiTraLoiTinRaoVatDAO.ThemBaiTraLoi(baiTraLoi);          
        }
        public static bool ChinhSuaBaiTraLoi(BAITRALOI baiTraLoi)
        {
            return BaiTraLoiTinRaoVatDAO.ChinhSuaBaiTraLoi(baiTraLoi);
        }
    }
}
