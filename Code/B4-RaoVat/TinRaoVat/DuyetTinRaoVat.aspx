<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DuyetTinRaoVat.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="#003399">DUYỆT TIN RAO VẶT</asp:Label>
    <asp:Button ID="CheckAll" runat="server" Text="Check All" 
        onclick="CheckAll_Click" /> 
    <asp:Button ID="UncheckAll" runat="server" Text="Uncheck All" 
        onclick="UncheckAll_Click" />
    <asp:GridView ID="GridView" CssClass="gridview" 
        AlternatingRowStyle-CssClass="even" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderWidth="1px" CellPadding="3" DataSourceID="LinqDataSource1" AllowSorting="True" 
        DataKeyNames="MaLichSuTinRaoVatViPham" BorderStyle="None" CellSpacing="2" >
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <Columns>
            <asp:TemplateField HeaderText="Check" SortExpression="Deleted">
                 <ItemTemplate>
                        <asp:CheckBox ID="Deleted" runat="server" />
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="MaTinRaoVatViPham" HeaderText="MaTinRaoVatViPham" 
                SortExpression="MaTinRaoVatViPham" Visible="false" />
            <asp:TemplateField HeaderText="Tin Vi Phạm" SortExpression="TINRAOVAT.TieuDe">
                 <ItemTemplate>
                        <%#Eval("TINRAOVAT.TieuDe")%>            
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Thời Gian Đăng" SortExpression="TINRAOVAT.ThoiGianDang">
                 <ItemTemplate>
                        <%#Eval("TINRAOVAT.ThoiGianDang")%>
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Người Báo Cáo" SortExpression="NGUOIDUNG.TenNguoiDung">
                 <ItemTemplate>
                        <%#Eval("NGUOIDUNG.TenNguoiDung")%>
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ThoiGianBaoCaoViPham" HeaderText="Thời Gian Báo Cáo Vi Phạm" 
                SortExpression="ThoiGianBaoCaoViPham" />            
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
<AlternatingRowStyle CssClass="even"></AlternatingRowStyle>
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="DAO.RaoVatDataClassesDataContext" EnableDelete="True" 
        EnableInsert="True" EnableUpdate="True" TableName="LICHSUTINRAOVATVIPHAMs" 
        Where="Deleted == @Deleted">
        <WhereParameters>
            <asp:Parameter DefaultValue="False" Name="Deleted" Type="Boolean" />
        </WhereParameters>
    </asp:LinqDataSource>
    
    <asp:Button ID="btnDuyet" runat="server" BackColor="#FF9933" 
                            BorderStyle="Groove" Font-Bold="True" ForeColor="White" 
                            onclick="btnDuyet1_Click" Text="Duyệt" />
    <asp:Button ID="btnXoa" runat="server" BackColor="#FF9933" 
                            BorderStyle="Groove" Font-Bold="True" ForeColor="White" 
                            onclick="btnXoa1_Click" Text="Xóa" />                        
</asp:Content>

