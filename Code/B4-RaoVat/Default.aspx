<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="Default2" Culture="auto" meta:resourcekey="PageResource1"
    UICulture="auto" %>

<%@ Register TagPrefix="uc1" TagName="TinRaoVatMoiNhat" Src="UserControls/TinRaoVatMoiNhat.ascx" %>
<%@ Register TagPrefix="uc1" TagName="JQueryMenu" Src="UserControls/JQueryMenu.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <div id="body">
        <asp:Label ID="Label2" runat="server" Text="Label" meta:resourcekey="Label2Resource1"></asp:Label>
        <div id="col_main_left">
            <div id="featured_item">
            </div>
            <div id="announcements">
                <ul>
                    <li><a href="/B4-RaoVat/TinRaoVat/XemDanhSachTinRaoVat.aspx" title="My Ads & Profile">
                        <asp:Label ID="Label1" runat="server" Text="Xem danh sách tin rao vặt" ForeColor="Blue"></asp:Label>
                    </a></li>
                    <li><a href="/B4-RaoVat/TinRaoVat/ChonChuyenMucDang.aspx" title="New Ad">
                        <asp:Label ID="Label4" runat="server" Text="Đăng tin rao vặt" ForeColor="Blue"></asp:Label>
                    </a></li>
                    <li><a href="/B4-RaoVat/DanhMuc/DanhMucChinh.aspx" title="View Category">
                        <asp:Label ID="Label3" runat="server" Text="Xem tất cả danh mục chính" ForeColor="Blue"></asp:Label>
                    </a></li>
                </ul>
            </div>
            <uc1:JQueryMenu ID="JQueryMenuMain" runat="server"></uc1:JQueryMenu>
        </div>
        <div id="col_main_right">
            <uc1:TinRaoVatMoiNhat ID="FeaturedAd" runat="server"></uc1:TinRaoVatMoiNhat>
        </div>
    </div>

    <script src="UserControls/Scripts/jquery-1.3.1.js" type="text/javascript"></script>

    <script type="text/javascript" src="UserControls/Scripts/superfish.js"></script>

    <link id="Link1" type="text/css" href="UserControls/Styles/superfish.css" rel="stylesheet"
        media="screen" runat="server" />
    <link href="UserControls/Styles/stylemain.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
        $(document).ready(function() {
            $('ul.AspNet-Menu').superfish();
        }); 
    </script>

</asp:Content>
