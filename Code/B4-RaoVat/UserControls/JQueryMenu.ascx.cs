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
        //LiteralJQueryMenu.Text = LoadStyle();
        //LiteralJQueryMenu.Text += LoadMenu();

        //FetchMailItems();
        //FetchNoteItems();
        //FetchContactItems();
    }
    /*
    #region sdfkaslf
    private void FetchMailItems()
    {
        ArrayList mailItems = new ArrayList();
        mailItems.Add(new { Name = "Mailbox", ImageUrl = "_assets/img/mailbox.gif" });
        mailItems.Add(new { Name = "Inbox", ImageUrl = "_assets/img/inbox.gif" });
        mailItems.Add(new { Name = "Drafts", ImageUrl = "_assets/img/drafts.gif" });
        mailItems.Add(new { Name = "Outbox", ImageUrl = "_assets/img/outbox.gif" });
        mailItems.Add(new { Name = "Junk Mail", ImageUrl = "_assets/img/junk.gif" });
        mailItems.Add(new { Name = "Deleted Items", ImageUrl = "_assets/img/deleted.gif" });
        mailItems.Add(new { Name = "Search Folders", ImageUrl = "_assets/img/search.gif" });
        mailItems.Add(new { Name = "Sent Items", ImageUrl = "_assets/img/sentitems.gif" });

        lvMailItems.DataSource = mailItems;
        lvMailItems.DataBind();
    }
    private void FetchNoteItems()
    {
        ArrayList mailItems = new ArrayList();
        mailItems.Add(new { Name = "Icons", ImageUrl = "_assets/img/note_small.gif" });
        mailItems.Add(new { Name = "Note List", ImageUrl = "_assets/img/note_small.gif" });
        mailItems.Add(new { Name = "Last Seven Days", ImageUrl = "_assets/img/note_small.gif" });
        mailItems.Add(new { Name = "By Category", ImageUrl = "_assets/img/note_small.gif" });
        mailItems.Add(new { Name = "By Color", ImageUrl = "_assets/img/note_small.gif" });

        lvNoteItems.DataSource = mailItems;
        lvNoteItems.DataBind();
    }
    private void FetchContactItems()
    {
        ArrayList mailItems = new ArrayList();
        mailItems.Add(new { Name = "Address Cards", ImageUrl = "_assets/img/contact_small.gif" });
        mailItems.Add(new { Name = "Detailed Address List", ImageUrl = "_assets/img/contact_small.gif" });
        mailItems.Add(new { Name = "By Category", ImageUrl = "_assets/img/contact_small.gif" });
        mailItems.Add(new { Name = "By Company", ImageUrl = "_assets/img/contact_small.gif" });
        mailItems.Add(new { Name = "By Follow-up Flag", ImageUrl = "_assets/img/contact_small.gif" });

        lvContactItems.DataSource = mailItems;
        lvContactItems.DataBind();
    }
    #endregion
    */

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
