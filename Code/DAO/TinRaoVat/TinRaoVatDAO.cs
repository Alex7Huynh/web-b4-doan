using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class TinRaoVatDAO
    {
        /// <summary>
        /// Insert new TINRAOVAT
        /// </summary>
        /// <param name="tinRaoVat"></param>
        /// <returns></returns>
        public static bool ThemTinRaoVat(TINRAOVAT tinRaoVat)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.TINRAOVATs.InsertOnSubmit(tinRaoVat);
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
        public static bool XoaTinRaoVat(int maTinRaoVat)
        {           
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                TINRAOVAT tinRaoVat = db.TINRAOVATs.Single(t => t.MaTinRaoVat == maTinRaoVat);
                tinRaoVat.Deleted = true;
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;
        }

        /// <summary>
        /// //Update information for TINRAOVAT Object
        /// </summary>
        /// <param name="trvDTO"></param>
        /// <returns></returns>
        public static bool CapNhatTinRaoVat(TINRAOVAT tinRaoVat)
        {
            try
            {
                //Search
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                TINRAOVAT trv = new TINRAOVAT();
                trv = db.TINRAOVATs.Single(t => t.MaTinRaoVat == tinRaoVat.MaTinRaoVat);
                //Update
                trv.ThoiGianDang = tinRaoVat.ThoiGianDang;
                //...
                //Submit
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }
            return true;
        }        

        /// <summary>
        /// Find a TINRAOVAT
        /// </summary>
        /// <param name="maTinRaoVat"></param>
        /// <returns></returns>
        public static TINRAOVAT TimTinRaoVatTheoMa(int maTinRaoVat)
        {
            TINRAOVAT trv = new TINRAOVAT();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                trv = db.TINRAOVATs.Single(t => t.MaTinRaoVat == maTinRaoVat);
            }
            catch (Exception ex)
            { return null; }

            return trv;
        }

        /// <summary>
        /// Load list of TINRAOVAT
        /// </summary>
        /// <returns></returns>
        public static List<TINRAOVAT> LayDanhSachTinRaoVat()
        {
            List<TINRAOVAT> lstTinRaoVat = new List<TINRAOVAT>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinRaoVat = from q in db.TINRAOVATs
                                         where q.Deleted == false
                                         select q;
                lstTinRaoVat = dsTinRaoVat.ToList<TINRAOVAT>();                
            }
            catch (Exception ex)
            { return null; }

            return lstTinRaoVat;
        }

        /// <summary>
        /// Load list of latest TINRAOVAT
        /// </summary>
        /// <returns></returns>
        public static List<TINRAOVAT> LayDanhSachTinRaoVatMoiNhat()
        {
            List<TINRAOVAT> lstTinRaoVatMoiNhat = new List<TINRAOVAT>();
            try
            {
                //RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                //var dsTinRaoVat = from q in db.TINRAOVATs
                //                  where q.Deleted == false
                //                  select q;
                //lstTinRaoVatMoiNhat = dsTinRaoVat.ToList<TINRAOVAT>();
            }
            catch (Exception ex)
            { return null; }

            return lstTinRaoVatMoiNhat;
        }
    }
}
