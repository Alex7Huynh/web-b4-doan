using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAO;
using System.IO;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string tuKhoa = txtTimKiem.Text;
        TimKiem(tuKhoa);
    }
    protected void btnTim_Click(object sender, EventArgs e)
    {
        string tuKhoa = txtTimKiem.Text;
        TimKiem(tuKhoa);

        SearchResult.DataBind();
    }

    public void TimKiem(string tuKhoa)
    {
        SearchResult.ParameterList.Clear();
        Parameter parameter = new Parameter("tuKhoa", TypeCode.String, tuKhoa);
        SearchResult.ParameterList.Add(parameter);
    }
}
