<%@ Control Language="C#" CodeFile="LocationDropDown.ascx.cs" Inherits="LocationDropDown_ascx" %>
<asp:DropDownList ID="LocationList" runat="server" DataSourceID="LocationsDataSource"
	DataTextField="Name" DataValueField="Name" OnDataBound="LocationList_DataBound"
	CssClass="fixed" OnSelectedIndexChanged="LocationList_SelectedIndexChanged" AutoPostBack="True">
</asp:DropDownList>
<asp:PlaceHolder ID="OtherLocationPanel" runat="server">
	<asp:Label ID="OtherLabel" runat="server" Text="Other:"></asp:Label>
	&nbsp;
	<asp:TextBox ID="OtherLocationTextBox" runat="server"></asp:TextBox>
</asp:PlaceHolder>
<asp:ObjectDataSource ID="LocationsDataSource" runat="server" SelectMethod="GetAllLocations"
	TypeName="AspNet.StarterKits.Classifieds.Web.LocationCache" OnSelected="LocationsDataSource_Selected">
</asp:ObjectDataSource>
