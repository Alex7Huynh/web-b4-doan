<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuanLyDanhMuc.aspx.cs" Inherits="QuanLyDanhMuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="4" align="center">
                <asp:Label ID="Label11" runat="server" Text="DANH MỤC CHÍNH" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label20" runat="server" Text="Chuyên mục thuộc về"></asp:Label>
            </td>
            <td colspan="2" align="center">
                <asp:DropDownList ID="ddlChuyenMuc" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 108px" align="center">
                <asp:Label ID="Label9" runat="server" Text="Thêm"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtThemDanhMucChinh" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnThemDMChinh" runat="server" Text="Thêm" 
                    onclick="btnThemDMChinh_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 108px; height: 33px" align="center">
                <asp:Label ID="Label10" runat="server" Text="Xóa/Sửa"></asp:Label>
            </td>
            <td style="height: 33px" colspan="2">
                <asp:DropDownList ID="ddlDanhMucChinh" runat="server">
                </asp:DropDownList>
            </td>
            <td style="height: 33px">
                <asp:Button ID="btnXoaDMChinh" runat="server" Text="Xóa" 
                    onclick="btnXoaDMChinh_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 108px; height: 33px" align="center">
                &nbsp;</td>
            <td style="height: 33px" colspan="2">
                <asp:TextBox ID="txtSuaDanhMucChinh" runat="server"></asp:TextBox>
            </td>
            <td style="height: 33px">
                <asp:Button ID="btnSuaDMChinh" runat="server" Text="Sửa" 
                    onclick="btnSuaDMChinh_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <asp:Label ID="Label12" runat="server" Text="DANH MỤC CON" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label19" runat="server" Text="Danh mục chính thuộc về"></asp:Label>
            </td>
            <td colspan="2" align="center">
                <asp:DropDownList ID="ddlDanhMucChinhChon" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 108px" align="center">
                <asp:Label ID="Label16" runat="server" Text="Thêm"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtThemDanhMucCon" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnThemDCCon" runat="server" Text="Thêm" 
                    onclick="btnThemDCCon_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 108px" align="center">
                <asp:Label ID="Label17" runat="server" Text="Xóa/Sửa"></asp:Label>
            </td>
            <td colspan="2">
                <asp:DropDownList ID="ddlDanhMucCon" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="btnXoaDMCon" runat="server" Text="Xóa" 
                    onclick="btnXoaDMCon_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 108px" align="center">
                &nbsp;</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnSuaDMCon" runat="server" Text="Sửa" 
                    onclick="btnSuaDMCon_Click" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

