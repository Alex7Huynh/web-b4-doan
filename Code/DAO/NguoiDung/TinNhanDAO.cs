using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class TinNhanDAO
    {
        /// <summary>
        /// Insert new TINNHAN
        /// </summary>
        /// <param name="tinNhan"></param>
        /// <returns></returns>
        public static bool ThemTinNhan(TINNHAN tinNhan)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.TINNHANs.InsertOnSubmit(tinNhan);
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;

        }

        /// <summary>
        /// Load list of TINNHAN
        /// </summary>
        /// <returns></returns>
        public static List<TINNHAN> LayDanhSachTinNhan()
        {
            List<TINNHAN> lstTinNhan = new List<TINNHAN>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinNhan = from q in db.TINNHANs
                                     where q.Deleted == false
                                     select q;
                lstTinNhan = dsTinNhan.ToList<TINNHAN>();

            }
            catch (Exception ex)
            { return null; }
            return lstTinNhan;
        }

       
    }
}
