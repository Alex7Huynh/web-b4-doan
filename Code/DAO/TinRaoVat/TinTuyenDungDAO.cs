using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class TinTuyenDungDAO
    {
        /// <summary>
        /// Insert new TINTUYENDUNG
        /// </summary>
        /// <param name="tinTuyenDung"></param>
        /// <returns></returns>
        public static bool ThemTinTuyenDung(TINTUYENDUNG tinTuyenDung)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.TINTUYENDUNGs.InsertOnSubmit(tinTuyenDung);
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;

        }

        /// <summary>
        /// Delete old TINTUYENDUNG
        /// </summary>
        /// <param name="maTinTuyenDung"></param>
        /// <returns></returns>
        public static bool XoaTinTuyenDung(int maTinTuyenDung)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                TINTUYENDUNG tinTuyenDung = db.TINTUYENDUNGs.Single(t => t.MaTinTuyenDung == maTinTuyenDung);
                tinTuyenDung.Deleted = true;
                db.SubmitChanges();
                TinRaoVatDAO.XoaTinRaoVat((int)tinTuyenDung.MaTinRaoVat);
            }
            catch (Exception ex)
            { return false; }

            return true;
        }

        /// <summary>
        /// //Update information for TINTUYENDUNG Object
        /// </summary>
        /// <param name="trvDTO"></param>
        /// <returns></returns>
        public static bool CapNhatTinTuyenDung(TINTUYENDUNG tinTuyenDung)
        {
            try
            {
                //Search
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                TINTUYENDUNG ttd = new TINTUYENDUNG();
                ttd = db.TINTUYENDUNGs.Single(t => t.MaTinTuyenDung == tinTuyenDung.MaTinTuyenDung);
                //Update
                ttd.TenNhaTuyenDung = tinTuyenDung.TenNhaTuyenDung;
                ttd.GioiThieuNhaTuyenDung = tinTuyenDung.GioiThieuNhaTuyenDung;
                ttd.Website = tinTuyenDung.Website;
                ttd.NguoiDaiDien = tinTuyenDung.NguoiDaiDien;
                ttd.DiaChiLienHe = tinTuyenDung.DiaChiLienHe;
                ttd.DienThoai = tinTuyenDung.DienThoai;
                ttd.Email = tinTuyenDung.Email;

                ttd.MaNganhNghe = tinTuyenDung.MaNganhNghe;
                ttd.ViTriTuyenDung = tinTuyenDung.ViTriTuyenDung;
                ttd.YeuCauCongViec = tinTuyenDung.YeuCauCongViec;
                ttd.YeuCauKinhNghiem = tinTuyenDung.YeuCauKinhNghiem;
                ttd.ThoiGianLamViec = tinTuyenDung.ThoiGianLamViec;
                ttd.SoLuongCanTuyen = tinTuyenDung.SoLuongCanTuyen;
                ttd.MucLuongKhoiDiem = tinTuyenDung.MucLuongKhoiDiem;
                ttd.ThoiGianThuViec = tinTuyenDung.ThoiGianThuViec;
                ttd.LuongThuViec = tinTuyenDung.LuongThuViec;
                ttd.QuyenLoiDuocHuong = tinTuyenDung.QuyenLoiDuocHuong;
                ttd.HoSoBaoGom = tinTuyenDung.HoSoBaoGom;
                ttd.ThoiHanKetThucNopHoSo = tinTuyenDung.ThoiHanKetThucNopHoSo;
                //Submit
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }
            return true;
        }

        /// <summary>
        /// Load list of TINTUYENDUNG
        /// </summary>
        /// <returns></returns>
        public static List<TINTUYENDUNG> LayDanhSachTinTuyenDung()
        {
            List<TINTUYENDUNG> lstTinTuyenDung = new List<TINTUYENDUNG>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinTuyenDung = from q in db.TINTUYENDUNGs
                                     where q.Deleted == false
                                     select q;
                lstTinTuyenDung = dsTinTuyenDung.ToList<TINTUYENDUNG>();
            }
            catch (Exception ex)
            { return null; }

            return lstTinTuyenDung;
        }

        /// <summary>
        /// Find a TINTUYENDUNG with maTinTuyenDung
        /// </summary>
        /// <param name="maTinTuyenDung"></param>
        /// <returns></returns>
        public static TINTUYENDUNG TimTinTuyenDungTheoMa(int maTinTuyenDung)
        {
            TINTUYENDUNG trv = new TINTUYENDUNG();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                trv = db.TINTUYENDUNGs.Single(t => t.MaTinTuyenDung == maTinTuyenDung);
            }
            catch (Exception ex)
            { return null; }

            return trv;
        }

        /// <summary>
        /// Find a TINTUYENDUNG with maTinRaoVat
        /// </summary>
        /// <param name="maTinRaoVat"></param>
        /// <returns></returns>
        public static TINTUYENDUNG TimTinTuyenDungTheoMaTinRaoVat(int maTinRaoVat)
        {
            TINTUYENDUNG tinTuyenDung = new TINTUYENDUNG();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinTuyenDung = from q in db.TINTUYENDUNGs
                                     where q.Deleted == false && q.MaTinRaoVat == maTinRaoVat
                                     select q;
                tinTuyenDung = dsTinTuyenDung.ToList<TINTUYENDUNG>().First();
            }
            catch (Exception ex)
            {
                return null;
            }

            return tinTuyenDung;
        }
    }
}