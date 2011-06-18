<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TimKiemNangCao.aspx.cs" Inherits="Default2" %>
<%@ Register TagPrefix="uc1" TagName="TimKiemNangCao" Src="UserControls/TimKiemNangCao.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <uc1:TimKiemNangCao ID="TimKiemNangCao" runat="server" AutoNavigate="True">
    </uc1:TimKiemNangCao>
</asp:Content>

