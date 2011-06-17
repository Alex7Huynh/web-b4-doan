<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="XemNoiDungTin.aspx.cs" Inherits="Default2" %>
<%@ Register TagPrefix="uc1" TagName="XemNoiDungTin" Src="../UserControls/XemNoiDungTin.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#DBDBDB" BorderColor="#333300" 
        BorderStyle="Dotted" Width="571px">
        
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="MaTinRaoVat" DataSourceID="LinqDataSource1" 
        ForeColor="#333333" GridLines="None" style="margin-top: 0px" Width="568px" 
            AllowPaging="True" AllowSorting="True">
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="MaTinRaoVat" 
                DataNavigateUrlFormatString="../DanhMuc/XemNoiDungTin.aspx?id={0}" 
                DataTextField="TieuDe" HeaderText="Tin Rao Vặt Nổi Bật" 
                NavigateUrl="~/DanhMuc/XemNoiDungTin.aspx">
            <ControlStyle Font-Italic="True" ForeColor="#0066FF" />
            <HeaderStyle Font-Bold="True" ForeColor="Red" />
            </asp:HyperLinkField>
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="DAO.RaoVatDataClassesDataContext" TableName="TINRAOVATs" 
        Where="MaNguoiDung == @MaNguoiDung">
        <WhereParameters>
            <asp:Parameter DefaultValue="2" Name="MaNguoiDung" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
    
    <br />
    
    <br />
</asp:Panel>
    
    <br />
    <br />
    
<asp:Panel ID="Panel2" runat="server" BorderColor="#333300" 
        BorderStyle="Dotted" Width="571px">
        
    <uc1:XemNoiDungTin ID="AddBrowser" runat="server" AutoNavigate="True">
    </uc1:XemNoiDungTin>
</asp:Panel>
</asp:Content>

