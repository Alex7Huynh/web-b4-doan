using System;
using System.IO;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.XPath;
using AjaxControlToolkit;

public partial class UserControls_JQueryMenu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LiteralJQueryMenu.Text = LoadStyle();
        LiteralJQueryMenu.Text += LoadMenu();
    }

    private string LoadStyle()
    {
        string strStyle = "";
        string styleFile = @"B4-RaoVat\UserControls\style.txt";
        using (StreamReader sr = new StreamReader(styleFile))
        {
            strStyle = sr.ReadToEnd();
        }

        return strStyle;
    }

    private string LoadMenu()
    {
        string strMenu = "";
        strMenu += "<div style=\"float:left\" >";
        strMenu += "<div id=\"firstpane\" class=\"menu_list\">";
        foreach (SiteMapNode cNode in SiteMap.RootNode.ChildNodes)
        {
            strMenu += walkTree(cNode);
        }
        strMenu += "</div>";
        strMenu += "</div>";

        return strMenu;
    }

    protected string walkTree(SiteMapNode pNode)
    {
        string strMenu = "";

        strMenu += "<p class=\"menu_head\">" + pNode.Title + "</p>"
            + "<div class=\"menu_body\">";

        foreach (SiteMapNode child in pNode.ChildNodes)
        {
            strMenu += "<a href=\"" + child.Url + "\">" + child.Title + "</a>";
        }

        strMenu += "</div>";

        return strMenu;
    }
}
