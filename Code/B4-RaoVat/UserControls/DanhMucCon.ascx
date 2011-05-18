<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DanhMucCon.ascx.cs" Inherits="UserControls_DanhMucCon" %>
<asp:Repeater ID="DanhMucConRepeater" runat="server" DataSourceID="DanhMucConDataSource">
    <HeaderTemplate>
		<ul>
	</HeaderTemplate>
	<ItemTemplate>
		<div id="featured_item" style="height: 50px;
	                                    width: 75px;
	                                    float:left">
			<a id="content_start"></a>
			<h2>
				<asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("TenDanhMucCon") %>' NavigateUrl='<%# Eval("MaDanhMucCon", "~/DanhMuc/DanhMucTinRaoVat.aspx?id={0}") %>'></asp:HyperLink></h2>
		</div>
	</ItemTemplate>
	<FooterTemplate>
	    </ul>
    </FooterTemplate>
</asp:Repeater>
<asp:ObjectDataSource ID="DanhMucConDataSource" runat="server" TypeName="BUS.DanhMucConBUS"
	SelectMethod="layDanhSachDanhMucCon" 
    onselected="DanhMucConDataSource_Selected" 
    onselecting="DanhMucConDataSource_Selecting">
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="maDanhMucChinh" />
    </SelectParameters>
</asp:ObjectDataSource>