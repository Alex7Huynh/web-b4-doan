<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="XemTinNhan.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:GridView ID="GridView" CssClass="gridview" 
        AlternatingRowStyle-CssClass="even" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
        BorderWidth="1px" CellPadding="2" DataSourceID="LinqDataSource1" 
        ForeColor="Black" GridLines="None" DataKeyNames="MaTinNhan" >
    
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="TieuDeTinNhan" HeaderText="TieuDeTinNhan" 
                SortExpression="TieuDeTinNhan" />
            <asp:BoundField DataField="NoiDungTinNhan" HeaderText="NoiDungTinNhan" 
                SortExpression="NoiDungTinNhan" />
            <asp:BoundField DataField="ThoiGianNhanTin" HeaderText="ThoiGianNhanTin" 
                SortExpression="ThoiGianNhanTin" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
<AlternatingRowStyle CssClass="even"></AlternatingRowStyle>
    </asp:GridView>
        <a href="NhanTin.aspx">Nhắn Tin</a>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="DAO.RaoVatDataClassesDataContext" EnableDelete="True" 
        EnableInsert="True" EnableUpdate="True" 
        TableName="TINNHANs" Where="MaNguoiDung == @MaNguoiDung">
        <WhereParameters>
            <asp:CookieParameter CookieName="userID" DefaultValue="11" Name="MaNguoiDung" 
                Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
    
</asp:Content>

