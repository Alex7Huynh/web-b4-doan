<%@ Control Language="C#" CodeFile="CategoryPath.ascx.cs" Inherits="CategoryPath_ascx" %>
<asp:LinkButton ID="AllCategoriesButton" runat="server" ValidationGroup="CategoryButtonGroup"
	OnClick="AllCategoriesButton_Click">All Categories</asp:LinkButton>&nbsp;&gt;
<asp:Repeater ID="CategoryPath" runat="server" OnItemCommand="CategoryPath_ItemCommand"
	DataSourceID="ParentCategoryDataSource" OnItemDataBound="CategoryPath_ItemDataBound">
	<ItemTemplate>
		&nbsp;<asp:LinkButton ID="CategoryButton" ValidationGroup="CategoryButtonGroup" runat="server"
			CommandName="CategoryClick" CommandArgument='<%# Eval("Id") %>'><%# Eval("Name") %></asp:LinkButton>&nbsp;&gt;</ItemTemplate>
</asp:Repeater>
<asp:ObjectDataSource ID="ParentCategoryDataSource" runat="server" TypeName="AspNet.StarterKits.Classifieds.Web.CategoryCache"
	SelectMethod="GetParentCategoriesById" OnSelected="ParentCategoryDataSource_Selected">
	<SelectParameters>
		<asp:Parameter Type="Int32" DefaultValue="0" Name="categoryId"></asp:Parameter>
	</SelectParameters>
</asp:ObjectDataSource>
<asp:ObjectDataSource ID="CategoryDataSource" SelectMethod="GetCategoriesByParentId"
	TypeName="AspNet.StarterKits.Classifieds.Web.CategoryCache" runat="server">
	<SelectParameters>
		<asp:Parameter Type="Int32" DefaultValue="0" Name="parentCategoryId"></asp:Parameter>
	</SelectParameters>
</asp:ObjectDataSource>
