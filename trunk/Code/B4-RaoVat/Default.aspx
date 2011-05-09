<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<%--<%@ Register TagPrefix="uc1" TagName="AdvancedSearch" Src="Controls/AdvancedSearch.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CategoryDropDown" Src="Controls/CategoryDropDown.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CategoryPath" Src="Controls/CategoryPath.ascx" %>--%>
<%@ Register TagPrefix="uc1" TagName="DanhMucChinh" Src="UserControls/DanhMucChinh.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TinRaoVatMoiNhat" Src="UserControls/TinRaoVatMoiNhat.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <div id="body">
		<div id="col_main_left">
		    <div id="featured_item">
		        <%--<uc1:TinRaoVatMoiNhat ID="FeaturedAd" runat="server">
                </uc1:TinRaoVatMoiNhat>--%>
			</div>
			<div id="announcements">
				<ul>
					<li>The latest activity relating to your ads and offers will appear on the My Ads &amp;
						Profile page. <a href="MyAds.aspx" title="My Ads & Profile">My Ads & Profile</a>
					</li>
					<li>Placing a new ad is fast and easy. <a href="PostAd.aspx" title="New Ad">Place a
						New Ad</a> </li>
				</ul>
			</div>
		</div>
		<div id="col_main_right">
			<h3 class="section">
				Browse Categories</h3>
			<div class="content_right">
				<uc1:DanhMucChinh ID="CategoryBrowser" runat="server" AutoNavigate="True">
                </uc1:DanhMucChinh>
			</div>
		</div>
	</div>
</asp:Content>

