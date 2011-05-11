<%@ Control Language="C#" CodeFile="AdvancedSearch.ascx.cs" Inherits="AdvancedSearch_ascx" %>
<%@ Register TagPrefix="uc1" TagName="LocationDropDown" Src="~/Controls/LocationDropDown.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CategoryDropDown" Src="~/Controls/CategoryDropDown.ascx" %>
<legend>Category:</legend>
<uc1:CategoryDropDown ID="CategoryDropDown" runat="server" />
<p>
</p>
<legend>Search Term:</legend><span>
	<asp:TextBox ID="SearchTermTextBox" runat="server" CssClass="post_title"></asp:TextBox></span>
<p>
</p>
<legend>Maximum Price:</legend>$ <span>
	<asp:TextBox ID="MaximumPriceTextBox" runat="server" CssClass="post_dollars"></asp:TextBox></span>
<p>
</p>
<legend>Location:</legend>
<uc1:LocationDropDown ID="LocationDropDown" runat="server" ShowAnyLocationChoice="True" />
<p>
</p>
<legend>Date:</legend>
<asp:DropDownList ID="DayRangeList" runat="server" OnSelectedIndexChanged="DayRangeList_SelectedIndexChanged">
	<asp:ListItem Value="-1" Selected="True">any</asp:ListItem>
	<asp:ListItem Value="1">within last day</asp:ListItem>
	<asp:ListItem Value="2">within last 2 days</asp:ListItem>
	<asp:ListItem Value="7">within last 7 days</asp:ListItem>
	<asp:ListItem Value="30">within last month</asp:ListItem>
</asp:DropDownList>
<p>
</p>
<legend>Show:</legend>
<asp:DropDownList ID="AdTypeList" runat="server" OnSelectedIndexChanged="AdTypeList_SelectedIndexChanged">
	<asp:ListItem Value="0">All Types</asp:ListItem>
	<asp:ListItem Value="1">For Sale only</asp:ListItem>
	<asp:ListItem Value="2">Wanted only</asp:ListItem>
</asp:DropDownList><p>
</p>
<asp:CheckBox ID="PhotoCheckBox" runat="server" Text="with Photo(s)" /><br />
