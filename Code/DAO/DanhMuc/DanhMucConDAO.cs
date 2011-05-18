using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class DanhMucConDAO
    {
        ////Insert new DANHMUCCON
        //public static bool themDanhMucCon(DanhMucConDTO dmcDTO)
        //{
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "INSERT INTO DANHMUCCON(TenDanhMucCon,MaDanhMucChinh, Deleted)";
        //        strSQL += " VALUES (N'" + dmcDTO.TenDanhMucCon + "',"
        //            + dmcDTO.DanhMucChinh.MaDanhMucChinh + ",0)";
        //        d.ExecuteQuery(strSQL);
        //    }
        //    catch (Exception ex)
        //    {
        //        return false;
        //    }
        //    return true;
        //}

        ////Delete old DANHMUCCON
        //public static bool xoaDanhMucCon(int maDanhMucCon)
        //{
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "UPDATE DANHMUCCON SET Deleted=1";
        //        strSQL += " WHERE MaDanhMucCon = " + maDanhMucCon.ToString();
        //        d.ExecuteQuery(strSQL);
        //    }
        //    catch (Exception ex)
        //    {
        //        return false;
        //    }
        //    return true;
        //}

        ////Upadate information for DANHMUCCON Object
        //public static bool capNhatDanhMucCon(DanhMucConDTO dmcDTO)
        //{
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "UPDATE DANHMUCCON"
        //            + " SET TenDanhMucCon = N'" + dmcDTO.TenDanhMucCon + "',"
        //            + " MaDanhMucChinh = " + dmcDTO.DanhMucChinh.MaDanhMucChinh
        //            + " WHERE MaDanhMucCon = " + dmcDTO.MaDanhMucCon.ToString();
        //        d.ExecuteQuery(strSQL);
        //    }
        //    catch (Exception ex)
        //    {
        //        return false;
        //    }
        //    return true;
        //}

        ////Load list of DANHMUCCON
        //public static List<DanhMucConDTO> layDanhSachDanhMucCon()
        //{
        //    List<DanhMucConDTO> lstDanhMucCon = new List<DanhMucConDTO>();
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "SELECT * FROM DANHMUCCON";
        //        DataTable dt = d.ExecuteQuery(strSQL);


        //        foreach (DataRow dr in dt.Rows)
        //        {
        //            DanhMucConDTO dmc = new DanhMucConDTO();
        //            dmc.MaDanhMucCon = (int)dr["MaDanhMucCon"];
        //            dmc.TenDanhMucCon = dr["TenDanhMucCon"].ToString();
        //            int maDanhMucChinh = (int)dr["MaDanhMucChinh"];
        //            dmc.Deleted = (bool)dr["Deleted"];

        //            dmc.DanhMucChinh = new DanhMucChinhDTO(
        //                DanhMucChinhDAO.timDanhMucChinhTheoMa(maDanhMucChinh));

        //            lstDanhMucCon.Add(dmc);
        //        }
        //    }
        //    catch (Exception ex)
        //    { return null; }

        //    return lstDanhMucCon;
        //}

        ////Find a DANHMUCCON
        //public static DanhMucConDTO timDanhMucConTheoMa(int maDanhMucCon)
        //{
        //    DanhMucConDTO dmc = new DanhMucConDTO();
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "SELECT * FROM DANHMUCCON WHERE MaDanhMucCon="
        //            + maDanhMucCon.ToString();

        //        DataTable dt = d.ExecuteQuery(strSQL);
        //        dmc.MaDanhMucCon = (int)dt.Rows[0]["MaDanhMucCon"];
        //        dmc.TenDanhMucCon = dt.Rows[0]["TenDanhMucCon"].ToString();
        //        int maDanhMucChinh = (int)dt.Rows[0]["MaDanhMucChinh"];
        //        dmc.Deleted = (bool)dt.Rows[0]["Deleted"];

        //        dmc.DanhMucChinh = new DanhMucChinhDTO(
        //                DanhMucChinhDAO.timDanhMucChinhTheoMa(maDanhMucChinh));
        //    }
        //    catch (Exception ex)
        //    { return null; }

        //    return dmc;
        //}

        /// <summary>
        /// Load list of DANHMUCCHINH
        /// </summary>
        /// <param name="maDanhMucChinh"></param>
        /// <returns></returns>
        public static List<DANHMUCCON> LayDanhSachDanhMucCon(int maDanhMucChinh)
        {
            List<DANHMUCCON> lstDanhMucCon = new List<DANHMUCCON>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsDanhMucCon = from q in db.DANHMUCCONs
                                     where q.Deleted == false &&  q.MaDanhMucChinh == maDanhMucChinh
                                     select q;
                lstDanhMucCon = dsDanhMucCon.ToList<DANHMUCCON>();
            }
            catch (Exception ex)
            { 
                return null; 
            }

            return lstDanhMucCon;
        }
    }
}
