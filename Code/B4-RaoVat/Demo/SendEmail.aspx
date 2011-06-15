<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SendEmail.aspx.cs" Inherits="Demo_SendEmail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 92px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 360px; width: 695px">
        <table style="width: 99%; height: 184px;">
            <tr>
                <td class="style1">
                    <asp:Label ID="lblTo" runat="server" Text="To"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTo" runat="server" Width="452px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="lblFrom" runat="server" Text="From"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFrom" runat="server" Width="450px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSubject" runat="server" Width="449px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="lblBody" runat="server" Text="Body"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBody" runat="server" Width="449px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="lblStatusSend" runat="server" Text="Status send"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtStatusSend" runat="server" Width="445px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="bntSend" runat="server" OnClick="bntSend_Click" Text="Send" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
