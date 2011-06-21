using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class DanhMucConDAO
    {
        /// <summary>
        /// Insert new DANHMUCCON
        /// </summary>
        /// <param name="dmcDTO"></param>
        /// <returns></returns>
        public static bool ThemDanhMucCon(DANHMUCCON danhMucCon)
        {
            return true;
        }

        /// <summary>
        /// Delete old DANHMUCCON
        /// </summary>
        /// <param name="maDanhMucCon"></param>
        /// <returns></returns>
        public static bool XoaDanhMucCon(int maDanhMucCon)
        {
            return true;
        }

        /// <summary>
        /// Update information for DANHMUCCON Object
        /// </summary>
        /// <param name="dmcDTO"></param>
        /// <returns></returns>
        public static bool CapNhatDanhMucCon(DANHMUCCON danhMucCon)
        {
            return true;
        }

        /// <summary>
        /// Find a DANHMUCCON
        /// </summary>
        /// <param name="maDanhMucCon"></param>
        /// <returns></returns>
        public static DANHMUCCON TimDanhMucConTheoMa(int maDanhMucCon)
        {
            DANHMUCCON dmc = new DANHMUCCON();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                dmc = db.DANHMUCCONs.Single(t => t.MaDanhMucCon == maDanhMucCon);
            }
            catch (Exception ex)
            { return null; }

            return dmc;
        }

        /// <summary>
        /// Load list of DANHMUCCON
        /// </summary>
        /// <param name="maDanhMucChinh"></param>
        /// <returns></returns>
        public static List<DANHMUCCON> LayDanhSachDanhMucCon(int maDanhMucChinh)
        {
            List<DANHMUCCON> lstDanhMucCon = new List<DANHMUCCON>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsDanhMucCon = from q in db.DANHMUCCONs
                                   where q.Deleted == false && q.MaDanhMucChinh == maDanhMucChinh
                                   select q;
                lstDanhMucCon = dsDanhMucCon.ToList<DANHMUCCON>();
            }
            catch (Exception ex)
            { return null; }

            return lstDanhMucCon;
        }
    }
}
