using System;
using System.Data;
using System.Configuration;
using System.Globalization;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace BUS
{
    public class BasePage : Page
    {
        protected override void InitializeCulture()
        {
            if (Request["Language"] != null)
            {
                CultureInfo ci = CultureInfo.CreateSpecificCulture(Request["Language"].ToString());
                Thread.CurrentThread.CurrentCulture = ci;
                Thread.CurrentThread.CurrentUICulture = ci;
            }
            base.InitializeCulture();
        }
        protected override void OnPreInit(EventArgs e)
        {
            base.OnPreInit(e);
            if (Session["MyTheme"] == null)
            {
                Session.Add("MyTheme", "Theme1");
                Page.Theme = (string)Session["Theme1"];
            }
            else if (Session["MyTheme"] == "Theme2")
            { Page.Theme = "Theme2"; }
            else if(Session["MyTheme"] == "Theme3")
            { Page.Theme = "Theme3"; }
        }
    }
}
