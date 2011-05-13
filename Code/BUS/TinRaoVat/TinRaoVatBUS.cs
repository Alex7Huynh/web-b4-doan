using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class TinRaoVatBUS
    {        
        //public static bool themTinRaoVat(TinRaoVatDTO trvDTO)
        //{
        //    return TinRaoVatDAO.themTinRaoVat(trvDTO);
        //}
        //public static bool xoaTinRaoVat(int maTinRaoVat)
        //{
        //    return TinRaoVatDAO.xoaTinRaoVat(maTinRaoVat);
        //}
        //public static bool capNhatTinRaoVat(TinRaoVatDTO trvDTO)
        //{
        //    return TinRaoVatDAO.capNhatTinRaoVat(trvDTO);
        //}
        //public static List<TinRaoVatDTO> layDanhSachTinRaoVat()
        //{
        //    return TinRaoVatDAO.layDanhSachTinRaoVat();
        //}
        //public static TinRaoVatDTO timTinRaoVatTheoMa(int maTinRaoVat)
        //{
        //    return TinRaoVatDAO.timTinRaoVatTheoMa(maTinRaoVat);
        //}

        public static List<TINRAOVAT> LayDanhSachTinRaoVatMoiNhat()
        {
            return TinRaoVatDAO.LayDanhSachTinRaoVatMoiNhat();
        }
    }
}
