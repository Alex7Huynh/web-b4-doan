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
        this.PasswordRecovery1.MembershipProvider = "MyMembership";
    }
    protected void PasswordRecovery1_SendMailError(object sender, SendMailErrorEventArgs e)
    {
        e.Handled = true;
    }
}
