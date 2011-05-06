using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    //14. Tao bang DANHMUCCON
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

        public DanhMucConDTO()
        {
            _tenDanhMucCon = string.Empty;
            _danhMucChinh = null;
            _deleted = false;
        }
        public DanhMucConDTO(DanhMucConDTO dmcDTO)
        {
            _maDanhMucCon = dmcDTO.MaDanhMucCon;
            _tenDanhMucCon = dmcDTO.TenDanhMucCon;
            _danhMucChinh = new DanhMucChinhDTO(dmcDTO.DanhMucChinh);
            _deleted = dmcDTO.Deleted;
        }
    }
}
