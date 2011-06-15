<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="QuenMatKhau2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <table style="width: 100%; height: 100px;">
        <tr>
            <td style="width: 277px">
                &nbsp;
            </td>
            <td style="width: 288px">
                <asp:Label ID="lblMainLabel" runat="server" Text="QUÊN MẬT KHẨU" Font-Bold="True"
                    Font-Size="12pt" ForeColor="#3366CC"></asp:Label>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 277px">
                <asp:Label ID="lblUser" runat="server" Text="Tên người dùng:" Font-Bold="True"></asp:Label>
            </td>
            <td style="width: 288px">
                <asp:TextBox ID="txtUser" runat="server" Width="227px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblThongBaoUser" runat="server" Font-Bold="True" 
                    ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 277px">
                <asp:Label ID="lblEmail" runat="server" Text="Email nhận mật khẩu:" Font-Bold="True"></asp:Label>
            </td>
            <td style="width: 288px">
                <asp:TextBox ID="txtEmail" runat="server" Width="226px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblThongBaoEmail" runat="server" Font-Bold="True" 
                    ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 277px; height: 19px;">
                &nbsp;
            </td>
            <td style="width: 288px; height: 19px;">
                <asp:Label ID="lblThank" runat="server" Font-Bold="True" ForeColor="#3366CC"></asp:Label>
            </td>
            <td style="height: 19px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 277px">
                &nbsp;
            </td>
            <td style="width: 288px">
                <asp:Button ID="Button1" runat="server" OnClick="bntDongY_Click" Text="Đồng Ý" Width="85px" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
