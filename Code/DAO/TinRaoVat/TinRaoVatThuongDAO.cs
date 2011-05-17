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
        public static bool ThemTinRaoVat(TINRAOVAT tinRaoVatThuong)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.TINRAOVATs.InsertOnSubmit(tinRaoVatThuong);
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;

        }

        /// <summary>
        /// Delete old TINRAOVAT
        /// </summary>
        /// <param name="maTinRaoVatThuong"></param>
        /// <returns></returns>
        public static bool XoaTinRaoVat(int maTinRaoVat)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                TINRAOVAT tinRaoVatThuong = db.TINRAOVATs.Single(t => t.MaTinRaoVat == maTinRaoVat);
                tinRaoVatThuong.Deleted = true;
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;
        }

        /// <summary>
        /// //Update information for TINRAOVAT Object
        /// </summary>
        /// <param name="trvDTO"></param>
        /// <returns></returns>
        public static bool CapNhatTinRaoVat(TINRAOVAT tinRaoVatThuong)
        {
            //try
            //{
            //    DataProvider d = new DataProvider();
            //    String strSQL = "UPDATE TINRAOVAT"
            //        + " SET ThoiGianDang = '" + tinRaoVatThuong.ThoiGianDang.ToString() + "',"
            //        + " ThoiHanLuuTin = " + tinRaoVatThuong.ThoiHanLuuTin + ","
            //        + " MaDiaDiem = " + tinRaoVatThuong.DiaDiem.MaDiaDiem + ","
            //        + " SoLanXem = " + tinRaoVatThuong.SoLanXem + ","
            //        + " MaNguoiDung = " + tinRaoVatThuong.NguoiDung.MaNguoiDung + ","
            //        + " MaDanhMucCon = " + tinRaoVatThuong.DanhMucCon.MaDanhMucCon
            //        + " WHERE MaTinRaoVat = " + tinRaoVatThuong.MaTinRaoVat.ToString();
            //    d.ExecuteQuery(strSQL);
            //}
            //catch (Exception ex)
            //{
            //    return false;
            //}
            return true;
        }

        /// <summary>
        /// Find a TINRAOVAT
        /// </summary>
        /// <param name="maTinRaoVatThuong"></param>
        /// <returns></returns>
        public static TINRAOVAT TimTinRaoVatThuongTheoMa(int maTinRaoVat)
        {
            TINRAOVAT tinRaoVatThuong = new TINRAOVAT();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                tinRaoVatThuong = db.TINRAOVATs.Single(t => t.MaTinRaoVat == maTinRaoVat);
                TinRaoVatDAO.XoaTinRaoVat(tinRaoVatThuong.MaTinRaoVat);
            }
            catch (Exception ex)
            { return null; }

            return tinRaoVatThuong;
        }

        /// <summary>
        /// Load list of TINRAOVAT
        /// </summary>
        /// <returns></returns>
        public static List<TINRAOVAT> LayDanhSachTinRaoVatThuong()
        {
            List<TINRAOVAT> lstTinRaoVatThuong = new List<TINRAOVAT>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinRaoVatThuong = from q in db.TINRAOVATs
                                  where q.Deleted == false
                                  select q;
                lstTinRaoVatThuong = dsTinRaoVatThuong.ToList<TINRAOVAT>();
            }
            catch (Exception ex)
            { return null; }

            return lstTinRaoVatThuong;
        }        
    }
}
