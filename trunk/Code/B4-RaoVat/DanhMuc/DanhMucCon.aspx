<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DanhMucCon.aspx.cs" Inherits="Default2" %>
<%@ Register TagPrefix="uc1" TagName="DanhMucCon" Src="../UserControls/DanhMucCon.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    
    
	<br />
    <br />
    <asp:Panel ID="Panel1" runat="server">
	<table>
	    <uc1:DanhMucCon ID="SubCategoryBrowser" runat="server" AutoNavigate="True" />
    </table>
    </asp:Panel>

</asp:Content>

