using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class NguoiDungDTO
    {
        private int _maNguoiDung;
        private string _tenNguoiDung;
        private string _matKhau;
        private string _email;
        private string _dienThoai;
        private string _diaChi;
        private int _maKichHoatTaiKhoan;
        private bool _tinhTrangKichHoatTaiKhoan;
        private DateTime _thoiGianDangKy;
        private DateTime _thoiGianHetHan;
        private LoaiNguoiDungDTO _loaiNguoiDung;
        private bool _deleted;

        public int MaNguoiDung
        {
            get { return _maNguoiDung; }
            set { _maNguoiDung = value; }
        }
        public string TenNguoiDung
        {
            get { return _tenNguoiDung; }
            set { _tenNguoiDung = value; }
        }
        public string MatKhau
        {
            get { return _matKhau; }
            set { _matKhau = value; }
        }
        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
        public string DienThoai
        {
            get { return _dienThoai; }
            set { _dienThoai = value; }
        }
        public string DiaChi
        {
            get { return _diaChi; }
            set { _diaChi = value; }
        }
        public int MaKichHoatTaiKhoan
        {
            get { return _maKichHoatTaiKhoan; }
            set { _maKichHoatTaiKhoan = value; }
        }
        public bool TinhTrangKichHoatTaiKhoan
        {
            get { return _tinhTrangKichHoatTaiKhoan; }
            set { _tinhTrangKichHoatTaiKhoan = value; }
        }
        public DateTime ThoiGianDangKy
        {
            get { return _thoiGianDangKy; }
            set { _thoiGianDangKy = value; }
        }
        public DateTime ThoiGianHetHan
        {
            get { return _thoiGianHetHan; }
            set { _thoiGianHetHan = value; }
        }
        public LoaiNguoiDungDTO LoaiNguoiDung
        {
            get { return _loaiNguoiDung; }
            set { _loaiNguoiDung = value; }
        }
        public bool Deleted
        {
            get { return _deleted; }
            set { _deleted = value; }
        }
    }
}
