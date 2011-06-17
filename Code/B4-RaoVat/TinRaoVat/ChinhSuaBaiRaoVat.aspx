<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ChinhSuaBaiRaoVat.aspx.cs" Inherits="ChinhSuaBaiRaoVat" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table style="width: 100%; background-color: #EAFFFF;">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#003399" 
                            meta:resourceKey="Label11Resource1">Thông tin chi tiết rao vặt của bạn :</asp:Label>
                        <br />
                        <asp:Label ID="Label12" runat="server" Text=" (*Ghi chú : Bạn vui lòng nhập Tiếng Việt có dấu và thông tin đầy đủ)"
                            ForeColor="#000066" meta:resourceKey="Label12Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#FF9900">
                        <asp:Label ID="Label13" runat="server" Text="* Chuyên mục rao vặt :" 
                            ForeColor="#003399" meta:resourceKey="Label13Resource1"></asp:Label>
                    </td>
                    <td bgcolor="#FF9900">
                        <asp:TextBox ID="txtChuyenMuc1" runat="server" BackColor="#FF9900" BorderStyle="None"
                            ForeColor="#003399" Width="300px" 
                            meta:resourceKey="txtChuyenMuc1Resource1" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 267px" align="right">
                        <asp:Label ID="Label1" runat="server" Text="* Tiêu đề" ForeColor="#003399" 
                            meta:resourceKey="Label1Resource1"></asp:Label>
                    </td>
                    <td style="width: 301px">
                        <asp:TextBox ID="txtTieuDe1" runat="server" Width="300px" ForeColor="#003399" 
                            meta:resourceKey="txtTieuDe1Resource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTieuDe1" runat="server" 
                            ControlToValidate="txtTieuDe1" ErrorMessage="Không bỏ trống" 
                            meta:resourceKey="rfvTieuDe1Resource1"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox1" runat="server" meta:resourceKey="TextBox1Resource1">abc</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 267px" align="right">
                        <asp:Label ID="Label2" runat="server" Text="Nội dung:" ForeColor="#003399" 
                            meta:resourceKey="Label2Resource1"></asp:Label>
                    </td>
                    <td style="width: 301px">
                        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
                        <cc1:Editor ID="Editor1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 267px" align="right">
                        <asp:Label ID="Label3" runat="server" Text="* Giá" ForeColor="#003399" 
                            meta:resourceKey="Label3Resource1"></asp:Label>
                    </td>
                    <td style="width: 301px">
                        <asp:TextBox ID="txtGia1" runat="server" Width="300px" ForeColor="#003399" 
                            AutoPostBack="True" meta:resourceKey="txtGia1Resource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvGia1" runat="server" ControlToValidate="txtGia1"
                            ErrorMessage="Không bỏ trống" meta:resourceKey="rfvGia1Resource1"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvdGia1" runat="server" ControlToValidate="txtGia1" ErrorMessage="Nhập số"
                            MaximumValue="999999999" MinimumValue="0" Type="Integer" 
                            meta:resourceKey="rvdGia1Resource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="height: 26px; width: 267px" align="right">
                        <asp:Label ID="Label4" runat="server" Text="Thời hạn lưu tin (ngày):" 
                            ForeColor="#003399" meta:resourceKey="Label4Resource1"></asp:Label>
                    </td>
                    <td style="height: 26px; width: 301px">
                        <asp:DropDownList ID="ddlThoiHanLuuTin1" runat="server" Width="40px" 
                            ForeColor="#003399" meta:resourceKey="ddlThoiHanLuuTin1Resource1">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 267px" align="right">
                        <asp:Label ID="Label5" runat="server" Text="Hình ảnh:" ForeColor="#003399" 
                            meta:resourceKey="Label5Resource1"></asp:Label>
                    </td>
                    <td style="width: 301px">
                        <asp:FileUpload ID="fupHinhAnh1" runat="server" ForeColor="#003399" 
                            meta:resourceKey="fupHinhAnh1Resource1" />
                        <br />
                        <asp:HyperLink ID="hplHinhAnh1" runat="server" 
                            meta:resourceKey="hplHinhAnh1Resource1">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td style="width: 267px" align="right">
                        <asp:Label ID="Label6" runat="server" Text="Ghi chú hình ảnh:" 
                            ForeColor="#003399" meta:resourceKey="Label6Resource1"></asp:Label>
                    </td>
                    <td style="width: 301px">
                        <asp:TextBox ID="txtGhiChuAnh1" runat="server" 
                            meta:resourceKey="txtGhiChuAnh1Resource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 267px" align="right">
                        <asp:Label ID="Label14" runat="server" Text="*Địa điểm" ForeColor="#003399" 
                            meta:resourceKey="Label14Resource1"></asp:Label>
                    </td>
                    <td style="width: 301px">
                        <asp:DropDownList ID="ddlDiaDiem1" runat="server" DataSourceID="lqDiaDiem" 
                            ForeColor="#003399" meta:resourceKey="ddlDiaDiem1Resource1">
                        </asp:DropDownList>
                        <asp:LinqDataSource ID="lqDiaDiem" runat="server" ContextTypeName="DAO.RaoVatDataClassesDataContext"
                            Select="TenDiaDiem" TableName="DIADIEMs" Where="Deleted == @Deleted">
                            <WhereParameters>
                                <asp:Parameter DefaultValue="false" Name="Deleted" Type="Boolean" />
                            </WhereParameters>
                        </asp:LinqDataSource>
                    </td>
                </tr>
                <tr align="center">
                    <td colspan="2">
                        <asp:Button ID="btnCapNhat1" runat="server" BackColor="#FF9933" BorderStyle="Groove"
                            Font-Bold="True" ForeColor="White" OnClick="btnCapNhat1_Click" 
                            Text="CẬP NHẬT THÔNG TIN" meta:resourceKey="btnCapNhat1Resource1" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width: 100%; background-color: #FFF2BF;">
                <tr>
                    <td colspan="4">
                        <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="#003399" 
                            meta:resourceKey="Label15Resource1">Thông tin chi tiết rao vặt của bạn :</asp:Label>
                        <br />
                        <asp:Label ID="Label16" runat="server" Text=" (*Ghi chú : Bạn vui lòng nhập Tiếng Việt có dấu và thông tin đầy đủ)"
                            ForeColor="#000066" meta:resourceKey="Label16Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#FF9900" style="width: 129px">
                        <asp:Label ID="Label17" runat="server" Text="* Chuyên mục rao vặt :" 
                            ForeColor="#003399" meta:resourceKey="Label17Resource1"></asp:Label>
                    </td>
                    <td bgcolor="#FF9900" colspan="3">
                        <asp:TextBox ID="txtChuyenMuc2" runat="server" BackColor="#FF9900" BorderStyle="None"
                            ForeColor="#003399" Width="300px" 
                            meta:resourceKey="txtChuyenMuc2Resource1" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label18" runat="server" Text="* Tiêu đề" ForeColor="#003399" 
                            meta:resourceKey="Label18Resource1"></asp:Label>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtTieuDe2" runat="server" Width="300px" ForeColor="#003399" 
                            meta:resourceKey="txtTieuDe2Resource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTieuDe2" runat="server" ControlToValidate="txtTieuDe2"
                            ErrorMessage="Không bỏ trống" meta:resourceKey="rfvTieuDe2Resource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label19" runat="server" Text="Nội dung:" ForeColor="#003399" 
                            meta:resourceKey="Label19Resource1"></asp:Label>
                    </td>
                    <td colspan="3">
                        <cc1:Editor ID="Editor2" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label20" runat="server" Text="*Giá:" ForeColor="#003399" 
                            meta:resourceKey="Label20Resource1"></asp:Label>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtGia2" runat="server" Width="300px" 
                            meta:resourceKey="txtGia2Resource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvGia2" runat="server" ControlToValidate="txtGia2"
                            ErrorMessage="Không bỏ trống" meta:resourceKey="rfvGia2Resource1"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvdGia2" runat="server" ControlToValidate="txtGia2" ErrorMessage="Nhập số"
                            MaximumValue="999999999" MinimumValue="0" Type="Integer" 
                            meta:resourceKey="rvdGia2Resource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label119" runat="server" Text="*Địa điểm" ForeColor="#003399" 
                            meta:resourceKey="Label119Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 40px;">
                        <asp:DropDownList ID="ddlDiaDiem2" runat="server" DataSourceID="lqDiaDiem" 
                            ForeColor="#003399" meta:resourceKey="ddlDiaDiem2Resource1">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label24" runat="server" Text="Địa chỉ :" ForeColor="#003399" 
                            meta:resourceKey="Label24Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtDiaChi" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourceKey="txtDiaChiResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label26" runat="server" Text="Diện tích (mét vuông):" 
                            ForeColor="#003399" meta:resourceKey="Label26Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtDienTich" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourceKey="txtDienTichResource1"></asp:TextBox>
                        <asp:RangeValidator ID="rvdDienTich" runat="server" ControlToValidate="txtDienTich"
                            ErrorMessage="Nhập số" MaximumValue="9999" MinimumValue="1" Type="Integer" 
                            meta:resourceKey="rvdDienTichResource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label29" runat="server" Text="Hướng :" ForeColor="#003399" 
                            meta:resourceKey="Label29Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtHuong" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourceKey="txtHuongResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label30" runat="server" Text="Lộ giới : " ForeColor="#003399" 
                            meta:resourceKey="Label30Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtLoGioi" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourceKey="txtLoGioiResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label31" runat="server" Text="Lầu : " ForeColor="#003399" 
                            meta:resourceKey="Label31Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtLau" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourceKey="txtLauResource1"></asp:TextBox>
                        <asp:RangeValidator ID="rvdLau" runat="server" ControlToValidate="txtLau" ErrorMessage="Nhập số"
                            MaximumValue="99" MinimumValue="1" Type="Integer" 
                            meta:resourceKey="rvdLauResource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label32" runat="server" Text="Lửng : " ForeColor="#003399" 
                            meta:resourceKey="Label32Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtLung" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourceKey="txtLungResource1"></asp:TextBox>
                        <asp:RangeValidator ID="rvdLung" runat="server" ControlToValidate="txtLung" ErrorMessage="Nhập số"
                            MaximumValue="99" MinimumValue="1" Type="Integer" 
                            meta:resourceKey="rvdLungResource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label33" runat="server" Text="Vị trí :" ForeColor="#003399" 
                            meta:resourceKey="Label33Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:DropDownList ID="ddlMatTien" runat="server" 
                            meta:resourceKey="ddlMatTienResource1">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label34" runat="server" Text="Giấy tờ :" ForeColor="#003399" 
                            meta:resourceKey="Label34Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtGiayTo" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourceKey="txtGiayToResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label35" runat="server" Text="Đường trước nhà :" 
                            ForeColor="#003399" meta:resourceKey="Label35Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtDuongTruocNha" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourceKey="txtDuongTruocNhaResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label36" runat="server" Text="Điện - nước" ForeColor="#003399" 
                            meta:resourceKey="Label36Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:CheckBox ID="ckbDien" runat="server" Text="Đồng hồ điện" 
                            meta:resourceKey="ckbDienResource1" />
                        <asp:CheckBox ID="ckbNuocMay" runat="server" Text="Nước máy" 
                            meta:resourceKey="ckbNuocMayResource1" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label38" runat="server" Text="Số phòng ngủ :" 
                            ForeColor="#003399" meta:resourceKey="Label38Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtSoPhongNgu" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourceKey="txtSoPhongNguResource1"></asp:TextBox>
                        <asp:RangeValidator ID="rvdSoPhongNgu" runat="server" ControlToValidate="txtSoPhongNgu"
                            ErrorMessage="Nhập số" MaximumValue="99" MinimumValue="1" Type="Integer" 
                            meta:resourceKey="rvdSoPhongNguResource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label39" runat="server" Text="Số nhà tắm / vệ sinh :" 
                            ForeColor="#003399" meta:resourceKey="Label39Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtSoNhaVeSinh" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourceKey="txtSoNhaVeSinhResource1"></asp:TextBox>
                        <asp:RangeValidator ID="rvdSoNhaVeSinh" runat="server" ControlToValidate="txtSoNhaVeSinh"
                            ErrorMessage="Nhập số" MaximumValue="99" MinimumValue="1" Type="Integer" 
                            meta:resourceKey="rvdSoNhaVeSinhResource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label40" runat="server" Text="Năm xây dựng :" 
                            ForeColor="#003399" meta:resourceKey="Label40Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtNamXayDung" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourceKey="txtNamXayDungResource1"></asp:TextBox>
                        <asp:RangeValidator ID="rvdNamXayDung" runat="server" ControlToValidate="txtNamXayDung"
                            ErrorMessage="Nhập số" MaximumValue="2020" MinimumValue="1000" 
                            Type="Integer" meta:resourceKey="rvdNamXayDungResource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td rowspan="3" style="width: 129px" align="right">
                        <asp:Label ID="Label41" runat="server" Text="Nội thất - Tiện nghi :" 
                            ForeColor="#003399" meta:resourceKey="Label41Resource1"></asp:Label>
                    </td>
                    <td style="width: 166px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbPhongKhach" runat="server" Text="Phòng khách" 
                            meta:resourceKey="ckbPhongKhachResource1" />
                    </td>
                    <td style="width: 135px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGaraOto" runat="server" Text="Gara Ôtô" 
                            meta:resourceKey="ckbGaraOtoResource1" />
                    </td>
                    <td style="width: 118px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbNhaBep" runat="server" Text="Nhà bếp" 
                            meta:resourceKey="ckbNhaBepResource1" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 166px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbHoBoi" runat="server" Text="Hồ bơi" 
                            meta:resourceKey="ckbHoBoiResource1" />
                    </td>
                    <td style="width: 135px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbSanThuong" runat="server" Text="Sân thượng" 
                            meta:resourceKey="ckbSanThuongResource1" />
                    </td>
                    <td style="width: 118px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbDieuHoa" runat="server" Text="Điều hòa" 
                            meta:resourceKey="ckbDieuHoaResource1" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 166px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbSanVuon" runat="server" Text="Sân vườn" 
                            meta:resourceKey="ckbSanVuonResource1" />
                    </td>
                    <td style="width: 135px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbThangMay" runat="server" Text="Thang máy" 
                            meta:resourceKey="ckbThangMayResource1" />
                    </td>
                    <td style="width: 118px; margin-left: 80px;">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td rowspan="3" style="width: 129px" align="right">
                        <asp:Label ID="Label42" runat="server" Text="Văn hóa - Xã hội:" 
                            ForeColor="#003399" meta:resourceKey="Label42Resource1"></asp:Label>
                    </td>
                    <td style="width: 166px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGanTruongMauGiao" runat="server" 
                            Text="Gần trường mẫu giáo" meta:resourceKey="ckbGanTruongMauGiaoResource1" />
                    </td>
                    <td style="width: 135px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGanTruongCapMot" runat="server" Text="Gần trường cấp I" 
                            meta:resourceKey="ckbGanTruongCapMotResource1" />
                    </td>
                    <td style="width: 118px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGanTruongCapHai" runat="server" Text="Gần trường cấp II" 
                            meta:resourceKey="ckbGanTruongCapHaiResource1" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 166px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGanTruongCapBa" runat="server" Text="Gần trường cấp III" 
                            meta:resourceKey="ckbGanTruongCapBaResource1" />
                    </td>
                    <td style="width: 135px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGanCho" runat="server" Text="Gần chợ" 
                            meta:resourceKey="ckbGanChoResource1" />
                    </td>
                    <td style="width: 118px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGanBenhVien" runat="server" Text="Gần bệnh viện" 
                            meta:resourceKey="ckbGanBenhVienResource1" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 166px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGanTrungTamThuongMai" runat="server" 
                            Text="Gần trung tâm thương mại" 
                            meta:resourceKey="ckbGanTrungTamThuongMaiResource1" />
                    </td>
                    <td style="width: 135px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGanTrungTamGiaiTri" runat="server" 
                            Text="Gần trung tâm giải trí" 
                            meta:resourceKey="ckbGanTrungTamGiaiTriResource1" />
                    </td>
                    <td style="width: 118px; margin-left: 80px;">
                        <asp:CheckBox ID="ckbGanCongVien" runat="server" Text="Gần công viên" 
                            meta:resourceKey="ckbGanCongVienResource1" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label128" runat="server" ForeColor="#003399" 
                            Text="Thời hạn lưu tin (ngày):" meta:resourceKey="Label128Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:DropDownList ID="ddlThoiHanLuuTin2" runat="server" ForeColor="#003399" 
                            Width="100px" meta:resourceKey="ddlThoiHanLuuTin2Resource1">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label44" runat="server" ForeColor="#003399" Text="Hình ảnh:" 
                            meta:resourceKey="Label44Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:FileUpload ID="fupHinhAnh2" runat="server" ForeColor="#003399" 
                            meta:resourceKey="fupHinhAnh2Resource1" />
                        <br />
                        <asp:HyperLink ID="hplHinhAnh2" runat="server" 
                            meta:resourceKey="hplHinhAnh2Resource1">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px" align="right">
                        <asp:Label ID="Label45" runat="server" ForeColor="#003399" 
                            Text="Ghi chú hình ảnh:" meta:resourceKey="Label45Resource1"></asp:Label>
                    </td>
                    <td colspan="3" style="margin-left: 80px;">
                        <asp:TextBox ID="txtGhiChuAnh2" runat="server" 
                            meta:resourceKey="txtGhiChuAnh2Resource1"></asp:TextBox>
                    </td>
                </tr>
                <tr align="center">
                    <td colspan="4">
                        <asp:Button ID="btnCapNhat2" runat="server" BackColor="#FF9933" BorderStyle="Groove"
                            Font-Bold="True" ForeColor="White" Text="CẬP NHẬT THÔNG TIN" 
                            OnClick="btnCapNhat2_Click" meta:resourceKey="btnCapNhat2Resource1" />
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
                    <td align="center" colspan=2>
                        <asp:Label ID="Label53" runat="server" Text="ĐĂNG TIN TUYỂN DỤNG MỚI " Style="font-weight: 700"
                            ForeColor="#33CC33" meta:resourceKey="Label53Resource1"></asp:Label>
                        <br />
                    </td>
                </tr>           
            
                <tr>
                    <td align="right">
                        <asp:Label ID="Label132" runat="server" ForeColor="#003399" 
                            style="font-weight: 700" Text="* Tiêu đề" 
                            meta:resourceKey="Label132Resource1"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTieuDe3" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourceKey="txtTieuDe3Resource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTieuDe3" runat="server" 
                            ControlToValidate="txtTieuDe1" ErrorMessage="Không bỏ trống" 
                            meta:resourceKey="rfvTieuDe3Resource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#00FF99" colspan="2">
                        <asp:Label ID="Label50" runat="server" ForeColor="#003399" 
                            Style="font-weight: 700" Text="Thông tin nhà tuyển dụng :" 
                            meta:resourceKey="Label50Resource1"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label52" runat="server" Font-Bold="True" ForeColor="#003399" 
                            Text="*Tên công ty/nhà tuyển dụng :" meta:resourceKey="Label52Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtTenNhaTuyenDung" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourceKey="txtTenNhaTuyenDungResource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTenNhaTuyenDung" runat="server" 
                            ControlToValidate="txtTenNhaTuyenDung" ErrorMessage="Không bỏ trống" 
                            meta:resourceKey="rfvTenNhaTuyenDungResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label54" runat="server" Font-Bold="True" ForeColor="#003399" 
                            Text="*Giới thiệu về nhà tuyển dụng:" meta:resourceKey="Label54Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtGioiThieuNhaTuyenDung" runat="server" ForeColor="#003399" 
                            Height="116px" TextMode="MultiLine" Width="403px" 
                            meta:resourceKey="txtGioiThieuNhaTuyenDungResource1"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvGioiThieuNhaTuyenDung" runat="server" 
                            ControlToValidate="txtGioiThieuNhaTuyenDung" ErrorMessage="Không bỏ trống" 
                            meta:resourceKey="rfvGioiThieuNhaTuyenDungResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label135" runat="server" ForeColor="#003399" Text="*Địa điểm" 
                            meta:resourceKey="Label135Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:DropDownList ID="ddlDiaDiem3" runat="server" DataSourceID="lqDiaDiem" 
                            ForeColor="#003399" meta:resourceKey="ddlDiaDiem3Resource1">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label55" runat="server" ForeColor="#003399" Text="Website: " 
                            meta:resourceKey="Label55Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtWebsite" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourceKey="txtWebsiteResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left" bgcolor="#33CCCC" colspan="2">
                        <asp:Label ID="Label56" runat="server" ForeColor="#003399" 
                            Style="font-weight: 700" Text="Thông tin liên hệ : " 
                            meta:resourceKey="Label56Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label57" runat="server" ForeColor="#003399" 
                            Text="*Người đại diện:" meta:resourceKey="Label57Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtNguoiDaiDien" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourceKey="txtNguoiDaiDienResource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNguoiDaiDien" runat="server" 
                            ControlToValidate="txtNguoiDaiDien" ErrorMessage="Không bỏ trống" 
                            meta:resourceKey="rfvNguoiDaiDienResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label58" runat="server" ForeColor="#003399" 
                            Text="*Địa chỉ liên hệ:" meta:resourceKey="Label58Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtDiaChiLienHe" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourceKey="txtDiaChiLienHeResource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDiaChiLienHe" runat="server" 
                            ControlToValidate="txtDiaChiLienHe" ErrorMessage="Không bỏ trống" 
                            meta:resourceKey="rfvDiaChiLienHeResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label59" runat="server" ForeColor="#003399" Text="*Điện thoai:" 
                            meta:resourceKey="Label59Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtDienThoai" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourceKey="txtDienThoaiResource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDienThoai" runat="server" 
                            ControlToValidate="txtDienThoai" ErrorMessage="Không bỏ trống" 
                            meta:resourceKey="rfvDienThoaiResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label60" runat="server" ForeColor="#003399" Text="*Email:" 
                            meta:resourceKey="Label60Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtEmail" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourceKey="txtEmailResource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                            ControlToValidate="txtEmail" ErrorMessage="Không bỏ trống" 
                            meta:resourceKey="rfvEmailResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" bgcolor="#FFCC00" colspan="2">
                        <asp:Label ID="Label61" runat="server" ForeColor="#003399" 
                            Style="font-weight: 700" Text="Thông tin yêu cầu tuyển dụng : " 
                            meta:resourceKey="Label61Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label62" runat="server" ForeColor="#003399" Text="*Nghành Nghề:" 
                            meta:resourceKey="Label62Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:DropDownList ID="ddlNganhNghe3" runat="server" DataSourceID="lqNganhNghe" 
                            meta:resourceKey="ddlNganhNghe3Resource1">
                        </asp:DropDownList>
                        <asp:LinqDataSource ID="lqNganhNghe" runat="server" 
                            ContextTypeName="DAO.RaoVatDataClassesDataContext" Select="TenNganhNghe" 
                            TableName="NGANHNGHEs">
                        </asp:LinqDataSource>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label63" runat="server" ForeColor="#003399" 
                            Text="*Vị trí tuyển dụng:" meta:resourceKey="Label63Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtViTriTuyenDung" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourceKey="txtViTriTuyenDungResource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvViTriTuyenDung" runat="server" 
                            ControlToValidate="txtViTriTuyenDung" ErrorMessage="Không bỏ trống" 
                            meta:resourceKey="rfvViTriTuyenDungResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label64" runat="server" ForeColor="#003399" 
                            Text="*Yêu cầu công việc:" meta:resourceKey="Label64Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtYeuCauCongViec" runat="server" ForeColor="#003399" 
                            Height="116px" TextMode="MultiLine" Width="417px" 
                            meta:resourceKey="txtYeuCauCongViecResource1"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvYeuCauCongViec" runat="server" 
                            ControlToValidate="txtYeuCauCongViec" ErrorMessage="Không bỏ trống" 
                            meta:resourceKey="rfvYeuCauCongViecResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label67" runat="server" ForeColor="#003399" 
                            Text="Yêu cầu kinh nghiệm:" meta:resourceKey="Label67Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtYeuCauKinhNghiem" runat="server" ForeColor="#003399" 
                            Height="116px" TextMode="MultiLine" Width="417px" 
                            meta:resourceKey="txtYeuCauKinhNghiemResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label68" runat="server" ForeColor="#003399" 
                            Text="*Thời gian làm việc:" meta:resourceKey="Label68Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:DropDownList ID="ddlThoiGianLamViec" runat="server" 
                            meta:resourceKey="ddlThoiGianLamViecResource1">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label70" runat="server" ForeColor="#003399" 
                            Text="*Số lượng cần tuyển:" meta:resourceKey="Label70Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtSoLuongCanTuyen" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourceKey="txtSoLuongCanTuyenResource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSoLuongCanTuyen" runat="server" 
                            ControlToValidate="txtSoLuongCanTuyen" ErrorMessage="Không bỏ trống" 
                            meta:resourceKey="rfvSoLuongCanTuyenResource1"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvdSoLuongCanTuyen" runat="server" 
                            ControlToValidate="txtSoLuongCanTuyen" ErrorMessage="Nhập số" 
                            MaximumValue="1000" MinimumValue="1" Type="Integer" 
                            meta:resourceKey="rvdSoLuongCanTuyenResource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label71" runat="server" ForeColor="#003399" 
                            Text="Mức lương khởi điểm" meta:resourceKey="Label71Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtMucLuongKhoiDiem" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourceKey="txtMucLuongKhoiDiemResource1">0</asp:TextBox>
                        <asp:RangeValidator ID="rvdMucLuongKhoiDiem" runat="server" 
                            ControlToValidate="txtMucLuongKhoiDiem" ErrorMessage="Nhập số" 
                            MaximumValue="999999999" MinimumValue="0" Type="Integer" 
                            meta:resourceKey="rvdMucLuongKhoiDiemResource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label72" runat="server" ForeColor="#003399" 
                            Text="Thời gian thử việc:" meta:resourceKey="Label72Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtThoiGianThuViec" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourceKey="txtThoiGianThuViecResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label73" runat="server" ForeColor="#003399" 
                            Text="Mức lương thử việc:" meta:resourceKey="Label73Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtLuongThuViec" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourceKey="txtLuongThuViecResource1"></asp:TextBox>
                        <asp:RangeValidator ID="rvdMucLuongThuViec" runat="server" 
                            ControlToValidate="txtLuongThuViec" ErrorMessage="Nhập số" 
                            MaximumValue="999999999" MinimumValue="0" Type="Integer" 
                            meta:resourceKey="rvdMucLuongThuViecResource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label74" runat="server" ForeColor="#003399" 
                            Text="Quyền lợi được hưởng:" meta:resourceKey="Label74Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtQuyenLoiDuocHuong" runat="server" ForeColor="#003399" 
                            Height="116px" TextMode="MultiLine" Width="417px" 
                            meta:resourceKey="txtQuyenLoiDuocHuongResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label75" runat="server" ForeColor="#003399" 
                            Text="Hồ sơ bao gồm:" meta:resourceKey="Label75Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtHoSoBaoGom" runat="server" ForeColor="#003399" 
                            Height="116px" TextMode="MultiLine" Width="417px" 
                            meta:resourceKey="txtHoSoBaoGomResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label76" runat="server" ForeColor="#003399" 
                            Text="*Thời hạn kết thúc nộp hồ sơ: " meta:resourceKey="Label76Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:Calendar ID="cldThoiHanKetThucNopHoSo" runat="server" 
                            meta:resourceKey="cldThoiHanKetThucNopHoSoResource1"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label129" runat="server" ForeColor="#003399" 
                            Text="Thời hạn lưu tin (ngày):" meta:resourceKey="Label129Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:DropDownList ID="ddlThoiHanLuuTin3" runat="server" ForeColor="#003399" 
                            Width="100px" meta:resourceKey="ddlThoiHanLuuTin3Resource1">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label122" runat="server" ForeColor="#003399" Text="Hình ảnh:" 
                            meta:resourceKey="Label122Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:FileUpload ID="fupHinhAnh3" runat="server" ForeColor="#003399" 
                            meta:resourceKey="fupHinhAnh3Resource1" />
                        <br />
                        <asp:HyperLink ID="hplHinhAnh3" runat="server" 
                            meta:resourceKey="hplHinhAnh3Resource1">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 2831px">
                        <asp:Label ID="Label124" runat="server" ForeColor="#003399" 
                            Text="Ghi chú hình ảnh:" meta:resourceKey="Label124Resource1"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtGhiChuAnh3" runat="server" 
                            meta:resourceKey="txtGhiChuAnh3Resource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="btnCapNhat3" runat="server" BackColor="#FF9933" 
                            BorderStyle="Groove" Font-Bold="True" ForeColor="White" 
                            OnClick="btnCapNhat3_Click" Text="CẬP NHẬT THÔNG TIN" 
                            meta:resourceKey="btnCapNhat3Resource1" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View4" runat="server">
            <table style="width: 100%; background-color: #FFE1E1;">
                <tr>
                    <td align="center" colspan="3">
                        <asp:Label ID="Label77" runat="server" ForeColor="#33CC33" Style="font-weight: 700"
                            Text="ĐĂNG TIN TUYỂN DỤNG MỚI " meta:resourceKey="Label77Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="Label133" runat="server" ForeColor="#003399" 
                            style="font-weight: 700" Text="* Tiêu đề" 
                            meta:resourceKey="Label133Resource1"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTieuDe4" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourceKey="txtTieuDe4Resource1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvTieuDe5" runat="server" 
                            ControlToValidate="txtTieuDe1" ErrorMessage="Không bỏ trống" 
                            meta:resourceKey="rfvTieuDe5Resource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#00CC66" colspan="3">
                        <asp:Label ID="Label78" runat="server" ForeColor="#003399" 
                            Style="font-weight: 700" Text="Tuỳ chọn chuyên mục việc làm :" 
                            meta:resourceKey="Label78Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 179px">
                        <asp:Label ID="Label79" runat="server" ForeColor="#003399" Text="Xuất hiện hồ sơ của bạn trong trang người tìm việc :"
                            Style="font-weight: bold" meta:resourceKey="Label79Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <br />
                        <asp:CheckBox ID="ckbDongYHienThi" runat="server" Text="Đồng ý" 
                            meta:resourceKey="ckbDongYHienThiResource1" />
                    </td>
                    <td>
                        <asp:Label ID="Label80" runat="server" Font-Size="Smaller" 
                            Text="(*Nhà tuyển dụng có thể tìm thấy và liên lạc bạn bất cứ lúc nào khi hồ sơ của bạn có trong trang tìm việc. Nếu bạn chọn không đồng ý, tức bạn đang có việc làm hoặc không mong muốn tìm 1 việc làm) " 
                            meta:resourceKey="Label80Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 179px">
                        <asp:Label ID="Label81" runat="server" ForeColor="#003399" Text="Ngành nghề công việc bạn mong muốn làm việc :"
                            Style="font-weight: bold" meta:resourceKey="Label81Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px" align="left">
                        <asp:DropDownList ID="ddlNganhNghe4a" runat="server" DataSourceID="lqNganhNghe" 
                            meta:resourceKey="ddlNganhNghe4aResource1">
                        </asp:DropDownList>
                        <br />
                        <asp:DropDownList ID="ddlNganhNghe4b" runat="server" DataSourceID="lqNganhNghe" 
                            meta:resourceKey="ddlNganhNghe4bResource1">
                        </asp:DropDownList>
                        <br />
                        <asp:DropDownList ID="ddlNganhNghe4c" runat="server" DataSourceID="lqNganhNghe" 
                            meta:resourceKey="ddlNganhNghe4cResource1">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="3" bgcolor="#33CCFF">
                        <asp:Label ID="Label82" runat="server" ForeColor="#003399" Style="font-weight: 700"
                            Text="Thông tin cá nhân : " meta:resourceKey="Label82Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="right">
                        <asp:Label ID="Label84" runat="server" ForeColor="#003399" Text="*Họ và tên:" 
                            Style="font-weight: bold" meta:resourceKey="Label84Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:TextBox ID="txtHoTen" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourceKey="txtHoTenResource1"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="rfvHoTen0" runat="server" 
                            ControlToValidate="txtHoTen" ErrorMessage="Không bỏ trống" 
                            meta:resourceKey="rfvHoTen0Resource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="right">
                        <asp:Label ID="Label85" runat="server" ForeColor="#003399" Text="*Ngày sinh:" 
                            Style="font-weight: bold" meta:resourceKey="Label85Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:Calendar ID="cldNgaySinh" runat="server" 
                            meta:resourceKey="cldNgaySinhResource1"></asp:Calendar>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="right">
                        <asp:Label ID="Label86" runat="server" ForeColor="#003399" Text="*Giới tính:" 
                            Style="font-weight: bold" meta:resourceKey="Label86Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:CheckBox ID="ckbGioiTinh" runat="server" Text="Nam" 
                            meta:resourceKey="ckbGioiTinhResource1" />
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="right">
                        <asp:Label ID="Label87" runat="server" ForeColor="#003399" Text="*Tình trạng hôn nhân:"
                            Style="font-weight: bold" meta:resourceKey="Label87Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:CheckBox ID="ckbTinhTrangHonNhan" runat="server" Text="Đã kết hôn" 
                            meta:resourceKey="ckbTinhTrangHonNhanResource1" />
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="right">
                        <asp:Label ID="Label88" runat="server" ForeColor="#003399" Text="*Quốc tịch:" 
                            Style="font-weight: bold" meta:resourceKey="Label88Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:TextBox ID="txtQuocTich" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourceKey="txtQuocTichResource1"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="rfvQuocTich0" runat="server" 
                            ControlToValidate="txtQuocTich" ErrorMessage="Không bỏ trống" 
                            meta:resourceKey="rfvQuocTich0Resource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" bgcolor="#CCCCFF">
                        <asp:Label ID="Label89" runat="server" ForeColor="#003399" Style="font-weight: 700"
                            Text="Thông tin liên lạc :" meta:resourceKey="Label89Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="right">
                        <asp:Label ID="Label90" runat="server" ForeColor="#003399" Text="*Địa chỉ liên lạc:"
                            Style="font-weight: 700" meta:resourceKey="Label90Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:TextBox ID="txtDiaChiLienLac" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourceKey="txtDiaChiLienLacResource1"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="rfvDiaChi0" runat="server" 
                            ControlToValidate="txtDiaChiLienLac" ErrorMessage="Không bỏ trống" 
                            meta:resourceKey="rfvDiaChi0Resource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="right">
                        <asp:Label ID="Label92" runat="server" ForeColor="#003399" Text="*Số điện thoại liên lạc:"
                            Style="font-weight: 700" meta:resourceKey="Label92Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:TextBox ID="txtDienThoai4" runat="server" ForeColor="#003399" 
                            Width="105px" meta:resourceKey="txtDienThoai4Resource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDienThoai4" runat="server" ControlToValidate="txtDienThoai4"
                            ErrorMessage="Không bỏ trống" meta:resourceKey="rfvDienThoai4Resource1"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 179px">
                        <asp:Label ID="Label113" runat="server" ForeColor="#003399" Style="font-weight: 700"
                            Text="Di động:" meta:resourceKey="Label113Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:TextBox ID="txtDiDong" runat="server" ForeColor="#003399" Width="105px" 
                            meta:resourceKey="txtDiDongResource1"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="right">
                        <asp:Label ID="Label93" runat="server" ForeColor="#003399" Text="Địa chỉ email:"
                            Style="font-weight: 700" meta:resourceKey="Label93Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:TextBox ID="txtEmail4" runat="server" ForeColor="#003399" Width="300px" 
                            meta:resourceKey="txtEmail4Resource1"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="3" bgcolor="#FFCC66">
                        <asp:Label ID="Label94" runat="server" ForeColor="#003399" Style="font-weight: 700"
                            Text="Trình độ học vấn : " meta:resourceKey="Label94Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="right">
                        <asp:Label ID="Label95" runat="server" ForeColor="#003399" Text="*Thông tin học vấn:"
                            Style="font-weight: 700" meta:resourceKey="Label95Resource1"></asp:Label>
                        <br />
                        <asp:Label ID="Label118" runat="server" ForeColor="#003399" Text="(Giới hạn 10.000 ký tự)
	" meta:resourceKey="Label118Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:TextBox ID="txtThongTinHocVan" runat="server" ForeColor="#003399" Height="116px"
                            TextMode="MultiLine" Width="300px" 
                            meta:resourceKey="txtThongTinHocVanResource1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvThongTinHocVan" runat="server" ControlToValidate="txtThongTinHocVan"
                            ErrorMessage="Không bỏ trống" 
                            meta:resourceKey="rfvThongTinHocVanResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="right">
                        <asp:Label ID="Label96" runat="server" ForeColor="#003399" Text="*Bằng cấp:" 
                            Style="font-weight: 700" meta:resourceKey="Label96Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:DropDownList ID="ddlBangCap" runat="server" 
                            meta:resourceKey="ddlBangCapResource1">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="right">
                        <asp:Label ID="Label97" runat="server" ForeColor="#003399" 
                            Text="Trình độ ngoại ngữ:" meta:resourceKey="Label97Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:TextBox ID="txtTrinhDoNgoaiNgu" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourceKey="txtTrinhDoNgoaiNguResource1"></asp:TextBox>
                        <br />
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="right">
                        <asp:Label ID="Label98" runat="server" ForeColor="#003399" Text="*Kỹ năng:" 
                            Style="font-weight: 700" meta:resourceKey="Label98Resource1"></asp:Label>
                        <br />
                        <asp:Label ID="Label117" runat="server" ForeColor="#003399" Text="(Giới hạn 10.000 ký tự)
	" meta:resourceKey="Label117Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:TextBox ID="txtKyNang" runat="server" ForeColor="#003399" Height="116px" TextMode="MultiLine"
                            Width="300px" meta:resourceKey="txtKyNangResource1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label114" runat="server" 
                            Text="(*Hãy giới thiệu thật chính xác và chi tiết các kỹ năng làm việc của bạn, điều này giúp nhà tuyển dụng quan tâm đến bạn nhiều hơn.) " 
                            meta:resourceKey="Label114Resource1" Font-Size="X-Small"></asp:Label>
                        <asp:RequiredFieldValidator ID="rfvKyNang" runat="server" ControlToValidate="txtKyNang"
                            ErrorMessage="Không bỏ trống" meta:resourceKey="rfvKyNangResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" bgcolor="#CC99FF">
                        <asp:Label ID="Label103" runat="server" ForeColor="#003399" Style="font-weight: 700"
                            Text="Kinh nghiệm làm việc :" meta:resourceKey="Label103Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="right">
                        <asp:Label ID="Label99" runat="server" ForeColor="#003399" Text="*Cấp bậc:" 
                            Style="font-weight: 700" meta:resourceKey="Label99Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:DropDownList ID="ddlCapBac" runat="server" 
                            meta:resourceKey="ddlCapBacResource1">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="right">
                        <asp:Label ID="Label100" runat="server" ForeColor="#003399" 
                            Text="Số năm kinh nghiệm:" meta:resourceKey="Label100Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:TextBox ID="txtSoNamKinhNghiem" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourceKey="txtSoNamKinhNghiemResource1">0</asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                        <asp:RangeValidator ID="rvdSoNamKinhNghiem0" runat="server" 
                            ControlToValidate="txtSoNamKinhNghiem" ErrorMessage="Nhập số" 
                            MaximumValue="100" MinimumValue="0" Type="Integer" 
                            meta:resourceKey="rvdSoNamKinhNghiem0Resource1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="right">
                        <asp:Label ID="Label101" runat="server" ForeColor="#003399" 
                            Text="Công ty làm việc hiện tại:" meta:resourceKey="Label101Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:TextBox ID="txtCongTyLamViec" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourceKey="txtCongTyLamViecResource1"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="right">
                        <asp:Label ID="Label102" runat="server" ForeColor="#003399" 
                            Text="Chức danh gần đây nhất:" meta:resourceKey="Label102Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:DropDownList ID="ddlChucDanh" runat="server" 
                            meta:resourceKey="ddlChucDanhResource1">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="right">
                        <asp:Label ID="Label104" runat="server" ForeColor="#003399" Text="Tóm tắt kinh nghiệm:"
                            Style="font-weight: 700" meta:resourceKey="Label104Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:TextBox ID="txtTomTatKinhNghiem" runat="server" ForeColor="#003399" Height="116px"
                            TextMode="MultiLine" Width="300px" 
                            meta:resourceKey="txtTomTatKinhNghiemResource1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label115" runat="server" 
                            Text="(*Tóm tắt các kinh nghiệm về công việc, các công ty đã làm và các chức vụ đã năm giữ, điều đó sẽ giúp bạn rất nhiều trong việc tìm kiếm được 1 công việc tốt.) " 
                            meta:resourceKey="Label115Resource1" Font-Size="X-Small"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="right">
                        <asp:Label ID="Label106" runat="server" ForeColor="#003399" Text="Mô tả công việc lý tưởng:
	" meta:resourceKey="Label106Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:TextBox ID="txtMoTaCongViecLyTuong" runat="server" ForeColor="#003399" Width="300px"
                            Height="116px" TextMode="MultiLine" 
                            meta:resourceKey="txtMoTaCongViecLyTuongResource1"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#66FF33" colspan="3">
                        <asp:Label ID="Label107" runat="server" ForeColor="#003399" Style="font-weight: 700"
                            Text="Thông tin nhu cầu tìm việc : " meta:resourceKey="Label107Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="RIGHT">
                        <asp:Label ID="Label109" runat="server" ForeColor="#003399" Text="*Nguyện vọng:"
                            Style="font-weight: bold" meta:resourceKey="Label109Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:TextBox ID="txtNguyenVong" runat="server" ForeColor="#003399" Width="300px"
                            Height="116px" TextMode="MultiLine" 
                            meta:resourceKey="txtNguyenVongResource1" Font-Size="X-Small"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvNguyenVong" runat="server" ControlToValidate="txtNguyenVong"
                            ErrorMessage="Không bỏ trống" meta:resourceKey="rfvNguyenVongResource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="RIGHT">
                        <asp:Label ID="Label111" runat="server" ForeColor="#003399" Style="font-weight: bold"
                            Text="*Thời gian làm việc:" meta:resourceKey="Label111Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:DropDownList ID="ddlThoiGianLamViec4" runat="server" 
                            meta:resourceKey="ddlThoiGianLamViec4Resource1">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px" align="RIGHT">
                        <asp:Label ID="Label112" runat="server" ForeColor="#003399" Text="*Mức lương:" 
                            Style="font-weight: bold" meta:resourceKey="Label112Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:TextBox ID="txtLuongMongMuon" runat="server" ForeColor="#003399" 
                            Width="300px" meta:resourceKey="txtLuongMongMuonResource1"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="rfvMucLuong0" runat="server" 
                            ControlToValidate="txtLuongMongMuon" ErrorMessage="Không bỏ trống" 
                            meta:resourceKey="rfvMucLuong0Resource1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="RIGHT" style="width: 179px">
                        <asp:Label ID="Label136" runat="server" ForeColor="#003399" Text="*Địa điểm" 
                            meta:resourceKey="Label136Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:DropDownList ID="ddlDiaDiem4" runat="server" DataSourceID="lqDiaDiem" 
                            ForeColor="#003399" meta:resourceKey="ddlDiaDiem4Resource1">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="RIGHT" style="width: 179px">
                        <asp:Label ID="Label130" runat="server" ForeColor="#003399" 
                            Text="Thời hạn lưu tin (ngày):" meta:resourceKey="Label130Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:DropDownList ID="ddlThoiHanLuuTin4" runat="server" ForeColor="#003399" 
                            Width="100px" meta:resourceKey="ddlThoiHanLuuTin4Resource1">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="RIGHT" style="width: 179px">
                        <asp:Label ID="Label125" runat="server" ForeColor="#003399" Text="Hình ảnh:" 
                            meta:resourceKey="Label125Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:FileUpload ID="fupHinhAnh4" runat="server" ForeColor="#003399" 
                            meta:resourceKey="fupHinhAnh4Resource1" />
                        <br />
                        <asp:HyperLink ID="hplHinhAnh4" runat="server" 
                            meta:resourceKey="hplHinhAnh4Resource1">HyperLink</asp:HyperLink>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="RIGHT" style="width: 179px">
                        <asp:Label ID="Label127" runat="server" ForeColor="#003399" 
                            Text="Ghi chú hình ảnh:" meta:resourceKey="Label127Resource1"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:TextBox ID="txtGhiChuAnh4" runat="server" 
                            meta:resourceKey="txtGhiChuAnh4Resource1"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3">
                        <asp:Button ID="btnCapNhat4" runat="server" BackColor="#FF9933" BorderStyle="Outset"
                            Font-Bold="True" ForeColor="White" Text="CẬP NHẬT THÔNG TIN" BorderWidth="8px"
                            OnClick="btnCapNhat4_Click" meta:resourceKey="btnCapNhat4Resource1" />
                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>
