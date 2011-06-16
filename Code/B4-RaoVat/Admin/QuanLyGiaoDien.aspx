<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuanLyGiaoDien.aspx.cs" Inherits="QuanLyGiaoDien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <table style="width: 99%; height: 438px;">
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
                <asp:DropDownList ID="ddlBanner" runat="server" DataSourceID="lqBanner">
                </asp:DropDownList>
                <asp:LinqDataSource ID="lqBanner" runat="server" 
                    ContextTypeName="DAO.RaoVatDataClassesDataContext" 
                    Select="(TenBannerGiaoDien)" TableName="BANNERGIAODIENs" 
                    Where="Deleted == @Deleted">
                    <WhereParameters>
                        <asp:Parameter DefaultValue="false" Name="Deleted" Type="Boolean" />
                    </WhereParameters>
                </asp:LinqDataSource>
                <asp:Button ID="btnChonBanner" runat="server" Text="Chọn làm banner" 
                    onclick="btnChonBanner_Click" />
                <asp:Button ID="btnXoaBanner" runat="server" Text="Xóa" 
                    onclick="btnXoaBanner_Click" />
            </td>
            
        </tr>
        <tr>
            <td style="width: 121px">
                <asp:Label ID="Label10" runat="server" Text="Thêm banner"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="fupBanner" runat="server" />
                <asp:Button ID="btnThemBanner" runat="server" Text="Thêm banner" 
                    onclick="btnThemBanner_Click" />
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
                <asp:DropDownList ID="ddlLogo" runat="server" DataSourceID="lqLogo">
                </asp:DropDownList>
                <asp:LinqDataSource ID="lqLogo" runat="server" 
                    ContextTypeName="DAO.RaoVatDataClassesDataContext" Select="(TenLogo)" 
                    TableName="LOGOs" Where="Deleted == @Deleted">
                    <WhereParameters>
                        <asp:Parameter DefaultValue="false" Name="Deleted" Type="Boolean" />
                    </WhereParameters>
                </asp:LinqDataSource>
                <asp:Button ID="btnChonLogo" runat="server" Text="Chọn làm logo" 
                    onclick="btnChonLogo_Click" />
                <asp:Button ID="btnXoaLogo" runat="server" Text="Xóa" 
                    onclick="btnXoaLogo_Click" />
            </td>
            
        </tr>
        <tr>
            <td style="width: 121px">
                <asp:Label ID="Label12" runat="server" Text="Thêm logo"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="fupLogo" runat="server" />
                <asp:Button ID="btnThemLogo" runat="server" Text="Thêm logo" 
                    onclick="btnThemLogo_Click" />
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
                <asp:Button ID="btnChonTheme" runat="server" Text="Chọn làm theme" 
                    onclick="btnChonTheme_Click" />
            </td>
            
        </tr>
    </table>
    <br />
</asp:Content>

