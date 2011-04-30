using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class DiaDiemDTO
    {
        private int _maDiaDiem;
        private string _tenDiaDiem;
        private bool _deleted;

        public int MaDiaDiem
        {
            get { return _maDiaDiem; }
            set { _maDiaDiem = value; }
        }
        public string TenDiaDiem
        {
            get { return _tenDiaDiem; }
            set { _tenDiaDiem = value; }
        }
        public bool Deleted
        {
            get { return _deleted; }
            set { _deleted = value; }
        }
    }
}
