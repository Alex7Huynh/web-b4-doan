using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class TinRaoVatBatDongSanDAO
    {
        /// <summary>
        /// Insert new TINRAOVATBATDONGSAN
        /// </summary>
        /// <param name="tinRaoVatBatDongSan"></param>
        /// <returns></returns>
        public static bool ThemTinRaoVatBatDongSan(TINRAOVATBATDONGSAN tinRaoVatBatDongSan)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.DeferredLoadingEnabled = false;
                tinRaoVatBatDongSan.MaTinRaoVatBatDongSan = default(int);  
                db.TINRAOVATBATDONGSANs.InsertOnSubmit(tinRaoVatBatDongSan);
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;

        }

        /// <summary>
        /// Delete old TINRAOVATBATDONGSAN
        /// </summary>
        /// <param name="maTinRaoVatBatDongSan"></param>
        /// <returns></returns>
        public static bool XoaTinRaoVatBatDongSan(int maTinRaoVatBatDongSan)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                TINRAOVATBATDONGSAN tinRaoVatBatDongSan = db.TINRAOVATBATDONGSANs.Single(t => t.MaTinRaoVatBatDongSan == maTinRaoVatBatDongSan);
                tinRaoVatBatDongSan.Deleted = true;
                db.SubmitChanges();
                TinRaoVatDAO.XoaTinRaoVat((int)tinRaoVatBatDongSan.MaTinRaoVat);
            }
            catch (Exception ex)
            { return false; }

            return true;
        }

        /// <summary>
        /// Xoa tin bat dong san lien quan
        /// </summary>
        /// <param name="maTinRaoVatBatDongSan"></param>
        /// <returns></returns>
        public static bool XoaTinRaoVatBatDongSanLienQuan(int maTinRaoVat)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                TINRAOVATBATDONGSAN tinRaoVatBatDongSan = db.TINRAOVATBATDONGSANs.Single(t => t.MaTinRaoVat == maTinRaoVat);
                tinRaoVatBatDongSan.Deleted = true;
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;
        }
        /// <summary>
        /// Update information for TINRAOVATBATDONGSAN Object
        /// </summary>
        /// <param name="trvDTO"></param>
        /// <returns></returns>
        public static bool CapNhatTinRaoVatBatDongSan(TINRAOVATBATDONGSAN tinRaoVatBatDongSan)
        {
            try
            {
                //Search
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                TINRAOVATBATDONGSAN trvbds = new TINRAOVATBATDONGSAN();
                trvbds = db.TINRAOVATBATDONGSANs.Single(t => t.MaTinRaoVatBatDongSan == tinRaoVatBatDongSan.MaTinRaoVatBatDongSan);
                //Update
                trvbds.NoiDungTinRaoVat = tinRaoVatBatDongSan.NoiDungTinRaoVat;
                trvbds.Gia = tinRaoVatBatDongSan.Gia;
                trvbds.DiaChi = tinRaoVatBatDongSan.DiaChi;
                trvbds.DienTich = tinRaoVatBatDongSan.DienTich;
                trvbds.Huong = tinRaoVatBatDongSan.Huong;
                trvbds.LoGioi = tinRaoVatBatDongSan.LoGioi;
                trvbds.Lau = tinRaoVatBatDongSan.Lau;
                trvbds.Lung = tinRaoVatBatDongSan.Lung;
                trvbds.MatTien = tinRaoVatBatDongSan.MatTien;
                trvbds.GiayTo = tinRaoVatBatDongSan.GiayTo;
                trvbds.DuongTruocNha = tinRaoVatBatDongSan.DuongTruocNha;
                trvbds.DienNhaNuoc = tinRaoVatBatDongSan.DienNhaNuoc;
                trvbds.NuocMay = tinRaoVatBatDongSan.NuocMay;
                trvbds.SoPhongNgu = tinRaoVatBatDongSan.SoPhongNgu;
                trvbds.SoNhaVeSinh = tinRaoVatBatDongSan.SoNhaVeSinh;
                trvbds.NamXayDung = tinRaoVatBatDongSan.NamXayDung;

                trvbds.PhongKhach = tinRaoVatBatDongSan.PhongKhach;
                trvbds.GaraOto = tinRaoVatBatDongSan.GaraOto;
                trvbds.NhaBep = tinRaoVatBatDongSan.NhaBep;
                trvbds.HoBoi = tinRaoVatBatDongSan.HoBoi;
                trvbds.SanThuong = tinRaoVatBatDongSan.SanThuong;
                trvbds.DieuHoa = tinRaoVatBatDongSan.DieuHoa;
                trvbds.SanVuon = tinRaoVatBatDongSan.SanVuon;
                trvbds.ThangMay = tinRaoVatBatDongSan.ThangMay;

                trvbds.GanTruongMauGiao = tinRaoVatBatDongSan.GanTruongMauGiao;
                trvbds.GanTruongCap1 = tinRaoVatBatDongSan.GanTruongCap1;
                trvbds.GanTruongCap2 = tinRaoVatBatDongSan.GanTruongCap2;
                trvbds.GanTruongCap3 = tinRaoVatBatDongSan.GanTruongCap3;
                trvbds.GanCho = tinRaoVatBatDongSan.GanCho;
                trvbds.GanBenhVien = tinRaoVatBatDongSan.GanBenhVien;
                trvbds.GanTrungTamThuongMai = tinRaoVatBatDongSan.GanTrungTamThuongMai;
                trvbds.GanTrungTamGiaiTri = tinRaoVatBatDongSan.GanTrungTamGiaiTri;
                trvbds.GanCongVien = tinRaoVatBatDongSan.GanCongVien;
                //Submit
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }
            return true;
        }

        /// <summary>
        /// Load list of TINRAOVATBATDONGSAN
        /// </summary>
        /// <returns></returns>
        public static List<TINRAOVATBATDONGSAN> LayDanhSachTinRaoVatBatDongSan()
        {
            List<TINRAOVATBATDONGSAN> lstTinRaoVatBatDongSan = new List<TINRAOVATBATDONGSAN>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinRaoVatBatDongSan = from q in db.TINRAOVATBATDONGSANs
                                            where q.Deleted == false
                                            select q;
                lstTinRaoVatBatDongSan = dsTinRaoVatBatDongSan.ToList<TINRAOVATBATDONGSAN>();
            }
            catch (Exception ex)
            { return null; }

            return lstTinRaoVatBatDongSan;
        }

        /// <summary>
        /// Find a TINRAOVATBATDONGSAN with maTinRaoVatBatDongSan
        /// </summary>
        /// <param name="maTinRaoVatBatDongSan"></param>
        /// <returns></returns>
        public static TINRAOVATBATDONGSAN TimTinRaoVatBatDongSanTheoMa(int maTinRaoVatBatDongSan)
        {
            TINRAOVATBATDONGSAN trv = new TINRAOVATBATDONGSAN();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                trv = db.TINRAOVATBATDONGSANs.Single(t => t.MaTinRaoVatBatDongSan == maTinRaoVatBatDongSan);
            }
            catch (Exception ex)
            { return null; }

            return trv;
        }

        /// <summary>
        /// Find a TINRAOVATBATDONGSAN with maTinRaoVat
        /// </summary>
        /// <param name="maTinRaoVat"></param>
        /// <returns></returns>
        public static TINRAOVATBATDONGSAN TimTinRaoVatBatDongSanTheoMaTinRaoVat(int maTinRaoVat)
        {
            TINRAOVATBATDONGSAN tinRaoVatBatDongSan = new TINRAOVATBATDONGSAN();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.DeferredLoadingEnabled = false;
                var dsTinRaoVatBatDongSan = from q in db.TINRAOVATBATDONGSANs
                                            where q.Deleted == false && q.MaTinRaoVat == maTinRaoVat
                                            select q;
                tinRaoVatBatDongSan = dsTinRaoVatBatDongSan.ToList<TINRAOVATBATDONGSAN>().First();
            }
            catch (Exception ex)
            {
                return null;
            }

            return tinRaoVatBatDongSan;
        }
        public static List<TINRAOVATBATDONGSAN> TimTinRaoVatBatDongSanTheoChuoi(string chuoi)
        {
            List<TINRAOVATBATDONGSAN> lstTinRaoVatBatDongSan = new List<TINRAOVATBATDONGSAN>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinRaoVatBatDongSan = from q in db.TINRAOVATBATDONGSANs
                                            where q.DiaChi.Contains(chuoi) || q.DuongTruocNha.Contains(chuoi) || 
                                            q.GiayTo.Contains(chuoi) || q.Huong.Contains(chuoi) || 
                                            q.LoGioi.Contains(chuoi) || q.NoiDungTinRaoVat.Contains(chuoi)
                                            select q;
                lstTinRaoVatBatDongSan = dsTinRaoVatBatDongSan.ToList<TINRAOVATBATDONGSAN>();
            }
            catch (Exception ex)
            {
                return null;
            }

            return lstTinRaoVatBatDongSan;
        }
    }
}
