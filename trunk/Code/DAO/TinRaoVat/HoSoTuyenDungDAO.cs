using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class HoSoTuyenDungDAO
    {
        /// <summary>
        /// Insert new HOSOTUYENDUNG
        /// </summary>
        /// <param name="hoSoTuyenDung"></param>
        /// <returns></returns>
        public static bool ThemHoSoTuyenDung(HOSOTUYENDUNG hoSoTuyenDung)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.HOSOTUYENDUNGs.InsertOnSubmit(hoSoTuyenDung);
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;

        }

        /// <summary>
        /// Delete old HOSOTUYENDUNG
        /// </summary>
        /// <param name="maHoSoTuyenDung"></param>
        /// <returns></returns>
        public static bool XoaHoSoTuyenDung(int maHoSoTuyenDung)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                HOSOTUYENDUNG hoSoTuyenDung = db.HOSOTUYENDUNGs.Single(t => t.MaHoSoTuyenDung == maHoSoTuyenDung);
                hoSoTuyenDung.Deleted = true;
                db.SubmitChanges();
                TinRaoVatDAO.XoaTinRaoVat((int)hoSoTuyenDung.MaTinRaoVat);
            }
            catch (Exception ex)
            { return false; }

            return true;
        }

        /// <summary>
        /// //Update information for HOSOTUYENDUNG Object
        /// </summary>
        /// <param name="trvDTO"></param>
        /// <returns></returns>
        public static bool CapNhatHoSoTuyenDung(HOSOTUYENDUNG hoSoTuyenDung)
        {
            try
            {
                //Search
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                HOSOTUYENDUNG hstd = new HOSOTUYENDUNG();
                hstd = db.HOSOTUYENDUNGs.Single(t => t.MaHoSoTuyenDung == hoSoTuyenDung.MaHoSoTuyenDung);
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
        /// Find a HOSOTUYENDUNG
        /// </summary>
        /// <param name="maHoSoTuyenDung"></param>
        /// <returns></returns>
        public static HOSOTUYENDUNG TimHoSoTuyenDungTheoMa(int maHoSoTuyenDung)
        {
            HOSOTUYENDUNG hstd = new HOSOTUYENDUNG();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                hstd = db.HOSOTUYENDUNGs.Single(t => t.MaHoSoTuyenDung == maHoSoTuyenDung);
            }
            catch (Exception ex)
            { return null; }

            return hstd;
        }

        /// <summary>
        /// Load list of HOSOTUYENDUNG
        /// </summary>
        /// <returns></returns>
        public static List<HOSOTUYENDUNG> LayDanhSachHoSoTuyenDung()
        {
            List<HOSOTUYENDUNG> lstHoSoTuyenDung = new List<HOSOTUYENDUNG>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsHoSoTuyenDung = from q in db.HOSOTUYENDUNGs
                                            where q.Deleted == false
                                            select q;
                lstHoSoTuyenDung = dsHoSoTuyenDung.ToList<HOSOTUYENDUNG>();
            }
            catch (Exception ex)
            { return null; }

            return lstHoSoTuyenDung;
        }

        public static HOSOTUYENDUNG TimHoSoTuyenDungTheoMaTinRaoVat(int maTinRaoVat)
        {
            HOSOTUYENDUNG hoSoTuyenDung = new HOSOTUYENDUNG();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsHoSoTuyenDung = from q in db.HOSOTUYENDUNGs
                                     where q.Deleted == false && q.MaTinRaoVat == maTinRaoVat
                                     select q;
                hoSoTuyenDung = dsHoSoTuyenDung.ToList<HOSOTUYENDUNG>().First();
            }
            catch (Exception ex)
            {
                return null;
            }

            return hoSoTuyenDung;
        }
    }
}
