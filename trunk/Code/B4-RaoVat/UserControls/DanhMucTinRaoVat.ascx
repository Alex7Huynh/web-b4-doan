﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DanhMucTinRaoVat.ascx.cs" Inherits="UserControl_TinRaoVatMoiNhat" %>
	    <asp:GridView ID="FeaturedAdGrid" runat="server" 
            DataSourceID="FeaturedAdDataSource" AutoGenerateColumns="False"
		    EnableViewState="False" DataKeyNames="MaTinRaoVat"
		    BorderWidth="1px"
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
				    DataTextField="TieuDe" meta:resourcekey="HyperLinkFieldResource1">
                </asp:HyperLinkField>
			    <asp:BoundField HeaderText="Ngày đăng" DataField="ThoiGianDang"
				    DataFormatString="{0:dd/MM/yy}" meta:resourcekey="BoundFieldResource1">
			    </asp:BoundField>
			    <asp:BoundField HeaderText="Số lần xem" DataField="SoLanXem"
                    meta:resourcekey="BoundFieldResource2">
                </asp:BoundField>
				<asp:HyperLinkField HeaderText="Xem chi tiết" 
                    DataNavigateUrlFields="MaTinRaoVat" DataNavigateUrlFormatString="../DanhMuc/XemNoiDungTin.aspx?id={0}"
				    Text="Xem Chi Tiết" meta:resourcekey="HyperLinkFieldResource2">
			    </asp:HyperLinkField>
			    
		    </Columns>
		    <RowStyle HorizontalAlign="Center" BackColor="#EEEEEE" 
                ForeColor="Black"></RowStyle>
		    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
		    <AlternatingRowStyle BackColor="Gainsboro"></AlternatingRowStyle>
		    <FooterStyle BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>
	    </asp:GridView>
<asp:LinqDataSource ID="lqTinRaoVatMoiNhat" runat="server" 
    ContextTypeName="DAO.RaoVatDataClassesDataContext" 
    Select="new (MaTinRaoVat, ThoiGianDang, ThoiHanLuuTin, MaDiaDiem, SoLanXem, MaNguoiDung, MaDanhMucCon, TieuDe, Thumbnail, GhiChuHinhAnh, Deleted, HOSOTUYENDUNGs, LICHSUTINRAOVATVIPHAMs, LIKEDs, TINRAOVATBATDONGSANs, TINRAOVATDALUUs, TINRAOVATTHUONGs, TINTUYENDUNGs, DANHMUCCON, DIADIEM, NGUOIDUNG)" 
    TableName="TINRAOVATs" Where="Deleted == @Deleted">
    <WhereParameters>
        <asp:Parameter DefaultValue="false" Name="Deleted" Type="Boolean" />
    </WhereParameters>
</asp:LinqDataSource>
<asp:ObjectDataSource ID="FeaturedAdDataSource" runat="server"></asp:ObjectDataSource>