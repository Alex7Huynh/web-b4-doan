using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class DiaDiemDAO
    {
        /// <summary>
        /// Insert new DIADIEM
        /// </summary>
        /// <param name="diaDiem"></param>
        /// <returns></returns>
        public static bool ThemDiaDiem(DIADIEM diaDiem)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.DIADIEMs.InsertOnSubmit(diaDiem);
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;
        }

        /// <summary>
        /// Delete old DIADIEM
        /// </summary>
        /// <param name="maDiaDiem"></param>
        /// <returns></returns>
        public static bool XoaDiaDiem(int maDiaDiem)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                DIADIEM diaDiem = db.DIADIEMs.Single(t => t.MaDiaDiem == maDiaDiem);
                diaDiem.Deleted = true;
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;
        }

        /// <summary>
        /// //Update information for DIADIEM Object
        /// </summary>
        /// <param name="trvDTO"></param>
        /// <returns></returns>
        public static bool CapNhatDiaDiem(DIADIEM diaDiem)
        {
            try
            {
                //Search
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                DIADIEM trv = new DIADIEM();
                trv = db.DIADIEMs.Single(t => t.MaDiaDiem == diaDiem.MaDiaDiem);
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
        /// Load list of DIADIEM
        /// </summary>
        /// <returns></returns>
        public static List<DIADIEM> LayDanhSachDiaDiem()
        {
            List<DIADIEM> lstDiaDiem = new List<DIADIEM>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsDiaDiem = from q in db.DIADIEMs
                                where q.Deleted == false
                                select q;
                lstDiaDiem = dsDiaDiem.ToList<DIADIEM>();
            }
            catch (Exception ex)
            { return null; }

            return lstDiaDiem;
        }

        /// <summary>
        /// Find a DIADIEM with maDiaDiem
        /// </summary>
        /// <param name="maDiaDiem"></param>
        /// <returns></returns>
        public static DIADIEM TimDiaDiemTheoMa(int maDiaDiem)
        {
            DIADIEM dd = new DIADIEM();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                dd = db.DIADIEMs.Single(t => t.MaDiaDiem == maDiaDiem);
            }
            catch (Exception ex)
            { return null; }

            return dd;
        }

        /// <summary>
        /// Find a DIADIEMw ith tenDiaDiem
        /// </summary>
        /// <param name="maDiaDiem"></param>
        /// <returns></returns>
        public static DIADIEM TimDiaDiemTheoTen(string tenDiaDiem)
        {
            DIADIEM dd = new DIADIEM();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                dd = db.DIADIEMs.Single(t => t.TenDiaDiem == tenDiaDiem);
            }
            catch (Exception ex)
            { return null; }

            return dd;
        }
    }
}
