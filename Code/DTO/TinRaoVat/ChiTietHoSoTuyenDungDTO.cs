using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class ChiTietHoSoTuyenDungDTO
    {
        private int _maChiTietHoSoTuyenDung;
        private HoSoTuyenDungDTO _hoSoTuyenDung;
        private NganhNgheDTO _nganhNghe;

        public int MaChiTietHoSoTuyenDung
        {
            get { return _maChiTietHoSoTuyenDung; }
            set { _maChiTietHoSoTuyenDung = value; }
        }        
        public HoSoTuyenDungDTO HoSoTuyenDung
        {
            get { return _hoSoTuyenDung; }
            set { _hoSoTuyenDung = value; }
        }
        public NganhNgheDTO NganhNghe
        {
            get { return _nganhNghe; }
            set { _nganhNghe = value; }
        }
    }
}
