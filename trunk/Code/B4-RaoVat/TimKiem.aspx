<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TimKiem.aspx.cs" Inherits="Default2" %>
<%@ Register TagPrefix="uc1" TagName="DanhMucTinRaoVat" Src="UserControls/DanhMucTinRaoVat.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:Label ID="lblKetQua" runat="server" Text="Kết Quả Tìm Kiếm"></asp:Label>
    <uc1:DanhMucTinRaoVat ID="SearchResult" runat="server" AutoNavigate="True" TypeName="BUS.TinRaoVatBUS" 
        SelectMethod="TimKiem">
    </uc1:DanhMucTinRaoVat>
    <asp:LinkButton ID="lbtnTimKiemNangCao" runat="server" Text="Tìm Kiếm Nâng Cao" 
        PostBackUrl="~/TimKiemNangCao.aspx"></asp:LinkButton>
</asp:Content>

