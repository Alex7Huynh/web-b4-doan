using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DTO;

namespace DAO
{
    public class NganhNgheDAO
    {
        //Insert new NGANGNGHE
        public static bool themNganhNghe(NganhNgheDTO nnDTO)
        {
            try
            {
                DataProvider d = new DataProvider();
                String strSQL = "INSERT INTO NganhNghe(TenNganhNghe)";
                strSQL += " VALUES (N'" + nnDTO.TenNganhNghe + "')";
                d.ExecuteQuery(strSQL);
            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }

        //Upadate information for NGANGNGHE Object
        public static bool capNhatNganhNghe(NganhNgheDTO nnDTO)
        {
            try
            {
                DataProvider d = new DataProvider();
                String strSQL = "UPDATE NganhNghe SET TenNganhNghe = N'" + nnDTO.TenNganhNghe
                    + "' WHERE MaNganhNghe = " + nnDTO.MaNganhNghe.ToString();
                d.ExecuteQuery(strSQL);
            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }

        //Load list of NGANGNGHE
        public static List<NganhNgheDTO> layDanhSachNganhNghe()
        {
            List<NganhNgheDTO> lstNganhNghe = new List<NganhNgheDTO>();
            try
            {
                DataProvider d = new DataProvider();
                String strSQL = "SELECT * FROM NganhNghe";
                DataTable dt = d.ExecuteQuery(strSQL);


                foreach (DataRow dr in dt.Rows)
                {
                    NganhNgheDTO dd = new NganhNgheDTO();
                    dd.MaNganhNghe = (int)dr["MaNganhNghe"];
                    dd.TenNganhNghe = dr["TenNganhNghe"].ToString();                    

                    lstNganhNghe.Add(dd);
                }
            }
            catch (Exception ex)
            { return null; }

            return lstNganhNghe;
        }

        //Find a NGANGNGHE
        public static NganhNgheDTO timNganhNgheTheoMa(int maNganhNghe)
        {
            NganhNgheDTO dd = new NganhNgheDTO();
            try
            {
                DataProvider d = new DataProvider();

                String strSQL = "SELECT * FROM NganhNghe WHERE MaNganhNghe = "
                    + maNganhNghe.ToString();

                DataTable dt = d.ExecuteQuery(strSQL);
                dd.MaNganhNghe = (int)dt.Rows[0]["MaNganhNghe"];
                dd.TenNganhNghe = dt.Rows[0]["TenNganhNghe"].ToString();                
            }
            catch (Exception ex)
            { return null; }

            return dd;
        }
    }
}
