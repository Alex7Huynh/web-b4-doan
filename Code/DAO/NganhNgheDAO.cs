using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class NganhNgheDAO
    {
        /// <summary>
        /// Insert new NGANHNGHE
        /// </summary>
        /// <param name="nganhNghe"></param>
        /// <returns></returns>
        public static bool ThemNganhNghe(NGANHNGHE nganhNghe)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.NGANHNGHEs.InsertOnSubmit(nganhNghe);
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;
        }

        /// <summary>
        /// //Update information for NGANHNGHE Object
        /// </summary>
        /// <param name="trvDTO"></param>
        /// <returns></returns>
        public static bool CapNhatNganhNghe(NGANHNGHE nganhNghe)
        {
            try
            {
                //Search
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                NGANHNGHE trv = new NGANHNGHE();
                trv = db.NGANHNGHEs.Single(t => t.MaNganhNghe == nganhNghe.MaNganhNghe);
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
        /// Load list of NGANHNGHE
        /// </summary>
        /// <returns></returns>
        public static List<NGANHNGHE> LayDanhSachNganhNghe()
        {
            List<NGANHNGHE> lstNganhNghe = new List<NGANHNGHE>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsNganhNghe = from q in db.NGANHNGHEs
                                  select q;
                lstNganhNghe = dsNganhNghe.ToList<NGANHNGHE>();
            }
            catch (Exception ex)
            { return null; }

            return lstNganhNghe;
        }

        /// <summary>
        /// Find a NGANHNGHE with
        /// </summary>
        /// <param name="maNganhNghe"></param>
        /// <returns></returns>
        public static NGANHNGHE TimNganhNgheTheoMa(int maNganhNghe)
        {
            NGANHNGHE nn = new NGANHNGHE();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                nn = db.NGANHNGHEs.Single(t => t.MaNganhNghe == maNganhNghe);
            }
            catch (Exception ex)
            { return null; }

            return nn;
        }

        /// <summary>
        /// Find a NGANHNGHE with tenNganhNghe
        /// </summary>
        /// <param name="maNganhNghe"></param>
        /// <returns></returns>
        public static NGANHNGHE TimNganhNgheTheoTen(string tenNganhNghe)
        {
            NGANHNGHE nn = new NGANHNGHE();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                nn = db.NGANHNGHEs.Single(t => t.TenNganhNghe == tenNganhNghe);
            }
            catch (Exception ex)
            { return null; }

            return nn;
        }
    }
}
