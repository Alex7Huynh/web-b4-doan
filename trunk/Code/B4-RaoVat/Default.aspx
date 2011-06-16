<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="Default2" Culture="auto" meta:resourcekey="PageResource1"
    UICulture="auto" %>
    
<%@ Register TagPrefix="uc1" TagName="DanhMucTinRaoVat" Src="UserControls/DanhMucTinRaoVat.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <h3 class="section">
        Browse Categories</h3>
    <uc1:DanhMucTinRaoVat ID="FeaturedAd" runat="server" TypeName="BUS.TinRaoVatBUS" 
        SelectMethod="LayDanhSachTinRaoVatMoiNhat"></uc1:DanhMucTinRaoVat>
</asp:Content>
