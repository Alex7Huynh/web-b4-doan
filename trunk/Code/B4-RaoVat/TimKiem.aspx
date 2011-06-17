<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TimKiem.aspx.cs" Inherits="Default2" %>
<%@ Register TagPrefix="uc1" TagName="DanhMucTinRaoVat" Src="UserControls/DanhMucTinRaoVat.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <table style="width: 84%; background-color: #EAFFFF;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Tìm kiếm" ForeColor="#003399"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTimKiem" runat="server" Width="300px" ForeColor="#003399"></asp:TextBox>
                <asp:Button ID="btnTim" runat="server" BackColor="#FF9933" 
                    BorderStyle="Groove" Font-Bold="True" ForeColor="White" 
                            onclick="btnTim_Click" Text="Tìm" Width="62px" />
            </td>
            <td style="width: 60px">
               <asp:RequiredFieldValidator ID="rfvTimKiem" runat="server" 
                           ControlToValidate="txtTimKiem" ErrorMessage="Không bỏ trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <uc1:DanhMucTinRaoVat ID="SearchResult" runat="server" AutoNavigate="True" TypeName="BUS.TinRaoVatBUS" 
        SelectMethod="LayDanhSachTinRaoVatTheoNoiDung">
    </uc1:DanhMucTinRaoVat>
</asp:Content>

