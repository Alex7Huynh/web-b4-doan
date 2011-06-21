<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DanhMucTinRaoVat.aspx.cs" Inherits="Default2" %>
<%@ Register TagPrefix="uc1" TagName="DanhMucTinRaoVat" Src="../UserControls/DanhMucTinRaoVat.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <uc1:DanhMucTinRaoVat ID="AddBrowser" runat="server" AutoNavigate="True" TypeName="BUS.TinRaoVatBUS" 
        SelectMethod="LayDanhSachTinRaoVatTheoNoiDung">
    </uc1:DanhMucTinRaoVat>
</asp:Content>

