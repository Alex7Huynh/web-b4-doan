<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="XemTinNhan.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:GridView ID="GridView" CssClass="gridview" 
        AlternatingRowStyle-CssClass="even" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
        BorderWidth="1px" CellPadding="2" DataSourceID="LinqDataSource1" 
        ForeColor="Black" GridLines="None" >
    
        <Columns>
            <asp:BoundField DataField="TieuDeTinNhan" HeaderText="TieuDeTinNhan" 
                SortExpression="TieuDeTinNhan" ReadOnly="True" />
            <asp:BoundField DataField="NoiDungTinNhan" HeaderText="NoiDungTinNhan" 
                SortExpression="NoiDungTinNhan" ReadOnly="True" />
            <asp:BoundField DataField="ThoiGianNhanTin" HeaderText="ThoiGianNhanTin" 
                SortExpression="ThoiGianNhanTin" ReadOnly="True" />
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
        ContextTypeName="DAO.RaoVatDataClassesDataContext" 
        TableName="TINNHANs" Where="MaNguoiDung == @MaNguoiDung1" 
        Select="new (TieuDeTinNhan, NoiDungTinNhan, ThoiGianNhanTin)">
        <WhereParameters>
            <asp:SessionParameter DefaultValue="11" Name="MaNguoiDung1" 
                SessionField="userID" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
    
</asp:Content>

