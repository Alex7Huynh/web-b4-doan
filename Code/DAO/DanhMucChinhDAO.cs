using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DTO;

namespace DAO
{
    public class DanhMucChinhDAO
    {
        //Insert new DANHMUCCHINH
        public static bool themDanhMucChinh(DanhMucChinhDTO dmcDTO)
        {
            try
            {
                DataProvider d = new DataProvider();
                String strSQL = "INSERT INTO DANHMUCCHINH(TenDanhMucChinh,Deleted)";
                strSQL += " VALUES (N'" + dmcDTO.TenDanhMucChinh + "',0)";
                d.ExecuteQuery(strSQL);
            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }

        //Delete old DANHMUCCHINH
        public static bool xoaDanhMucChinh(int maDanhMucChinh)
        {
            try
            {
                DataProvider d = new DataProvider();
                String strSQL = "UPDATE DANHMUCCHINH SET Deleted=1";
                strSQL += " WHERE MaDanhMucChinh = " + maDanhMucChinh.ToString();
                d.ExecuteQuery(strSQL);
            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }

        //Upadate information for DANHMUCCHINH Object
        public static bool capNhatDanhMucChinh(DanhMucChinhDTO dmcDTO)
        {
            try
            {
                DataProvider d = new DataProvider();
                String strSQL = "UPDATE DANHMUCCHINH"
                    + " SET TenDanhMucChinh = N'" + dmcDTO.TenDanhMucChinh
                    + "' WHERE MaDanhMucChinh = " + dmcDTO.MaDanhMucChinh.ToString();
                d.ExecuteQuery(strSQL);
            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }

        //Load list of DANHMUCCHINH
        public static List<DanhMucChinhDTO> layDanhSachDanhMucChinh()
        {
            List<DanhMucChinhDTO> lstDanhMucChinh = new List<DanhMucChinhDTO>();
            try
            {

                DataProvider d = new DataProvider();
                String strSQL = "SELECT * FROM DANHMUCCHINH";
                DataTable dt = d.ExecuteQuery(strSQL);

                foreach (DataRow dr in dt.Rows)
                {
                    DanhMucChinhDTO dmc = new DanhMucChinhDTO();
                    dmc.MaDanhMucChinh = (int)dr["MaDanhMucChinh"];
                    dmc.TenDanhMucChinh = dr["TenDanhMucChinh"].ToString();
                    dmc.Deleted = (bool)dr["Deleted"];

                    lstDanhMucChinh.Add(dmc);
                }
            }
            catch (Exception ex)
            {
                return null;
            }
            return lstDanhMucChinh;
        }

        //Find a DANHMUCCHINH
        public static DanhMucChinhDTO timDanhMucChinhTheoMa(int maDanhMucChinh)
        {
            DanhMucChinhDTO dmc = new DanhMucChinhDTO();
            try
            {
                DataProvider d = new DataProvider();
                String strSQL = "SELECT * FROM DANHMUCCHINH WHERE MaDanhMucChinh="
                    + maDanhMucChinh.ToString();

                DataTable dt = d.ExecuteQuery(strSQL);
                dmc.MaDanhMucChinh = (int)dt.Rows[0]["MaDanhMucChinh"];
                dmc.TenDanhMucChinh = dt.Rows[0]["TenDanhMucChinh"].ToString();
                dmc.Deleted = (bool)dt.Rows[0]["Deleted"];
            }
            catch (Exception ex)
            {
                return null;
            }
            return dmc;
        }
    }
}
