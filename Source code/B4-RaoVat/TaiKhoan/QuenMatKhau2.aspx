<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="QuenMatKhau2.aspx.cs" Inherits="Default2" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <table style="width: 100%; height: 100px;">
        <tr>
            <td style="width: 277px">
                &nbsp;
            </td>
            <td style="width: 288px">
                <asp:Label ID="lblMainLabel" runat="server" Text="QUÊN MẬT KHẨU" Font-Bold="True"
                    Font-Size="12pt" ForeColor="#3366CC" 
                    meta:resourcekey="lblMainLabelResource1"></asp:Label>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 277px">
                <asp:Label ID="lblUser" runat="server" Text="Tên người dùng:" Font-Bold="True" 
                    meta:resourcekey="lblUserResource1"></asp:Label>
            </td>
            <td style="width: 288px">
                <asp:TextBox ID="txtUser" runat="server" Width="227px" 
                    meta:resourcekey="txtUserResource1"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblThongBaoUser" runat="server" Font-Bold="True" 
                    ForeColor="#FF3300" meta:resourcekey="lblThongBaoUserResource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 277px; height: 19px;">
                &nbsp;
            </td>
            <td style="height: 19px;" colspan="2">
                <asp:Label ID="lblThank" runat="server" Font-Bold="True" ForeColor="#3366CC" 
                    meta:resourcekey="lblThankResource1"></asp:Label>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 277px">
                &nbsp;
            </td>
            <td style="width: 288px">
                <asp:Button ID="Button1" runat="server" OnClick="bntDongY_Click" Text="Đồng Ý" 
                    Width="85px" meta:resourcekey="Button1Resource1" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
