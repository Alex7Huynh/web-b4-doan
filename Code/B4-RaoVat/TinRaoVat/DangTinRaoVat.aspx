<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="DangTinRaoVat.aspx.cs" Inherits="DangTinRaoVat" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table style="width: 100%; background-color: #EAFFFF;">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#003399" 
                            meta:resourcekey="Label11Resource1">Thông 
                        tin chi tiết rao vặt của bạn :</asp:Label>
                        <br />
                        <asp:Label ID="Label12" runat="server" Text=" (*Ghi chú : Bạn vui lòng nhập Tiếng Việt có dấu và thông tin đầy đủ)"
                            ForeColor="#000066" meta:resourcekey="Label12Resource1"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#FF9900" style="width: 143px">
                        <asp:Label ID="Label13" runat="server" Text="* Chuyên mục rao vặt :" 
                            ForeColor="#003399" meta:resourcekey="Label13Resource1"></asp:Label>
                    </td>
                    <td bgcolor="#FF9900">
                        <asp:TextBox ID="txtChuyenMuc1" runat="server" BackColor="#FF9900" BorderStyle="None"
                            ForeColor="#003399" Width="300px" 
                            meta:resourcekey="txtChuyenMuc1Resource1" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 143px" align="right">
                        <asp:Label ID="Label1" runat="server" Text="* Tiêu đề" ForeColor="#003399" 
                            meta:resourcekey="Label1Resource1"></asp:Label>
                    </td>
                    <td style="width: 301px">
                        <asp:TextBox ID="txtTieuDe1" runat="server" Width="300px" ForeColor="#003399" 
                            meta:resourcekey="txtTieuDe1Resource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTieuDe1" runat="server" 
                            ControlToValidate="txtTieuDe1" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvTieuDe1Resource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 143px" align="right">
                        <asp:Label ID="Label2" runat="server" Text="Nội dung:" ForeColor="#003399" 
                            meta:resourcekey="Label2Resource1"></asp:Label>
                    </td>
                    <td style="width: 301px">
                        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
                        <cc1:Editor ID="Editor1" runat="server" Width="100%" />
                    </td>
                    
                </tr>
                <tr>
                    <td style="width: 143px" align="right">
                        <asp:Label ID="Label3" runat="server" Text="* Giá" ForeColor="#003399" 
                            meta:resourcekey="Label3Resource1"></asp:Label>
                    </td>
                    <td style="width: 301px">
                        <asp:TextBox ID="txtGia1" runat="server" Width="300px" ForeColor="#003399" 
                            meta:resourcekey="txtGia1Resource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvGia1" runat="server" 
                            ControlToValidate="txtGia1" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvGia1Resource1"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvdGia1" runat="server" ControlToValidate="txtGia1" 
                            ErrorMessage="Nhập số" MaximumValue="999999999" MinimumValue="0" 
                            Type="Integer" meta:resourcekey="rvdGia1Resource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="height: 26px; width: 143px" align="right">
                        <asp:Label ID="Label4" runat="server" Text="Thời hạn lưu tin (ngày):" 
                            ForeColor="#003399" meta:resourcekey="Label4Resource1"></asp:Label>
                    </td>
                    <td style="height: 26px; width: 301px">
                        <asp:DropDownList ID="ddlThoiHanLuuTin1" runat="server" Width="40px" 
                            ForeColor="#003399" meta:resourcekey="ddlThoiHanLuuTin1Resource1">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 143px" align="right">
                        <asp:Label ID="Label5" runat="server" Text="Hình ảnh:" ForeColor="#003399" 
                            meta:resourcekey="Label5Resource1"></asp:Label>
                    </td>
                    <td style="width: 301px">
                        <asp:FileUpload ID="fupHinhAnh1" runat="server" ForeColor="#003399" 
                            meta:resourcekey="fupHinhAnh1Resource1" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 143px" align="right">
                        <asp:Label ID="Label6" runat="server" Text="Ghi chú hình ảnh:" 
                            ForeColor="#003399" meta:resourcekey="Label6Resource1"></asp:Label>
                    </td>
                    <td style="width: 301px">
                        <asp:TextBox ID="txtGhiChuAnh1" runat="server" 
                            meta:resourcekey="txtGhiChuAnh1Resource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 143px" align="right">
                        <asp:Label ID="Label14" runat="server" Text="*Địa điểm" ForeColor="#003399" 
                            meta:resourcekey="Label14Resource1"></asp:Label>
                    </td>
                    <td style="width: 301px">
                        <asp:DropDownList ID="ddlDiaDiem1" runat="server" DataSourceID="lqDiaDiem" 
                            ForeColor="#003399" meta:resourcekey="ddlDiaDiem1Resource1">
                        </asp:DropDownList>
                        <asp:LinqDataSource ID="lqDiaDiem" runat="server" 
                            ContextTypeName="DAO.RaoVatDataClassesDataContext" Select="TenDiaDiem" 
                            TableName="DIADIEMs" Where="Deleted == @Deleted">
                            <WhereParameters>
                                <asp:Parameter DefaultValue="false" Name="Deleted" Type="Boolean" />
                            </WhereParameters>
                        </asp:LinqDataSource>
                    </td>
                </tr>
                <tr align="center">
                    <td colspan="2">
                        <asp:CheckBox ID="ckbDongY1" runat="server" ForeColor="#003399" 
                            Text="Tôi đồng ý sau khi đã đọc Điều lệ sử dụng" 
                            meta:resourcekey="ckbDongY1Resource1" />
                    </td>
                </tr>
                <tr align="center">
                    <td colspan="2">
                        <asp:Button ID="btnDangTin1" runat="server" BackColor="#FF9933" 
                            BorderStyle="Groove" Font-Bold="True" ForeColor="White" 
                            onclick="btnDangTin1_Click" Text="ĐĂNG TIN RAO VẶT" 
                            meta:resourcekey="btnDangTin1Resource1" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width: 100%; background-color: #FFF2BF;">
                <tr>
                    <td colspan="4">
                        <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="#003399" 
                            meta:resourcekey="Label15Resource1">Thông tin chi tiết rao vặt của bạn :</asp:Label>
                        <br />
                        <asp:Label ID="Label16" runat="server" Text=" (*Ghi chú : Bạn vui lòng nhập Tiếng Việt có dấu và thông tin đầy đủ)"
                            ForeColor="#000066" meta:resourcekey="Label16Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#FF9900" style="width: 129px">
                        <asp:Label ID="Label17" runat="server" Text="* Chuyên mục rao vặt :" 
                            ForeColor="#003399" meta:resourcekey="Label17Resource1"></asp:Label>
                    </td>
                    <td bgcolor="#FF9900" colspan="3">
                        <asp:TextBox ID="txtChuyenMuc2" runat="server" BackColor="#FF9900" BorderStyle="None"
                            ForeColor="#003399" Width="300px" 
                            meta:resourcekey="txtChuyenMuc2Resource1" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label18" runat="server" Text="* Tiêu đề" ForeColor="#003399" 
                            meta:resourcekey="Label18Resource1"></asp:Label>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtTieuDe2" runat="server" Width="300px" ForeColor="#003399" 
                            meta:resourcekey="txtTieuDe2Resource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTieuDe2" runat="server" 
                            ControlToValidate="txtTieuDe2" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvTieuDe2Resource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label19" runat="server" Text="Nội dung:" ForeColor="#003399" 
                            meta:resourcekey="Label19Resource1"></asp:Label>
                    </td>
                    <td colspan="3">
                        <cc1:Editor ID="Editor2" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label20" runat="server" Text="*Giá:" ForeColor="#003399" 
                            meta:resourcekey="Label20Resource1"></asp:Label>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtGia2" runat="server" Width="300px" 
                            meta:resourcekey="txtGia2Resource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvGia2" runat="server" 
                            ControlToValidate="txtGia2" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvGia2Resource1"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvdGia2" runat="server" ControlToValidate="txtGia2" 
                            ErrorMessage="Nhập số" MaximumValue="999999999" MinimumValue="0" 
                            Type="Integer" meta:resourcekey="rvdGia2Resource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label119" runat="server" Text="*Địa điểm" ForeColor="#003399" 
                            meta:resourcekey="Label119Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 40px;">
                        <asp:DropDownList ID="ddlDiaDiem2" runat="server" DataSourceID="lqDiaDiem" 
                            ForeColor="#003399" meta:resourcekey="ddlDiaDiem2Resource1">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label24" runat="server" Text="Địa chỉ :" ForeColor="#003399" 
                            meta:resourcekey="Label24Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtDiaChi" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourcekey="txtDiaChiResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label26" runat="server" Text="Diện tích (mét vuông):" 
                            ForeColor="#003399" meta:resourcekey="Label26Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtDienTich" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourcekey="txtDienTichResource1"></asp:TextBox>
                        <asp:RangeValidator ID="rvdDienTich" runat="server" 
                            ControlToValidate="txtDienTich" ErrorMessage="Nhập số" MaximumValue="9999" 
                            MinimumValue="1" Type="Integer" meta:resourcekey="rvdDienTichResource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label29" runat="server" Text="Hướng :" ForeColor="#003399" 
                            meta:resourcekey="Label29Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtHuong" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourcekey="txtHuongResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label30" runat="server" Text="Lộ giới : " ForeColor="#003399" 
                            meta:resourcekey="Label30Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtLoGioi" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourcekey="txtLoGioiResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label31" runat="server" Text="Lầu : " ForeColor="#003399" 
                            meta:resourcekey="Label31Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtLau" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourcekey="txtLauResource1"></asp:TextBox>
                        <asp:RangeValidator ID="rvdLau" runat="server" ControlToValidate="txtLau" 
                            ErrorMessage="Nhập số" MaximumValue="99" MinimumValue="1" Type="Integer" 
                            meta:resourcekey="rvdLauResource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label32" runat="server" Text="Lửng : " ForeColor="#003399" 
                            meta:resourcekey="Label32Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtLung" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourcekey="txtLungResource1"></asp:TextBox>
                        <asp:RangeValidator ID="rvdLung" runat="server" ControlToValidate="txtLung" 
                            ErrorMessage="Nhập số" MaximumValue="99" MinimumValue="1" Type="Integer" 
                            meta:resourcekey="rvdLungResource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label33" runat="server" Text="Vị trí :" ForeColor="#003399" 
                            meta:resourcekey="Label33Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:DropDownList ID="ddlMatTien" runat="server" 
                            meta:resourcekey="ddlMatTienResource1">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label34" runat="server" Text="Giấy tờ :" ForeColor="#003399" 
                            meta:resourcekey="Label34Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtGiayTo" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourcekey="txtGiayToResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label35" runat="server" Text="Đường trước nhà :" 
                            ForeColor="#003399" meta:resourcekey="Label35Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtDuongTruocNha" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourcekey="txtDuongTruocNhaResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label36" runat="server" Text="Điện - nước" ForeColor="#003399" 
                            meta:resourcekey="Label36Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:CheckBox ID="ckbDien" runat="server" Text="Đồng hồ điện" 
                            meta:resourcekey="ckbDienResource1" />
                        <asp:CheckBox ID="ckbNuocMay" runat="server" Text="Nước máy" 
                            meta:resourcekey="ckbNuocMayResource1" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label38" runat="server" Text="Số phòng ngủ :" 
                            ForeColor="#003399" meta:resourcekey="Label38Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtSoPhongNgu" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourcekey="txtSoPhongNguResource1"></asp:TextBox>
                        <asp:RangeValidator ID="rvdSoPhongNgu" runat="server" 
                            ControlToValidate="txtSoPhongNgu" ErrorMessage="Nhập số" MaximumValue="99" 
                            MinimumValue="1" Type="Integer" meta:resourcekey="rvdSoPhongNguResource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label39" runat="server" Text="Số nhà tắm / vệ sinh :" 
                            ForeColor="#003399" meta:resourcekey="Label39Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtSoNhaVeSinh" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourcekey="txtSoNhaVeSinhResource1"></asp:TextBox>
                        <asp:RangeValidator ID="rvdSoNhaVeSinh" runat="server" 
                            ControlToValidate="txtSoNhaVeSinh" ErrorMessage="Nhập số" MaximumValue="99" 
                            MinimumValue="1" Type="Integer" meta:resourcekey="rvdSoNhaVeSinhResource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label40" runat="server" Text="Năm xây dựng :" 
                            ForeColor="#003399" meta:resourcekey="Label40Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtNamXayDung" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourcekey="txtNamXayDungResource1"></asp:TextBox>
                        <asp:RangeValidator ID="rvdNamXayDung" runat="server" 
                            ControlToValidate="txtNamXayDung" ErrorMessage="Nhập số" MaximumValue="2020" 
                            MinimumValue="1000" Type="Integer" 
                            meta:resourcekey="rvdNamXayDungResource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td rowspan="3" style="width: 129px" align="right">
                        <asp:Label ID="Label41" runat="server" Text="Nội thất - Tiện nghi :" 
                            ForeColor="#003399" meta:resourcekey="Label41Resource1"></asp:Label>
                    </td>
                    <td style="width: 166px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbPhongKhach" runat="server" Text="Phòng khách" 
                            meta:resourcekey="ckbPhongKhachResource1" />
                    </td>
                    <td style="width: 135px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGaraOto" runat="server" Text="Gara Ôtô" 
                            meta:resourcekey="ckbGaraOtoResource1" />
                    </td>
                    <td style="width: 118px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbNhaBep" runat="server" Text="Nhà bếp" 
                            meta:resourcekey="ckbNhaBepResource1" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 166px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbHoBoi" runat="server" Text="Hồ bơi" 
                            meta:resourcekey="ckbHoBoiResource1" />
                    </td>
                    <td style="width: 135px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbSanThuong" runat="server" Text="Sân thượng" 
                            meta:resourcekey="ckbSanThuongResource1" />
                    </td>
                    <td style="width: 118px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbDieuHoa" runat="server" Text="Điều hòa" 
                            meta:resourcekey="ckbDieuHoaResource1" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 166px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbSanVuon" runat="server" Text="Sân vườn" 
                            meta:resourcekey="ckbSanVuonResource1" />
                    </td>
                    <td style="width: 135px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbThangMay" runat="server" Text="Thang máy" 
                            meta:resourcekey="ckbThangMayResource1" />
                    </td>
                    <td style="width: 118px; margin-left: 80px;">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td rowspan="3" style="width: 129px" align="right">
                        <asp:Label ID="Label42" runat="server" Text="Văn hóa - Xã hội:" 
                            ForeColor="#003399" meta:resourcekey="Label42Resource1"></asp:Label>
                    </td>
                    <td style="width: 166px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGanTruongMauGiao" runat="server" 
                            Text="Gần trường mẫu giáo" 
                            meta:resourcekey="ckbGanTruongMauGiaoResource1" />
                    </td>
                    <td style="width: 135px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGanTruongCapMot" runat="server" Text="Gần trường cấp I" 
                            meta:resourcekey="ckbGanTruongCapMotResource1" />
                    </td>
                    <td style="width: 118px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGanTruongCapHai" runat="server" Text="Gần trường cấp II" 
                            meta:resourcekey="ckbGanTruongCapHaiResource1" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 166px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGanTruongCapBa" runat="server" Text="Gần trường cấp III" 
                            meta:resourcekey="ckbGanTruongCapBaResource1" />
                    </td>
                    <td style="width: 135px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGanCho" runat="server" Text="Gần chợ" 
                            meta:resourcekey="ckbGanChoResource1" />
                    </td>
                    <td style="width: 118px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGanBenhVien" runat="server" Text="Gần bệnh viện" 
                            meta:resourcekey="ckbGanBenhVienResource1" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 166px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGanTrungTamThuongMai" runat="server" 
                            Text="Gần trung tâm thương mại" 
                            meta:resourcekey="ckbGanTrungTamThuongMaiResource1" />
                    </td>
                    <td style="width: 135px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGanTrungTamGiaiTri" runat="server" 
                            Text="Gần trung tâm giải trí" 
                            meta:resourcekey="ckbGanTrungTamGiaiTriResource1" />
                    </td>
                    <td style="width: 118px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGanCongVien" runat="server" Text="Gần công viên" 
                            meta:resourcekey="ckbGanCongVienResource1" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        &nbsp;<asp:Label ID="Label43" runat="server" ForeColor="#003399" 
                            Text="Thời hạn lưu tin:" meta:resourcekey="Label43Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:DropDownList ID="ddlThoiHanLuuTin2" runat="server" ForeColor="#003399" 
                            Width="100px" meta:resourcekey="ddlThoiHanLuuTin2Resource1">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label44" runat="server" ForeColor="#003399" Text="Hình ảnh:" 
                            meta:resourcekey="Label44Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:FileUpload ID="fupHinhAnh2" runat="server" ForeColor="#003399" 
                            meta:resourcekey="fupHinhAnh2Resource1" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label45" runat="server" ForeColor="#003399" 
                            Text="Ghi chú hình ảnh:" meta:resourcekey="Label45Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtGhiChuAnh2" runat="server" 
                            meta:resourcekey="txtGhiChuAnh2Resource1"></asp:TextBox>
                    </td>
                </tr>
                <tr align="center">
                    <td colspan="4">
                        <asp:CheckBox ID="ckbDongY2" runat="server" ForeColor="#003399" 
                            Text="Tôi đồng ý sau khi đã đọc Điều lệ sử dụng" 
                            meta:resourcekey="ckbDongY2Resource1" />
                    </td>
                </tr>
                <tr align="center">
                    <td colspan="4">
                        <asp:Button ID="btnDangTin2" runat="server" BackColor="#FF9933" BorderStyle="Groove"
                            Font-Bold="True" ForeColor="White" Text="ĐĂNG TIN RAO VẶT" 
                            onclick="btnDangTin2_Click" meta:resourcekey="btnDangTin2Resource1" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px">
                        &nbsp;
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        &nbsp;
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <table style="width: 100%; background-color: #D9FFF0;">
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label ID="Label53" runat="server" Text="ĐĂNG TIN TUYỂN DỤNG MỚI " 
                            style="font-weight: 700" ForeColor="#33CC33" 
                            meta:resourcekey="Label53Resource1"></asp:Label>
                        <br />
                    </td>
                </tr>
                 
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label130" runat="server" Text="* Tiêu đề" 
                            ForeColor="#003399" style="font-weight: 700" 
                            meta:resourcekey="Label130Resource1"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTieuDe3" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourcekey="txtTieuDe3Resource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTieuDe3" runat="server" 
                            ControlToValidate="txtTieuDe1" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvTieuDe3Resource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                     <td bgcolor="#00FF99" colspan="2">
                         <asp:Label ID="Label50" runat="server" ForeColor="#003399" 
                             style="font-weight: 700" Text="Thông tin nhà tuyển dụng :" 
                             meta:resourcekey="Label50Resource1"></asp:Label>
                         <br />
                     </td>
                </tr>
                 <tr>
                    <td style="width: 2480px" align="right">
                        <asp:Label ID="Label52" runat="server" Text="*Tên công ty/nhà tuyển dụng :" 
                            ForeColor="#003399" Font-Bold="True" meta:resourcekey="Label52Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtTenNhaTuyenDung" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourcekey="txtTenNhaTuyenDungResource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTenNhaTuyenDung" runat="server" 
                            ControlToValidate="txtTenNhaTuyenDung" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvTenNhaTuyenDungResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label54" runat="server" Font-Bold="True" 
                            Text="*Giới thiệu về nhà tuyển dụng:" ForeColor="#003399" 
                            meta:resourcekey="Label54Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtGioiThieuNhaTuyenDung" runat="server" ForeColor="#003399" Height="116px" 
                            TextMode="MultiLine" Width="417px" 
                            meta:resourcekey="txtGioiThieuNhaTuyenDungResource1"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvGioiThieuNhaTuyenDung" runat="server" 
                            ControlToValidate="txtGioiThieuNhaTuyenDung" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvGioiThieuNhaTuyenDungResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label128" runat="server" Text="*Địa điểm" ForeColor="#003399" 
                            meta:resourcekey="Label128Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:DropDownList ID="ddlDiaDiem3" runat="server" DataSourceID="lqDiaDiem" 
                            ForeColor="#003399" meta:resourcekey="ddlDiaDiem3Resource1">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label55" runat="server" Text="Website: " 
                            ForeColor="#003399" meta:resourcekey="Label55Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtWebsite" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourcekey="txtWebsiteResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left" bgcolor="#33CCCC" colspan="2">
                        <asp:Label ID="Label56" runat="server" Text="Thông tin liên hệ : " 
                            ForeColor="#003399" style="font-weight: 700" 
                            meta:resourcekey="Label56Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label57" runat="server" Text="*Người đại diện:" 
                            ForeColor="#003399" meta:resourcekey="Label57Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtNguoiDaiDien" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourcekey="txtNguoiDaiDienResource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNguoiDaiDien" runat="server" 
                            ControlToValidate="txtNguoiDaiDien" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvNguoiDaiDienResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label58" runat="server" Text="*Địa chỉ liên hệ:" 
                            ForeColor="#003399" meta:resourcekey="Label58Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtDiaChiLienHe" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourcekey="txtDiaChiLienHeResource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDiaChiLienHe" runat="server" 
                            ControlToValidate="txtDiaChiLienHe" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvDiaChiLienHeResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label59" runat="server" Text="*Điện thoai:" ForeColor="#003399" 
                            meta:resourcekey="Label59Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtDienThoai" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourcekey="txtDienThoaiResource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDienThoai" runat="server" 
                            ControlToValidate="txtDienThoai" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvDienThoaiResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label60" runat="server" Text="*Email:" 
                            ForeColor="#003399" meta:resourcekey="Label60Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtEmail" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourcekey="txtEmailResource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                            ControlToValidate="txtEmail" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvEmailResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" bgcolor="#FFCC00" colspan="2">
                        <asp:Label ID="Label61" runat="server" Text="Thông tin yêu cầu tuyển dụng : " 
                            ForeColor="#003399" style="font-weight: 700" 
                            meta:resourcekey="Label61Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label62" runat="server" Text="*Nghành Nghề:" 
                            ForeColor="#003399" meta:resourcekey="Label62Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:DropDownList ID="ddlNganhNghe3" runat="server" DataSourceID="lqNganhNghe" 
                            meta:resourcekey="ddlNganhNghe3Resource1">
                        </asp:DropDownList>
                        <asp:LinqDataSource ID="lqNganhNghe" runat="server" 
                            ContextTypeName="DAO.RaoVatDataClassesDataContext" Select="TenNganhNghe" 
                            TableName="NGANHNGHEs">
                        </asp:LinqDataSource>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label63" runat="server" Text="*Vị trí tuyển dụng:" 
                            ForeColor="#003399" meta:resourcekey="Label63Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtViTriTuyenDung" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourcekey="txtViTriTuyenDungResource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvViTriTuyenDung" runat="server" 
                            ControlToValidate="txtViTriTuyenDung" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvViTriTuyenDungResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label64" runat="server" Text="*Yêu cầu công việc:" 
                            ForeColor="#003399" meta:resourcekey="Label64Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtYeuCauCongViec" runat="server" ForeColor="#003399" Height="116px" 
                            TextMode="MultiLine" Width="417px" 
                            meta:resourcekey="txtYeuCauCongViecResource1"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvYeuCauCongViec" runat="server" 
                            ControlToValidate="txtYeuCauCongViec" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvYeuCauCongViecResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label67" runat="server" Text="Yêu cầu kinh nghiệm:" 
                            ForeColor="#003399" meta:resourcekey="Label67Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtYeuCauKinhNghiem" runat="server" ForeColor="#003399" 
                            Height="116px" TextMode="MultiLine" Width="417px" 
                            meta:resourcekey="txtYeuCauKinhNghiemResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label68" runat="server" Text="*Thời gian làm việc:" 
                            ForeColor="#003399" meta:resourcekey="Label68Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:DropDownList ID="ddlThoiGianLamViec" runat="server" 
                            meta:resourcekey="ddlThoiGianLamViecResource1">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label70" runat="server" Text="*Số lượng cần tuyển:" 
                            ForeColor="#003399" meta:resourcekey="Label70Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtSoLuongCanTuyen" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourcekey="txtSoLuongCanTuyenResource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSoLuongCanTuyen" runat="server" 
                            ControlToValidate="txtSoLuongCanTuyen" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvSoLuongCanTuyenResource1"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvdSoLuongCanTuyen" runat="server" 
                            ControlToValidate="txtSoLuongCanTuyen" ErrorMessage="Nhập số" 
                            MaximumValue="1000" MinimumValue="1" Type="Integer" 
                            meta:resourcekey="rvdSoLuongCanTuyenResource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label71" runat="server" Text="Mức lương khởi điểm" 
                            ForeColor="#003399" meta:resourcekey="Label71Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtMucLuongKhoiDiem" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourcekey="txtMucLuongKhoiDiemResource1">0</asp:TextBox>
                        <asp:RangeValidator ID="rvdMucLuongKhoiDiem" runat="server" 
                            ControlToValidate="txtMucLuongKhoiDiem" ErrorMessage="Nhập số" 
                            MaximumValue="999999999" MinimumValue="0" Type="Integer" 
                            meta:resourcekey="rvdMucLuongKhoiDiemResource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label72" runat="server" Text="Thời gian thử việc:" 
                            ForeColor="#003399" meta:resourcekey="Label72Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtThoiGianThuViec" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourcekey="txtThoiGianThuViecResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label73" runat="server" Text="Mức lương thử việc:" 
                            ForeColor="#003399" meta:resourcekey="Label73Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtLuongThuViec" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourcekey="txtLuongThuViecResource1"></asp:TextBox>
                        <asp:RangeValidator ID="rvdMucLuongThuViec" runat="server" 
                            ControlToValidate="txtLuongThuViec" ErrorMessage="Nhập số" 
                            MaximumValue="999999999" MinimumValue="0" Type="Integer" 
                            meta:resourcekey="rvdMucLuongThuViecResource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label74" runat="server" Text="Quyền lợi được hưởng:" 
                            ForeColor="#003399" meta:resourcekey="Label74Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtQuyenLoiDuocHuong" runat="server" ForeColor="#003399" Height="116px" 
                            TextMode="MultiLine" Width="417px" 
                            meta:resourcekey="txtQuyenLoiDuocHuongResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label75" runat="server" Text="Hồ sơ bao gồm:" 
                            ForeColor="#003399" meta:resourcekey="Label75Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtHoSoBaoGom" runat="server" ForeColor="#003399" 
                            Height="116px" TextMode="MultiLine" Width="417px" 
                            meta:resourcekey="txtHoSoBaoGomResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label76" runat="server" ForeColor="#003399" 
                            Text="*Thời hạn kết thúc nộp hồ sơ: " meta:resourcekey="Label76Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:Calendar ID="cldThoiHanKetThucNopHoSo" runat="server" 
                            meta:resourcekey="cldThoiHanKetThucNopHoSoResource1"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label120" runat="server" ForeColor="#003399" 
                            Text="Thời hạn lưu tin:" meta:resourcekey="Label120Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:DropDownList ID="ddlThoiHanLuuTin3" runat="server" ForeColor="#003399" 
                            Width="100px" meta:resourcekey="ddlThoiHanLuuTin3Resource1">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label122" runat="server" ForeColor="#003399" 
                            Text="Hình ảnh:" meta:resourcekey="Label122Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:FileUpload ID="fupHinhAnh3" runat="server" ForeColor="#003399" 
                            meta:resourcekey="fupHinhAnh3Resource1" />
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2480px">
                        <asp:Label ID="Label124" runat="server" ForeColor="#003399" 
                            Text="Ghi chú hình ảnh:" meta:resourcekey="Label124Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtGhiChuAnh3" runat="server" 
                            meta:resourcekey="txtGhiChuAnh3Resource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="btnDangTin3" runat="server" BackColor="#FF9933" 
                            BorderStyle="Groove" Font-Bold="True" ForeColor="White" 
                            onclick="btnDangTin3_Click" Text="ĐĂNG KÝ HỒ SƠ" 
                            meta:resourcekey="btnDangTin3Resource1" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View4" runat="server">
            <table style="width: 100%; background-color: #FFE1E1;">
            <tr>
            <td align="center" colspan="3">
                <asp:Label ID="Label77" runat="server" ForeColor="#33CC33" 
                    style="font-weight: 700" Text="ĐĂNG TIN TUYỂN DỤNG MỚI " 
                    meta:resourcekey="Label77Resource1"></asp:Label>
            </td>
            </tr>
                <tr>
                    <td align="right" style="width: 119px">
                        <asp:Label ID="Label131" runat="server" ForeColor="#003399" 
                            style="font-weight: 700" Text="* Tiêu đề" 
                            meta:resourcekey="Label131Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:TextBox ID="txtTieuDe4" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourcekey="txtTieuDe4Resource1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvTieuDe6" runat="server" 
                            ControlToValidate="txtTieuDe1" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvTieuDe6Resource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#00CC66" colspan="3">
                        <asp:Label ID="Label78" runat="server" ForeColor="#003399" 
                            style="font-weight: 700" Text="Tuỳ chọn chuyên mục việc làm :" 
                            meta:resourcekey="Label78Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 119px">
                        <asp:Label ID="Label79" runat="server" ForeColor="#003399" 
                            Text="Xuất hiện hồ sơ của bạn trong trang người tìm việc :" 
                            style="font-weight: bold" meta:resourcekey="Label79Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <br />
                        <asp:CheckBox ID="ckbDongYHienThi" runat="server" Text="Đồng ý" 
                            meta:resourcekey="ckbDongYHienThiResource1" />
                    </td>
                    <td>
                        <asp:Label ID="Label80" runat="server" Font-Size="Smaller" 
                            
                            Text="(*Nhà tuyển dụng có thể tìm thấy và liên lạc bạn bất cứ lúc nào khi hồ sơ của bạn có trong trang tìm việc. Nếu bạn chọn không đồng ý, tức bạn đang có việc làm hoặc không mong muốn tìm 1 việc làm) " 
                            meta:resourcekey="Label80Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 119px">
                        <asp:Label ID="Label81" runat="server" ForeColor="#003399" 
                            Text="Ngành nghề công việc bạn mong muốn làm việc :" 
                            style="font-weight: bold" meta:resourcekey="Label81Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px" align="left">
                        <asp:DropDownList ID="ddlNganhNghe4a" runat="server" DataSourceID="lqNganhNghe" 
                            meta:resourcekey="ddlNganhNghe4aResource1">
                        </asp:DropDownList>
                        <br />
                        <asp:DropDownList ID="ddlNganhNghe4b" runat="server" DataSourceID="lqNganhNghe" 
                            meta:resourcekey="ddlNganhNghe4bResource1">
                        </asp:DropDownList>
                        <br />
                        <asp:DropDownList ID="ddlNganhNghe4c" runat="server" DataSourceID="lqNganhNghe" 
                            meta:resourcekey="ddlNganhNghe4cResource1">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" bgcolor="#33CCFF">
                        <asp:Label ID="Label82" runat="server" ForeColor="#003399" 
                            style="font-weight: 700" Text="Thông tin cá nhân : " 
                            meta:resourcekey="Label82Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 119px" align="right">
                        <asp:Label ID="Label84" runat="server" ForeColor="#003399" Text="*Họ và tên:" 
                            style="font-weight: bold" meta:resourcekey="Label84Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:TextBox ID="txtHoTen" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourcekey="txtHoTenResource1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvHoTen0" runat="server" 
                            ControlToValidate="txtHoTen" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvHoTen0Resource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 119px" align="right">
                        <asp:Label ID="Label85" runat="server" ForeColor="#003399" Text="*Ngày sinh:" 
                            style="font-weight: bold" meta:resourcekey="Label85Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:Calendar ID="cldNgaySinh" runat="server" 
                            meta:resourcekey="cldNgaySinhResource1"></asp:Calendar>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 119px" align="right">
                        <asp:Label ID="Label86" runat="server" ForeColor="#003399" Text="*Giới tính:" 
                            style="font-weight: bold" meta:resourcekey="Label86Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:CheckBox ID="ckbGioiTinh" runat="server" Text="Nam" 
                            meta:resourcekey="ckbGioiTinhResource1" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 119px" align="right">
                        <asp:Label ID="Label87" runat="server" ForeColor="#003399" 
                            Text="*Tình trạng hôn nhân:" style="font-weight: bold" 
                            meta:resourcekey="Label87Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:CheckBox ID="ckbTinhTrangHonNhan" runat="server" Text="Đã kết hôn" 
                            meta:resourcekey="ckbTinhTrangHonNhanResource1" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 119px" align="right">
                        <asp:Label ID="Label88" runat="server" ForeColor="#003399" Text="*Quốc tịch:" 
                            style="font-weight: bold" meta:resourcekey="Label88Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:TextBox ID="txtQuocTich" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourcekey="txtQuocTichResource1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvQuocTich0" runat="server" 
                            ControlToValidate="txtQuocTich" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvQuocTich0Resource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" bgcolor="#CCCCFF">
                        <asp:Label ID="Label89" runat="server" ForeColor="#003399" 
                            style="font-weight: 700" Text="Thông tin liên lạc :" 
                            meta:resourcekey="Label89Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 119px" align="right">
                        <asp:Label ID="Label90" runat="server" ForeColor="#003399" Text="*Địa chỉ liên lạc:" 
                            style="font-weight: 700" meta:resourcekey="Label90Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:TextBox ID="txtDiaChiLienLac" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourcekey="txtDiaChiLienLacResource1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvDiaChi0" runat="server" 
                            ControlToValidate="txtDiaChiLienLac" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvDiaChi0Resource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 119px" align="right">
                        <asp:Label ID="Label92" runat="server" ForeColor="#003399" 
                            Text="*Số điện thoại liên lạc:" style="font-weight: 700" 
                            meta:resourcekey="Label92Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:TextBox ID="txtDienThoai4" runat="server" ForeColor="#003399" 
                            Width="105px" meta:resourcekey="txtDienThoai4Resource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDienThoai4" runat="server" 
                            ControlToValidate="txtDienThoai4" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvDienThoai4Resource1"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="right" style="width: 119px">
                        <asp:Label ID="Label113" runat="server" ForeColor="#003399" 
                            style="font-weight: 700" Text="Di động:" 
                            meta:resourcekey="Label113Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:TextBox ID="txtDiDong" runat="server" ForeColor="#003399" Width="105px" 
                            meta:resourcekey="txtDiDongResource1"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 119px" align="right">
                        <asp:Label ID="Label93" runat="server" ForeColor="#003399" 
                            Text="Địa chỉ email:" style="font-weight: 700" 
                            meta:resourcekey="Label93Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:TextBox ID="txtEmail4" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourcekey="txtEmail4Resource1"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" bgcolor="#FFCC66">
                        <asp:Label ID="Label94" runat="server" ForeColor="#003399" 
                            style="font-weight: 700" Text="Trình độ học vấn : " 
                            meta:resourcekey="Label94Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 119px" align="right">
                        <asp:Label ID="Label95" runat="server" ForeColor="#003399" 
                            Text="*Thông tin học vấn:" style="font-weight: 700" 
                            meta:resourcekey="Label95Resource1"></asp:Label>
                        <br />
                        <asp:Label ID="Label118" runat="server" ForeColor="#003399" Text="(Giới hạn 10.000 ký tự)
	" meta:resourcekey="Label118Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:TextBox ID="txtThongTinHocVan" runat="server" ForeColor="#003399" Height="116px" 
                            TextMode="MultiLine" Width="293px" 
                            meta:resourcekey="txtThongTinHocVanResource1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvThongTinHocVan" runat="server" 
                            ControlToValidate="txtThongTinHocVan" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvThongTinHocVanResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 119px" align="right">
                        <asp:Label ID="Label96" runat="server" ForeColor="#003399" Text="*Bằng cấp:" 
                            style="font-weight: 700" meta:resourcekey="Label96Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:DropDownList ID="ddlBangCap" runat="server" 
                            meta:resourcekey="ddlBangCapResource1">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 119px" align="right">
                        <asp:Label ID="Label97" runat="server" ForeColor="#003399" 
                            Text="Trình độ ngoại ngữ:" meta:resourcekey="Label97Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:TextBox ID="txtTrinhDoNgoaiNgu" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourcekey="txtTrinhDoNgoaiNguResource1"></asp:TextBox>
                        <br />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 119px" align="right">
                        <asp:Label ID="Label98" runat="server" ForeColor="#003399" Text="*Kỹ năng:" 
                            style="font-weight: 700" meta:resourcekey="Label98Resource1"></asp:Label>
                        <br />
                        <asp:Label ID="Label117" runat="server" ForeColor="#003399" Text="(Giới hạn 10.000 ký tự)
	" meta:resourcekey="Label117Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:TextBox ID="txtKyNang" runat="server" ForeColor="#003399" Height="116px" 
                            TextMode="MultiLine" Width="298px" meta:resourcekey="txtKyNangResource1" 
                            Font-Size="X-Small"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label114" runat="server" 
                            
                            Text="(*Hãy giới thiệu thật chính xác và chi tiết các kỹ năng làm việc của bạn, điều này giúp nhà tuyển dụng quan tâm đến bạn nhiều hơn.) " 
                            meta:resourcekey="Label114Resource1" Font-Size="X-Small"></asp:Label>
                        <asp:RequiredFieldValidator ID="rfvKyNang" runat="server" 
                            ControlToValidate="txtKyNang" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvKyNangResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" bgcolor="#CC99FF">
                        <asp:Label ID="Label103" runat="server" ForeColor="#003399" 
                            style="font-weight: 700" Text="Kinh nghiệm làm việc :" 
                            meta:resourcekey="Label103Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 119px" align="right">
                        <asp:Label ID="Label99" runat="server" ForeColor="#003399" Text="*Cấp bậc:" 
                            style="font-weight: 700" meta:resourcekey="Label99Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:DropDownList ID="ddlCapBac" runat="server" 
                            meta:resourcekey="ddlCapBacResource1">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 119px" align="right">
                        <asp:Label ID="Label100" runat="server" ForeColor="#003399" 
                            Text="Số năm kinh nghiệm:" meta:resourcekey="Label100Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:TextBox ID="txtSoNamKinhNghiem" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourcekey="txtSoNamKinhNghiemResource1">0</asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="rvdSoNamKinhNghiem0" runat="server" 
                            ControlToValidate="txtSoNamKinhNghiem" ErrorMessage="Nhập số" 
                            MaximumValue="100" MinimumValue="0" Type="Integer" 
                            meta:resourcekey="rvdSoNamKinhNghiem0Resource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 119px" align="right">
                        <asp:Label ID="Label101" runat="server" ForeColor="#003399" 
                            Text="Công ty làm việc hiện tại:" meta:resourcekey="Label101Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:TextBox ID="txtCongTyLamViec" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourcekey="txtCongTyLamViecResource1"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 119px" align="right">
                        <asp:Label ID="Label102" runat="server" ForeColor="#003399" 
                            Text="Chức danh gần đây nhất:" meta:resourcekey="Label102Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:DropDownList ID="ddlChucDanh" runat="server" 
                            meta:resourcekey="ddlChucDanhResource1">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 119px" align="right">
                        <asp:Label ID="Label104" runat="server" ForeColor="#003399" 
                            Text="Tóm tắt kinh nghiệm:" style="font-weight: 700" 
                            meta:resourcekey="Label104Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:TextBox ID="txtTomTatKinhNghiem" runat="server" ForeColor="#003399" Height="116px" 
                            TextMode="MultiLine" Width="292px" 
                            meta:resourcekey="txtTomTatKinhNghiemResource1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label115" runat="server" 
                            
                            Text="(*Tóm tắt các kinh nghiệm về công việc, các công ty đã làm và các chức vụ đã năm giữ, điều đó sẽ giúp bạn rất nhiều trong việc tìm kiếm được 1 công việc tốt.) " 
                            meta:resourcekey="Label115Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 119px" align="right">
                        <asp:Label ID="Label106" runat="server" ForeColor="#003399" 
                            Text="Mô tả công việc lý tưởng:
	" meta:resourcekey="Label106Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:TextBox ID="txtMoTaCongViecLyTuong" runat="server" ForeColor="#003399" 
                            Width="289px" Height="116px" TextMode="MultiLine" 
                            meta:resourcekey="txtMoTaCongViecLyTuongResource1"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#66FF33" colspan="3">
                        <asp:Label ID="Label107" runat="server" ForeColor="#003399" 
                            style="font-weight: 700" Text="Thông tin nhu cầu tìm việc : " 
                            meta:resourcekey="Label107Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 119px" align="RIGHT">
                        <asp:Label ID="Label109" runat="server" ForeColor="#003399" 
                            Text="*Nguyện vọng:" style="font-weight: bold" 
                            meta:resourcekey="Label109Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:TextBox ID="txtNguyenVong" runat="server" ForeColor="#003399" 
                            Width="281px" Height="116px" TextMode="MultiLine" 
                            meta:resourcekey="txtNguyenVongResource1" style="margin-left: 2px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvNguyenVong" runat="server" 
                            ControlToValidate="txtNguyenVong" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvNguyenVongResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 119px" align="RIGHT">
                        <asp:Label ID="Label111" runat="server" ForeColor="#003399" 
                            style="font-weight: bold" Text="*Thời gian làm việc:" 
                            meta:resourcekey="Label111Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:DropDownList ID="ddlThoiGianLamViec4" runat="server" 
                            meta:resourcekey="ddlThoiGianLamViec4Resource1">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 119px" align="RIGHT">
                        <asp:Label ID="Label112" runat="server" ForeColor="#003399" 
                            Text="*Mức lương:" style="font-weight: bold" 
                            meta:resourcekey="Label112Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:TextBox ID="txtLuongMongMuon" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourcekey="txtLuongMongMuonResource1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvMucLuong0" runat="server" 
                            ControlToValidate="txtLuongMongMuon" ErrorMessage="Không bỏ trống" 
                            meta:resourcekey="rfvMucLuong0Resource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="RIGHT" style="width: 119px">
                        <asp:Label ID="Label129" runat="server" ForeColor="#003399" 
                            Text="*Địa điểm" meta:resourcekey="Label129Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:DropDownList ID="ddlDiaDiem4" runat="server" DataSourceID="lqDiaDiem" 
                            ForeColor="#003399" meta:resourcekey="ddlDiaDiem4Resource1">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="RIGHT" style="width: 119px">
                        <asp:Label ID="Label121" runat="server" ForeColor="#003399" 
                            Text="Thời hạn lưu tin:" meta:resourcekey="Label121Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:DropDownList ID="ddlThoiHanLuuTin4" runat="server" ForeColor="#003399" 
                            Width="100px" meta:resourcekey="ddlThoiHanLuuTin4Resource1">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="RIGHT" style="width: 119px">
                        <asp:Label ID="Label125" runat="server" ForeColor="#003399" Text="Hình ảnh:" 
                            meta:resourcekey="Label125Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:FileUpload ID="fupHinhAnh4" runat="server" ForeColor="#003399" 
                            meta:resourcekey="fupHinhAnh4Resource1" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="RIGHT" style="width: 119px">
                        <asp:Label ID="Label127" runat="server" ForeColor="#003399" 
                            Text="Ghi chú hình ảnh:" meta:resourcekey="Label127Resource1"></asp:Label>
                    </td>
                    <td style="width: 107px">
                        <asp:TextBox ID="txtGhiChuAnh4" runat="server" 
                            meta:resourcekey="txtGhiChuAnh4Resource1"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="center" colspan="3">
                        <asp:Button ID="btnDangTin4" runat="server" BackColor="#FF9933" 
                            BorderStyle="Outset" Font-Bold="True" ForeColor="White" 
                            Text="CẬP NHẬT THÔNG TIN" BorderWidth="8px" onclick="btnDangTin4_Click" 
                            meta:resourcekey="btnDangTin4Resource1" />
                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>
