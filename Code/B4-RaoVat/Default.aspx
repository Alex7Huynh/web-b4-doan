<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="Default2" Culture="auto" meta:resourcekey="PageResource1"
    UICulture="auto" %>
    
<%@ Register TagPrefix="uc1" TagName="TinRaoVatMoiNhat" Src="UserControls/TinRaoVatMoiNhat.ascx" %>
<%@ Register TagPrefix="uc1" TagName="JQueryMenu" Src="UserControls/JQueryMenu.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <div id="body">
        <div id="col_main_left">
            <uc1:JQueryMenu ID="JQueryMenuMain" runat="server"></uc1:JQueryMenu>
        </div>
        <div id="col_main_right">
            <uc1:TinRaoVatMoiNhat ID="FeaturedAd" runat="server"></uc1:TinRaoVatMoiNhat>
        </div>
    </div>
</asp:Content>
