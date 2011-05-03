using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class NganhNgheDTO
    {
        private int _maNghanhNghe;
        private string _tenNghanhNghe;

        public int MaNghanhNghe
        {
            get { return _maNghanhNghe; }
            set { _maNghanhNghe = value; }
        }
        public string TenNghanhNghe
        {
            get { return _tenNghanhNghe; }
            set { _tenNghanhNghe = value; }
        }
    }
}
