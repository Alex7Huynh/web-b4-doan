<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TinRaoVatMoiNhat.ascx.cs" Inherits="UserControl_TinRaoVatMoiNhat" %>
	    <asp:GridView ID="FeaturedAdGrid" runat="server" 
            DataSourceID="FeaturedAdDataSource" AutoGenerateColumns="False"
		    EnableViewState="False" DataKeyNames="MaTinRaoVat"
		    BorderWidth="1px" CssClass="item_list"
		    ShowFooter="True" 
    onselectedindexchanged="FeaturedAdGrid_SelectedIndexChanged" 
    AllowPaging="True" BorderStyle="None" BackColor="White" 
    BorderColor="#999999" CellPadding="3" GridLines="Vertical" 
    meta:resourcekey="FeaturedAdGridResource1" Width="572px">
		    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
		    <EmptyDataTemplate>
			    You have no currently active ads.
			    <asp:HyperLink ID="PostAdLink" runat="server" NavigateUrl="~/PostAd.aspx" 
                    meta:resourcekey="PostAdLinkResource1">Click here to Post a new Ad.</asp:HyperLink>
		    </EmptyDataTemplate>
		    <Columns>
			    <asp:ImageField HeaderText="Hình ảnh" DataImageUrlField="Thumbnail"
                    DataImageUrlFormatString="~/images/TinRaoVat/{0}" 
                    meta:resourcekey="ImageFieldResource1">
			        <ControlStyle Height="64px" Width="64px" />
			    </asp:ImageField>
			    <asp:HyperLinkField HeaderText="Tiêu đề" DataNavigateUrlFields="MaTinRaoVat" DataNavigateUrlFormatString="../DanhMuc/XemNoiDungTin.aspx?id={0}"
				    DataTextField="TieuDe" HeaderStyle-CssClass="col_title"
				    ItemStyle-CssClass="col_title" meta:resourcekey="HyperLinkFieldResource1">
                <HeaderStyle CssClass="col_title" />
                <ItemStyle CssClass="col_title" />
                </asp:HyperLinkField>
			    <asp:BoundField HeaderText="Ngày đăng" DataField="ThoiGianDang"
				    DataFormatString="{0:dd/mm/yy}" HeaderStyle-CssClass="col_general" 
                    ItemStyle-CssClass="col_general" meta:resourcekey="BoundFieldResource1">
			    <HeaderStyle CssClass="col_general" />
                <ItemStyle CssClass="col_general" />
			    </asp:BoundField>
			    <asp:BoundField HeaderText="Số lần xem" DataField="SoLanXem"
				    HeaderStyle-CssClass="col_general" ItemStyle-CssClass="col_general" 
                    meta:resourcekey="BoundFieldResource2">
                <HeaderStyle CssClass="col_general" />
                <ItemStyle CssClass="col_general" />
                </asp:BoundField>
				<asp:HyperLinkField HeaderText="Xem chi tiết" 
                    DataNavigateUrlFields="MaTinRaoVat" DataNavigateUrlFormatString="../DanhMuc/XemNoiDungTin.aspx?id={0}"
				    Text="Xem Chi Tiết" HeaderStyle-CssClass="col_general" 
                    ItemStyle-CssClass="col_general" meta:resourcekey="HyperLinkFieldResource2">
			    <HeaderStyle CssClass="col_general" />
                <ItemStyle CssClass="col_general" />
			    </asp:HyperLinkField>
			    
			    <asp:HyperLinkField HeaderText="Chỉnh sửa" DataNavigateUrlFields="MaTinRaoVat" DataNavigateUrlFormatString="../TinRaoVat/ChinhSuaBaiRaoVat.aspx?id={0}"
				    Text="Sửa" HeaderStyle-CssClass="col_general" ItemStyle-CssClass="col_general" 
                    meta:resourcekey="HyperLinkFieldResource3">
			    <HeaderStyle CssClass="col_general" />
                <ItemStyle CssClass="col_general" />
			    </asp:HyperLinkField>
		    </Columns>
		    <RowStyle CssClass="row1" HorizontalAlign="Center" BackColor="#EEEEEE" 
                ForeColor="Black"></RowStyle>
		    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
		    <AlternatingRowStyle CssClass="row2" BackColor="Gainsboro"></AlternatingRowStyle>
		    <FooterStyle CssClass="item_list_footer" BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>
	    </asp:GridView>
<asp:LinqDataSource ID="lqTinRaoVatMoiNhat" runat="server" 
    ContextTypeName="DAO.RaoVatDataClassesDataContext" 
    Select="new (MaTinRaoVat, ThoiGianDang, ThoiHanLuuTin, MaDiaDiem, SoLanXem, MaNguoiDung, MaDanhMucCon, TieuDe, Thumbnail, GhiChuHinhAnh, Deleted, HOSOTUYENDUNGs, LICHSUTINRAOVATVIPHAMs, LIKEDs, TINRAOVATBATDONGSANs, TINRAOVATDALUUs, TINRAOVATTHUONGs, TINTUYENDUNGs, DANHMUCCON, DIADIEM, NGUOIDUNG)" 
    TableName="TINRAOVATs" Where="Deleted == @Deleted">
    <WhereParameters>
        <asp:Parameter DefaultValue="false" Name="Deleted" Type="Boolean" />
    </WhereParameters>
</asp:LinqDataSource>
<asp:ObjectDataSource ID="FeaturedAdDataSource" runat="server" TypeName="BUS.TinRaoVatBUS"
	SelectMethod="LayDanhSachTinRaoVatMoiNhat"></asp:ObjectDataSource>
