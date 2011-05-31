using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DAO.TinRaoVat;


namespace BUS.TinRaoVat
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
