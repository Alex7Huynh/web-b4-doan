﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : BUS.BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.userDangKy.MembershipProvider = "MyMembership";
    }
}
