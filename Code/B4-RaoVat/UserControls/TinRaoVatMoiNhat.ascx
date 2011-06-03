<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TinRaoVatMoiNhat.ascx.cs" Inherits="UserControl_TinRaoVatMoiNhat" %>
	    <asp:GridView ID="FeaturedAdGrid" runat="server" 
            DataSourceID="FeaturedAdDataSource" AutoGenerateColumns="False"
		    EnableViewState="False" DataKeyNames="MaTinRaoVat"
		    BorderWidth="0px" CssClass="item_list"
		    ShowFooter="True" 
    onselectedindexchanged="FeaturedAdGrid_SelectedIndexChanged" 
    AllowPaging="True" BorderStyle="Dashed">
		    <EmptyDataTemplate>
			    You have no currently active ads.
			    <asp:HyperLink ID="PostAdLink" runat="server" NavigateUrl="~/PostAd.aspx">Click here to Post a new Ad.</asp:HyperLink>
		    </EmptyDataTemplate>
		    <Columns>
			    <asp:ImageField HeaderText="Hình ảnh" DataImageUrlField="Thumbnail"
                    DataImageUrlFormatString="~/images/TinRaoVat/{0}">
			    </asp:ImageField>
			    <asp:HyperLinkField HeaderText="Tiêu đề" DataNavigateUrlFields="MaTinRaoVat" DataNavigateUrlFormatString="../DanhMuc/XemNoiDungTin.aspx?id={0}"
				    DataTextField="TieuDe" HeaderStyle-CssClass="col_title"
				    ItemStyle-CssClass="col_title">
                <HeaderStyle CssClass="col_title" />
                <ItemStyle CssClass="col_title" />
                </asp:HyperLinkField>
			    <asp:BoundField HeaderText="Ngày đăng" DataField="ThoiGianDang"
				    DataFormatString="{0:dd/mm/yy}" HeaderStyle-CssClass="col_general" 
                    ItemStyle-CssClass="col_general">
			    <HeaderStyle CssClass="col_general" />
                <ItemStyle CssClass="col_general" />
			    </asp:BoundField>
			    <asp:BoundField HeaderText="Số lần xem" DataField="SoLanXem"
				    HeaderStyle-CssClass="col_general" ItemStyle-CssClass="col_general">
                <HeaderStyle CssClass="col_general" />
                <ItemStyle CssClass="col_general" />
                </asp:BoundField>
				<asp:HyperLinkField HeaderText="Xem chi tiết" DataNavigateUrlFields="MaTinRaoVat" DataNavigateUrlFormatString="../DanhMuc/XemNoiDungTin.aspx?id={0}"
				    Text="Xem Chi Tiết" HeaderStyle-CssClass="col_general" ItemStyle-CssClass="col_general">
			    <HeaderStyle CssClass="col_general" />
                <ItemStyle CssClass="col_general" />
			    </asp:HyperLinkField>
			    
			    <asp:HyperLinkField HeaderText="Chỉnh sửa" DataNavigateUrlFields="MaTinRaoVat" DataNavigateUrlFormatString="../TinRaoVat/ChinhSuaBaiRaoVat.aspx?id={0}"
				    Text="Edit" HeaderStyle-CssClass="col_general" ItemStyle-CssClass="col_general">
			    <HeaderStyle CssClass="col_general" />
                <ItemStyle CssClass="col_general" />
			    </asp:HyperLinkField>
			    <asp:HyperLinkField HeaderText="Xem ảnh" DataNavigateUrlFields="MaTinRaoVat" DataNavigateUrlFormatString="../TinRaoVat/HienThiAnh.aspx?id={0}"
				    Text="Xem ảnh" HeaderStyle-CssClass="col_general" ItemStyle-CssClass="col_general">
			    <HeaderStyle CssClass="col_general" />
                <ItemStyle CssClass="col_general" />
			    </asp:HyperLinkField>
		    </Columns>
		    <RowStyle CssClass="row1" HorizontalAlign="Center"></RowStyle>
		    <AlternatingRowStyle CssClass="row2"></AlternatingRowStyle>
		    <FooterStyle CssClass="item_list_footer"></FooterStyle>
	    </asp:GridView>
