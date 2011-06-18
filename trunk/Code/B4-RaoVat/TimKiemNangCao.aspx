<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="TimKiemNangCao.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#003399">Tìm kiếm nâng cao :</asp:Label>
    <div>
        <asp:Label ID="Label1" runat="server" Text="Từ khóa" ForeColor="#003399" Width="51px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtTimKiem" runat="server" Width="300px" ForeColor="#003399"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvTimKiem" runat="server" ControlToValidate="txtTimKiem"
            ErrorMessage="Không bỏ trống"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="Label2" runat="server" Text="Kiểu tin rao vặt:" ForeColor="#003399"></asp:Label>
        <asp:DropDownList ID="ddlKieuTinRaoVat" runat="server" ForeColor="#003399" AutoPostBack="True">
        </asp:DropDownList>
        <asp:DataList ID="dlTinraovat" runat="server">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "./DanhMuc/XemNoiDungTin.aspx?Id="+Eval("TieuDe") %>'
                    Text='<%# Eval("TieuDe") %>'></asp:HyperLink>
            </ItemTemplate>
        </asp:DataList>
        <asp:DataList ID="dlTinraovatbatdongsan" runat="server">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "./DanhMuc/XemNoiDungTin.aspx?Id="+Eval("NoiDungTinRaoVat") %>'
                    Text='<%# Eval("NoiDungTinRaoVat") %>'></asp:HyperLink>
            </ItemTemplate>
        </asp:DataList>
        <asp:DataList ID="dlTinraovatthuong" runat="server">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "./DanhMuc/XemNoiDungTin.aspx?Id="+Eval("NoiDungTinRaoVat") %>'
                    Text='<%# Eval("NoiDungTinRaoVat") %>'></asp:HyperLink>
            </ItemTemplate>
        </asp:DataList>
        <asp:DataList ID="dlTintuyendung" runat="server">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "./DanhMuc/XemNoiDungTin.aspx?Id="+Eval("TenNhaTuyenDung") %>'
                    Text='<%# Eval("TenNhaTuyenDung") %>'></asp:HyperLink>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <asp:Button ID="btnDangTin1" runat="server" BackColor="#FF9933" BorderStyle="Groove"
        Font-Bold="True" ForeColor="White" OnClick="btnTim1_Click" Text="Tìm" Width="69px" />
</asp:Content>
