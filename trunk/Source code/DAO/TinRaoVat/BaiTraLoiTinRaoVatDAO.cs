using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAO
{
    public class BaiTraLoiTinRaoVatDAO
    {
        /// <summary>
        /// Insert new BAITRALOI
        /// </summary>
        /// <param name="baiTraLoi"></param>
        /// <returns></returns>
        public static bool ThemBaiTraLoi(BAITRALOI baiTraLoi)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.BAITRALOIs.InsertOnSubmit(baiTraLoi);
                db.SubmitChanges();
                
            }
            catch(Exception ex)
            { return false; }

            return true;
        }
        /// <summary>
        /// Update information for BAITRALOI Object
        /// </summary>
        /// <param name="baiTraLoi"></param>
        /// <returns></returns>
        public static bool ChinhSuaBaiTraLoi(BAITRALOI baiTraLoi)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                BAITRALOI baiTraLoiUpdate = new BAITRALOI();
                baiTraLoiUpdate = db.BAITRALOIs.Single(t=>t.MaBaiTraLoi==baiTraLoi.MaBaiTraLoi);
                baiTraLoiUpdate.NoiDungTraLoi = baiTraLoi.NoiDungTraLoi;
                db.SubmitChanges();

            }
            catch (Exception ex)
            { return false; }

            return true;
        }
    }
}