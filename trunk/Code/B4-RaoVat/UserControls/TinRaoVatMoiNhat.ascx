<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TinRaoVatMoiNhat.ascx.cs" Inherits="UserControl_TinRaoVatMoiNhat" %>
<asp:Repeater ID="FeaturedAd" runat="server" DataSourceID="FeaturedAdDataSource">
    <HeaderTemplate>
		<ul>
	</HeaderTemplate>
	<ItemTemplate>
		<div id="featured_item" style="height: 200px;
	                                    width: 176px;
	                                    border-top-width: 1px;
	                                    border-right-width: 1px;
	                                    border-bottom-width: 1px;
	                                    border-left-width: 1px;
	                                    border-top-style: solid;
	                                    border-right-style: solid;
	                                    border-bottom-style: solid;
	                                    border-left-style: solid;
	                                    border-top-color: #FFFFFF;
	                                    border-right-color: #A29F93;
	                                    border-bottom-color: #A29F93;
	                                    border-left-color: #FFFFFF;
	                                    text-align: center;
	                                    padding: 10px;
	                                    font-size: 0.8em;
	                                    margin-bottom: 3px;
	                                    margin-right: 0px;">
			<a id="content_start"></a>
			<h2>
				Featured Item</h2>
			<p>
				<asp:HyperLink ID="PhotoLink" runat="server" NavigateUrl='<%# Eval("AdId", "~/ShowAd.aspx?id={0}") %>'><img src='<%# Eval("PreviewImageId", "PhotoDisplay.ashx?photoid={0}&size=medium") %>' alt="Featured Image" style="border:0;width:176px;" /></asp:HyperLink></p>
			<p>
				<asp:HyperLink ID="TitleLink" runat="server" Text='<%# Eval("Title") %>' NavigateUrl='<%# Eval("AdId", "~/ShowAd.aspx?id={0}") %>'></asp:HyperLink></p>
		</div>
	</ItemTemplate>
	<FooterTemplate>
	    </ul>
    </FooterTemplate>
</asp:Repeater>
<asp:ObjectDataSource ID="FeaturedAdDataSource" runat="server" TypeName="AspNet.StarterKits.Classifieds.Web.FeaturedAdCache"
	SelectMethod="GetFeaturedAd"></asp:ObjectDataSource>
