using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class BaoCaoBaiVietViPhamDAO
    {
        public static bool ThemBaoCaoViPham(LICHSUTINRAOVATVIPHAM tinViPham)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.LICHSUTINRAOVATVIPHAMs.InsertOnSubmit(tinViPham);
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }
            return true;
        }
        public static List<LICHSUTINRAOVATVIPHAM> LayDanhSachTinViPham()
        {
            List<LICHSUTINRAOVATVIPHAM> lstTinViPham = new List<LICHSUTINRAOVATVIPHAM>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinViPham = from q in db.LICHSUTINRAOVATVIPHAMs
                                     where q.deleted == false
                                     select q;
                lstTinViPham = dsTinViPham.ToList<LICHSUTINRAOVATVIPHAM>();

            }
            catch (Exception ex)
            { return null; }
            return lstTinViPham;
        }
    }
}
