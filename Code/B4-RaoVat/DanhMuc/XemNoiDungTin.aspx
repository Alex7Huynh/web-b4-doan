<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="XemNoiDungTin.aspx.cs" Inherits="Default2" %>
<%@ Register TagPrefix="uc1" TagName="XemNoiDungTin" Src="../UserControls/XemNoiDungTin.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <div id="body">
		<div id="col_main_left">
			<div id="user_assistance">
				<a id="content_start"></a>
				<h3>
					Step 1: Select Category</h3>
				<p>
					</p>
				<h3>
					Step 2: Specify Ad</h3>
				<p>
					</p>
				<h3>
					Step 3: Add Photos</h3>
				<p>
				</p>
			</div>
		</div>
	</div>
	<div id="col_main_right">
	    <uc1:XemNoiDungTin ID="AddBrowser" runat="server" AutoNavigate="True">
        </uc1:XemNoiDungTin>
	</div>
</asp:Content>

