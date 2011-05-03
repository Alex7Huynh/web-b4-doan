using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class HoSoTuyenDungDTO : TinRaoVatDTO
    {
        #region 1 - Thuộc tính
        private int _maHoSoTuyenDung;

        private bool _dongYHienThi;
        private string _hoTen;
        private DateTime _ngaySinh;
        private bool _gioiTinh;
        private bool _tinhTrangHonNhan;
        private string _quocTich;
        private string _diaChiLienLac;
        private string _soDienThoai;
        private string _diDong;
        private string _email;
        //Hoc van
        private string _thongTinHocVan;
        private string _bangCap;
        private string _ngoaiNgu;
        private string _kyNang;
        //Kinh nghiem lam viec
        private string _capBac;
        private int _soNamKinhNghiem;
        private string _congTyLamViec;
        private string _chucDanh;
        private string _tomTatKinhNghiem;
        private string _moTaCongViecLyTuong;
        private string _nguyenVong;
        private string _thoiGianLamViec;
        private string _luongMongMuon;
        #endregion

        #region 2 - Property
        public int MaHoSoTuyenDung
        {
            get { return _maHoSoTuyenDung; }
            set { _maHoSoTuyenDung = value; }
        }

        public bool DongYHienThi
        {
            get { return _dongYHienThi; }
            set { _dongYHienThi = value; }
        }
        public string HoTen
        {
            get { return _hoTen; }
            set { _hoTen = value; }
        }
        public DateTime NgaySinh
        {
            get { return _ngaySinh; }
            set { _ngaySinh = value; }
        }
        public bool GioiTinh
        {
            get { return _gioiTinh; }
            set { _gioiTinh = value; }
        }
        public bool TinhTrangHonNhan
        {
            get { return _tinhTrangHonNhan; }
            set { _tinhTrangHonNhan = value; }
        }
        public string QuocTich
        {
            get { return _quocTich; }
            set { _quocTich = value; }
        }
        public string DiaChiLienLac
        {
            get { return _diaChiLienLac; }
            set { _diaChiLienLac = value; }
        }
        public string SoDienThoai
        {
            get { return _soDienThoai; }
            set { _soDienThoai = value; }
        }
        public string DiDong
        {
            get { return _diDong; }
            set { _diDong = value; }
        }
        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
        //Hoc van
        public string ThongTinHocVan
        {
            get { return _thongTinHocVan; }
            set { _thongTinHocVan = value; }
        }
        public string BangCap
        {
            get { return _bangCap; }
            set { _bangCap = value; }
        }
        public string NgoaiNgu
        {
            get { return _ngoaiNgu; }
            set { _ngoaiNgu = value; }
        }
        public string KyNang
        {
            get { return _kyNang; }
            set { _kyNang = value; }
        }
        //Kinh nghiem lam viec
        public string CapBac
        {
            get { return _capBac; }
            set { _capBac = value; }
        }
        public int SoNamKinhNghiem
        {
            get { return _soNamKinhNghiem; }
            set { _soNamKinhNghiem = value; }
        }
        public string CongTyLamViec
        {
            get { return _congTyLamViec; }
            set { _congTyLamViec = value; }
        }
        public string ChucDanh
        {
            get { return _chucDanh; }
            set { _chucDanh = value; }
        }
        public string TomTatKinhNghiem
        {
            get { return _tomTatKinhNghiem; }
            set { _tomTatKinhNghiem = value; }
        }
        public string MoTaCongViecLyTuong
        {
            get { return _moTaCongViecLyTuong; }
            set { _moTaCongViecLyTuong = value; }
        }
        public string NguyenVong
        {
            get { return _nguyenVong; }
            set { _nguyenVong = value; }
        }
        public string ThoiGianLamViec
        {
            get { return _thoiGianLamViec; }
            set { _thoiGianLamViec = value; }
        }
        public string LuongMongMuon
        {
            get { return _luongMongMuon; }
            set { _luongMongMuon = value; }
        }
        #endregion
        //private bool _deleted;
    }
}
