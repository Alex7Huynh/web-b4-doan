<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TimKiem.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <table style="width: 56%; background-color: #EAFFFF;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Tìm kiếm" ForeColor="#003399"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTimKiem" runat="server" Width="300px" ForeColor="#003399"></asp:TextBox>
                <asp:Button ID="btnNhanTin1" runat="server" BackColor="#FF9933" 
                    BorderStyle="Groove" Font-Bold="True" ForeColor="White" 
                            onclick="btnNhanTin1_Click" Text="Tìm" Width="62px" />
            </td>
            <td>   
               <asp:RequiredFieldValidator ID="rfvTimKiem" runat="server" 
                           ControlToValidate="txtTimKiem" ErrorMessage="Không bỏ trống"></asp:RequiredFieldValidator>
            </td>        
        </tr>
    </table>
    <td style="width: 150px" valign="top">
    <asp:DataList ID="dlTinraovatbatdongsan" runat="server" >
        <ItemTemplate>
            <asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl='<%# "HuongDan.aspx?Id="+Eval("NoiDungTinRaoVat") %>' 
                Text='<%# Eval("NoiDungTinRaoVat") %>'></asp:HyperLink>
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="dlTinraovat" runat="server" >
        <ItemTemplate>
            <asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl='<%# "HuongDan.aspx?Id="+Eval("TieuDe") %>' 
                Text='<%# Eval("TieuDe") %>'></asp:HyperLink>
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
                NavigateUrl='<%# "HuongDan.aspx?Id="+Eval("TieuDe") %>' 
                Text='<%# Eval("TieuDe") %>'></asp:HyperLink>
        </ItemTemplate>
    </asp:DataList>
    </td>
</asp:Content>

