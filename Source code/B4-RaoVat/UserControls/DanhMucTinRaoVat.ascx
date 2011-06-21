<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DanhMucTinRaoVat.ascx.cs"
    Inherits="UserControl_TinRaoVatMoiNhat" %>
<asp:GridView ID="FeaturedAdGrid" runat="server" DataSourceID="FeaturedAdDataSource"
    AutoGenerateColumns="False" EnableViewState="False" DataKeyNames="MaTinRaoVat"
    BorderWidth="1px" ShowFooter="True" OnSelectedIndexChanged="FeaturedAdGrid_SelectedIndexChanged"
    AllowPaging="True" BorderStyle="None" BackColor="White" BorderColor="#999999"
    CellPadding="3" GridLines="Vertical" meta:resourcekey="FeaturedAdGridResource1"
    Width="572px" Style="margin-right: 0px">
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <EmptyDataTemplate>
        You have no currently active ads.
        <asp:HyperLink ID="PostAdLink" runat="server" NavigateUrl="~/PostAd.aspx" meta:resourcekey="PostAdLinkResource1">Click here to Post a new Ad.</asp:HyperLink>
    </EmptyDataTemplate>
    <Columns>
        <asp:ImageField HeaderText="Hình ảnh" DataImageUrlField="Thumbnail" DataImageUrlFormatString="~/images/TinRaoVat/{0}"
            meta:resourcekey="ImageFieldResource1">
            <ControlStyle Height="64px" Width="64px" />
        </asp:ImageField>
        <asp:HyperLinkField HeaderText="Tiêu đề" DataNavigateUrlFields="MaTinRaoVat" DataNavigateUrlFormatString="../DanhMuc/XemNoiDungTin.aspx?id={0}"
            DataTextField="TieuDe" meta:resourcekey="HyperLinkFieldResource1"></asp:HyperLinkField>
        <asp:BoundField HeaderText="Ngày đăng" DataField="ThoiGianDang" DataFormatString="{0:dd/MM/yy}"
            meta:resourcekey="BoundFieldResource1"></asp:BoundField>
        <asp:TemplateField HeaderText="Địa điểm" SortExpression="DIADIEM.TenDiaDiem" 
            meta:resourcekey="TemplateFieldResource1">
            <ItemTemplate>
                <%#Eval("DIADIEM.TenDiaDiem")%>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField HeaderText="Số lần xem" DataField="SoLanXem" meta:resourcekey="BoundFieldResource2">
        </asp:BoundField>
    </Columns>
    <RowStyle HorizontalAlign="Center" BackColor="#EEEEEE" ForeColor="Black"></RowStyle>
    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
    <AlternatingRowStyle BackColor="Gainsboro"></AlternatingRowStyle>
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>
</asp:GridView>
<asp:ObjectDataSource ID="FeaturedAdDataSource" runat="server"></asp:ObjectDataSource>
