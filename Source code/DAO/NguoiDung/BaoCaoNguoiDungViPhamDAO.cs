using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class BaoCaoNguoiDungViPhamDAO
    {
        public static bool ThemBaoCaoViPham(LICHSUNGUOIDUNGVIPHAM nguoiViPham)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.LICHSUNGUOIDUNGVIPHAMs.InsertOnSubmit(nguoiViPham);
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }
            return true;
        }
    }
}
