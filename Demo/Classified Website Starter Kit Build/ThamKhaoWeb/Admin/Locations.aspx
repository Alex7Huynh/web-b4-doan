<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" CodeFile="Locations.aspx.cs"
	Inherits="Locations_aspx" Title="Manage Locations" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="Main" runat="server">
	<div id="body">
		<div id="col_main_left">
			<div id="user_assistance">
				<a id="content_start"></a>
				<h3>
					Actions</h3>
				<p>
					<asp:HyperLink ID="BackToAdminLink" runat="server" NavigateUrl="~/Admin/Default.aspx">back to Administration</asp:HyperLink></p>
			</div>
		</div>
		<div id="col_main_right">
			<h2 class="section">
				Locations</h2>
			<div class="content_right">
				<fieldset>
					<p>
						<asp:ListBox ID="LocationsListBox" runat="server" DataSourceID="LocationsDataSource"
							DataValueField="Id" DataTextField="Name" CssClass="fixed" Rows="6"></asp:ListBox></p>
					<p>
						<asp:Button ID="RemoveLocationButton" runat="server" Text="Remove selected" OnClick="RemoveLocationButton_Click" />
					</p>
					<legend>New:</legend><span>
						<asp:TextBox ID="NewLocationTextBox" runat="server" CssClass="fixed" ValidationGroup="AddLocation"></asp:TextBox>
					</span>
					<asp:RequiredFieldValidator ID="RequiredLocationValidator" runat="server" ErrorMessage="*"
						ControlToValidate="NewLocationTextBox" ValidationGroup="AddLocation">
					</asp:RequiredFieldValidator>
					<asp:Button ID="AddLocationButton" runat="server" Text="Add Location" OnClick="AddLocationButton_Click"
						ValidationGroup="AddLocation" />
					<asp:ObjectDataSource ID="LocationsDataSource" runat="server" TypeName="AspNet.StarterKits.Classifieds.Web.LocationCache"
						SelectMethod="GetAllLocations"></asp:ObjectDataSource>
				</fieldset>
			</div>
		</div>
	</div>
</asp:Content>
