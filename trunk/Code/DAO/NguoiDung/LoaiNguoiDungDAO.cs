using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class LoaiNguoiDungDAO
    {
        ////Insert new LOAINGUOIDUNG
        //public static bool themLoaiNguoiDung(LoaiNguoiDungDTO lndDTO)
        //{
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "INSERT INTO LOAINGUOIDUNG(TenLoaiNguoiDung,Deleted)";
        //        strSQL += " VALUES (N'" + lndDTO.TenLoaiNguoiDung + "',0)";
        //        d.ExecuteQuery(strSQL);
        //    }
        //    catch (Exception ex)
        //    {
        //        return false;
        //    }
        //    return true;
        //}

        ////Delete old LOAINGUOIDUNG
        //public static bool xoaLoaiNguoiDung(int maLoaiNguoiDung)
        //{
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "UPDATE LOAINGUOIDUNG SET Deleted=1";
        //        strSQL += " WHERE MaLoaiNguoiDung = " + maLoaiNguoiDung.ToString();
        //        d.ExecuteQuery(strSQL);
        //    }
        //    catch (Exception ex)
        //    {
        //        return false;
        //    }
        //    return true;
        //}

        ////Upadate information for LOAINGUOIDUNG Object
        //public static bool capNhatLoaiNguoiDung(LoaiNguoiDungDTO lndDTO)
        //{
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "UPDATE LOAINGUOIDUNG"
        //            + " SET TenLoaiNguoiDung = N'" + lndDTO.TenLoaiNguoiDung
        //            + "' WHERE MaLoaiNguoiDung = " + lndDTO.MaLoaiNguoiDung.ToString();
        //        d.ExecuteQuery(strSQL);
        //    }
        //    catch (Exception ex)
        //    {
        //        return false;
        //    }
        //    return true;
        //}

        ////Load list of LOAINGUOIDUNG
        //public static List<LoaiNguoiDungDTO> layDanhSachLoaiNguoiDung()
        //{
        //    List<LoaiNguoiDungDTO> lstLoaiNguoiDung = new List<LoaiNguoiDungDTO>();
        //    try
        //    {

        //        DataProvider d = new DataProvider();
        //        String strSQL = "SELECT * FROM LOAINGUOIDUNG";
        //        DataTable dt = d.ExecuteQuery(strSQL);

        //        foreach (DataRow dr in dt.Rows)
        //        {
        //            LoaiNguoiDungDTO lnd = new LoaiNguoiDungDTO();
        //            lnd.MaLoaiNguoiDung = (int)dr["MaLoaiNguoiDung"];
        //            lnd.TenLoaiNguoiDung = dr["TenLoaiNguoiDung"].ToString();
        //            lnd.Deleted = (bool)dr["Deleted"];

        //            lstLoaiNguoiDung.Add(lnd);
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        return null;
        //    }
        //    return lstLoaiNguoiDung;
        //}
        
        /// <summary>
        /// Find a LOAINGUOIDUNG with maLoaiNguoiDung
        /// </summary>
        /// <param name="maLoaiNguoiDung"></param>
        /// <returns></returns>
        public static LOAINGUOIDUNG TimLoaiNguoiDungTheoMa(int maLoaiNguoiDung)
        {
            LOAINGUOIDUNG LoaiNguoiDung = new LOAINGUOIDUNG();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                LoaiNguoiDung = db.LOAINGUOIDUNGs.Single(t => t.MaLoaiNguoiDung == maLoaiNguoiDung);
            }
            catch (Exception ex)
            { return null; }

            return LoaiNguoiDung;
        }

        /// <summary>
        /// Find ID of Admin
        /// </summary>
        /// <returns></returns>
        public static int TimMaAdmin()
        {
            LOAINGUOIDUNG LoaiNguoiDung = new LOAINGUOIDUNG();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                LoaiNguoiDung = db.LOAINGUOIDUNGs.Single(t => t.TenLoaiNguoiDung == "Quản trị viên");
            }
            catch (Exception ex)
            { return 0; }

            return LoaiNguoiDung.MaLoaiNguoiDung;
        }

        /// <summary>
        /// Check admin with maLoaiNguoiDung
        /// </summary>
        /// <param name="maLoaiNguoiDung"></param>
        /// <returns></returns>
        public static bool LaQuanTri(int maLoaiNguoiDung)
        {
            LOAINGUOIDUNG LoaiNguoiDung = new LOAINGUOIDUNG();
            LoaiNguoiDung = TimLoaiNguoiDungTheoMa(maLoaiNguoiDung);
            if (LoaiNguoiDung != null)
                if (LoaiNguoiDung.TenLoaiNguoiDung == "Quản trị viên")
                    return true;

            return false;
        }

        /// <summary>
        /// Check VIP user with maLoaiNguoiDung
        /// </summary>
        /// <param name="maLoaiNguoiDung"></param>
        /// <returns></returns>
        public static bool LaNguoiDungVIP(int maLoaiNguoiDung)
        { 
            LOAINGUOIDUNG LoaiNguoiDung = new LOAINGUOIDUNG();
            LoaiNguoiDung = TimLoaiNguoiDungTheoMa(maLoaiNguoiDung);
            if (LoaiNguoiDung != null)
                if (LoaiNguoiDung.TenLoaiNguoiDung == "Thành viên VIP")
                    return true;

            return false;
        }

        /// <summary>
        /// Check user with maLoaiNguoiDung
        /// </summary>
        /// <param name="maLoaiNguoiDung"></param>
        /// <returns></returns>
        public static bool LaNguoiDungThuong(int maLoaiNguoiDung)
        {
            LOAINGUOIDUNG LoaiNguoiDung = new LOAINGUOIDUNG();
            LoaiNguoiDung = TimLoaiNguoiDungTheoMa(maLoaiNguoiDung);
            if (LoaiNguoiDung != null)
                if (LoaiNguoiDung.TenLoaiNguoiDung == "Thành viên thường")
                    return true;

            return false;
        }
    }
}
