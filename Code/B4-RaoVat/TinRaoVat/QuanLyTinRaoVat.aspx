<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuanLyTinRaoVat.aspx.cs" Inherits="Default2" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="#003399" 
        meta:resourcekey="Label15Resource1">XÓA TIN RAO VẶT</asp:Label>
    <asp:Button ID="CheckAll" runat="server" Text="Check All" 
        onclick="CheckAll_Click" meta:resourcekey="CheckAllResource1" /> 
    <asp:Button ID="UncheckAll" runat="server" Text="Uncheck All" 
        onclick="UncheckAll_Click" meta:resourcekey="UncheckAllResource1" />
    <asp:GridView ID="GridView" CssClass="gridview" 
        AlternatingRowStyle-CssClass="even" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderWidth="1px" CellPadding="3" DataSourceID="LinqDataSource1" AllowSorting="True" 
        DataKeyNames="MaTinRaoVat" BorderStyle="None" CellSpacing="2" 
        meta:resourcekey="GridViewResource1" >
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <Columns>
            <asp:TemplateField HeaderText="Deleted" SortExpression="Deleted" 
                meta:resourcekey="TemplateFieldResource1">
                 <ItemTemplate>
                        <asp:CheckBox ID="Deleted" runat="server" meta:resourcekey="DeletedResource1" />
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="TieuDe" HeaderText="Tiêu Đề" 
                SortExpression="TieuDe" meta:resourcekey="BoundFieldResource1" />
            <asp:BoundField DataField="ThoiGianDang" HeaderText="Thời Gian Đăng" 
                SortExpression="ThoiGianDang" meta:resourcekey="BoundFieldResource2" />
            <asp:BoundField DataField="ThoiHanLuuTin" HeaderText="Thời Han Lưu Tin" 
                SortExpression="ThoiHanLuuTin" meta:resourcekey="BoundFieldResource3" />
            <asp:TemplateField HeaderText="Địa Điểm" SortExpression="DIADIEM.TenDiaDiem" 
                meta:resourcekey="TemplateFieldResource2">
                 <ItemTemplate>
                        <%#Eval("DIADIEM.TenDiaDiem") %>
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="SoLanXem" HeaderText="Số Lần Xem" 
                SortExpression="SoLanXem" meta:resourcekey="BoundFieldResource4" />
            <asp:TemplateField HeaderText="Tên Người Dùng" 
                SortExpression="NGUOIDUNG.TenNguoiDung" 
                meta:resourcekey="TemplateFieldResource3">
                 <ItemTemplate>
                        <%#Eval("NGUOIDUNG.TenNguoiDung") %>
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tên Danh Mục Con" 
                SortExpression="DANHMUCCON.TenDanhMucCon" 
                meta:resourcekey="TemplateFieldResource4">
                 <ItemTemplate>
                        <%#Eval("DANHMUCCON.TenDanhMucCon") %>
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Thumbnail" HeaderText="Thumbnail" 
                SortExpression="Thumbnail" meta:resourcekey="BoundFieldResource5" />
            <asp:BoundField DataField="GhiChuHinhAnh" HeaderText="Ghi Chú Hình Ảnh" 
                SortExpression="GhiChuHinhAnh" meta:resourcekey="BoundFieldResource6" />
            
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
                            onclick="btnSubmit1_Click" Text="Submit" 
        meta:resourcekey="btnSubmitResource1" />
                            
</asp:Content>

