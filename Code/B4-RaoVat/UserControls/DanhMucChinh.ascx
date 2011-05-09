<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DanhMucChinh.ascx.cs" Inherits="UserControls_Danh_Muc_Chinh" %>
<asp:Repeater ID="DanhMucChinhRepeater" runat="server" DataSourceID="DanhMucChinhDataSource">
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
	                                    margin-right: 0px;
	                                    float:left">
			<a id="content_start"></a>
			<h2>
				<asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("TenDanhMucChinh") %>' NavigateUrl='<%# Eval("MaDanhMucChinh", "~/DanhMucCon.aspx?id={0}") %>'></asp:HyperLink></h2>
			<p>
				<asp:HyperLink ID="PhotoLink" runat="server" NavigateUrl='<%# Eval("MaDanhMucChinh", "~/ShowAd.aspx?id={0}") %>'><img src='<%# Eval("Thumbnail") %>' alt="Featured Image" style="border:0;width:176px;" /></asp:HyperLink></p>
			<p>
				<asp:HyperLink ID="SubCategoriesLink" runat="server" Text='Xem Tất Cả Các Mục Con' NavigateUrl='<%# Eval("MaDanhMucChinh", "~/DanhMucCon.aspx?id={0}") %>'></asp:HyperLink></p>
			<p>
				<asp:HyperLink ID="AllAdsLink" runat="server" Text='Xem Tất Cả Các Tin Rao Vặt' NavigateUrl='<%# Eval("MaDanhMucChinh", "~/DanhMucTinRaoVat.aspx?id={0}") %>'></asp:HyperLink></p>
		</div>
	</ItemTemplate>
	<FooterTemplate>
	    </ul>
    </FooterTemplate>
</asp:Repeater>
<asp:ObjectDataSource ID="DanhMucChinhDataSource" runat="server" TypeName="BUS.DanhMucChinhBUS"
	SelectMethod="layDanhSachDanhMucChinh" 
    onselected="DanhMucChinhDataSource_Selected"></asp:ObjectDataSource>