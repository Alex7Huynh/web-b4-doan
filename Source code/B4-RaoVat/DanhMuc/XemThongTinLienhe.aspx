<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="XemThongTinLienhe.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <table cellpadding="4" cellspacing="4">
		<tr align="center">
			<td colspan="2"><b>Thông Tin Liên Hệ</b></td>
		</tr>
		<tr>
			<td style="width: 140px">Tên:</td>
			<td style="width: 276px"><asp:Label ID="lblTên" runat="server" /></td>
		</tr>
		<tr>
			<td style="width: 140px">Email:</td>
			<td style="width: 276px"><asp:Label ID="lblEmail" runat="server" /></td>
		</tr>
		<tr>
			<td style="width: 140px">Địa Chỉ:</td>
			<td style="width: 276px"><asp:Label ID="lblDiaChi" runat="server" /></td>
		</tr>
		<tr>
			<td style="width: 140px">Điện Thoại:</td>
			<td style="width: 276px"><asp:Label ID="lblDienThoai" runat="server" /></td>
		</tr>
	</table>
    <asp:Button ID="btnQuayLai" runat="server" 
        Text="Quay Lại Trang Thông Tin Rao Vặt" onclick="btnQuayLai_Click" />
</asp:Content>

