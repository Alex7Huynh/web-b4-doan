<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="XemDanhSachTinRaoVat.aspx.cs" Inherits="XemDanhSachTinRaoVat" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <asp:GridView ID="FeaturedAdGrid" runat="server" DataSourceID="lqTinRaoVat" AutoGenerateColumns="False"
        EnableViewState="False" BorderWidth="1px" ShowFooter="True" AllowPaging="True"
        BorderStyle="None" BackColor="White" BorderColor="#999999" CellPadding="3" GridLines="Vertical"
        meta:resourcekey="FeaturedAdGridResource1" Width="572px" Style="margin-right: 0px">
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <EmptyDataTemplate>
            You have no currently active ads.
            <asp:HyperLink ID="PostAdLink" runat="server" NavigateUrl="/B4-RaoVat/TinRaoVat/ChonChuyenMucDang.aspx" meta:resourcekey="PostAdLinkResource1">Click here to Post a new Ad.</asp:HyperLink>
        </EmptyDataTemplate>
        <Columns>
            <asp:HyperLinkField HeaderText="Tiêu đề" DataNavigateUrlFields="MaTinRaoVat" DataNavigateUrlFormatString="../DanhMuc/XemNoiDungTin.aspx?id={0}"
                DataTextField="TieuDe" meta:resourcekey="HyperLinkFieldResource1"></asp:HyperLinkField>
            <asp:BoundField HeaderText="Ngày đăng" DataField="ThoiGianDang" 
                DataFormatString="{0:dd/MM/yy}" meta:resourcekey="BoundFieldResource1" />
            <asp:BoundField DataField="ThoiHanLuuTin" HeaderText="Thời gian lưu tin" ReadOnly="True"
                SortExpression="ThoiHanLuuTin" meta:resourcekey="BoundFieldResource2"></asp:BoundField>
            <asp:BoundField HeaderText="Số lần xem" DataField="SoLanXem" ReadOnly="True" 
                SortExpression="SoLanXem" meta:resourcekey="BoundFieldResource3">
            </asp:BoundField>
            <asp:CheckBoxField DataField="Deleted" HeaderText="Deleted" ReadOnly="True" 
                SortExpression="Deleted" meta:resourcekey="CheckBoxFieldResource1" />
            <asp:TemplateField meta:resourcekey="TemplateFieldResource1"></asp:TemplateField>
        </Columns>
        <RowStyle HorizontalAlign="Center" BackColor="#EEEEEE" ForeColor="Black"></RowStyle>
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="Gainsboro"></AlternatingRowStyle>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>
    </asp:GridView>
    <asp:LinqDataSource ID="lqTinRaoVat" runat="server" ContextTypeName="DAO.RaoVatDataClassesDataContext"
        Select="new (MaTinRaoVat, ThoiGianDang, ThoiHanLuuTin, SoLanXem, TieuDe, Deleted, DIADIEM, DANHMUCCON)"
        TableName="TINRAOVATs" Where="Deleted == @Deleted &amp;&amp; MaNguoiDung == @MaNguoiDung">
        <WhereParameters>
            <asp:Parameter DefaultValue="false" Name="Deleted" Type="Boolean" />
            <asp:SessionParameter Name="MaNguoiDung" SessionField="userID" Type="object" />
        </WhereParameters>
    </asp:LinqDataSource>
</asp:Content>
