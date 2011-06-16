<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>
<%@ Register TagPrefix="ajaxToolkit" TagName="JQueryMenu" Src="UserControls/JQueryMenu.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:TreeView ID="TreeView1" runat="server" ImageSet="XPFileExplorer" 
        NodeIndent="15">
        <ParentNodeStyle Font-Bold="False" />
        <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
        <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" 
            HorizontalPadding="0px" VerticalPadding="0px" />
        <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" 
            HorizontalPadding="2px" NodeSpacing="0px" VerticalPadding="2px" />
    </asp:TreeView>
    <ajaxToolkit:JQueryMenu ID="JQueryMenu1" runat="server"/>
</asp:Content>

