<%@ Control Language="C#" AutoEventWireup="true" CodeFile="JQueryMenu.ascx.cs" Inherits="UserControls_JQueryMenu" %>
<div id="menu">
<asp:Menu ID="menuMain" runat="server" DataSourceID="stmpDataSource" 
        onmenuitemclick="menuMain_MenuItemClick">
</asp:Menu>
</div>
<asp:SiteMapDataSource ID="stmpDataSource" runat="server" ShowStartingNode="false" />
<script src="Scripts/jquery-1.3.1.js" type="text/javascript"></script>

<script type="text/javascript" src="Scripts/superfish.js"></script>

<link id="Link1" type="text/css" href="Styles/superfish.css" rel="stylesheet" media="screen"
    runat="server" />
<link href="Styles/stylemain.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
    $(document).ready(function() {
        $('ul.AspNet-Menu').superfish();
    }); 
</script>