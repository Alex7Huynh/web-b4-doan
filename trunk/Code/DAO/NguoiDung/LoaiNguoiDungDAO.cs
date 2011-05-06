using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DTO;

namespace DAO
{
    public class LoaiNguoiDungDAO
    {
        //Insert new LOAINGUOIDUNG
        public static bool themLoaiNguoiDung(LoaiNguoiDungDTO lndDTO)
        {
            try
            {
                DataProvider d = new DataProvider();
                String strSQL = "INSERT INTO LOAINGUOIDUNG(TenLoaiNguoiDung,Deleted)";
                strSQL += " VALUES (N'" + lndDTO.TenLoaiNguoiDung + "',0)";
                d.ExecuteQuery(strSQL);
            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }

        //Delete old LOAINGUOIDUNG
        public static bool xoaLoaiNguoiDung(int maLoaiNguoiDung)
        {
            try
            {
                DataProvider d = new DataProvider();
                String strSQL = "UPDATE LOAINGUOIDUNG SET Deleted=1";
                strSQL += " WHERE MaLoaiNguoiDung = " + maLoaiNguoiDung.ToString();
                d.ExecuteQuery(strSQL);
            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }

        //Upadate information for LOAINGUOIDUNG Object
        public static bool capNhatLoaiNguoiDung(LoaiNguoiDungDTO lndDTO)
        {
            try
            {
                DataProvider d = new DataProvider();
                String strSQL = "UPDATE LOAINGUOIDUNG"
                    + " SET TenLoaiNguoiDung = N'" + lndDTO.TenLoaiNguoiDung
                    + "' WHERE MaLoaiNguoiDung = " + lndDTO.MaLoaiNguoiDung.ToString();
                d.ExecuteQuery(strSQL);
            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }

        //Load list of LOAINGUOIDUNG
        public static List<LoaiNguoiDungDTO> layDanhSachLoaiNguoiDung()
        {
            List<LoaiNguoiDungDTO> lstLoaiNguoiDung = new List<LoaiNguoiDungDTO>();
            try
            {

                DataProvider d = new DataProvider();
                String strSQL = "SELECT * FROM LOAINGUOIDUNG";
                DataTable dt = d.ExecuteQuery(strSQL);

                foreach (DataRow dr in dt.Rows)
                {
                    LoaiNguoiDungDTO lnd = new LoaiNguoiDungDTO();
                    lnd.MaLoaiNguoiDung = (int)dr["MaLoaiNguoiDung"];
                    lnd.TenLoaiNguoiDung = dr["TenLoaiNguoiDung"].ToString();
                    lnd.Deleted = (bool)dr["Deleted"];

                    lstLoaiNguoiDung.Add(lnd);
                }
            }
            catch (Exception ex)
            {
                return null;
            }
            return lstLoaiNguoiDung;
        }

        //Find a LOAINGUOIDUNG
        public static LoaiNguoiDungDTO timLoaiNguoiDungTheoMa(int maLoaiNguoiDung)
        {
            LoaiNguoiDungDTO lnd = new LoaiNguoiDungDTO();
            try
            {
                DataProvider d = new DataProvider();
                String strSQL = "SELECT * FROM LOAINGUOIDUNG WHERE MaLoaiNguoiDung = "
                    + maLoaiNguoiDung.ToString();

                DataTable dt = d.ExecuteQuery(strSQL);
                lnd.MaLoaiNguoiDung = (int)dt.Rows[0]["MaLoaiNguoiDung"];
                lnd.TenLoaiNguoiDung = dt.Rows[0]["TenLoaiNguoiDung"].ToString();
                lnd.Deleted = (bool)dt.Rows[0]["Deleted"];
            }
            catch (Exception ex)
            {
                return null;
            }
            return lnd;
        }
    }
}
