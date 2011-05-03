using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class TinRaoVatDTO
    {
        protected int _maTinRaoVat;
        protected DateTime _thoiGianDang;
        protected int _thoiHanLuuTin;
        protected DiaDiemDTO _diaDiem;
        protected int _soLanXem;
        protected NguoiDungDTO _nguoiDung;
        protected DanhMucConDTO _danhMucCon;
        protected bool _deleted;

        public int MaTinRaoVat
        {
            get { return _maTinRaoVat; }
            set { _maTinRaoVat = value; }
        }
        public DateTime ThoiGianDang
        {
            get { return _thoiGianDang; }
            set { _thoiGianDang = value; }
        }
        public int ThoiHanLuuTin
        {
            get { return _thoiHanLuuTin; }
            set { _thoiHanLuuTin = value; }
        }
        public DiaDiemDTO DiaDiem
        {
            get { return _diaDiem; }
            set { _diaDiem = value; }
        }        
        public int SoLanXem
        {
            get { return _soLanXem; }
            set { _soLanXem = value; }
        }
        public NguoiDungDTO NguoiDung
        {
            get { return _nguoiDung; }
            set { _nguoiDung = value; }
        }
        public DanhMucConDTO DanhMucCon
        {
            get { return _danhMucCon; }
            set { _danhMucCon = value; }
        }
        public bool Deleted
        {
            get { return _deleted; }
            set { _deleted = value; }
        }
    }

}