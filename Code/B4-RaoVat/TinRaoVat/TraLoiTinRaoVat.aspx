<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="TraLoiTinRaoVat.aspx.cs" Inherits="TraLoiTinRaoVat" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="TRẢ LỜI TIN RAO VẶT"
        Font-Size="Medium" ForeColor="Red" meta:resourcekey="Label10Resource1"></asp:Label>
    <br />
    <br />
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <cc1:Editor ID="Editor1" runat="server" CssClass="" 
        meta:resourcekey="Editor1Resource1" />
    <br />
    <asp:Button ID="btnTraLoi" runat="server" OnClick="btnTraLoi_Click" Text="TRẢ LỜI"
        BackColor="#FF9933" BorderStyle="Groove" Font-Bold="True" 
        ForeColor="White" meta:resourcekey="btnTraLoiResource1" />
</asp:Content>
