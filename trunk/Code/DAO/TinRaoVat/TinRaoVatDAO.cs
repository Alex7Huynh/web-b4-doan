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

        ////Load list of TINRAOVAT
        //public static List<TinRaoVatDTO> layDanhSachTinRaoVat()
        //{
        //    List<TinRaoVatDTO> lstTinRaoVat = new List<TinRaoVatDTO>();
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "SELECT * FROM TINRAOVAT";
        //        DataTable dt = d.ExecuteQuery(strSQL);


        //        foreach (DataRow dr in dt.Rows)
        //        {
        //            TinRaoVatDTO trv = new TinRaoVatDTO();
        //            trv.MaTinRaoVat = (int)dr["MaTinRaoVat"];
        //            trv.ThoiGianDang = (DateTime)dr["ThoiGianDang"];
        //            trv.ThoiHanLuuTin = (int)dr["ThoiHanLuuTin"];

        //            int MaDiaDiem = (int)dr["MaDiaDiem"];
        //            trv.DiaDiem = new DiaDiemDTO(DiaDiemDAO.timDiaDiemTheoMa(MaDiaDiem));

        //            trv.SoLanXem = (int)dr["SoLanXem"];

        //            int MaNguoiDung = (int)dr["MaNguoiDung"];
        //            trv.NguoiDung = new NguoiDungDTO(NguoiDungDAO.timNguoiDungTheoMa(MaNguoiDung));

        //            int MaDanhMucCon = (int)dr["MaDanhMucCon"];
        //            trv.DanhMucCon = new DanhMucConDTO(DanhMucConDAO.timDanhMucConTheoMa(MaDanhMucCon));

        //            trv.Deleted = (bool)dr["Deleted"];

        //            lstTinRaoVat.Add(trv);
        //        }
        //    }
        //    catch (Exception ex)
        //    { return null; }

        //    return lstTinRaoVat;
        //}

        ////Find a TINRAOVAT
        //public static TinRaoVatDTO timTinRaoVatTheoMa(int maTinRaoVat)
        //{
        //    TinRaoVatDTO trv = new TinRaoVatDTO();
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "SELECT * FROM TINRAOVAT WHERE MaTinRaoVat="
        //            + maTinRaoVat.ToString();

        //        DataTable dt = d.ExecuteQuery(strSQL);
        //        trv.MaTinRaoVat = (int)dt.Rows[0]["MaTinRaoVat"];
        //        trv.ThoiGianDang = (DateTime)dt.Rows[0]["ThoiGianDang"];
        //        trv.ThoiHanLuuTin = (int)dt.Rows[0]["ThoiHanLuuTin"];

        //        int MaDiaDiem = (int)dt.Rows[0]["MaDiaDiem"];
        //        trv.DiaDiem = new DiaDiemDTO(DiaDiemDAO.timDiaDiemTheoMa(MaDiaDiem));

        //        trv.SoLanXem = (int)dt.Rows[0]["SoLanXem"];

        //        int MaNguoiDung = (int)dt.Rows[0]["MaNguoiDung"];
        //        trv.NguoiDung = new NguoiDungDTO(NguoiDungDAO.timNguoiDungTheoMa(MaNguoiDung));

        //        int MaDanhMucCon = (int)dt.Rows[0]["MaDanhMucCon"];
        //        trv.DanhMucCon = new DanhMucConDTO(DanhMucConDAO.timDanhMucConTheoMa(MaDanhMucCon));

        //        trv.Deleted = (bool)dt.Rows[0]["Deleted"];

        //    }
        //    catch (Exception ex)
        //    { return null; }

        //    return trv;
        //}
    }
}
