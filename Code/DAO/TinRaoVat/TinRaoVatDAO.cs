using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class TinRaoVatDAO
    {
        /// <summary>
        /// Insert new TINRAOVAT
        /// </summary>
        /// <param name="tinRaoVat"></param>
        /// <returns></returns>
        public static bool ThemTinRaoVat(TINRAOVAT tinRaoVat)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.TINRAOVATs.InsertOnSubmit(tinRaoVat);
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;

        }

        /// <summary>
        /// Delete old TINRAOVAT
        /// </summary>
        /// <param name="maTinRaoVat"></param>
        /// <returns></returns>
        public static bool XoaTinRaoVat(int maTinRaoVat)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                TINRAOVAT tinRaoVat = db.TINRAOVATs.Single(t => t.MaTinRaoVat == maTinRaoVat);
                tinRaoVat.Deleted = true;
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
        public static bool CapNhatTinRaoVat(TINRAOVAT tinRaoVat)
        {
            try
            {
                //Search
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                TINRAOVAT trv = new TINRAOVAT();
                trv = db.TINRAOVATs.Single(t => t.MaTinRaoVat == tinRaoVat.MaTinRaoVat);
                //Update
                trv.ThoiGianDang = tinRaoVat.ThoiGianDang;
                trv.ThoiHanLuuTin = tinRaoVat.ThoiHanLuuTin;
                trv.MaDiaDiem = tinRaoVat.MaDiaDiem;
                trv.SoLanXem = tinRaoVat.SoLanXem;
                trv.MaNguoiDung = tinRaoVat.MaNguoiDung;
                trv.MaDanhMucCon = tinRaoVat.MaDanhMucCon;
                trv.TieuDe = tinRaoVat.TieuDe;
                trv.Thumbnail = tinRaoVat.Thumbnail;
                trv.GhiChuHinhAnh = tinRaoVat.GhiChuHinhAnh;               
                //Submit
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }
            return true;
        }

        /// <summary>
        /// Load list of TINRAOVAT
        /// </summary>
        /// <returns></returns>
        public static List<TINRAOVAT> LayDanhSachTinRaoVat()
        {
            List<TINRAOVAT> lstTinRaoVat = new List<TINRAOVAT>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinRaoVat = from q in db.TINRAOVATs
                                  where q.Deleted == false
                                  select q;
                lstTinRaoVat = dsTinRaoVat.ToList<TINRAOVAT>();
            }
            catch (Exception ex)
            { return null; }

            return lstTinRaoVat;
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
                var dsTinRaoVat = from q in db.TINRAOVATs
                                  where q.Deleted == false
                                  select q;
                lstTinRaoVatMoiNhat = dsTinRaoVat.ToList<TINRAOVAT>();
            }
            catch (Exception ex)
            {
                return null;
            }

            return lstTinRaoVatMoiNhat;
        }

        /// <summary>
        /// lay danh sach tin rao vat theo muc con
        /// </summary>
        /// <param name="maDanhMucCon">ma danh muc con</param>
        /// <returns></returns>
        public static List<TINRAOVAT> LayDanhSachTinRaoVatTheoNoiDung(int maDanhMucCon)
        {
            List<TINRAOVAT> lstTinRaoVatMoiNhat = new List<TINRAOVAT>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinRaoVat = from q in db.TINRAOVATs
                                  where q.Deleted == false && q.MaDanhMucCon == maDanhMucCon
                                  select q;
                lstTinRaoVatMoiNhat = dsTinRaoVat.ToList<TINRAOVAT>();
            }
            catch (Exception ex)
            {
                return null;
            }

            return lstTinRaoVatMoiNhat;
        }

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
                trv = db.TINRAOVATs.Single(t => t.MaTinRaoVat == maTinRaoVat
                    && t.Deleted == false);
            }
            catch (Exception ex)
            { return null; }

            return trv;
        }

        /// <summary>
        /// Find latest TINRAOVAT
        /// </summary>
        /// <param name="maTinRaoVat"></param>
        /// <returns></returns>
        public static TINRAOVAT TimTinRaoVatMoiNhat()
        {
            TINRAOVAT trv = new TINRAOVAT();
            List<TINRAOVAT> lstTinRaoVat = new List<TINRAOVAT>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinRaoVat = from q in db.TINRAOVATs
                                  where q.Deleted == false
                                  select q;
                lstTinRaoVat = dsTinRaoVat.ToList<TINRAOVAT>();
                trv = lstTinRaoVat[lstTinRaoVat.Count - 1];
            }
            catch (Exception ex)
            { return null; }

            return trv;
        }

        /// <summary>
        /// Find CHUYENMUC with maTinRaoVat
        /// </summary>
        /// <param name="maTinRaoVat"></param>
        /// <returns></returns>
        public static CHUYENMUC LayChuyenMuc(int maTinRaoVat)
        {
            CHUYENMUC chuyenMuc = new CHUYENMUC();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsChuyenMuc = from q in db.CHUYENMUCs
                                  where q.Deleted == false && TimTinRaoVatTheoMa(maTinRaoVat).DANHMUCCON.DANHMUCCHINH.CHUYENMUC.MaChuyenMuc == q.MaChuyenMuc
                                  select q;
                chuyenMuc = dsChuyenMuc.ToList<CHUYENMUC>().First();
            }
            catch (Exception ex)
            { return null; }

            return chuyenMuc;
        }

        /// <summary>
        /// Find NGUOIDUNG with maTinRaoVat
        /// </summary>
        /// <param name="maTinRaoVat"></param>
        /// <returns></returns>
        public static NGUOIDUNG LayNguoiDung(int maTinRaoVat)
        {
            NGUOIDUNG nguoiDung = new NGUOIDUNG();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsNguoiDung = from q in db.NGUOIDUNGs
                                  where q.Deleted == false && TimTinRaoVatTheoMa(maTinRaoVat).MaNguoiDung == q.MaNguoiDung
                                  select q;
                nguoiDung = dsNguoiDung.ToList<NGUOIDUNG>().First();
            }
            catch (Exception ex)
            {
                return null;
            }

            return nguoiDung;
        }
    }
}
