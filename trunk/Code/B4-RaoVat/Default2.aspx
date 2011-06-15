<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>
<%@ Register TagPrefix="ajaxToolkit" TagName="JQueryMenu" Src="UserControls/JQueryMenu.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:TreeView ID="TreeView1" runat="server">
    </asp:TreeView>
    <ajaxToolkit:JQueryMenu ID="JQueryMenu1" runat="server"/>
</asp:Content>

