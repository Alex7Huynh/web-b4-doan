using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.Collections;
using System.Drawing.Design;
using System.Linq;
using System.Security.Permissions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.Design.WebControls;

// -------------------------------------------------------------Web Control Collection Property
//[ToolboxData("&lt;{0}:UserControl_TinRaoVatMoiNhat runat=server>")]
//[DefaultProperty("ParameterList")]
//[ParseChildren(true, "ParameterList")]
//[PersistChildren(false)]
public partial class UserControl_TinRaoVatMoiNhat : System.Web.UI.UserControl
{
    //[Category("DataSource")]
    //[Description("The parameter collection")]
    //[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
    //[Editor(typeof(ParameterCollectionEditor), typeof(UITypeEditor))]
    //[PersistenceMode(PersistenceMode.InnerDefaultProperty)]
    [Category("DataSource")]
    public ParameterCollection ParameterList
    {
        get { return FeaturedAdDataSource.SelectParameters; }
        set 
        {
            foreach (Parameter parameter in value)
            {
                FeaturedAdDataSource.SelectParameters.Add(parameter); 
            }
        }
    }

    [Category("DataSource")]
    public string SelectMethod
    {
        get { return FeaturedAdDataSource.SelectMethod; }
        set { FeaturedAdDataSource.SelectMethod = value; }
    }

    [Category("DataSource")]
    public string TypeName
    {
        get { return FeaturedAdDataSource.TypeName; }
        set { FeaturedAdDataSource.TypeName = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        //Class = "BUS.TinRaoVatBUS";
        //Method = "LayDanhSachTinRaoVatMoiNhat";
    }
    protected void FeaturedAdGrid_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
