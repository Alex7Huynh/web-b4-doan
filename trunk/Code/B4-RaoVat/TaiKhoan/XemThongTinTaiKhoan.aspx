<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="XemThongTinTaiKhoan.aspx.cs" Inherits="Default2" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="373px" Width="1010px" 
        meta:resourcekey="Panel1Resource1">
        <table style="width: 466px; margin-left: 250px">
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblThongTin" runat="server" Text="Thông Tin Tài Khoản" 
                        Font-Bold="True" Font-Names="Tahoma" Font-Size="14pt" 
                        meta:resourceKey="lblThongTinResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label07" runat="server" text="Tên đăng nhập" 
                        meta:resourceKey="Label07Resource1" />
                </td>
                <td>
                    <asp:Label ID="lblTenDangNhap" runat="server" BackColor="#FF3300" 
                        BorderColor="White" Font-Bold="True" Font-Names="Tahoma" Font-Size="11pt" 
                        meta:resourceKey="lblTenDangNhapResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;<asp:Label ID="Label8" runat="server" meta:resourcekey="Label8Resource1" 
                        Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblEmail" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                        Font-Size="11pt" meta:resourceKey="lblEmailResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" meta:resourcekey="Label9Resource1" 
                        Text="Điện thoại:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblDienThoai" runat="server" Font-Bold="True" 
                        Font-Names="Tahoma" Font-Size="11pt" 
                        meta:resourceKey="lblDienThoaiResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" meta:resourcekey="Label10Resource1" 
                        Text="Địa chỉ: "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblDiaChi" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                        Font-Size="11pt" meta:resourceKey="lblDiaChiResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" meta:resourcekey="Label11Resource1" 
                        Text="Mã kích hoạt:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblMaKH" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                        Font-Size="11pt" meta:resourceKey="lblMaKHResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" meta:resourcekey="Label12Resource1" 
                        Text="Trình trạng kích hoạt:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblTrinhTrangKH" runat="server" Font-Bold="True" 
                        Font-Names="Tahoma" Font-Size="11pt" 
                        meta:resourceKey="lblTrinhTrangKHResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" meta:resourcekey="Label13Resource1" 
                        Text="Thời gian đăng ký:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblThoiGianDK" runat="server" Font-Bold="True" 
                        Font-Names="Tahoma" Font-Size="11pt" 
                        meta:resourceKey="lblThoiGianDKResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" meta:resourcekey="Label14Resource1" 
                        Text="Thời gian hết hạn:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblThoiGianHH" runat="server" Font-Bold="True" Font-Size="11pt" 
                        meta:resourceKey="lblThoiGianHHResource1"></asp:Label>
                </td>
            </tr>
            </tr>
            <tr>
                <td style="height: 22px">
                    <asp:Label ID="Label15" runat="server" meta:resourcekey="Label15Resource1" 
                        Text="Loại người dùng:"></asp:Label>
                </td>
                <td style="height: 22px">
                    <asp:Label ID="lblLoaiNguoiDung" runat="server" Font-Bold="True" 
                        Font-Names="Tahoma" Font-Size="11pt" 
                        meta:resourceKey="lblLoaiNguoiDungResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 33px">
                        
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                     <asp:Button ID="btnNangCap" runat="server" Text="Nâng cấp tài khoản" 
                        Width="123px" meta:resourceKey="btnNangCapResource1" 
                        onclick="btnNangCap_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
