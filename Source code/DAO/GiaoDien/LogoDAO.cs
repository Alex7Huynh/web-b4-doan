using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAO
{
    public class LogoDAO
    {
        /// <summary>
        /// Insert new LOGO
        /// </summary>
        /// <param name="logo"></param>
        /// <returns></returns>
        public static bool ThemLogo(LOGO logo)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.LOGOs.InsertOnSubmit(logo);
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;
        }

        /// <summary>
        /// Delete old LOGO
        /// </summary>
        /// <param name="maLogo"></param>
        /// <returns></returns>
        public static bool XoaLogo(int maLogo)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                LOGO logo = db.LOGOs.Single(t => t.MaLogo == maLogo);
                logo.Deleted = true;
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;
        }

        /// <summary>
        /// //Update information for LOGO Object
        /// </summary>
        /// <param name="trvDTO"></param>
        /// <returns></returns>
        public static bool CapNhatLogo(LOGO logo)
        {
            try
            {
                //Search
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                LOGO lg = new LOGO();
                lg = db.LOGOs.Single(t => t.MaLogo == logo.MaLogo);
                //Update
                lg.TenLogo = logo.TenLogo;
                lg.DuongDanLogo = logo.DuongDanLogo;
                //Submit
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }
            return true;
        }

        /// <summary>
        /// Load list of LOGO
        /// </summary>
        /// <returns></returns>
        public static List<LOGO> LayDanhSachLogo()
        {
            List<LOGO> lstLogo = new List<LOGO>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsLogo = from q in db.LOGOs
                               where q.Deleted == false
                               select q;
                lstLogo = dsLogo.ToList<LOGO>();
            }
            catch (Exception ex)
            { return null; }

            return lstLogo;
        }

        /// <summary>
        /// Find a LOGO with maLogo
        /// </summary>
        /// <param name="maLogo"></param>
        /// <returns></returns>
        public static LOGO TimLogoTheoMa(int maLogo)
        {
            LOGO lg = new LOGO();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                lg = db.LOGOs.Single(t => t.MaLogo == maLogo);
            }
            catch (Exception ex)
            { return null; }

            return lg;
        }

        /// <summary>
        /// Find a LOGOw ith tenLogo
        /// </summary>
        /// <param name="maLogo"></param>
        /// <returns></returns>
        public static LOGO TimLogoTheoTen(string tenLogo)
        {
            LOGO lg = new LOGO();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                lg = db.LOGOs.Single(t => t.TenLogo == tenLogo);
            }
            catch (Exception ex)
            { return null; }

            return lg;
        }
    }
}
