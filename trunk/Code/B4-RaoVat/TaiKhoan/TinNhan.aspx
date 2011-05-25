<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TinNhan.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:GridView ID="GirdView1" CssClass="girdview" 
        AlternatingRowStyle-CssClass="even" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="MaTinNhan" DataSourceID="TinNhanDataSource1" 
        AllowPaging="True" AllowSorting="True" >
        <Columns>
            <asp:BoundField DataField="MaNguoiDung" HeaderText="MaNguoiDung" 
                SortExpression="MaNguoiDung" />
            <asp:BoundField DataField="MaNguoiNhanTin" HeaderText="MaNguoiNhanTin" 
                SortExpression="MaNguoiNhanTin" />
            <asp:BoundField DataField="TieuDeTinNhan" HeaderText="TieuDeTinNhan" 
                SortExpression="TieuDeTinNhan" />
            <asp:BoundField DataField="NoiDungTinNhan" HeaderText="NoiDungTinNhan" 
                SortExpression="NoiDungTinNhan" />
            <asp:BoundField DataField="ThoiGianNhanTin" HeaderText="ThoiGianNhanTin" 
                SortExpression="ThoiGianNhanTin" />
            <asp:CheckBoxField DataField="Readed" HeaderText="Readed" 
                SortExpression="Readed" />
            <asp:CheckBoxField DataField="Deleted" HeaderText="Deleted" 
                SortExpression="Deleted" />
        </Columns>
<AlternatingRowStyle CssClass="even"></AlternatingRowStyle>
    </asp:GridView>
    <asp:LinqDataSource ID="TinNhanDataSource1" runat="server" 
        ContextTypeName="DAO.RaoVatDataClassesDataContext" TableName="TINNHANs" 
        Where="MaNguoiDung == @MaNguoiDung">
        <WhereParameters>
            <asp:CookieParameter CookieName="11" DefaultValue="11" Name="MaNguoiDung" 
                Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
</asp:Content>

