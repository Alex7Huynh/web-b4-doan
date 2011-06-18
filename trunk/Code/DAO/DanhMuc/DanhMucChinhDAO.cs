using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class DanhMucChinhDAO
    {
        /// <summary>
        /// Insert new DANHMUCCHINH
        /// </summary>
        /// <param name="dmcDTO"></param>
        /// <returns></returns>
        public static bool ThemDanhMucChinh(DANHMUCCHINH dmcDTO)
        {
            return true;
        }

        /// <summary>
        /// Delete old DANHMUCCHINH
        /// </summary>
        /// <param name="maDanhMucChinh"></param>
        /// <returns></returns>
        public static bool XoaDanhMucChinh(int maDanhMucChinh)
        {
            return true;
        }

        /// <summary>
        /// Upadate information for DANHMUCCHINH Object
        /// </summary>
        /// <param name="dmcDTO"></param>
        /// <returns></returns>
        public static bool CapNhatDanhMucChinh(DANHMUCCHINH dmcDTO)
        {
            
            return true;
        }

        /// <summary>
        /// Find a DANHMUCCHINH
        /// </summary>
        /// <param name="maDanhMucChinh"></param>
        /// <returns></returns>
        public static DANHMUCCHINH TimDanhMucChinhTheoMa(int maDanhMucChinh)
        {
            DANHMUCCHINH dmc = new DANHMUCCHINH();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                dmc = db.DANHMUCCHINHs.Single(t => t.MaDanhMucChinh == maDanhMucChinh);
            }
            catch (Exception ex)
            { return null; }

            return dmc;
        }

        /// <summary>
        /// Load list of DANHMUCCHINH
        /// </summary>
        /// <returns></returns>
        public static List<DANHMUCCHINH> LayDanhSachDanhMucChinh()
        {
            List<DANHMUCCHINH> lstDanhMucChinh = new List<DANHMUCCHINH>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsDanhMucChinh = from q in db.DANHMUCCHINHs
                                     where q.Deleted == false
                                     select q;
                lstDanhMucChinh = dsDanhMucChinh.ToList<DANHMUCCHINH>();

            }
            catch (Exception ex)
            { return null; }
            return lstDanhMucChinh;
        }

        /// <summary>
        /// Load list of DANHMUCCHINH
        /// </summary>
        /// <returns></returns>
        public static List<DANHMUCCHINH> LayDanhSachDanhMucChinhTheoChuyenMuc(int maChuyenMuc)
        {
            List<DANHMUCCHINH> lstDanhMucChinh = new List<DANHMUCCHINH>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsDanhMucChinh = from q in db.DANHMUCCHINHs
                                     where q.Deleted == false && q.MaChuyenMuc == maChuyenMuc
                                     select q;
                lstDanhMucChinh = dsDanhMucChinh.ToList<DANHMUCCHINH>();

            }
            catch (Exception ex)
            { return null; }
            return lstDanhMucChinh;
        }

       
    }
}
