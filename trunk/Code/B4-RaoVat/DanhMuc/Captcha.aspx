<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Captcha.aspx.cs" Inherits="BaoCaoBaiVietViPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
<div style="border:1px solid #DDD; width:320px; padding:10px">
    Mã bảo vệ:
    <asp:TextBox ID="TextBox1" runat="server" /><asp:Button ID="Button1" 
    runat="server" onclick="Button1_Click" Text="OK" Width="80px" />
    <cc1:CaptchaControl ID="ccJoin"
     runat="server" 
     CaptchaBackgroundNoise="Extreme" 
     CaptchaLength="5" 
     CaptchaHeight="60" 
     CaptchaWidth="210" 
     CaptchaLineNoise="None" 
     CaptchaMinTimeout="5"
     CaptchaMaxTimeout="240" />
     <asp:Label ID="Label1" runat="server" style="color: #FF3300"></asp:Label>
</div>
</asp:Content>
