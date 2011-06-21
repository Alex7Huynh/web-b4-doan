<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuanLyTaiKhoan.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="250px">
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
            AllowSorting="True" CellPadding="4" 
            DataKeyNames="MaNguoiDung" DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." ForeColor="#333333" 
            GridLines="None" Height="212px" AutoGenerateColumns="False">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="MaNguoiDung" HeaderText="Mã Người Dùng" 
                    ReadOnly="True" SortExpression="MaNguoiDung" />
                <asp:BoundField DataField="TenNguoiDung" HeaderText="Tên Người Dùng" 
                    SortExpression="TenNguoiDung" />
                <asp:BoundField DataField="MatKhau" HeaderText="Mật Khẩu" 
                    SortExpression="MatKhau" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="DienThoai" HeaderText="Điện Thoại" 
                    SortExpression="DienThoai" />
                <asp:BoundField DataField="DiaChi" HeaderText="Đại Chỉ" 
                    SortExpression="DiaChi" />
                <asp:BoundField DataField="MaKichHoatTaiKhoan" 
                    HeaderText="Mã Kít Hoạt Tài Khoản" SortExpression="MaKichHoatTaiKhoan" />
                <asp:CheckBoxField DataField="TinhTrangKichHoatTaiKhoan" 
                    HeaderText="Tình Trạng Kít Hoạt TK" 
                    SortExpression="TinhTrangKichHoatTaiKhoan" />
                <asp:BoundField DataField="ThoiGianDangKy" HeaderText="Thời Gian Đăng Ký" 
                    SortExpression="ThoiGianDangKy" />
                <asp:BoundField DataField="ThoiGianHetHan" HeaderText="Thời Gian Hết Hạn" 
                    SortExpression="ThoiGianHetHan" />
                <asp:BoundField DataField="MaLoaiNguoiDung" HeaderText="Mã Loại Người Dùng" 
                    SortExpression="MaLoaiNguoiDung" />
                <asp:CheckBoxField DataField="Deleted" HeaderText="Deleted" 
                    SortExpression="Deleted" />
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RAO_VATConnectionString1 %>" 
            DeleteCommand="DELETE FROM [NGUOIDUNG] WHERE [MaNguoiDung] = @MaNguoiDung" 
            InsertCommand="INSERT INTO [NGUOIDUNG] ([TenNguoiDung], [MatKhau], [Email], [DienThoai], [DiaChi], [MaKichHoatTaiKhoan], [TinhTrangKichHoatTaiKhoan], [ThoiGianDangKy], [ThoiGianHetHan], [MaLoaiNguoiDung], [Deleted]) VALUES (@TenNguoiDung, @MatKhau, @Email, @DienThoai, @DiaChi, @MaKichHoatTaiKhoan, @TinhTrangKichHoatTaiKhoan, @ThoiGianDangKy, @ThoiGianHetHan, @MaLoaiNguoiDung, @Deleted)" 
            ProviderName="<%$ ConnectionStrings:RAO_VATConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [MaNguoiDung], [TenNguoiDung], [MatKhau], [Email], [DienThoai], [DiaChi], [MaKichHoatTaiKhoan], [TinhTrangKichHoatTaiKhoan], [ThoiGianDangKy], [ThoiGianHetHan], [MaLoaiNguoiDung], [Deleted] FROM [NGUOIDUNG]" 
            UpdateCommand="UPDATE [NGUOIDUNG] SET [TenNguoiDung] = @TenNguoiDung, [MatKhau] = @MatKhau, [Email] = @Email, [DienThoai] = @DienThoai, [DiaChi] = @DiaChi, [MaKichHoatTaiKhoan] = @MaKichHoatTaiKhoan, [TinhTrangKichHoatTaiKhoan] = @TinhTrangKichHoatTaiKhoan, [ThoiGianDangKy] = @ThoiGianDangKy, [ThoiGianHetHan] = @ThoiGianHetHan, [MaLoaiNguoiDung] = @MaLoaiNguoiDung, [Deleted] = @Deleted WHERE [MaNguoiDung] = @MaNguoiDung">
            <DeleteParameters>
                <asp:Parameter Name="MaNguoiDung" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TenNguoiDung" Type="String" />
                <asp:Parameter Name="MatKhau" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="DienThoai" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="MaKichHoatTaiKhoan" Type="Int32" />
                <asp:Parameter Name="TinhTrangKichHoatTaiKhoan" Type="Boolean" />
                <asp:Parameter Name="ThoiGianDangKy" Type="DateTime" />
                <asp:Parameter Name="ThoiGianHetHan" Type="DateTime" />
                <asp:Parameter Name="MaLoaiNguoiDung" Type="Int32" />
                <asp:Parameter Name="Deleted" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenNguoiDung" Type="String" />
                <asp:Parameter Name="MatKhau" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="DienThoai" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="MaKichHoatTaiKhoan" Type="Int32" />
                <asp:Parameter Name="TinhTrangKichHoatTaiKhoan" Type="Boolean" />
                <asp:Parameter Name="ThoiGianDangKy" Type="DateTime" />
                <asp:Parameter Name="ThoiGianHetHan" Type="DateTime" />
                <asp:Parameter Name="MaLoaiNguoiDung" Type="Int32" />
                <asp:Parameter Name="Deleted" Type="Boolean" />
                <asp:Parameter Name="MaNguoiDung" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderRight" Runat="Server">
</asp:Content>

