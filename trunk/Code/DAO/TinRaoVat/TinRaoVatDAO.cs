using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class TinRaoVatDAO
    {
        ////Insert new TINRAOVAT
        //public static bool themTinRaoVat(TinRaoVatDTO trvDTO)
        //{
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "INSERT INTO TINRAOVAT(ThoiGianDang,ThoiHanLuuTin,MaDiaDiem,"
        //        + "SoLanXem,MaNguoiDung,MaDanhMucCon,Deleted)";
        //        strSQL += " VALUES ('" + trvDTO.ThoiGianDang.ToString() + "',"
        //            + trvDTO.ThoiHanLuuTin + ","
        //            + trvDTO.DiaDiem.MaDiaDiem + "',"
        //            + trvDTO.SoLanXem + "',"
        //            + trvDTO.NguoiDung.MaNguoiDung + "',"
        //            + trvDTO.DanhMucCon.MaDanhMucCon + ","
        //            + ",0)";
        //        d.ExecuteQuery(strSQL);
        //    }
        //    catch (Exception ex)
        //    { return false; }

        //    return true;
        //}

        ////Delete old TINRAOVAT
        //public static bool xoaTinRaoVat(int maTinRaoVat)
        //{
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "UPDATE TINRAOVAT SET Deleted=1";
        //        strSQL += " WHERE MaTinRaoVat = " + maTinRaoVat.ToString();
        //        d.ExecuteQuery(strSQL);
        //    }
        //    catch (Exception ex)
        //    {
        //        return false;
        //    }
        //    return true;
        //}

        ////Upadate information for TINRAOVAT Object
        //public static bool capNhatTinRaoVat(TinRaoVatDTO trvDTO)
        //{
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "UPDATE TINRAOVAT"
        //            + " SET ThoiGianDang = '" + trvDTO.ThoiGianDang.ToString() + "',"
        //            + " ThoiHanLuuTin = " + trvDTO.ThoiHanLuuTin + ","
        //            + " MaDiaDiem = " + trvDTO.DiaDiem.MaDiaDiem + ","
        //            + " SoLanXem = " + trvDTO.SoLanXem + ","
        //            + " MaNguoiDung = " + trvDTO.NguoiDung.MaNguoiDung + ","
        //            + " MaDanhMucCon = " + trvDTO.DanhMucCon.MaDanhMucCon
        //            + " WHERE MaTinRaoVat = " + trvDTO.MaTinRaoVat.ToString();
        //        d.ExecuteQuery(strSQL);
        //    }
        //    catch (Exception ex)
        //    {
        //        return false;
        //    }
        //    return true;
        //}        

        /// <summary>
        /// Find a TINRAOVAT
        /// </summary>
        /// <param name="maTinRaoVat"></param>
        /// <returns></returns>
        public static TINRAOVAT TimTinRaoVatTheoMa(int maTinRaoVat)
        {
            TINRAOVAT trv = new TINRAOVAT();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsDanhMucChinh = from q in db.TINRAOVATs
                                     where q.Deleted == false && q.MaTinRaoVat == maTinRaoVat
                                     select q;
                trv = dsDanhMucChinh.ToList<TINRAOVAT>()[0];
            }
            catch (Exception ex)
            { return null; }            

            return trv;
        }

        /// <summary>
        /// Load list of latest TINRAOVAT
        /// </summary>
        /// <returns></returns>
        public static List<TINRAOVAT> LayDanhSachTinRaoVatMoiNhat()
        {
            List<TINRAOVAT> lstTinRaoVatMoiNhat = new List<TINRAOVAT>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinRaoVatMoiNhat = from q in db.TINRAOVATs
                                     where q.Deleted == false
                                     select q;
                lstTinRaoVatMoiNhat = dsTinRaoVatMoiNhat.ToList<TINRAOVAT>();
            }
            catch (Exception ex)
            { return null; }
            return lstTinRaoVatMoiNhat;
        }
    }
}
