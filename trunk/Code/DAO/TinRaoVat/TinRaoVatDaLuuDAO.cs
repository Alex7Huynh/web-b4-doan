using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class TinRaoVatDaLuuDAO
    {
        /// <summary>
        /// Insert new TINRAOVAT
        /// </summary>
        /// <param name="tinRaoVat"></param>
        /// <returns></returns>
        public static bool ThemTinRaoVatDaLuu(TINRAOVATDALUU tinRaoVatDaLuu)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.TINRAOVATDALUUs.InsertOnSubmit(tinRaoVatDaLuu);
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;

        }

        /// <summary>
        /// Delete old TINRAOVAT
        /// </summary>
        /// <param name="maTinRaoVat"></param>
        /// <returns></returns>
        public static bool XoaTinRaoVatViPham(int maTinRaoVatViPham)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                LICHSUTINRAOVATVIPHAM tinRaoVatViPham = db.LICHSUTINRAOVATVIPHAMs.Single(t => t.MaLichSuTinRaoVatViPham == maTinRaoVatViPham);
                tinRaoVatViPham.deleted = true;
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;
        }

    }
}
