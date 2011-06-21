using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAO
{
    public class BannerDAO
    {
        /// <summary>
        /// Insert new BANNERGIAODIEN
        /// </summary>
        /// <param name="banner"></param>
        /// <returns></returns>
        public static bool ThemBanner(BANNERGIAODIEN banner)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.BANNERGIAODIENs.InsertOnSubmit(banner);
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;
        }

        /// <summary>
        /// Delete old BANNERGIAODIEN
        /// </summary>
        /// <param name="maBanner"></param>
        /// <returns></returns>
        public static bool XoaBanner(int maBanner)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                BANNERGIAODIEN banner = db.BANNERGIAODIENs.Single(t => t.MaBannerGiaoDien == maBanner);
                banner.Deleted = true;
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;
        }

        /// <summary>
        /// //Update information for BANNERGIAODIEN Object
        /// </summary>
        /// <param name="trvDTO"></param>
        /// <returns></returns>
        public static bool CapNhatBanner(BANNERGIAODIEN banner)
        {
            try
            {
                //Search
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                BANNERGIAODIEN bngd = new BANNERGIAODIEN();
                bngd = db.BANNERGIAODIENs.Single(t => t.MaBannerGiaoDien == banner.MaBannerGiaoDien);
                //Update
                bngd.TenBannerGiaoDien = banner.TenBannerGiaoDien;
                bngd.DuongDanBannerGiaoDien = banner.DuongDanBannerGiaoDien;
                //Submit
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }
            return true;
        }

        /// <summary>
        /// Load list of BANNERGIAODIEN
        /// </summary>
        /// <returns></returns>
        public static List<BANNERGIAODIEN> LayDanhSachBanner()
        {
            List<BANNERGIAODIEN> lstBanner = new List<BANNERGIAODIEN>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsBanner = from q in db.BANNERGIAODIENs
                               where q.Deleted == false
                               select q;
                lstBanner = dsBanner.ToList<BANNERGIAODIEN>();
            }
            catch (Exception ex)
            { return null; }

            return lstBanner;
        }

        /// <summary>
        /// Find a BANNERGIAODIEN with maBanner
        /// </summary>
        /// <param name="maBanner"></param>
        /// <returns></returns>
        public static BANNERGIAODIEN TimBannerTheoMa(int maBanner)
        {
            BANNERGIAODIEN bngd = new BANNERGIAODIEN();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                bngd = db.BANNERGIAODIENs.Single(t => t.MaBannerGiaoDien == maBanner);
            }
            catch (Exception ex)
            { return null; }

            return bngd;
        }

        /// <summary>
        /// Find a BANNERGIAODIENw ith tenBanner
        /// </summary>
        /// <param name="maBanner"></param>
        /// <returns></returns>
        public static BANNERGIAODIEN TimBannerTheoTen(string tenBanner)
        {
            BANNERGIAODIEN bngd = new BANNERGIAODIEN();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                bngd = db.BANNERGIAODIENs.Single(t => t.TenBannerGiaoDien == tenBanner);
            }
            catch (Exception ex)
            { return null; }

            return bngd;
        }
    }
}
