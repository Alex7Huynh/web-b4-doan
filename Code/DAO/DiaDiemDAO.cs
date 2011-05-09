using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class DiaDiemDAO
    {
        ////Insert new DIADIEM
        //public static bool themDiaDiem(DiaDiemDTO ddDTO)
        //{
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "INSERT INTO DIADIEM(TenDiaDiem,Deleted)";
        //        strSQL += " VALUES (N'" + ddDTO.TenDiaDiem + "',0)";
        //        d.ExecuteQuery(strSQL);
        //    }
        //    catch (Exception ex)
        //    {
        //        return false;
        //    }
        //    return true;
        //}

        ////Delete old DIADIEM
        //public static bool xoaDiaDiem(int maDiaDiem)
        //{
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "UPDATE DIADIEM SET Deleted=1";
        //        strSQL += " WHERE MaDiaDiem = " + maDiaDiem.ToString();
        //        d.ExecuteQuery(strSQL);
        //    }
        //    catch (Exception ex)
        //    {
        //        return false;
        //    }
        //    return true;
        //}

        ////Upadate information for DIADIEM Object
        //public static bool capNhatDiaDiem(DiaDiemDTO ddDTO)
        //{
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "UPDATE DIADIEM SET TenDiaDiem = N'" + ddDTO.TenDiaDiem
        //            + "' WHERE MaDiaDiem = " + ddDTO.MaDiaDiem.ToString();
        //        d.ExecuteQuery(strSQL);
        //    }
        //    catch (Exception ex)
        //    {
        //        return false;
        //    }
        //    return true;
        //}

        ////Load list of DIADIEM
        //public static List<DiaDiemDTO> layDanhSachDiaDiem()
        //{
        //    List<DiaDiemDTO> lstDiaDiem = new List<DiaDiemDTO>();
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "SELECT * FROM DIADIEM";
        //        DataTable dt = d.ExecuteQuery(strSQL);


        //        foreach (DataRow dr in dt.Rows)
        //        {
        //            DiaDiemDTO dd = new DiaDiemDTO();
        //            dd.MaDiaDiem = (int)dr["MaDiaDiem"];
        //            dd.TenDiaDiem = dr["TenDiaDiem"].ToString();
        //            dd.Deleted = (bool)dr["Deleted"];

        //            lstDiaDiem.Add(dd);
        //        }
        //    }
        //    catch (Exception ex)
        //    { return null; }

        //    return lstDiaDiem;
        //}

        ////Find a DIADIEM
        //public static DiaDiemDTO timDiaDiemTheoMa(int maDiaDiem)
        //{
        //    DiaDiemDTO dd = new DiaDiemDTO();
        //    try
        //    {
        //        DataProvider d = new DataProvider();

        //        String strSQL = "SELECT * FROM DIADIEM WHERE MaDiaDiem = "
        //            + maDiaDiem.ToString();

        //        DataTable dt = d.ExecuteQuery(strSQL);
        //        dd.MaDiaDiem = (int)dt.Rows[0]["MaDiaDiem"];
        //        dd.TenDiaDiem = dt.Rows[0]["TenDiaDiem"].ToString();
        //        dd.Deleted = (bool)dt.Rows[0]["Deleted"];
        //    }
        //    catch (Exception ex)
        //    { return null; }

        //    return dd;
        //}
    }
}
