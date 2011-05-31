<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="XemTinNhan.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:GridView ID="GirdView1" CssClass="girdview" 
        AlternatingRowStyle-CssClass="even" runat="server" 
        AutoGenerateColumns="False" DataSourceID="TinNhanDataSource1" 
        AllowPaging="True" AllowSorting="True" >
        <Columns>
            <asp:BoundField DataField="TieuDeTinNhan" HeaderText="TieuDeTinNhan" 
                SortExpression="TieuDeTinNhan" ReadOnly="True" />
            <asp:BoundField DataField="NoiDungTinNhan" HeaderText="NoiDungTinNhan" 
                SortExpression="NoiDungTinNhan" ReadOnly="True" />
            <asp:BoundField DataField="ThoiGianNhanTin" HeaderText="ThoiGianNhanTin" 
                SortExpression="ThoiGianNhanTin" ReadOnly="True" />
        </Columns>
        
<AlternatingRowStyle CssClass="even"></AlternatingRowStyle>
    </asp:GridView>
    <a href="NhanTin.aspx">NhanTin</a>
    
    <asp:LinqDataSource ID="TinNhanDataSource1" runat="server" 
        ContextTypeName="DAO.RaoVatDataClassesDataContext" TableName="TINNHANs" 
        Where="MaNguoiDung == @MaNguoiDung" 
        Select="new (TieuDeTinNhan, NoiDungTinNhan, ThoiGianNhanTin)">
        <WhereParameters>
            <asp:CookieParameter CookieName="userID" DefaultValue="11" Name="MaNguoiDung" 
                Type="Int32" />
        </WhereParameters>

        
    </asp:LinqDataSource>
</asp:Content>

