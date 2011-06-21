<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Email.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
<div>
    Gửi tới:&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtTo" runat="server" Width="280px"></asp:TextBox>
    <br />
    Subject:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtSubject" runat="server" Width="280px"></asp:TextBox>
    <br />
    Nội dung:&nbsp;
    <asp:TextBox ID="txtConTent" runat="server" Rows="4" TextMode="MultiLine" 
        Width="278px"></asp:TextBox>
    <asp:Button ID="btnSend" runat="server" onclick="btnSend_Click" 
        Text="Gửi mail" />
</div>
</asp:Content>

