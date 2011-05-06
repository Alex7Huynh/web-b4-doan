using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    //16.1. Tao bang TINRAOVATTHUONG
    public class TinRaoVatThuongDTO : TinRaoVatDTO
    {
        private int _maTinRaoVatThuong;
        private string _tieuDe;
        private string _thumbnail;
        private string _noiDungTinRaoVat;
        private int _gia;

        public int MaTinRaoVatThuong
        {
            get { return _maTinRaoVatThuong; }
            set { _maTinRaoVatThuong = value; }
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

        //private Deleted bit,
    }
}
