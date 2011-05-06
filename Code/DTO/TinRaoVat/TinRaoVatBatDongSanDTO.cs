using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class TinRaoVatBatDongSanDTO : TinRaoVatDTO
    {
        #region 1 - Thuộc tính
        private int _maTinRaoVatBatDongSan;
        private string _tieuDe;
        private string _thumbnail;
        private string _noiDungTinRaoVat;
        private int _gia;
        private string _diaChi;
        private int _dienTich;
        private string _huong;
        private string _loGioi;
        private int _lau;
        private int _lung;
        private bool _matTien;
        private string _giayTo;
        private string _duongTruocNha;
        private bool _dongHoDien;
        private bool _nuocMay;
        private int _soPhongNgu;
        private int _soNhaVeSinh;
        private int _namXayDung;

        private bool _phongKhach;
        private bool _garaOto;
        private bool _nhaBep;
        private bool _hoBoi;
        private bool _sanThuong;
        private bool _dieuHoa;
        private bool _sanVuon;
        private bool _thangMay;

        private bool _ganTruongMauGiao;
        private bool _ganTruongCap1;
        private bool _ganTruongCap2;
        private bool _ganTruongCap3;
        private bool _ganCho;
        private bool _ganBenhVien;
        private bool _ganTrungTamThuongMai;
        private bool _ganTrungTamGiaiTri;
        private bool _ganCongVien;
        #endregion

        #region 2 - Property
        public int MaTinRaoVatBatDongSan
        {
            get { return _maTinRaoVatBatDongSan; }
            set { _maTinRaoVatBatDongSan = value; }
        }
        public string TieuDe
        {
            get { return _tieuDe; }
            set { _tieuDe = value; }
        }
        public string Thumbnail
        {
            get { return _thumbnail; }
            set { _thumbnail = value; }
        }
        public string NoiDungTinRaoVat
        {
            get { return _noiDungTinRaoVat; }
            set { _noiDungTinRaoVat = value; }
        }
        public int Gia
        {
            get { return _gia; }
            set { _gia = value; }
        }
        public string DiaChi
        {
            get { return _diaChi; }
            set { _diaChi = value; }
        }
        public int DienTich
        {
            get { return _dienTich; }
            set { _dienTich = value; }
        }
        public string Huong
        {
            get { return _huong; }
            set { _huong = value; }
        }
        public string LoGioi
        {
            get { return _loGioi; }
            set { _loGioi = value; }
        }
        public int Lau
        {
            get { return _lau; }
            set { _lau = value; }
        }
        public int Lung
        {
            get { return _lung; }
            set { _lung = value; }
        }
        public bool MatTien
        {
            get { return _matTien; }
            set { _matTien = value; }
        }
        public string GiayTo
        {
            get { return _giayTo; }
            set { _giayTo = value; }
        }
        public string DuongTruocNha
        {
            get { return _duongTruocNha; }
            set { _duongTruocNha = value; }
        }
        public bool DongHoDien
        {
            get { return _dongHoDien; }
            set { _dongHoDien = value; }
        }
        public bool NuocMay
        {
            get { return _nuocMay; }
            set { _nuocMay = value; }
        }
        public int SoPhongNgu
        {
            get { return _soPhongNgu; }
            set { _soPhongNgu = value; }
        }
        public int SoNhaVeSinh
        {
            get { return _soNhaVeSinh; }
            set { _soNhaVeSinh = value; }
        }
        public int NamXayDung
        {
            get { return _namXayDung; }
            set { _namXayDung = value; }
        }

        public bool PhongKhach
        {
            get { return _phongKhach; }
            set { _phongKhach = value; }
        }
        public bool GaraOto
        {
            get { return _garaOto; }
            set { _garaOto = value; }
        }
        public bool NhaBep
        {
            get { return _nhaBep; }
            set { _nhaBep = value; }
        }
        public bool HoBoi
        {
            get { return _hoBoi; }
            set { _hoBoi = value; }
        }
        public bool SanThuong
        {
            get { return _sanThuong; }
            set { _sanThuong = value; }
        }
        public bool DieuHoa
        {
            get { return _dieuHoa; }
            set { _dieuHoa = value; }
        }
        public bool SanVuon
        {
            get { return _sanVuon; }
            set { _sanVuon = value; }
        }
        public bool ThangMay
        {
            get { return _thangMay; }
            set { _thangMay = value; }
        }

        public bool GanTruongMauGiao
        {
            get { return _ganTruongMauGiao; }
            set { _ganTruongMauGiao = value; }
        }
        public bool GanTruongCap1
        {
            get { return _ganTruongCap1; }
            set { _ganTruongCap1 = value; }
        }
        public bool GanTruongCap2
        {
            get { return _ganTruongCap2; }
            set { _ganTruongCap2 = value; }
        }
        public bool GanTruongCap3
        {
            get { return _ganTruongCap3; }
            set { _ganTruongCap3 = value; }
        }
        public bool GanCho
        {
            get { return _ganCho; }
            set { _ganCho = value; }
        }
        public bool GanBenhVien
        {
            get { return _ganBenhVien; }
            set { _ganBenhVien = value; }
        }
        public bool GanTrungTamThuongMai
        {
            get { return _ganTrungTamThuongMai; }
            set { _ganTrungTamThuongMai = value; }
        }
        public bool GanTrungTamGiaiTri
        {
            get { return _ganTrungTamGiaiTri; }
            set { _ganTrungTamGiaiTri = value; }
        }
        public bool GanCongVien
        {
            get { return _ganCongVien; }
            set { _ganCongVien = value; }
        }
        #endregion
        //private Deleted bit,
    }
}
