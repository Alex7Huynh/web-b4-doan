using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    //1. Tao bang LOAINGUOIDUNG
    public class LoaiNguoiDungDTO
    {
        private int _maLoaiNguoiDung;
        private string _tenLoaiNguoiDung;
        private bool _deleted;

        public int MaLoaiNguoiDung
        {
            get { return _maLoaiNguoiDung; }
            set { _maLoaiNguoiDung = value; }
        }
        public string TenLoaiNguoiDung
        {
            get { return _tenLoaiNguoiDung; }
            set { _tenLoaiNguoiDung = value; }
        }
        public bool Deleted
        {
            get { return _deleted; }
            set { _deleted = value; }
        }

        public LoaiNguoiDungDTO()
        {
            _tenLoaiNguoiDung = string.Empty;
            _deleted = false;
        }
        public LoaiNguoiDungDTO(LoaiNguoiDungDTO lndDTO)
        {
            _maLoaiNguoiDung = lndDTO.MaLoaiNguoiDung;
            _tenLoaiNguoiDung = lndDTO.TenLoaiNguoiDung;
            _deleted = lndDTO.Deleted;
        }
    }
}
