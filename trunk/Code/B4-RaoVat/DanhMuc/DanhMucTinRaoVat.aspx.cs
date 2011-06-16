using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AddBrowser.ParameterList.Clear();
        Parameter parameter = new Parameter("maDanhMucCon", TypeCode.Int32, "1");
        AddBrowser.ParameterList.Add(parameter);
    }
}
