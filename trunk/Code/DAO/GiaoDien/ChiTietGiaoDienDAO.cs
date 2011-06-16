using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAO
{
    public class ChiTietGiaoDienDAO
    {
        /// <summary>
        /// Insert new CHITIETGIAODIEN
        /// </summary>
        /// <param name="chiTietGiaoDien"></param>
        /// <returns></returns>
        public static bool ThemChiTietGiaoDien(CHITIETGIAODIEN chiTietGiaoDien)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.CHITIETGIAODIENs.InsertOnSubmit(chiTietGiaoDien);
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;
        }

        /// <summary>
        /// Delete old CHITIETGIAODIEN
        /// </summary>
        /// <param name="maChiTietGiaoDien"></param>
        /// <returns></returns>
        public static bool XoaChiTietGiaoDien(int maChiTietGiaoDien)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                CHITIETGIAODIEN chiTietGiaoDien = db.CHITIETGIAODIENs.Single(t => t.MaChiTietGiaoDien == maChiTietGiaoDien);
                chiTietGiaoDien.Deleted = true;
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;
        }

        /// <summary>
        /// //Update information for CHITIETGIAODIEN Object
        /// </summary>
        /// <param name="trvDTO"></param>
        /// <returns></returns>
        public static bool CapNhatChiTietGiaoDien(CHITIETGIAODIEN chiTietGiaoDien)
        {
            try
            {
                //Search
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                CHITIETGIAODIEN ctgd = new CHITIETGIAODIEN();
                ctgd = db.CHITIETGIAODIENs.Single(t => t.MaChiTietGiaoDien == chiTietGiaoDien.MaChiTietGiaoDien);
                //Update
                ctgd.TenGiaoDien = chiTietGiaoDien.TenGiaoDien;
                ctgd.MaBannerGiaoDien = chiTietGiaoDien.MaBannerGiaoDien;
                ctgd.MaLogo = chiTietGiaoDien.MaLogo;
                ctgd.MaTheme = chiTietGiaoDien.MaTheme;
                ctgd.MaNguoiDung = chiTietGiaoDien.MaNguoiDung;
                ctgd.ThoiGianThayDoi = chiTietGiaoDien.ThoiGianThayDoi;
                //Submit
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }
            return true;
        }

        /// <summary>
        /// Load list of CHITIETGIAODIEN
        /// </summary>
        /// <returns></returns>
        public static List<CHITIETGIAODIEN> LayDanhSachChiTietGiaoDien()
        {
            List<CHITIETGIAODIEN> lstChiTietGiaoDien = new List<CHITIETGIAODIEN>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsChiTietGiaoDien = from q in db.CHITIETGIAODIENs
                               where q.Deleted == false
                               select q;
                lstChiTietGiaoDien = dsChiTietGiaoDien.ToList<CHITIETGIAODIEN>();
            }
            catch (Exception ex)
            { return null; }

            return lstChiTietGiaoDien;
        }

        /// <summary>
        /// Find a CHITIETGIAODIEN with maChiTietGiaoDien
        /// </summary>
        /// <param name="maChiTietGiaoDien"></param>
        /// <returns></returns>
        public static CHITIETGIAODIEN TimChiTietGiaoDienTheoMa(int maChiTietGiaoDien)
        {
            CHITIETGIAODIEN ctgd = new CHITIETGIAODIEN();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                ctgd = db.CHITIETGIAODIENs.Single(t => t.MaChiTietGiaoDien == maChiTietGiaoDien);
            }
            catch (Exception ex)
            { return null; }

            return ctgd;
        }

        /// <summary>
        /// Find a CHITIETGIAODIENw ith tenChiTietGiaoDien
        /// </summary>
        /// <param name="maChiTietGiaoDien"></param>
        /// <returns></returns>
        public static CHITIETGIAODIEN TimChiTietGiaoDienTheoTen(string tenChiTietGiaoDien)
        {
            CHITIETGIAODIEN ctgd = new CHITIETGIAODIEN();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                ctgd = db.CHITIETGIAODIENs.Single(t => t.TenGiaoDien == tenChiTietGiaoDien);
            }
            catch (Exception ex)
            { return null; }

            return ctgd;
        }
    }
}
