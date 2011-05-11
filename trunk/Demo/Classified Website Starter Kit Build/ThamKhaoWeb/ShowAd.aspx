<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" CodeFile="ShowAd.aspx.cs"
	Inherits="ShowAd_aspx" Title="Show Ad" %>

<%@ Register TagPrefix="uc1" TagName="CategoryDropDown" Src="Controls/CategoryDropDown.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CategoryPath" Src="Controls/CategoryPath.ascx" %>
<%@ Import Namespace="AspNet.StarterKits.Classifieds.Web" %>
<asp:Content ID="SecondBarContent" ContentPlaceHolderID="SecondBar" runat="server">
	<div id="crumbs_text">
		<uc1:CategoryPath ID="CategoryPath" runat="server" OnCategorySelectionChanged="CategoryPath_CategorySelectionChanged" />
	</div>
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="Main" runat="server">
	<div id="body">
		<div id="search_n_browse">
			<div id="search">
				<fieldset>
					<legend>Search</legend>
					<asp:TextBox ID="CommonSearchTextBox" runat="server" CssClass="search_box" />
					<uc1:CategoryDropDown ID="CommonCategoryDropDown" runat="server" SelectOptionVisible="false" />
					<asp:Button ID="SearchButton" runat="server" Text="Search" PostBackUrl="~/Search.aspx" />
					<asp:HyperLink ID="AdvancedSearchLink" runat="server" NavigateUrl="~/AdvancedSearch.aspx">[go to advanced search]</asp:HyperLink>
				</fieldset>
			</div>
			<div id="browse">
				<fieldset>
					<legend>Browse Related Items</legend>
					<ul>
						<li>Listings in <strong>
							<asp:HyperLink ID="CategoryListingsLink" runat="server"></asp:HyperLink></strong></li><li>
								<strong class="heading">
									<asp:HyperLink ID="MemberListingsLink" runat="server"></asp:HyperLink></strong></li></ul>
				</fieldset>
			</div>
		</div>
		<div id="content_header">
			<a id="content_start"></a>
			<h3>
				Actions for this ad</h3>
			<ul>
				<asp:PlaceHolder ID="AdActions" runat="server">
					<li>
						<asp:LinkButton ID="RespondButton" runat="server" OnClick="RespondButton_Click">Respond to Ad</asp:LinkButton></li>
					<li>
						<asp:LinkButton ID="EmailAdButton" runat="server" OnClick="EmailAdButton_Click">Send Ad as Email</asp:LinkButton></li>
					<li>
						<asp:LinkButton ID="SaveAdButton" runat="server" OnClick="SaveAdButton_Click">Save Ad as Bookmark</asp:LinkButton></li>
				</asp:PlaceHolder>
				<asp:PlaceHolder ID="AdNotActivePanel" runat="server" Visible="false">
					<li><strong>This Ad is currently<br />
						not active.</strong></li></asp:PlaceHolder>
			</ul>
		</div>
		<div id="content">
			<div class="display_left">
				<asp:DataList OnItemCommand="PhotoList_ItemCommand" ID="PhotoList" runat="Server"
					DataSourceID="PhotosDataSource" DataKeyField="Id" RepeatLayout="Flow">
					<ItemTemplate>
						<p>
							<asp:LinkButton ID="AdPhotoImageButton" runat="Server" CommandName="ShowFullSize"
								CommandArgument='<%# Eval("Id") %>'><img alt="Enlarge Photo" src='<%# Eval("Id", "PhotoDisplay.ashx?photoid={0}&size=medium") %>' style="border:0;" /></asp:LinkButton></p>
					</ItemTemplate>
				</asp:DataList>
			</div>
			<div class="display_right" id="ad_details">
				<asp:Panel ID="AdDetailsPanel" runat="server">
					<h4>
						<asp:Label ID="AdTitleLabel" runat="server"></asp:Label></h4>
					<h5>
						<asp:Label ID="AdTypeLabel" runat="server" />:
						<asp:Label ID="AdPriceLabel" runat="server" /></h5>
					<asp:Panel ID="PhotoPanel" runat="server" Visible="False">
						<p class="notice">
							<asp:LinkButton ID="HidePhotoPanel" runat="server" OnClick="HidePhotoPanel_Click">Hide again</asp:LinkButton></p>
						<p>
							<asp:ImageButton ID="FullSizePhoto" runat="server" OnClick="FullSizePhoto_Click"
								AlternateText="Show other ad photos if they exist." /></p>
					</asp:Panel>
					<asp:Panel ID="ResponsePanel" runat="server" Visible="False">
						<h5 class="action">
							Respond to Ad:</h5>
						Your Contact Name:<br />
						<asp:TextBox ID="ResponseContactNameTextBox" runat="server" CssClass="user_info"></asp:TextBox>
						<p>
							Your Contact Email (used for replies)<br />
							<asp:TextBox ID="ResponseContactEmailTextBox" runat="server" CssClass="user_info"></asp:TextBox>
							<asp:RequiredFieldValidator runat="server" ControlToValidate="ResponseContactEmailTextBox"
								ErrorMessage="A contact email is required." ValidationGroup="RespondPanelGroup"
								ToolTip="A contact email is required." ID="ResponseEmailRequired1" Display="dynamic">
							</asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator runat="server" ControlToValidate="ResponseContactEmailTextBox"
								ValidationExpression=".*@.*\..*" ErrorMessage="A valid email is required." ToolTip="A valid email is required."
								ID="ResponseEmailRequired2" Display="dynamic">
							</asp:RegularExpressionValidator>
						</p>
						<p>
							Comments or Questions:<br />
							<asp:TextBox ID="ResponseCommentsTextBox" runat="server" TextMode="MultiLine" Width="452px"
								Height="123px"></asp:TextBox></p>
						<p>
							<asp:Button ID="ResponseSubmitButton" runat="server" Text="Submit" OnClick="ResponseSubmitButton_Click" />
							<asp:Button ID="CancelResponseButton" runat="server" Text="Cancel" OnClick="CancelResponseButton_Click" />
						</p>
					</asp:Panel>
					<asp:Panel ID="EmailPanel" runat="server" Visible="false">
						<h5 class="action">
							Send Ad as Email:</h5>
						<p>
							Your Name:<br />
							<asp:TextBox ID="EmailSenderNameTextBox" runat="server" CssClass="user_info"></asp:TextBox>
						</p>
						<p>
							Your Email:<br />
							<asp:TextBox ID="EmailSenderAddressTextBox" runat="server" CssClass="user_info"></asp:TextBox>
							<asp:RequiredFieldValidator runat="server" ControlToValidate="EmailSenderAddressTextBox"
								ErrorMessage="A sender email is required." ValidationGroup="EmailPanelGroup"
								ToolTip="A sender email is required." ID="EmailSenderAddressTextBoxValidator1"
								Display="Dynamic">
							</asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator runat="server" ControlToValidate="EmailSenderAddressTextBox"
								ValidationExpression=".*@.*\..*" ErrorMessage="A valid email is required." ToolTip="A valid email is required."
								ID="EmailSenderAddressTextBoxValidator2" Display="Dynamic">
							</asp:RegularExpressionValidator>
						</p>
						<p>
							Send to (Recipient Email):<br />
							<asp:TextBox ID="EmailRecipientAddressTextBox" runat="server" CssClass="user_info"></asp:TextBox>
							<asp:RequiredFieldValidator runat="server" ControlToValidate="EmailRecipientAddressTextBox"
								ErrorMessage="A recipient email is required." ValidationGroup="EmailPanelGroup"
								ToolTip="A recipient email is required." ID="EmailRecipientAddressTextBoxValidator1"
								Display="Dynamic">
							</asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator runat="server" ControlToValidate="EmailRecipientAddressTextBox"
								ValidationExpression=".*@.*\..*" ErrorMessage="A valid email is required." ToolTip="A valid email is required."
								ID="EmailRecipientAddressTextBoxValidator2" Display="Dynamic">
							</asp:RegularExpressionValidator>
						</p>
						<p>
							Subject:<br />
							<asp:TextBox ID="EmailSubjectTextBox" runat="server" Width="452px" CssClass="user_info"></asp:TextBox>
						</p>
						<p>
							Message:<br />
							<asp:TextBox ID="EmailMessageTextBox" runat="server" TextMode="MultiLine" Width="452px"
								Height="123px"></asp:TextBox></p>
						<p>
							&nbsp;<asp:Button ID="EmailSubmitButton" runat="server" Text="Submit" OnClick="EmailSubmitButton_Click" />
							<asp:Button ID="CancelEmailButton" runat="server" Text="Cancel" OnClick="CancelEmailButton_Click" />
						</p>
					</asp:Panel>
					<asp:Panel ID="AdSavedPanel" runat="server" Visible="False" EnableViewState="False">
						<p style="text-align: center;" class="notice">
							<span>The Ad has been <a href="MyAds.aspx?saved=1">saved to your list of Bookmarks.</a></span></p>
					</asp:Panel>
					<asp:Panel ID="EmailSentPanel" runat="server" Visible="False" EnableViewState="False">
						<p class="notice" style="text-align: center;">
							<span>The email was sent successfully.</span></p>
					</asp:Panel>
					<asp:Panel ID="EmailNotSentPanel" runat="server" Visible="False" EnableViewState="False">
						<p class="notice" style="text-align: center; font-weight: bold;">
							<span>The email was not sent. Contact the system administrator for further details.</span></p>
					</asp:Panel>
					<asp:Repeater ID="AdDetails" runat="server" DataSourceID="AdsDataSource" OnItemDataBound="AdDetails_ItemDataBound">
						<ItemTemplate>
							<table summary="This table is a list of item details: item category, item type, start date, etc.">
								<caption class="none">
									Item details
								</caption>
								<colgroup span="2">
									<col class="col_heading" />
									<col class="col_detail" />
								</colgroup>
								<tbody>
									<tr align="left" valign="top">
										<td class="col_heading">
											Item #
										</td>
										<td class="col_detail">
											<asp:Label ID="AdIdLabel" runat="server" Text='<%# Eval("Id") %>'></asp:Label><br />
										</td>
									</tr>
									<tr>
										<td class="col_heading">
											Location:</td>
										<td class="col_detail">
											<asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>'></asp:Label>
										</td>
									</tr>
									<tr>
										<td class="col_heading">
											Category:</td>
										<td class="col_detail">
											<asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label></td>
									</tr>
									<tr>
										<td class="col_heading">
											URL:</td>
										<td class="col_detail">
											<asp:HyperLink ID="URLLink" runat="server" Target="_blank" /></td>
									</tr>
									<tr class="new_section">
										<td class="col_heading">
											Posted by:</td>
										<td class="col_detail">
											<asp:HyperLink ID="PostByLink" runat="server" NavigateUrl='<%# Eval("MemberName", "~/Search.aspx?member={0}") %>'
												Text='<%# Eval("MemberName") %>' /></td>
									</tr>
									<tr>
										<td class="col_heading">
											Date Entered:</td>
										<td class="col_detail">
											<asp:Label ID="DateAddedLabel" runat="server" Text='<%# Eval("DateCreated", "{0:D}") %>'></asp:Label></td>
									</tr>
									<tr>
										<td class="col_heading">
											Expiration:</td>
										<td class="col_detail">
											<asp:Label ID="ExpirationLabel" runat="server"></asp:Label></td>
									</tr>
									<tr>
										<td class="col_heading">
											Currently:</td>
										<td class="col_detail">
											<asp:Label ID="AdStatusLabel" runat="server" Text='<%# OutputFormatting.AdTypeToString(Eval("AdType")) %>'></asp:Label></td>
									</tr>
									<tr class="ad_description_text">
										<td class="col_heading">
											Description:</td>
										<td class="col_detail">
											<p>
												<asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>'></asp:Label></p>
										</td>
									</tr>
								</tbody>
							</table>
						</ItemTemplate>
					</asp:Repeater>
				</asp:Panel>
			</div>
		</div>
	</div>
	<asp:ObjectDataSource ID="AdsDataSource" runat="server" TypeName="AspNet.StarterKits.Classifieds.BusinessLogicLayer.AdsDB"
		SelectMethod="GetAdById" OnSelected="AdsDataSource_Selected">
		<SelectParameters>
			<asp:QueryStringParameter Name="adId" DefaultValue="0" QueryStringField="id" Type="Int32">
			</asp:QueryStringParameter>
		</SelectParameters>
	</asp:ObjectDataSource>
	<asp:ObjectDataSource ID="PhotosDataSource" runat="server" SelectMethod="GetPhotosByAdId"
		TypeName="AspNet.StarterKits.Classifieds.BusinessLogicLayer.PhotosDB">
		<SelectParameters>
			<asp:QueryStringParameter Name="adId" DefaultValue="0" QueryStringField="id" Type="Int32">
			</asp:QueryStringParameter>
		</SelectParameters>
	</asp:ObjectDataSource>
</asp:Content>
