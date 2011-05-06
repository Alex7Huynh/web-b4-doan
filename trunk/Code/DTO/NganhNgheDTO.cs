using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class NganhNgheDTO
    {
        private int _maNganhNghe;
        private string _tenNganhNghe;

        public int MaNganhNghe
        {
            get { return _maNganhNghe; }
            set { _maNganhNghe = value; }
        }
        public string TenNganhNghe
        {
            get { return _tenNganhNghe; }
            set { _tenNganhNghe = value; }
        }
    }
}
