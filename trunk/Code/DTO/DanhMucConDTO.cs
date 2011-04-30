using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class DanhMucConDTO
    {
        private int _maDanhMucCon;
        private string _tenDanhMucCon;
        private DanhMucChinhDTO _danhMucChinh;
        private bool _deleted;

        public int MaDanhMucCon
        {
            get { return _maDanhMucCon; }
            set { _maDanhMucCon = value; }
        }
        public string TenDanhMucCon
        {
            get { return _tenDanhMucCon; }
            set { _tenDanhMucCon = value; }
        }
        public DanhMucChinhDTO DanhMucChinh
        {
            get { return _danhMucChinh; }
            set { _danhMucChinh = value; }
        }
        public bool Deleted
        {
            get { return _deleted; }
            set { _deleted = value; }
        }
    }
}