<asp:LinqDataSource ID="lqTinRaoVatMoiNhat" runat="server" 
    ContextTypeName="DAO.RaoVatDataClassesDataContext" 
    Select="new (MaTinRaoVat, ThoiGianDang, ThoiHanLuuTin, MaDiaDiem, SoLanXem, MaNguoiDung, MaDanhMucCon, TieuDe, Thumbnail, GhiChuHinhAnh, Deleted, HOSOTUYENDUNGs, LICHSUTINRAOVATVIPHAMs, LIKEDs, TINRAOVATBATDONGSANs, TINRAOVATDALUUs, TINRAOVATTHUONGs, TINTUYENDUNGs, DANHMUCCON, DIADIEM, NGUOIDUNG)" 
    TableName="TINRAOVATs" Where="Deleted == @Deleted">
    <WhereParameters>
        <asp:Parameter DefaultValue="false" Name="Deleted" Type="Boolean" />
    </WhereParameters>
</asp:LinqDataSource>
<asp:MultiView ID="MyAdsMultiView" runat="server" ActiveViewIndex="0">
    <asp:View ID="FeaturedAd" runat="server">
	    <h2 class="section">
		    Tin Rao Vặt Mới Nhất</h2>
    </asp:View>
    <style type="text/css">
    .section
    {
        padding: 10px;
        height: 17px;
        font-size: 0.8em;
        font-weight: bold;
        border-bottom: 2px solid #E4E2D5;
        margin-bottom: 0px;
    }
    /* begin item grid */


    #item_images
    {
        text-align: center;
        float: left;
        width: 161px;
        clear: none;
    }

    .item_list
    {
        width: 100%;
        font-size: .7em;
        padding-left: 5px;
        padding-right: 5px;
    }

    .item_list th
    {
        height: 25px;
        background: #DEDDD3;
    }

    .item_list_footer
    {
        height: 20px;
        width: 100%;
        margin-top: 5px;
        text-align: center;
        padding-top: 5px;
        font-weight: bold;
        background: #DEDDD3;
    }

    .item_list_footer li
    {
        list-style-type: none;
        white-space: nowrap;
        display: inline;
        margin: 0px 3px;
    }

    .item_list_footer ul
    {
        margin: 0;
        padding: 0;
    }

    .display_left
    {
        text-align: center;
        float: left;
        clear: none;
        font-size: .8em;
    }


    .display_right
    {
        text-align: left;
        padding-left: 181px;
        font-size: .8em;
    }

    .display_right#ad_details h3, .display_right#ad_details h4, .display_right#ad_details h5
    {
        text-align: left;
        font-size: 1.1em;
        padding: 10px;
        display: block;
        background: #E5E2CC;
    }

    .display_right#ad_details h5.action
    {
        padding: 5px 10px;
        font-size: 0.9em;
    }
    
    /* begin classes */

    legend.select_category
    {
        display: inline;
    }

    .col_select, .col_photo, .col_photo_nopreview, .col_startdate, .col_price, .col_type, .col_location, .col_category, .col_general, .col_checkbox
    {
        text-align: center;
    }

    .col_title
    {
        text-align: left;
        width: 325px;
    }

    #ad_details td.col_heading
    {
        color: #7F4728;
        vertical-align: top;
    }

    #ad_details td.col_detail
    {
        padding-left: 10px;
    }

    #ad_details .ad_description_text td.col_detail
    {
        font-weight: bold;
    }

    .ad_description_text
    {
        padding-top: 20px;
    }



    .col_checkbox, .col_photo_nopreview
    {
        width: 30px;
    }


    .row1, .row2
    {
        height: 60px;
    }

    .row2
    {
        background: #E8E7E1 url(images/background_table_row.gif) repeat-x top;
    }

    .small_text
    {
        font-size: 0.8em;
        color: #666666;
        font-weight: normal;
    }

    .normal_weight
    {
        font-weight: normal;
    }


    tr.new_section
    {
        padding-top: 1em;
    }

    p.new_section
    {
        margin-top: 1em;
    }
</style>
</asp:MultiView>
<asp:ObjectDataSource ID="FeaturedAdDataSource" runat="server" TypeName="BUS.TinRaoVatBUS"
	SelectMethod="LayDanhSachTinRaoVatMoiNhat"></asp:ObjectDataSource>
