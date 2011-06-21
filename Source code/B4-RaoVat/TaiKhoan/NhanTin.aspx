<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NhanTin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <table style="width: 56%; background-color: #EAFFFF;">
                <tr>
                    <td bgcolor="#FF9900">
                        <asp:Label ID="Label13" runat="server" Text="Nhắn Tin :" ForeColor="#003399"></asp:Label>
                    </td>
                    <td bgcolor="#FF9900">
                        <asp:TextBox ID="txtTieuDe" runat="server" BackColor="#FF9900" BorderStyle="None"
                            ForeColor="#003399" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 267px" align="right">
                        <asp:Label ID="Label1" runat="server" Text="Tiêu đề" ForeColor="#003399"></asp:Label>
                    </td>
                    <td style="width: 301px">
                        <asp:TextBox ID="txtTieuDe1" runat="server" Width="300px" ForeColor="#003399"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTieuDe1" runat="server" 
                            ControlToValidate="txtTieuDe1" ErrorMessage="Không bỏ trống"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 267px" align="right">
                        <asp:Label ID="Label2" runat="server" Text="Nội dung:" ForeColor="#003399"></asp:Label>
                    </td>
                    <td style="width: 301px">
                        <asp:TextBox ID="txtNoiDung1" runat="server" Height="116px" 
                            TextMode="MultiLine" Width="417px"
                            ForeColor="#003399"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="height: 26px; width: 267px" align="right">
                        <asp:Label ID="Label4" runat="server" Text="Người nhận tin:" 
                            ForeColor="#003399"></asp:Label>
                    </td>
                    <td style="height: 26px; width: 301px">
                        <asp:DropDownList ID="ddlNguoiNhanTin" runat="server" Width="40px" 
                            ForeColor="#003399" DataSourceID="LinqDataSource1" 
                            DataTextField="TenNguoiDung" DataValueField="TenNguoiDung">
                        </asp:DropDownList>
                        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                            ContextTypeName="DAO.RaoVatDataClassesDataContext" Select="new (TenNguoiDung)" 
                            TableName="NGUOIDUNGs">
                        </asp:LinqDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="width: 267px" align="right">
                        <asp:Label ID="Label3" runat="server" Text="Lịch:" ForeColor="#003399"></asp:Label>
                    </td>
                    <td style="width: 301px">
                        <asp:Calendar ID="cldNgayDangTin" runat="server"></asp:Calendar>
                    </td>
                </tr>
 
                <tr align="center">
                    <td colspan="2">
                        <asp:Button ID="btnNhanTin1" runat="server" BackColor="#FF9933" 
                            BorderStyle="Groove" Font-Bold="True" ForeColor="White" 
                            onclick="btnNhanTin1_Click" Text="Nhắn Tin" />
                    </td>
                </tr>
            </table>
</asp:Content>

