<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<%@ Register TagPrefix="uc1" TagName="TinRaoVatMoiNhat" Src="UserControls/TinRaoVatMoiNhat.ascx" %>
<%@ Register TagPrefix="uc1" TagName="JQueryMenu" Src="UserControls/JQueryMenu.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <div id="body">
		<div id="col_main_left">
		    <div id="featured_item">
		        <uc1:JQueryMenu ID="JQueryMenuMain" runat="server">
                </uc1:JQueryMenu>
			</div>
            <div id="announcements">
				<ul>
					<li>The latest activity relating to your ads and offers will appear on the My Ads &amp;
						Profile page. <a href="../MyAds.aspx" title="My Ads & Profile">My Ads & Profile</a>
					</li>
					<li>Placing a new ad is fast and easy. <a href="../PostAd.aspx" title="New Ad">Place a
						New Ad</a> </li>
				</ul>
			</div>
		</div>
		<div id="col_main_right">
	        <uc1:TinRaoVatMoiNhat ID="FeaturedAd" runat="server">
            </uc1:TinRaoVatMoiNhat>
		</div>
	</div>
	
	
<script src="UserControls/Scripts/jquery-1.3.1.js" type="text/javascript"></script>

<script type="text/javascript" src="UserControls/Scripts/superfish.js"></script>

<link id="Link1" type="text/css" href="UserControls/Styles/superfish.css" rel="stylesheet" media="screen"
    runat="server" />
<link href="UserControls/Styles/stylemain.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
    $(document).ready(function() {
        $('ul.AspNet-Menu').superfish();
    }); 
</script>


</asp:Content>

