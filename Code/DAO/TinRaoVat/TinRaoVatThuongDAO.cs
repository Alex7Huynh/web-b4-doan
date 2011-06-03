using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class TinRaoVatThuongDAO
    {
        /// <summary>
        /// Insert new TINRAOVAT
        /// </summary>
        /// <param name="tinRaoVat"></param>
        /// <returns></returns>
        public static bool ThemTinRaoVatThuong(TINRAOVATTHUONG tinRaoVatThuong)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.TINRAOVATTHUONGs.InsertOnSubmit(tinRaoVatThuong);
                db.SubmitChanges();
            }
            catch (Exception ex)
            {
                return false;
            }

            return true;

        }

        /// <summary>
        /// Delete old TINRAOVATTHUONG
        /// </summary>
        /// <param name="maTinRaoVatThuong"></param>
        /// <returns></returns>
        public static bool XoaTinRaoVatThuong(int maTinRaoVatThuong)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                TINRAOVATTHUONG tinRaoVatThuong = db.TINRAOVATTHUONGs.Single(t => t.MaTinRaoVatThuong == maTinRaoVatThuong);
                tinRaoVatThuong.Deleted = true;
                db.SubmitChanges();
                TinRaoVatDAO.XoaTinRaoVat((int)tinRaoVatThuong.MaTinRaoVat);
            }
            catch (Exception ex)
            {
                return false;
            }

            return true;
        }

        /// <summary>
        /// //Update information for TINRAOVATTHUONG Object
        /// </summary>
        /// <param name="trvDTO"></param>
        /// <returns></returns>
        public static bool CapNhatTinRaoVatThuong(TINRAOVATTHUONG tinRaoVatThuong)
        {
            try
            {
                //Search
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                TINRAOVATTHUONG trvt = new TINRAOVATTHUONG();
                trvt = db.TINRAOVATTHUONGs.Single(t => t.MaTinRaoVatThuong == tinRaoVatThuong.MaTinRaoVatThuong);
                //Update
                trvt.NoiDungTinRaoVat = tinRaoVatThuong.NoiDungTinRaoVat;
                trvt.Gia = tinRaoVatThuong.Gia;
                //Submit
                db.SubmitChanges();
            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }

        /// <summary>
        /// Load list of TINRAOVAT
        /// </summary>
        /// <returns></returns>
        public static List<TINRAOVATTHUONG> LayDanhSachTinRaoVatThuong()
        {
            List<TINRAOVATTHUONG> lstTinRaoVatThuong = new List<TINRAOVATTHUONG>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinRaoVatThuong = from q in db.TINRAOVATTHUONGs
                                        where q.Deleted == false
                                        select q;
                lstTinRaoVatThuong = dsTinRaoVatThuong.ToList<TINRAOVATTHUONG>();
            }
            catch (Exception ex)
            {
                return null;
            }

            return lstTinRaoVatThuong;
        }

        /// <summary>
        /// Find a TINRAOVATTHUONG with maTinRaoVat
        /// </summary>
        /// <param name="maTinRaoVat"></param>
        /// <returns></returns>
        public static TINRAOVATTHUONG TimTinRaoVatThuongTheoMaTinRaoVat(int maTinRaoVat)
        {
            TINRAOVATTHUONG tinRaoVatThuong = new TINRAOVATTHUONG();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinRaoVatThuong = from q in db.TINRAOVATTHUONGs
                                        where q.Deleted == false && q.MaTinRaoVat == maTinRaoVat
                                        select q;
                tinRaoVatThuong = dsTinRaoVatThuong.ToList<TINRAOVATTHUONG>().First();
            }
            catch (Exception ex)
            {
                return null;
            }

            return tinRaoVatThuong;
        }

        /// <summary>
        /// Find a TINRAOVATTHUONG with maTinRaoVatThuong
        /// </summary>
        /// <param name="maTinRaoVatThuong"></param>
        /// <returns></returns>
        public static TINRAOVATTHUONG TimTinRaoVatThuongTheoMa(int maTinRaoVatThuong)
        {
            TINRAOVATTHUONG tinRaoVatThuong = new TINRAOVATTHUONG();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                tinRaoVatThuong = db.TINRAOVATTHUONGs.Single(t => t.MaTinRaoVatThuong == maTinRaoVatThuong);
            }
            catch (Exception ex)
            {
                return null;
            }

            return tinRaoVatThuong;
        }
    }
}