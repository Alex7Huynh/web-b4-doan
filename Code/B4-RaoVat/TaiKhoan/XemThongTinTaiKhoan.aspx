<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="XemThongTinTaiKhoan.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="373px" Width="1010px">
        <table style="width: 466px; margin-left: 250px">
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblThongTin" runat="server" Text="Thông Tin Tài Khoản" 
                        Font-Bold="True" Font-Names="Tahoma" Font-Size="14pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Tên đăng nhập:
                </td>
                <td>
                    <asp:Label ID="lblTenDangNhap" runat="server" BackColor="#FF3300" 
                        BorderColor="White" Font-Bold="True" Font-Names="Tahoma" Font-Size="11pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Email
                </td>
                <td>
                    <asp:Label ID="lblEmail" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                        Font-Size="11pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Điện thoại:
                </td>
                <td>
                    <asp:Label ID="lblDienThoai" runat="server" Font-Bold="True" 
                        Font-Names="Tahoma" Font-Size="11pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Địa chỉ:
                </td>
                <td>
                    <asp:Label ID="lblDiaChi" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                        Font-Size="11pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Mã kích hoạt:
                </td>
                <td>
                    <asp:Label ID="lblMaKH" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                        Font-Size="11pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Trình trạng kích họat:
                </td>
                <td>
                    <asp:Label ID="lblTrinhTrangKH" runat="server" Font-Bold="True" 
                        Font-Names="Tahoma" Font-Size="11pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Thời gian đăng ký:
                </td>
                <td>
                    <asp:Label ID="lblThoiGianDK" runat="server" Font-Bold="True" 
                        Font-Names="Tahoma" Font-Size="11pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Thời gian hết hạn:
                </td>
                <td>
                    <asp:Label ID="lblThoiGianHH" runat="server" Font-Bold="True" Font-Size="11pt"></asp:Label>
                </td>
            </tr>
            </tr>
            <tr>
                <td>
                    Loại người dùng:
                </td>
                <td>
                    <asp:Label ID="lblLoaiNguoiDung" runat="server" Font-Bold="True" 
                        Font-Names="Tahoma" Font-Size="11pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnLogin" runat="server" Text="Chuyển Tài Khoản" 
                        Width="123px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
