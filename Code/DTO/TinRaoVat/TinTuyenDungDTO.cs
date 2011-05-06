using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class TinTuyenDungDTO : TinRaoVatDTO
    {
        #region 1 - Thuoc tinh
        private int _maTinTuyenDung;
        //Thong tin nha tuyen dung
        private string _tenNhaTuyenDung;
        private string _gioiThieuNhaTuyenDung;
        private string _website;
        private string _nguoiDaiDien;
        private string _diaChiLienHe;
        private string _dienThoai;
        private string _email;        
        //Thong tin cong viec
        private NganhNgheDTO _nghanhNghe;
        private string _viTriTuyenDung;
        private string _yeuCauCongViec;
        private string _yeuCauKinhNghiem;
        private string _thoiGianLamViec;
        private int _soLuongCanTuyen;
        private int _mucLuongKhoiDiem;
        private string _thoiGianThuViec;
        private int _luongThuViec;
        private string _quyenLoiDuocHuong;
        private string _hoSoBaoGom;
        private DateTime _thoiHanKetThucNopHoSo;
        private string _thumbnail;
        #endregion

        #region 2 - Property
        public int MaTinTuyenDung
        {
            get { return _maTinTuyenDung; }
            set { _maTinTuyenDung = value; }
        }
        //Thong tin nha tuyen dung
        public string TenNhaTuyenDung
        {
            get { return _tenNhaTuyenDung; }
            set { _tenNhaTuyenDung = value; }
        }
        public string GioiThieuNhaTuyenDung
        {
            get { return _gioiThieuNhaTuyenDung; }
            set { _gioiThieuNhaTuyenDung = value; }
        }
        public string Website
        {
            get { return _website; }
            set { _website = value; }
        }
        public string NguoiDaiDien
        {
            get { return _nguoiDaiDien; }
            set { _nguoiDaiDien = value; }
        }
        public string DiaChiLienHe
        {
            get { return _diaChiLienHe; }
            set { _diaChiLienHe = value; }
        }
        public string DienThoai
        {
            get { return _dienThoai; }
            set { _dienThoai = value; }
        }
        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
        //Thong tin cong viec
        public NganhNgheDTO NghanhNghe
        {
            get { return _nghanhNghe; }
            set { _nghanhNghe = value; }
        }
        public string ViTriTuyenDung
        {
            get { return _viTriTuyenDung; }
            set { _viTriTuyenDung = value; }
        }
        public string YeuCauCongViec
        {
            get { return _yeuCauCongViec; }
            set { _yeuCauCongViec = value; }
        }
        public string YeuCauKinhNghiem
        {
            get { return _yeuCauKinhNghiem; }
            set { _yeuCauKinhNghiem = value; }
        }
        public string ThoiGianLamViec
        {
            get { return _thoiGianLamViec; }
            set { _thoiGianLamViec = value; }
        }
        public int SoLuongCanTuyen
        {
            get { return _soLuongCanTuyen; }
            set { _soLuongCanTuyen = value; }
        }
        public int MucLuongKhoiDiem
        {
            get { return _mucLuongKhoiDiem; }
            set { _mucLuongKhoiDiem = value; }
        }
        public string ThoiGianThuViec
        {
            get { return _thoiGianThuViec; }
            set { _thoiGianThuViec = value; }
        }
        public int LuongThuViec
        {
            get { return _luongThuViec; }
            set { _luongThuViec = value; }
        }
        public string QuyenLoiDuocHuong
        {
            get { return _quyenLoiDuocHuong; }
            set { _quyenLoiDuocHuong = value; }
        }
        public string HoSoBaoGom
        {
            get { return _hoSoBaoGom; }
            set { _hoSoBaoGom = value; }
        }
        public DateTime ThoiHanKetThucNopHoSo
        {
            get { return _thoiHanKetThucNopHoSo; }
            set { _thoiHanKetThucNopHoSo = value; }
        }        

        public string Thumbnail
        {
            get { return _thumbnail; }
            set { _thumbnail = value; }
        }        
        #endregion
        //private Deleted bit,
    }
}
