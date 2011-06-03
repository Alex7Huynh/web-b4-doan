using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class ChiTietHoSoTuyenDungDAO
    {
        /// <summary>
        /// Insert new CHITIETHOSOTUYENDUNG
        /// </summary>
        /// <param name="chiTietHoSoTuyenDung"></param>
        /// <returns></returns>
        public static bool ThemChiTietHoSoTuyenDung(CHITIETHOSOTUYENDUNG chiTietHoSoTuyenDung)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.CHITIETHOSOTUYENDUNGs.InsertOnSubmit(chiTietHoSoTuyenDung);
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;

        }

        /// <summary>
        /// //Update information for CHITIETHOSOTUYENDUNG Object
        /// </summary>
        /// <param name="trvDTO"></param>
        /// <returns></returns>
        public static bool CapNhatChiTietHoSoTuyenDung(CHITIETHOSOTUYENDUNG chiTietHoSoTuyenDung)
        {
            try
            {
                //Search
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                CHITIETHOSOTUYENDUNG cthstd = new CHITIETHOSOTUYENDUNG();
                cthstd = db.CHITIETHOSOTUYENDUNGs.Single(t => t.MaChiTietHoSoTuyenDung == chiTietHoSoTuyenDung.MaChiTietHoSoTuyenDung);
                //Update
                cthstd.MaNganhNghe = chiTietHoSoTuyenDung.MaNganhNghe;
                //Submit
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }
            return true;
        }

        /// <summary>
        /// Load list of CHITIETHOSOTUYENDUNG
        /// </summary>
        /// <returns></returns>
        public static List<CHITIETHOSOTUYENDUNG> LayDanhSachChiTietHoSoTuyenDung()
        {
            List<CHITIETHOSOTUYENDUNG> lstChiTietHoSoTuyenDung = new List<CHITIETHOSOTUYENDUNG>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsChiTietHoSoTuyenDung = from q in db.CHITIETHOSOTUYENDUNGs
                                             select q;
                lstChiTietHoSoTuyenDung = dsChiTietHoSoTuyenDung.ToList<CHITIETHOSOTUYENDUNG>();
            }
            catch (Exception ex)
            { return null; }

            return lstChiTietHoSoTuyenDung;
        }

        /// <summary>
        /// Find a CHITIETHOSOTUYENDUNG with maChiTietHoSoTuyenDung
        /// </summary>
        /// <param name="maChiTietHoSoTuyenDung"></param>
        /// <returns></returns>
        public static CHITIETHOSOTUYENDUNG TimChiTietHoSoTuyenDungTheoMa(int maChiTietHoSoTuyenDung)
        {
            CHITIETHOSOTUYENDUNG hstd = new CHITIETHOSOTUYENDUNG();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                hstd = db.CHITIETHOSOTUYENDUNGs.Single(t => t.MaChiTietHoSoTuyenDung == maChiTietHoSoTuyenDung);
            }
            catch (Exception ex)
            { return null; }

            return hstd;
        }

        /// <summary>
        /// Find a CHITIETHOSOTUYENDUNG with maChiTietHoSoTuyenDung
        /// </summary>
        /// <param name="maChiTietHoSoTuyenDung"></param>
        /// <returns></returns>
        public static List<CHITIETHOSOTUYENDUNG> TimChiTietHoSoTuyenDungTheoMaHoTuyenDung(int maHoSoTuyenDung)
        {
            List<CHITIETHOSOTUYENDUNG> lstChiTietHoSoTuyenDung = new List<CHITIETHOSOTUYENDUNG>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsChiTietHoSoTuyenDung = from q in db.CHITIETHOSOTUYENDUNGs
                                             where q.MaHoSoTuyenDung == maHoSoTuyenDung
                                             select q;
                lstChiTietHoSoTuyenDung = dsChiTietHoSoTuyenDung.ToList<CHITIETHOSOTUYENDUNG>();
            }
            catch (Exception ex)
            { return null; }

            return lstChiTietHoSoTuyenDung;
        }
    }
}
