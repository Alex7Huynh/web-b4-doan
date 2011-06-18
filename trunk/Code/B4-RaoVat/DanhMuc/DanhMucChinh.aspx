<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="DanhMucChinh.aspx.cs" Inherits="Default2" Culture="auto" meta:resourcekey="PageResource1"
    UICulture="auto" %>

<%--<%@ Register TagPrefix="uc1" TagName="AdvancedSearch" Src="Controls/AdvancedSearch.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CategoryDropDown" Src="Controls/CategoryDropDown.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CategoryPath" Src="Controls/CategoryPath.ascx" %>--%>
<%@ Register TagPrefix="uc1" TagName="DanhMucChinh" Src="../UserControls/DanhMucChinh.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <div id="body">
        <div id="col_main_left">
            <h3 class="section" style="color: #0000FF; width: 424px;">
                <asp:Label ID="lblDanhMucChinh" runat="server" Text="DANH SÁCH DANH MỤC CHÍNH" 
                    meta:resourcekey="lblDanhMucChinhResource1" /></h3>
            <div class="content_right">
                <uc1:DanhMucChinh ID="CategoryBrowser" runat="server" AutoNavigate="True"></uc1:DanhMucChinh>
            </div>
        </div>
    </div>
</asp:Content>
