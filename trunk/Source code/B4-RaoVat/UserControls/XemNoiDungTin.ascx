<%@ Control Language="C#" AutoEventWireup="true" CodeFile="XemNoiDungTin.ascx.cs"
    Inherits="UserControls_XemNoiDungTin" %>
<style type="text/css">
    .style2
    {
        width: 184px;
    }
    .style4
    {
        width: 124px;
    }
    .style5
    {
        width: 171px;
    }
    .style6
    {
        width: 151px;
    }
    .style7
    {
    }
    .style8
    {
        width: 268435360px;
    }
    .style9
    {
        width: 134px;
    }
</style>
<div>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="ThuongView" runat="server">
            &nbsp;
            <table cellpadding="4" cellspacing="4">
                <tr align="center">
                    <td colspan="4">
                        <b>Nội Dung</b>
                    </td>
                </tr>
                <tr>
                    <td class="style5" colspan="2">
                        <asp:Label ID="Label7" runat="server" Text="Nội Dung:" 
                            meta:resourcekey="Label7Resource1"></asp:Label>
                    </td>
                    <td class="style4" colspan="2">
                        <asp:Label ID="lblNoiDungThuong" runat="server" 
                            meta:resourcekey="lblNoiDungThuongResource1" />
                    </td>
                </tr>
                <tr>
                    <td class="style5" colspan="2">
                        <asp:Label ID="Label8" runat="server" Text="Giá:" 
                            meta:resourcekey="Label8Resource1"></asp:Label>
                    </td>
                    <td class="style4" colspan="2">
                        <asp:Label ID="lblGiaThuong" runat="server" 
                            meta:resourcekey="lblGiaThuongResource1" />
                    </td>
                </tr>
                <tr>
                    <td class="style7" align="center">
                        <asp:Button ID="btt_TraLoi" runat="server" Text="Trả Lời" OnClick="btt_TraLoi_Click"
                            Height="26px" meta:resourcekey="btt_TraLoiResource1" />
                    </td>
                    <td align="center" class="style6" colspan="2">
                        <asp:Button ID="btnChinhSua1" runat="server" OnClick="btnChinhSua_Click" 
                            Text="Chỉnh sửa" meta:resourcekey="btnChinhSua1Resource1" />
                    </td>
                    <td align="center" class="style8">
                        <asp:Button ID="btnBaoCaoViPham1" runat="server" OnClick="btnBaoCaoViPham_Click"
                            Text="Báo cáo bài viết vi phạm" 
                            meta:resourcekey="btnBaoCaoViPham1Resource1" />
                    </td>
                </tr>
                <tr>
                    <td class="style5" colspan="4">
                        <asp:Label ID="Label1" runat="server" Text="Các Bài Trả Lời Đã Đăng:" Font-Bold="True"
                            ForeColor="Red" Width="400px" meta:resourcekey="Label1Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style5" colspan="4">
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="BaiTraLoi" 
                            Width="205px" meta:resourcekey="DataList1Resource1">
                            <ItemTemplate>
                                <asp:Panel runat="server" ID="pnTraLoi1" BorderStyle="Groove" BorderColor="#656598"
                                    Width="542px" meta:resourcekey="pnTraLoi1Resource1">
                                    Thời gian trả lời:
                                    <asp:Label ID="ThoiGianTraLoiLabel" runat="server" 
                                        Text='<%# Eval("ThoiGianTraLoi") %>' 
                                        meta:resourcekey="ThoiGianTraLoiLabelResource1" />
                                    <br />
                                    Nội dung trả lời:
                                    <br />
                                    <asp:Label ID="NoiDungTraLoiLabel" runat="server" 
                                        Text='<%# Eval("NoiDungTraLoi") %>' 
                                        meta:resourcekey="NoiDungTraLoiLabelResource1" />
                                    <br />
                                </asp:Panel>
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:LinqDataSource ID="BaiTraLoi" runat="server" ContextTypeName="DAO.RaoVatDataClassesDataContext"
                            Select="new (NoiDungTraLoi, ThoiGianTraLoi)" TableName="BAITRALOIs" Where="MaTinRaoVat == @MaTinRaoVat">
                            <WhereParameters>
                                <asp:QueryStringParameter DefaultValue="1" Name="MaTinRaoVat" QueryStringField="id"
                                    Type="Int32" />
                            </WhereParameters>
                        </asp:LinqDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="style5" colspan="2">
                        &nbsp;
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="BatDongSanView" runat="server">
            <table cellpadding="4" cellspacing="4">
                <tr>
                    <td colspan="2" align="center">
                        <b>Nội Dung</b>
                    </td>
                </tr>
                <tr>
                    <td>
                        Nội Dung
                    </td>
                    <td>
                        <asp:Label ID="lblNoiDung" runat="server" 
                            meta:resourcekey="lblNoiDungResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Giá:
                    </td>
                    <td>
                        <asp:Label ID="lblGia" runat="server" meta:resourcekey="lblGiaResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Địa Chỉ:
                    </td>
                    <td>
                        <asp:Label ID="lblDiaChi" runat="server" 
                            meta:resourcekey="lblDiaChiResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Diện Tích:
                    </td>
                    <td>
                        <asp:Label ID="lblDienTich" runat="server" 
                            meta:resourcekey="lblDienTichResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Hướng:
                    </td>
                    <td>
                        <asp:Label ID="lblHuong" runat="server" meta:resourcekey="lblHuongResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Lộ Giới:
                    </td>
                    <td>
                        <asp:Label ID="lblLoGioi" runat="server" 
                            meta:resourcekey="lblLoGioiResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Lầu:
                    </td>
                    <td>
                        <asp:Label ID="lblLau" runat="server" meta:resourcekey="lblLauResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Lửng:
                    </td>
                    <td>
                        <asp:Label ID="lblLung" runat="server" meta:resourcekey="lblLungResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Mặt Tiền:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkMatTien" runat="server" Enabled="False" 
                            meta:resourcekey="chkMatTienResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Giấy Tờ:
                    </td>
                    <td>
                        <asp:Label ID="lblGiayTo" runat="server" 
                            meta:resourcekey="lblGiayToResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Đường Trước Nhà:
                    </td>
                    <td>
                        <asp:Label ID="lblDuongTruocNha" runat="server" 
                            meta:resourcekey="lblDuongTruocNhaResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Điện Nhà Nước:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkDienNhaNuoc" runat="server" Enabled="False" 
                            meta:resourcekey="chkDienNhaNuocResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Nước Máy:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkNuocMay" runat="server" Enabled="False" 
                            meta:resourcekey="chkNuocMayResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Số Phòng Ngủ:
                    </td>
                    <td>
                        <asp:Label ID="lblSoPhongNgu" runat="server" 
                            meta:resourcekey="lblSoPhongNguResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Số Nhà Vệ Sinh:
                    </td>
                    <td>
                        <asp:Label ID="lblSoNhaVeSinh" runat="server" 
                            meta:resourcekey="lblSoNhaVeSinhResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Năm Xây Dựng:
                    </td>
                    <td>
                        <asp:Label ID="lblNamXayDung" runat="server" 
                            meta:resourcekey="lblNamXayDungResource1" />
                    </td>
                </tr>
            </table>
            <table cellpadding="4" cellspacing="4">
                <tr>
                    <td colspan="2" align="center">
                        <b>Nội Thất, Tiện Nghi</b>
                    </td>
                </tr>
                <tr>
                    <td>
                        Phòng Khách:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkPhongKhach" runat="server" Enabled="False" 
                            meta:resourcekey="chkPhongKhachResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Gara Ô tô:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkGaraOto" runat="server" Enabled="False" 
                            meta:resourcekey="chkGaraOtoResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Nhà Bếp:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkNhaBep" runat="server" Enabled="False" 
                            meta:resourcekey="chkNhaBepResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Hồ Bơi:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkHoBoi" runat="server" Enabled="False" 
                            meta:resourcekey="chkHoBoiResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Sân Thượng:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkSanThuong" runat="server" Enabled="False" 
                            meta:resourcekey="chkSanThuongResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Điều Hòa:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkDieuHoa" runat="server" Enabled="False" 
                            meta:resourcekey="chkDieuHoaResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Sân Vườn:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkSanVuon" runat="server" Enabled="False" 
                            meta:resourcekey="chkSanVuonResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Thang Máy:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkThangMay" runat="server" Enabled="False" 
                            meta:resourcekey="chkThangMayResource1" />
                    </td>
                </tr>
            </table>
            <table cellpadding="4" cellspacing="4">
                <tr>
                    <td colspan="2" align="center">
                        <b>Văn Hóa, Xã Hội</b>
                    </td>
                </tr>
                <tr>
                    <td>
                        Gần Trường Mẫu Giáo:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkGanTruongMauGiao" runat="server" Enabled="False" 
                            meta:resourcekey="chkGanTruongMauGiaoResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Gần Trường Cấp 1:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkGanTruongCap1" runat="server" Enabled="False" 
                            meta:resourcekey="chkGanTruongCap1Resource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Gần Trường Cấp 2:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkGanTruongCap2" runat="server" Enabled="False" 
                            meta:resourcekey="chkGanTruongCap2Resource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Gần Trường Cấp 3:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkGanTruongCap3" runat="server" Enabled="False" 
                            meta:resourcekey="chkGanTruongCap3Resource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Gần Chợ:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkGanCho" runat="server" Enabled="False" 
                            meta:resourcekey="chkGanChoResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Gần Bệnh Viện:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkGanBenhVien" runat="server" Enabled="False" 
                            meta:resourcekey="chkGanBenhVienResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Gần Trung Tâm Thương Mại:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkGanTrungTamThuongMai" runat="server" Enabled="False" 
                            meta:resourcekey="chkGanTrungTamThuongMaiResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Gần Trung Tâm Giải Trí:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkGanTrungTamGiaiTri" runat="server" Enabled="False" 
                            meta:resourcekey="chkGanTrungTamGiaiTriResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Gần Công Viên:
                    </td>
                    <td>
                        <asp:CheckBox ID="chkGanCongVien" runat="server" Enabled="False" 
                            meta:resourcekey="chkGanCongVienResource1" />
                    </td>
                </tr>
            </table>
            <table cellpadding="4" cellspacing="4">
                <tr>
                    <td align="center" class="style9">
                        <asp:Button ID="Button1" runat="server" Height="26px" 
                            OnClick="btt_TraLoi_Click" Text="Trả Lời" 
                            meta:resourcekey="Button1Resource1" />
                    </td>
                    <td align="center" class="style7">
                        <asp:Button ID="btnChinhSua2" runat="server" OnClick="btnChinhSua_Click" 
                            Text="Chỉnh sửa" meta:resourcekey="btnChinhSua2Resource1" />
                    </td>
                    <td align="center" class="style7">
                        <asp:Button ID="Button3" runat="server" OnClick="btnBaoCaoViPham_Click" 
                            Text="Báo cáo bài viết vi phạm" meta:resourcekey="Button3Resource1" />
                    </td>
                    <td align="center" class="style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style5" colspan="4">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red" 
                            Text="Các Bài Trả Lời Đã Đăng:" Width="400px" 
                            meta:resourcekey="Label2Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="3">
                        <asp:DataList ID="DataList2" runat="server" DataSourceID="BaiTraLoi" 
                            Width="231px" meta:resourcekey="DataList2Resource1">
                            <ItemTemplate>
                                <asp:Panel ID="pnTraLoi2" runat="server" BorderColor="#656598" 
                                    BorderStyle="Groove" Width="542px" meta:resourcekey="pnTraLoi2Resource1">
                                    Thời gian trả lời:
                                    <asp:Label ID="ThoiGianTraLoiLabel" runat="server" 
                                        Text='<%# Eval("ThoiGianTraLoi") %>' 
                                        meta:resourcekey="ThoiGianTraLoiLabelResource2" />
                                    <br />
                                    Nội dung trả lời:
                                    <asp:Label ID="NoiDungTraLoiLabel" runat="server" 
                                        Text='<%# Eval("NoiDungTraLoi") %>' 
                                        meta:resourcekey="NoiDungTraLoiLabelResource2" />
                                    <br />
                                </asp:Panel>
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="2">
                        &nbsp;
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="TinTuyenDungView" runat="server">
            <table cellpadding="4" cellspacing="4">
                <tr>
                    <td colspan="2" align="center">
                        <b>Thông Tin Nhà Tuyển Dụng</b>
                    </td>
                </tr>
                <tr>
                    <td>
                        Tên Nhà Tuyển Dụng:
                    </td>
                    <td>
                        <asp:Label ID="lblTenNhaTuyenDung" runat="server" 
                            meta:resourcekey="lblTenNhaTuyenDungResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Giới Thiệu Nhà Tuyển Dụng:
                    </td>
                    <td>
                        <asp:Label ID="lblGioiThieuNhaTuyenDung" runat="server" 
                            meta:resourcekey="lblGioiThieuNhaTuyenDungResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Website
                    </td>
                    <td>
                        <asp:HyperLink ID="hypWebsite" runat="server" 
                            meta:resourcekey="hypWebsiteResource1"></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        Người Đại Diện:
                    </td>
                    <td>
                        <asp:Label ID="lblNguoiDaiDien" runat="server" 
                            meta:resourcekey="lblNguoiDaiDienResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Địa Chỉ Liên Hệ:
                    </td>
                    <td>
                        <asp:Label ID="lblDiaChiLienHe" runat="server" 
                            meta:resourcekey="lblDiaChiLienHeResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Điện Thoại:
                    </td>
                    <td>
                        <asp:Label ID="lblDienThoai" runat="server" 
                            meta:resourcekey="lblDienThoaiResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Email:
                    </td>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" meta:resourcekey="lblEmailResource1" />
                    </td>
                </tr>
            </table>
            <table cellpadding="4" cellspacing="4">
                <tr>
                    <td colspan="4" align="center">
                        <b>Thông Tin Công Việc</b>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Vị Trí Tuyển Dụng:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblViTriTuyenDung" runat="server" 
                            meta:resourcekey="lblViTriTuyenDungResource1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Yêu Cầu Công Việc:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblYeuCauCongViec" runat="server" 
                            meta:resourcekey="lblYeuCauCongViecResource1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Yêu Cầu Kinh Nghiệm:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblYeuCauKinhNghiem" runat="server" 
                            meta:resourcekey="lblYeuCauKinhNghiemResource1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Thời Gian Lam Việc:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblThoiGianLamViec" runat="server" 
                            meta:resourcekey="lblThoiGianLamViecResource1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Số Lượng Cần Tuyển:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblSoLuongCanTuyen" runat="server" 
                            meta:resourcekey="lblSoLuongCanTuyenResource1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Mức lương Khởi Điểm:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblMucLuongKhoiDiem" runat="server" 
                            meta:resourcekey="lblMucLuongKhoiDiemResource1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Thời Gian Thử Việc:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblThoiGianThuViec" runat="server" 
                            meta:resourcekey="lblThoiGianThuViecResource1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Lương Thử Việc:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblLuongThuViec" runat="server" 
                            meta:resourcekey="lblLuongThuViecResource1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Quyền Lợi Được Hưởng:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblQuyenLoiDuocHuong" runat="server" 
                            meta:resourcekey="lblQuyenLoiDuocHuongResource1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Hồ Sơ Bao Gồm:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblHoSoBaoGom" runat="server" 
                            meta:resourcekey="lblHoSoBaoGomResource1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Thời Hạn Kết Thúc Nộp Hồ Sơ:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblThoiHanKetThucNopHoSo" runat="server" 
                            meta:resourcekey="lblThoiHanKetThucNopHoSoResource1" />
                    </td>
                </tr>
                <tr>
                    <td class="style7" align="center">
                        <asp:Button ID="Button4" runat="server" Text="Trả Lời" OnClick="btt_TraLoi_Click"
                            Height="26px" meta:resourcekey="Button4Resource1" />
                    </td>
                    <td align="center" class="style7" colspan="2">
                        <asp:Button ID="btnChinhSua3" runat="server" OnClick="btnChinhSua_Click" 
                            Text="Chỉnh sửa" meta:resourcekey="btnChinhSua3Resource1" />
                    </td>
                    <td align="center" class="style7">
                        <asp:Button ID="Button11" runat="server" OnClick="btnBaoCaoViPham_Click" 
                            Text="Báo cáo bài viết vi phạm" meta:resourcekey="Button11Resource1" />
                    </td>
                    <td align="center" class="style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style5" colspan="5">
                        <asp:Label ID="Label3" runat="server" Text="Các Bài Trả Lời Đã Đăng:" Font-Bold="True"
                            ForeColor="Red" Width="400px" meta:resourcekey="Label3Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="4">
                        <asp:DataList ID="DataList3" runat="server" DataSourceID="BaiTraLoi" 
                            Width="231px" meta:resourcekey="DataList3Resource1">
                            <ItemTemplate>
                                <asp:Panel runat="server" ID="pnTraLoi3" BorderStyle="Groove" BorderColor="#656598"
                                    Width="542px" meta:resourcekey="pnTraLoi3Resource1">
                                    Thời gian trả lời:
                                    <asp:Label ID="ThoiGianTraLoiLabel" runat="server" 
                                        Text='<%# Eval("ThoiGianTraLoi") %>' 
                                        meta:resourcekey="ThoiGianTraLoiLabelResource3" />
                                    <br />
                                    Nội dung trả lời:
                                    <asp:Label ID="NoiDungTraLoiLabel" runat="server" 
                                        Text='<%# Eval("NoiDungTraLoi") %>' 
                                        meta:resourcekey="NoiDungTraLoiLabelResource3" />
                                    <br />
                                </asp:Panel>
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="2">
                        &nbsp;
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="HoSoTuyenDungView" runat="server">
            <table cellpadding="4" cellspacing="4">
                <tr>
                    <td colspan="3" align="center">
                        <b>Thông Tin Cá Nhân</b>
                    </td>
                </tr>
                <tr>
                    <td>
                        Họ Tên:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblTen" runat="server" meta:resourcekey="lblTenResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Ngày Sinh:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblNgaySinh" runat="server" 
                            meta:resourcekey="lblNgaySinhResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Giới Tính
                    </td>
                    <td>
                        <asp:CheckBox ID="chkNam" runat="server" Enabled="False" Text="Nam" 
                            meta:resourcekey="chkNamResource1" />
                    </td>
                    <td>
                        <asp:CheckBox ID="chkNu" runat="server" Enabled="False" Text="Nu" 
                            meta:resourcekey="chkNuResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Tình Trạng Hôn Nhân:
                    </td>
                    <td colspan="2">
                        <asp:CheckBox ID="chkTinhTrangHonNhan" runat="server" Enabled="False" 
                            Text="Đã Kết Hôn" meta:resourcekey="chkTinhTrangHonNhanResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Quốc Tịch:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblQuocTich" runat="server" 
                            meta:resourcekey="lblQuocTichResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Địa Chỉ Liên Lạc:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblDiaChiLienLac" runat="server" 
                            meta:resourcekey="lblDiaChiLienLacResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Số Điện Thoại:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblSoDienThoai" runat="server" 
                            meta:resourcekey="lblSoDienThoaiResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Di Động:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblDiDong" runat="server" 
                            meta:resourcekey="lblDiDongResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Email:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblEmailCaNhan" runat="server" 
                            meta:resourcekey="lblEmailCaNhanResource1" />
                    </td>
                </tr>
            </table>
            <table cellpadding="4" cellspacing="4">
                <tr>
                    <td colspan="2" align="center">
                        <b>Học Vấn</b>
                    </td>
                </tr>
                <tr>
                    <td>
                        Thông Tin Học Vấn:
                    </td>
                    <td>
                        <asp:Label ID="lblThongTinHocVan" runat="server" 
                            meta:resourcekey="lblThongTinHocVanResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Bằng Cấp:
                    </td>
                    <td>
                        <asp:Label ID="lblBangCap" runat="server" 
                            meta:resourcekey="lblBangCapResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Ngoại Ngữ:
                    </td>
                    <td>
                        <asp:Label ID="lblNgoaiNgu" runat="server" 
                            meta:resourcekey="lblNgoaiNguResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Kỹ Năng:
                    </td>
                    <td>
                        <asp:Label ID="lblKyNang" runat="server" 
                            meta:resourcekey="lblKyNangResource1" />
                    </td>
                </tr>
            </table>
            <table cellpadding="4" cellspacing="4">
                <tr>
                    <td colspan="4" align="center">
                        <b>Kinh Nghiệm Làm Việc</b>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Cấp Bậc:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblCapBac" runat="server" 
                            meta:resourcekey="lblCapBacResource1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Số Năm Kinh Nghiệm:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblSoNamKinhNghiem" runat="server" 
                            meta:resourcekey="lblSoNamKinhNghiemResource1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Công Ty Làm Việc:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblCongTyLamViec" runat="server" 
                            meta:resourcekey="lblCongTyLamViecResource1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Chức Danh:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblChucDanh" runat="server" 
                            meta:resourcekey="lblChucDanhResource1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Tóm Tắt Kinh Nghiệm:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblTomTatKinhNghiem" runat="server" 
                            meta:resourcekey="lblTomTatKinhNghiemResource1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Mô Tả Công Việc Lý Tưởng:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblMoTaCongViecLyTuong" runat="server" 
                            meta:resourcekey="lblMoTaCongViecLyTuongResource1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Nguyện Vọng:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblNguyenVong" runat="server" 
                            meta:resourcekey="lblNguyenVongResource1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Thời Gian Làm Việc Mong Muốn:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblThoiGianLamViecMongMuon" runat="server" 
                            meta:resourcekey="lblThoiGianLamViecMongMuonResource1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Lương Mong Muốn:
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblLuongMongMuon" runat="server" 
                            meta:resourcekey="lblLuongMongMuonResource1" />
                    </td>
                </tr>
                <tr>
                    <td class="style7" align="center">
                        <asp:Button ID="Button8" runat="server" Text="Trả Lời" OnClick="btt_TraLoi_Click"
                            Height="26px" meta:resourcekey="Button8Resource1" />
                    </td>
                    <td align="center" class="style7" colspan="2">
                        <asp:Button ID="btnChinhSua4" runat="server" OnClick="btnChinhSua_Click" 
                            Text="Chỉnh sửa" meta:resourcekey="btnChinhSua4Resource1" />
                    </td>
                    <td align="center" class="style7">
                        <asp:Button ID="Button12" runat="server" OnClick="btnBaoCaoViPham_Click" 
                            Text="Báo cáo bài viết vi phạm" meta:resourcekey="Button12Resource1" />
                    </td>
                    <td align="center" class="style8">
                        &nbsp;</td>
                </tr>
                <tr>
                   <td class="style5" colspan="5">
                        <asp:Label ID="Label4" runat="server" Text="Các Bài Trả Lời Đã Đăng:" Font-Bold="True"
                            ForeColor="Red" Width="400px" meta:resourcekey="Label4Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="4">
                        <asp:DataList ID="DataList4" runat="server" DataSourceID="BaiTraLoi" 
                            Width="231px" meta:resourcekey="DataList4Resource1">
                            <ItemTemplate>
                                <asp:Panel runat="server" ID="pnTraLoi4" BorderStyle="Groove" BorderColor="#656598"
                                    Width="542px" meta:resourcekey="pnTraLoi4Resource1">
                                    Thời gian trả lời:
                                    <asp:Label ID="ThoiGianTraLoiLabel" runat="server" 
                                        Text='<%# Eval("ThoiGianTraLoi") %>' 
                                        meta:resourcekey="ThoiGianTraLoiLabelResource4" />
                                    <br />
                                    Nội dung trả lời:
                                    <asp:Label ID="NoiDungTraLoiLabel" runat="server" 
                                        Text='<%# Eval("NoiDungTraLoi") %>' 
                                        meta:resourcekey="NoiDungTraLoiLabelResource4" />
                                    <br />
                                </asp:Panel>
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="2">
                        &nbsp;
                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
    <asp:HyperLink ID="hypXemThongTinLienHe" runat="server" Text="Xem Thông Tin Liên Hệ"
        NavigateUrl="../DanhMuc/XemThongTinLienHe.aspx?id=1" ForeColor="#990099" 
        meta:resourcekey="hypXemThongTinLienHeResource1"></asp:HyperLink>
</div>
