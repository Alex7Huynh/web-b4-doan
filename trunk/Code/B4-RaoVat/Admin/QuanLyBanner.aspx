<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuanLyBanner.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <table style="width: 60%;">
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="Label8" runat="server" Text="QUẢN LÝ BANNER"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td style="width: 121px">
                <asp:Label ID="Label9" runat="server" Text="Chọn/Xóa banner"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlBanner" runat="server">
                </asp:DropDownList>
                <asp:Button ID="btnChonBanner" runat="server" Text="Chọn làm banner" />
                <asp:Button ID="btnXoaBanner" runat="server" Text="Xóa" />
            </td>
            
        </tr>
        <tr>
            <td style="width: 121px">
                <asp:Label ID="Label10" runat="server" Text="Thêm banner"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="fupBanner" runat="server" />
                <asp:Button ID="btnThemBanner" runat="server" Text="Thêm banner" />
            </td>
            
        </tr>
        <tr>
            <td align="center" colspan="2">
                QUẢN LÝ LOGO</td>
            
        </tr>
        <tr>
            <td style="width: 121px">
                <asp:Label ID="Label11" runat="server" Text="Chọn/Xóa logo"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlLogo" runat="server">
                </asp:DropDownList>
                <asp:Button ID="btnChonLogo" runat="server" Text="Chọn làm logo" />
                <asp:Button ID="btnXoaLogo" runat="server" Text="Xóa" />
            </td>
            
        </tr>
        <tr>
            <td style="width: 121px">
                <asp:Label ID="Label12" runat="server" Text="Thêm logo"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="fupLogo" runat="server" />
                <asp:Button ID="btnThemLogo" runat="server" Text="Thêm logo" />
            </td>
            
        </tr>
        <tr>
            <td align="center" colspan="2">
                QUẢN LÝ THEME</td>
            
        </tr>
        <tr>
            <td style="width: 121px">
                <asp:Label ID="Label13" runat="server" Text="Chọn theme"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlTheme" runat="server">
                </asp:DropDownList>
                <asp:Button ID="btnChonTheme" runat="server" Text="Chọn làm theme" />
            </td>
            
        </tr>
    </table>
</asp:Content>

