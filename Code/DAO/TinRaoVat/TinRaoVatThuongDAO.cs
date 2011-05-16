using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO.TinRaoVat
{
    public class TinRaoVatThuongDAO
    {
        /// <summary>
        /// Load list of TINRAOVATTHUONG
        /// </summary>
        /// <returns></returns>
        public static List<TINRAOVATTHUONG> LayDanhSachTinRaoVatMoiNhat()
        {
            List<TINRAOVATTHUONG> lstTinRaoVatThuong = new List<TINRAOVATTHUONG>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinRaoVatThuong = from q in db.TINRAOVATTHUONGs
                                     where q.Deleted == false
                                     select q;
                lstTinRaoVatThuong = dsTinRaoVatThuong.ToList<TINRAOVATTHUONG>();
            }
            catch (Exception ex)
            { return null; }
            return lstTinRaoVatThuong;
        }
    }
}
