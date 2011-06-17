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
        /// Xoa tat ca TinRaoVat lien quan
        /// </summary>
        /// <param name="maTinRaoVat"></param>
        /// <returns></returns>
        public static bool XoaTatCaTinRaoVatLienQuan(int maTinRaoVat)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                TINRAOVAT tinRaoVat = db.TINRAOVATs.Single(t => t.MaTinRaoVat == maTinRaoVat);
                tinRaoVat.Deleted = true;
                db.SubmitChanges();
                TinRaoVatBatDongSanDAO.XoaTinRaoVatBatDongSan(maTinRaoVat);
                TinTuyenDungDAO.XoaTinTuyenDungLienQuan(maTinRaoVat);
                TinRaoVatThuongDAO.XoaTinRaoVatThuongLienQuan(maTinRaoVat);
                HoSoTuyenDungDAO.XoaHoSoTuyenDungLienQuan(maTinRaoVat);
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

        /// <summary>
        /// Tìm kiếm tin rao vặt
        /// </summary>
        /// <param name="tuKhoa">từ khóa tìm kiếm</param>
        /// <returns>danh sách tin rao vặt</returns>
        public static List<TINRAOVAT> TimKiem(string tuKhoa)
        {
            RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
            List<TINRAOVAT> dsTinRaoVatTimDuoc = new List<TINRAOVAT>();
            List<TINRAOVAT> dsTinRaoVatKhongThoa = new List<TINRAOVAT>();

            // Khởi tạo danh sách tin rao vặt không thỏa, ban đầu bằng danh sách tin rao vặt
            {
                var dsTinRaoVat = from p in db.TINRAOVATs
                                  where p.Deleted == false
                                  select p;

                dsTinRaoVatKhongThoa.AddRange((List<TINRAOVAT>)dsTinRaoVat);
            }

            string tuKhoaChuaChuanHoa = "";
            tuKhoaChuaChuanHoa = tuKhoa.Trim();

            char[] separates = new char[] {'~', '!', '@', '#',  '%', '^', '&', '*', '(', ')', '-', '_', '+', '=',
                                                '\t', '{', '}', '[', ']', '\\', '|', ';', ':', '\"', '\'', 
                                                '<', '>', ',', '.', '?', '/'};

            // Tìm kiếm lần lượt từng từ khóa
            foreach (string tu in tuKhoaChuaChuanHoa.Split(separates)
                                                            .Select(s => s.Trim())
                                                            .Where(s => !string.IsNullOrEmpty(s)))
            {
                var dsTinRaoVat = from p in db.TINRAOVATs
                                  where p.GhiChuHinhAnh.Contains(tu) || p.Thumbnail.Contains(tu) ||
                                  p.TieuDe.Contains(tu)
                                  select p;

                // Nếu có sẽ thêm vào danh sách tìm được
                dsTinRaoVatTimDuoc.AddRange((List<TINRAOVAT>)dsTinRaoVat);

                // Update lại danh sách tin rao vặt không thỏa
                foreach (TINRAOVAT tin in dsTinRaoVatTimDuoc)
                {
                    dsTinRaoVatKhongThoa.Remove(tin);
                }
            }

            // Đối với những tin rao vặt không thỏa, tìm tiếp với các thông tin chi tiết

            // Tìm kiếm lần lượt từng từ khóa
            foreach (string tu in tuKhoaChuaChuanHoa.Split(separates)
                                                            .Select(s => s.Trim())
                                                            .Where(s => !string.IsNullOrEmpty(s)))
            {
                // Biến tạm
                List<TINRAOVAT> dsTinRaoVatKhongThoaTam = dsTinRaoVatKhongThoa;
                // Xét từng tin rao vặt không thỏa
                foreach (TINRAOVAT tin in dsTinRaoVatKhongThoaTam)
                {
                    // tin Bất Động Sản
                    var dsTinRaoVatBatDongSan = from q in db.TINRAOVATBATDONGSANs
                                                where q.MaTinRaoVat == tin.MaTinRaoVat &&
                                                (
                                                    q.DiaChi.Contains(tu) || q.DuongTruocNha.Contains(tu) ||
                                                    q.GiayTo.Contains(tu) || q.Huong.Contains(tu) ||
                                                    q.LoGioi.Contains(tu) || q.NoiDungTinRaoVat.Contains(tu)
                                                )
                                                select q;

                    if (dsTinRaoVatBatDongSan != null)
                    {
                        dsTinRaoVatTimDuoc.Add(tin);
                        dsTinRaoVatKhongThoa.Remove(tin);

                        continue;
                    }

                    // Tin tuyển dụng
                    var dsTinTuyenDung = from g in db.TINTUYENDUNGs
                                         where g.MaTinRaoVat == tin.MaTinRaoVat &&
                                         (
                                              g.DiaChiLienHe.Contains(tu) || g.DienThoai.Contains(tu) ||
                                              g.Email.Contains(tu) || g.GioiThieuNhaTuyenDung.Contains(tu) ||
                                              g.HoSoBaoGom.Contains(tu) || g.NguoiDaiDien.Contains(tu) ||
                                              g.QuyenLoiDuocHuong.Contains(tu) || g.TenNhaTuyenDung.Contains(tu) ||
                                              g.ThoiGianLamViec.Contains(tu) || g.ThoiGianThuViec.Contains(tu) ||
                                              g.ViTriTuyenDung.Contains(tu) || g.Website.Contains(tu) ||
                                              g.YeuCauCongViec.Contains(tu) || g.YeuCauKinhNghiem.Contains(tu)
                                         )
                                         select g;

                    if (dsTinTuyenDung != null)
                    {
                        dsTinRaoVatTimDuoc.Add(tin);
                        dsTinRaoVatKhongThoa.Remove(tin);

                        continue;
                    }

                    // Tin rao vặt thường
                    var dsTinRaoVatThuong = from o in db.TINRAOVATTHUONGs
                                            where o.MaTinRaoVat == tin.MaTinRaoVat &&
                                            (
                                                o.NoiDungTinRaoVat.Contains(tu)
                                            )
                                            select o;

                    if (dsTinRaoVatThuong != null)
                    {
                        dsTinRaoVatTimDuoc.Add(tin);
                        dsTinRaoVatKhongThoa.Remove(tin);

                        continue;
                    }

                    // Hồ sơ tuyển dụng
                    var dsHoSoTuyenDung = from o in db.HOSOTUYENDUNGs
                                          where o.MaTinRaoVat == tin.MaTinRaoVat &&
                                          (
                                              o.HoTen.Contains(tu) ||
                                              o.QuocTich.Contains(tu) ||
                                              o.DiaChiLienLac.Contains(tu) ||
                                              o.SoDienThoai.Contains(tu) ||
                                              o.DiDong.Contains(tu) ||
                                              o.Email.Contains(tu) ||
                                              o.ThongTinHocVan.Contains(tu) ||
                                              o.BangCap.Contains(tu) ||
                                              o.NgoaiNgu.Contains(tu) ||
                                              o.KyNang.Contains(tu) ||
                                              o.CapBac.Contains(tu) ||
                                              o.CongTyLamViec.Contains(tu) ||
                                              o.ChucDanh.Contains(tu) ||
                                              o.ChucDanh.Contains(tu) ||
                                              o.TomTatKinhNghiem.Contains(tu) ||
                                              o.MoTaCongViecLyTuong.Contains(tu) ||
                                              o.NguyenVong.Contains(tu) ||
                                              o.ThoiGianLamViec.Contains(tu) ||
                                              o.LuongMongMuon.Contains(tu) ||
                                              o.ChucDanh.Contains(tu)
                                          )
                                          select o;

                    if (dsHoSoTuyenDung != null)
                    {
                        dsTinRaoVatTimDuoc.Add(tin);
                        dsTinRaoVatKhongThoa.Remove(tin);

                        continue;
                    }
                }
            }

            return dsTinRaoVatTimDuoc;
        }
    }
}
