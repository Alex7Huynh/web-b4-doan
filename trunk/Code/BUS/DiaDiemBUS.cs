using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;
using DAO;

namespace BUS
{
    public class DiaDiemBUS
    {
        public static bool themDiaDiem(DiaDiemDTO ddDTO)
        {
            return DiaDiemDAO.themDiaDiem(ddDTO);
        }
        public static bool xoaDiaDiem(int maDiaDiem)
        {
            return DiaDiemDAO.xoaDiaDiem(maDiaDiem);
        }
        public static bool capNhatDiaDiem(DiaDiemDTO ddDTO)
        {
            return DiaDiemDAO.capNhatDiaDiem(ddDTO);
        }
        public static List<DiaDiemDTO> layDanhSachDiaDiem()
        {
            return DiaDiemDAO.layDanhSachDiaDiem();
        }
        public static DiaDiemDTO timDiaDiemTheoMa(int maDiaDiem)
        {
            return DiaDiemDAO.timDiaDiemTheoMa(maDiaDiem);
        }
    }
}
