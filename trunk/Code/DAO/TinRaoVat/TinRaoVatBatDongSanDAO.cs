using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class TinRaoVatBatDongSanDAO
    {
        /// <summary>
        /// Insert new TINRAOVATBATDONGSAN
        /// </summary>
        /// <param name="tinRaoVatBatDongSan"></param>
        /// <returns></returns>
        public static bool ThemTinRaoVatBatDongSan(TINRAOVATBATDONGSAN tinRaoVatBatDongSan)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.TINRAOVATBATDONGSANs.InsertOnSubmit(tinRaoVatBatDongSan);
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;

        }

        /// <summary>
        /// Delete old TINRAOVATBATDONGSAN
        /// </summary>
        /// <param name="maTinRaoVatBatDongSan"></param>
        /// <returns></returns>
        public static bool XoaTinRaoVatBatDongSan(int maTinRaoVatBatDongSan)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                TINRAOVATBATDONGSAN tinRaoVatBatDongSan = db.TINRAOVATBATDONGSANs.Single(t => t.MaTinRaoVatBatDongSan == maTinRaoVatBatDongSan);
                tinRaoVatBatDongSan.Deleted = true;
                db.SubmitChanges();
                TinRaoVatDAO.XoaTinRaoVat((int)tinRaoVatBatDongSan.MaTinRaoVat);
            }
            catch (Exception ex)
            { return false; }

            return true;
        }

        /// <summary>
        /// //Update information for TINRAOVATBATDONGSAN Object
        /// </summary>
        /// <param name="trvDTO"></param>
        /// <returns></returns>
        public static bool CapNhatTinRaoVatBatDongSan(TINRAOVATBATDONGSAN tinRaoVatBatDongSan)
        {
            try
            {
                //Search
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                TINRAOVATBATDONGSAN ttd = new TINRAOVATBATDONGSAN();
                ttd = db.TINRAOVATBATDONGSANs.Single(t => t.MaTinRaoVatBatDongSan == tinRaoVatBatDongSan.MaTinRaoVatBatDongSan);
                //Update
                //...
                //Submit
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }
            return true;
        }

        /// <summary>
        /// Find a TINRAOVATBATDONGSAN
        /// </summary>
        /// <param name="maTinRaoVatBatDongSan"></param>
        /// <returns></returns>
        public static TINRAOVATBATDONGSAN TimTinRaoVatBatDongSanTheoMa(int maTinRaoVatBatDongSan)
        {
            TINRAOVATBATDONGSAN trv = new TINRAOVATBATDONGSAN();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                trv = db.TINRAOVATBATDONGSANs.Single(t => t.MaTinRaoVatBatDongSan == maTinRaoVatBatDongSan);
            }
            catch (Exception ex)
            { return null; }

            return trv;
        }

        /// <summary>
        /// Load list of TINRAOVATBATDONGSAN
        /// </summary>
        /// <returns></returns>
        public static List<TINRAOVATBATDONGSAN> LayDanhSachTinRaoVatBatDongSan()
        {
            List<TINRAOVATBATDONGSAN> lstTinRaoVatBatDongSan = new List<TINRAOVATBATDONGSAN>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinRaoVatBatDongSan = from q in db.TINRAOVATBATDONGSANs
                                  where q.Deleted == false
                                  select q;
                lstTinRaoVatBatDongSan = dsTinRaoVatBatDongSan.ToList<TINRAOVATBATDONGSAN>();
            }
            catch (Exception ex)
            { return null; }

            return lstTinRaoVatBatDongSan;
        }

        public static TINRAOVATBATDONGSAN TimTinRaoVatBatDongSanTheoMaTinRaoVat(int maTinRaoVat)
        {
            TINRAOVATBATDONGSAN tinRaoVatBatDongSan = new TINRAOVATBATDONGSAN();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinRaoVatBatDongSan = from q in db.TINRAOVATBATDONGSANs
                                        where q.Deleted == false && q.MaTinRaoVat == maTinRaoVat
                                        select q;
                tinRaoVatBatDongSan = dsTinRaoVatBatDongSan.ToList<TINRAOVATBATDONGSAN>().First();
            }
            catch (Exception ex)
            {
                return null;
            }

            return tinRaoVatBatDongSan;
        }
    }    
}
