using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class NguoiDungDAO
    {
        ////Insert new NGUOIDUNG
        //public static bool themNguoiDung(NguoiDungDTO ndDTO)
        //{
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "INSERT INTO NGUOIDUNG(TenNguoiDung,MatKhau,Email,"
        //        + "DienThoai,DiaChi,MaKichHoatTaiKhoan,TinhTrangKichHoatTaiKhoan,"
        //        + "ThoiGianDangKy,ThoiGianHetHan,MaLoaiNguoiDung, Deleted)";
        //        strSQL += " VALUES ('N" + ndDTO.TenNguoiDung + "',"
        //            + "'" + ndDTO.MatKhau + "',"
        //            + "'" + ndDTO.Email + "',"
        //            + "'" + ndDTO.DienThoai + "',"
        //            + "N'" + ndDTO.DiaChi + "',"
        //            + ndDTO.MaKichHoatTaiKhoan + ","
        //            + "'" + ndDTO.MaKichHoatTaiKhoan + "',"
        //            + "'" + ndDTO.TinhTrangKichHoatTaiKhoan.ToString() + "',"
        //            + "'" + ndDTO.ThoiGianDangKy + "',"
        //            + "'" + ndDTO.ThoiGianHetHan + "',"
        //            + ndDTO.MaKichHoatTaiKhoan + ","
        //            + ",0)";
        //        d.ExecuteQuery(strSQL);
        //    }
        //    catch (Exception ex)
        //    {
        //        return false;
        //    }
        //    return true;
        //}

        ////Delete old NGUOIDUNG
        //public static bool xoaNguoiDung(int maNguoiDung)
        //{
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "UPDATE NGUOIDUNG SET Deleted=1";
        //        strSQL += " WHERE MaNguoiDung = " + maNguoiDung.ToString();
        //        d.ExecuteQuery(strSQL);
        //    }
        //    catch (Exception ex)
        //    {
        //        return false;
        //    }
        //    return true;
        //}

        ////Upadate information for NGUOIDUNG Object
        //public static bool capNhatNguoiDung(NguoiDungDTO ndDTO)
        //{
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "UPDATE NGUOIDUNG"
        //            + " SET TenNguoiDung = N'" + ndDTO.TenNguoiDung + "',"
        //            + " MatKhau = '" + ndDTO.MatKhau + "',"
        //            + " Email = '" + ndDTO.MatKhau + "',"
        //            + " DienThoai = '" + ndDTO.MatKhau + "',"
        //            + " DiaChi = N'" + ndDTO.MatKhau + "',"
        //            + " MaKichHoatTaiKhoan = " + ndDTO.MatKhau + ","
        //            + " TinhTrangKichHoatTaiKhoan = N'" + ndDTO.MatKhau + "',"
        //            + " ThoiGianDangKy = '" + ndDTO.MatKhau + "',"
        //            + " ThoiGianHetHan = '" + ndDTO.MatKhau + "',"
        //            + " MaLoaiNguoiDung = " + ndDTO.LoaiNguoiDung.MaLoaiNguoiDung
        //            + " WHERE MaNguoiDung = " + ndDTO.MaNguoiDung.ToString();
        //        d.ExecuteQuery(strSQL);
        //    }
        //    catch (Exception ex)
        //    {
        //        return false;
        //    }
        //    return true;
        //}

        ////Load list of NGUOIDUNG
        //public static List<NguoiDungDTO> layDanhSachNguoiDung()
        //{
        //    List<NguoiDungDTO> lstNguoiDung = new List<NguoiDungDTO>();
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "SELECT * FROM NGUOIDUNG";
        //        DataTable dt = d.ExecuteQuery(strSQL);


        //        foreach (DataRow dr in dt.Rows)
        //        {
        //            NguoiDungDTO nd = new NguoiDungDTO();
        //            nd.MaNguoiDung = (int)dr["MaNguoiDung"];
        //            nd.TenNguoiDung = dr["TenNguoiDung"].ToString();
        //            nd.MatKhau = dr["MatKhau"].ToString();
        //            nd.Email = dr["Email"].ToString();
        //            nd.DienThoai = dr["DienThoai"].ToString();
        //            nd.DiaChi = dr["DienThoai"].ToString();
        //            nd.MaKichHoatTaiKhoan = (int)dr["MaKichHoatTaiKhoan"];
        //            nd.TinhTrangKichHoatTaiKhoan = (bool)dr["TinhTrangKichHoatTaiKhoan"];
        //            nd.ThoiGianDangKy = (DateTime)dr["ThoiGianDangKy"];
        //            nd.ThoiGianHetHan = (DateTime)dr["ThoiGianHetHan"];
        //            int maLoaiNguoiDung = (int)dr["MaLoaiNguoiDung"];
        //            nd.Deleted = (bool)dr["Deleted"];

        //            nd.LoaiNguoiDung = new LoaiNguoiDungDTO(
        //                LoaiNguoiDungDAO.timLoaiNguoiDungTheoMa(maLoaiNguoiDung));

        //            lstNguoiDung.Add(nd);
        //        }
        //    }
        //    catch (Exception ex)
        //    { return null; }

        //    return lstNguoiDung;
        //}

        ////Find a NGUOIDUNG
        //public static NguoiDungDTO timNguoiDungTheoMa(int maNguoiDung)
        //{
        //    NguoiDungDTO nd = new NguoiDungDTO();
        //    try
        //    {
        //        DataProvider d = new DataProvider();
        //        String strSQL = "SELECT * FROM NGUOIDUNG WHERE MaNguoiDung="
        //            + maNguoiDung.ToString();

        //        DataTable dt = d.ExecuteQuery(strSQL);
        //        nd.MaNguoiDung = (int)dt.Rows[0]["MaNguoiDung"];
        //        nd.TenNguoiDung = dt.Rows[0]["TenNguoiDung"].ToString();
        //        nd.MatKhau = dt.Rows[0]["MatKhau"].ToString();
        //        nd.Email = dt.Rows[0]["Email"].ToString();
        //        nd.DienThoai = dt.Rows[0]["DienThoai"].ToString();
        //        nd.DiaChi = dt.Rows[0]["DienThoai"].ToString();
        //        nd.MaKichHoatTaiKhoan = (int)dt.Rows[0]["MaKichHoatTaiKhoan"];
        //        nd.TinhTrangKichHoatTaiKhoan = (bool)dt.Rows[0]["TinhTrangKichHoatTaiKhoan"];
        //        nd.ThoiGianDangKy = (DateTime)dt.Rows[0]["ThoiGianDangKy"];
        //        nd.ThoiGianHetHan = (DateTime)dt.Rows[0]["ThoiGianHetHan"];
        //        int maLoaiNguoiDung = (int)dt.Rows[0]["MaLoaiNguoiDung"];
        //        nd.Deleted = (bool)dt.Rows[0]["Deleted"];

        //        nd.LoaiNguoiDung = new LoaiNguoiDungDTO(
        //                LoaiNguoiDungDAO.timLoaiNguoiDungTheoMa(maLoaiNguoiDung));
        //    }
        //    catch (Exception ex)
        //    { return null; }

        //    return nd;
        //}
        public static NGUOIDUNG LayNguoiDungTheoMa(int maNguoiDung)
        {
            NGUOIDUNG nguoiDung = new NGUOIDUNG();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                nguoiDung = db.NGUOIDUNGs.Single(t => t.MaNguoiDung == maNguoiDung);
            }
            catch (Exception ex)
            { 
                return null; 
            }

            return nguoiDung;
        }
        public static NGUOIDUNG LayNguoiDungTheoTen(string tenNguoiDung)
        {
            NGUOIDUNG nguoiDung = new NGUOIDUNG();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                nguoiDung = db.NGUOIDUNGs.Single(t => t.TenNguoiDung == tenNguoiDung);
            }
            catch (Exception ex)
            { return null; }

            return nguoiDung;
        }

        public static bool ChinhSuaLoaiNguoiDung(NGUOIDUNG NguoiDung)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                NGUOIDUNG NguoiDungUpdate = new NGUOIDUNG();
                NguoiDungUpdate = db.NGUOIDUNGs.Single(t => t.MaNguoiDung == NguoiDung.MaNguoiDung);
                NguoiDungUpdate.MaLoaiNguoiDung = NguoiDung.MaLoaiNguoiDung;
                db.SubmitChanges();

            }
            catch (Exception ex)
            { return false; }

            return true;
        }
    }
}
