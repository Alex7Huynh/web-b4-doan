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
        Panel1.BorderStyle = BorderStyle.Solid;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = Editor1.Content;
        Literal literal = new Literal();
        literal.Text = Editor1.Content;
        Panel1.Controls.Clear();
        Panel1.Controls.Add(literal);
    }
}
