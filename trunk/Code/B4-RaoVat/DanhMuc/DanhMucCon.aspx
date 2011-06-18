<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="DanhMucCon.aspx.cs" Inherits="Default2" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<%@ Register TagPrefix="uc1" TagName="DanhMucCon" Src="../UserControls/DanhMucCon.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <asp:Label ID="Label9" runat="server" Text="DANH MỤC CON" Font-Bold="True" 
        Font-Size="Medium" meta:resourcekey="Label9Resource1"></asp:Label>
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" meta:resourcekey="Panel1Resource1">
        <table>
            <uc1:DanhMucCon ID="SubCategoryBrowser" runat="server" AutoNavigate="True" />
        </table>
    </asp:Panel>
</asp:Content>
