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
    }
}
