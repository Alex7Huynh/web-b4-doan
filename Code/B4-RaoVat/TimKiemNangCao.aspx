<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TimKiemNangCao.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
            <table style="width: 56%; background-color: #EAFFFF;">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#003399">Tìm kiếm nâng cao :</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 267px" align="right">
                        <asp:Label ID="Label1" runat="server" Text="Từ khóa" ForeColor="#003399"></asp:Label>
                    </td>
                    <td style="width: 301px">
                        <asp:TextBox ID="txtTimKiem" runat="server" Width="300px" ForeColor="#003399"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTimKiem" runat="server" 
                            ControlToValidate="txtTimKiem" ErrorMessage="Không bỏ trống"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 267px" align="right">
                        <asp:Label ID="Label2" runat="server" Text="Kiểu tin rao vặt:" ForeColor="#003399"></asp:Label>
                    </td>
                    <td style="width: 301px">                       
                        <asp:DropDownList ID="ddlKieuTinRaoVat" runat="server" ForeColor="#003399" 
                            AutoPostBack="True">
                        </asp:DropDownList>
                    <asp:DataList ID="dlTinraovat" runat="server" >
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                 NavigateUrl='<%# "HuongDan.aspx?Id="+Eval("TieuDe") %>' 
                                Text='<%# Eval("TieuDe") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:DataList ID="dlTinraovatbatdongsan" runat="server" >
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                NavigateUrl='<%# "HuongDan.aspx?Id="+Eval("NoiDungTinRaoVat") %>' 
                                Text='<%# Eval("NoiDungTinRaoVat") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:DataList ID="dlTinraovatthuong" runat="server" >
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                 NavigateUrl='<%# "HuongDan.aspx?Id="+Eval("NoiDungTinRaoVat") %>' 
                                 Text='<%# Eval("NoiDungTinRaoVat") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:DataList ID="dlTintuyendung" runat="server" >
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                NavigateUrl='<%# "HuongDan.aspx?Id="+Eval("TenNhaTuyenDung") %>' 
                                Text='<%# Eval("TenNhaTuyenDung") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:DataList>
                    </td>
                </tr>
                <tr align="center">
                    <td colspan="2">
                        <asp:Button ID="btnDangTin1" runat="server" BackColor="#FF9933" 
                            BorderStyle="Groove" Font-Bold="True" ForeColor="White" 
                            onclick="btnTim1_Click" Text="Tìm" Width="69px" />
                    </td>
                </tr>
            </table>
</asp:Content>

