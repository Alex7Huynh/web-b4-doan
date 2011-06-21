<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="RichTextEditor.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <cc1:Editor ID="Editor1" runat="server" Width="500px" />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <br />
    <br />
    &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="101px" Width="298px">abc</asp:TextBox>
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
</asp:Content>
