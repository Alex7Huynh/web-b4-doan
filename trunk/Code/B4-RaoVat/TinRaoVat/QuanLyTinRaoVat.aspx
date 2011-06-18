<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuanLyTinRaoVat.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="#003399">XÓA TIN RAO VẶT</asp:Label>
    <asp:Button ID="CheckAll" runat="server" Text="Check All" 
        onclick="CheckAll_Click" /> 
    <asp:Button ID="UncheckAll" runat="server" Text="Uncheck All" 
        onclick="UncheckAll_Click" />
    <asp:GridView ID="GridView" CssClass="gridview" 
        AlternatingRowStyle-CssClass="even" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderWidth="1px" CellPadding="3" DataSourceID="LinqDataSource1" AllowSorting="True" 
        DataKeyNames="MaTinRaoVat" BorderStyle="None" CellSpacing="2" >
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <Columns>
            <asp:TemplateField HeaderText="Deleted" SortExpression="Deleted">
                 <ItemTemplate>
                        <asp:CheckBox ID="Deleted" runat="server" />
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="TieuDe" HeaderText="Tiêu Đề" 
                SortExpression="TieuDe" />
            <asp:BoundField DataField="ThoiGianDang" HeaderText="Thời Gian Đăng" 
                SortExpression="ThoiGianDang" />
            <asp:BoundField DataField="ThoiHanLuuTin" HeaderText="Thời Han Lưu Tin" 
                SortExpression="ThoiHanLuuTin" />
            <asp:TemplateField HeaderText="Địa Điểm" SortExpression="DIADIEM.TenDiaDiem">
                 <ItemTemplate>
                        <%#Eval("DIADIEM.TenDiaDiem") %>
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="SoLanXem" HeaderText="Số Lần Xem" 
                SortExpression="SoLanXem" />
            <asp:TemplateField HeaderText="Tên Người Dùng" SortExpression="NGUOIDUNG.TenNguoiDung">
                 <ItemTemplate>
                        <%#Eval("NGUOIDUNG.TenNguoiDung") %>
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tên Danh Mục Con" SortExpression="DANHMUCCON.TenDanhMucCon">
                 <ItemTemplate>
                        <%#Eval("DANHMUCCON.TenDanhMucCon") %>
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Thumbnail" HeaderText="Thumbnail" 
                SortExpression="Thumbnail" />
            <asp:BoundField DataField="GhiChuHinhAnh" HeaderText="Ghi Chú Hình Ảnh" 
                SortExpression="GhiChuHinhAnh" />
            
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
<AlternatingRowStyle CssClass="even"></AlternatingRowStyle>
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="DAO.RaoVatDataClassesDataContext" EnableDelete="True" 
        EnableInsert="True" EnableUpdate="True" TableName="TINRAOVATs" 
        Where="Deleted == @Deleted">
        <WhereParameters>
            <asp:Parameter DefaultValue="False" Name="Deleted" Type="Boolean" />
        </WhereParameters>
    </asp:LinqDataSource>
    
    <asp:Button ID="btnSubmit" runat="server" BackColor="#FF9933" 
                            BorderStyle="Groove" Font-Bold="True" ForeColor="White" 
                            onclick="btnSubmit1_Click" Text="Submit" />
                            
</asp:Content>

