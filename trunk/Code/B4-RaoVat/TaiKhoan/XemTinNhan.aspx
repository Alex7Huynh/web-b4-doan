<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="XemTinNhan.aspx.cs" Inherits="Default2" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:GridView ID="GridView" CssClass="gridview" 
        AlternatingRowStyle-CssClass="even" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
        BorderWidth="1px" CellPadding="2" DataSourceID="LinqDataSource1" 
        ForeColor="Black" GridLines="None" meta:resourcekey="GridViewResource1" >
    
        <Columns>
            <asp:BoundField DataField="TieuDeTinNhan" HeaderText="Tiêu đề tin nhắn" 
                SortExpression="TieuDeTinNhan" ReadOnly="True" 
                meta:resourcekey="BoundFieldResource1" />
            <asp:BoundField DataField="NoiDungTinNhan" HeaderText="Nội dung tin nhắn" 
                SortExpression="NoiDungTinNhan" ReadOnly="True" 
                meta:resourcekey="BoundFieldResource2" />
            <asp:BoundField DataField="ThoiGianNhanTin" HeaderText="Thời gian nhắn tin" 
                SortExpression="ThoiGianNhanTin" ReadOnly="True" 
                meta:resourcekey="BoundFieldResource3" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
<AlternatingRowStyle CssClass="even"></AlternatingRowStyle>
    </asp:GridView>
        <a href="NhanTin.aspx"><asp:Label ID="lblNhanTin" runat="server" 
        meta:resourcekey="lblNhanTinResource1">Nhắn tin</asp:Label>
    </a>
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

