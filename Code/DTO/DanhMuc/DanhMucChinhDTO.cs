using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    //13. Tao bang DANHMUCCHINH
    public class DanhMucChinhDTO
    {
        private int _maDanhMucChinh;
        private string _tenDanhMucChinh;
        private bool _deleted;

        public int MaDanhMucChinh
        {
            get { return _maDanhMucChinh; }
            set { _maDanhMucChinh = value; }
        }
        public string TenDanhMucChinh
        {
            get { return _tenDanhMucChinh; }
            set { _tenDanhMucChinh = value; }
        }
        public bool Deleted
        {
            get { return _deleted; }
            set { _deleted = value; }
        }

        public DanhMucChinhDTO()
        {
            _tenDanhMucChinh = String.Empty;
            _deleted = false;
        }
        public DanhMucChinhDTO(DanhMucChinhDTO dmcDTO)
        {
            _maDanhMucChinh = dmcDTO.MaDanhMucChinh;
            _tenDanhMucChinh = dmcDTO.TenDanhMucChinh;
            _deleted = dmcDTO.Deleted;
        }
    }
}
