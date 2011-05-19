<%@ Control Language="C#" AutoEventWireup="true" CodeFile="XemNoiDungTin.ascx.cs" Inherits="UserControls_XemNoiDungTin" %>
<div>
	<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
	    <asp:View ID="ThuongView" runat="server">
			<table cellpadding="4" cellspacing="4">
				<tr align="center">
					<td colspan="2"><b>Nội Dung</b></td>
				</tr>
				<tr>
					<td>Nội Dung:</td>
					<td><asp:Label ID="lblNoiDungThuong" runat="server" /></td>
				</tr>
				<tr>
					<td>Giá:</td>
					<td><asp:Label ID="lblGiaThuong" runat="server" /></td>
				</tr>
			</table>
		</asp:View>
		<asp:View ID="BatDongSanView" runat="server">
			<table cellpadding="4" cellspacing="4">
				<tr>
					<td colspan="2" align="center"><b>Nội Dung</b></td>
				</tr>
				<tr>
					<td>Nội Dung</td>
					<td><asp:Label ID="lblNoiDung" runat="server" /></td>
				</tr>
				<tr>
					<td>Giá:</td>
					<td><asp:Label ID="lblGia" runat="server" /></td>
				</tr>
				<tr>
					<td>Địa Chỉ:</td>
					<td><asp:Label ID="lblDiaChi" runat="server" /></td>
				</tr>
				<tr>
					<td>Diện Tích:</td>
					<td><asp:Label ID="lblDienTich" runat="server" /></td>
				</tr>
				<tr>
					<td>Hướng:</td>
					<td><asp:Label ID="lblHuong" runat="server" /></td>
				</tr>
				<tr>
					<td>Lộ Giới:</td>
					<td><asp:Label ID="lblLoGioi" runat="server" /></td>
				</tr>
				<tr>
					<td>Lầu:</td>
					<td><asp:Label ID="lblLau" runat="server" /></td>
				</tr>
				<tr>
					<td>Lửng:</td>
					<td><asp:Label ID="lblLung" runat="server" /></td>
				</tr>
				<tr>
					<td>Mặt Tiền:</td>
					<td><asp:CheckBox ID="chkMatTien" runat="server" Enabled="False" /></td>
				</tr>
				<tr>
					<td>Giấy Tờ:</td>
					<td><asp:Label ID="lblGiayTo" runat="server" /></td>
				</tr>
				<tr>
					<td>Đường Trước Nhà:</td>
					<td><asp:Label ID="lblDuongTruocNha" runat="server" /></td>
				</tr>
				<tr>
					<td>Điện Nhà Nước:</td>
					<td><asp:CheckBox ID="chkDienNhaNuoc" runat="server" Enabled="False" /></td>
				</tr>
				<tr>
					<td>Nước Máy:</td>
					<td><asp:CheckBox ID="chkNuocMay" runat="server" Enabled="False" /></td>
				</tr>
				<tr>
					<td>Số Phòng Ngủ:</td>
					<td><asp:Label ID="lblSoPhongNgu" runat="server" /></td>
				</tr>
				<tr>
					<td>Số Nhà Vệ Sinh:</td>
					<td><asp:Label ID="lblSoNhaVeSinh" runat="server" /></td>
				</tr>
				<tr>
					<td>Năm Xây Dựng:</td>
					<td><asp:Label ID="lblNamXayDung" runat="server" /></td>
				</tr>
			</table>
			<table cellpadding="4" cellspacing="4">
				<tr>
					<td colspan="2" align="center"><b>Nội Thất, Tiện Nghi</b></td>
				</tr>
				<tr>
					<td>Phòng Khách: </td>
					<td><asp:CheckBox ID="chkPhongKhach" runat="server" Enabled="False" /></td>
				</tr>
				<tr>
					<td>Gara Ô tô: </td>
					<td><asp:CheckBox ID="chkGaraOto" runat="server" Enabled="False" /></td>
				</tr>
				<tr>
					<td>Nhà Bếp: </td>
					<td><asp:CheckBox ID="chkNhaBep" runat="server" Enabled="False" /></td>
				</tr>				
				<tr>
					<td>Hồ Bơi: </td>
					<td><asp:CheckBox ID="chkHoBoi" runat="server" Enabled="False" /></td>
				</tr>
				<tr>
					<td>Sân Thượng: </td>
					<td><asp:CheckBox ID="chkSanThuong" runat="server" Enabled="False" /></td>
				</tr>
				<tr>
					<td>Điều Hòa: </td>
					<td><asp:CheckBox ID="chkDieuHoa" runat="server" Enabled="False" /></td>
				</tr>
				<tr>
					<td>Sân Vườn: </td>
					<td><asp:CheckBox ID="chkSanVuon" runat="server" Enabled="False" /></td>
				</tr>
				<tr>
					<td>Thang Máy: </td>
					<td><asp:CheckBox ID="chkThangMay" runat="server" Enabled="False" /></td>
				</tr>
			</table>
			<table cellpadding="4" cellspacing="4">
				<tr>
					<td colspan="2" align="center"><b>Văn Hóa, Xã Hội</b></td>
				</tr>
				<tr>
					<td>Gần Trường Mẫu Giáo: </td>
					<td><asp:CheckBox ID="chkGanTruongMauGiao" runat="server" Enabled="False" /></td>
				</tr>
				<tr>
					<td>Gần Trường Cấp 1: </td>
					<td><asp:CheckBox ID="chkGanTruongCap1" runat="server" Enabled="False" /></td>
				</tr>
				<tr>
					<td>Gần Trường Cấp 2: </td>
					<td><asp:CheckBox ID="chkGanTruongCap2" runat="server" Enabled="False" /></td>
				</tr>				
				<tr>
					<td>Gần Trường Cấp 3: </td>
					<td><asp:CheckBox ID="chkGanTruongCap3" runat="server" Enabled="False" /></td>
				</tr>
				<tr>
					<td>Gần Chợ: </td>
					<td><asp:CheckBox ID="chkGanCho" runat="server" Enabled="False" /></td>
				</tr>
				<tr>
					<td>Gần Bệnh Viện: </td>
					<td><asp:CheckBox ID="chkGanBenhVien" runat="server" Enabled="False" /></td>
				</tr>
				<tr>
					<td>Gần Trung Tâm Thương Mại: </td>
					<td><asp:CheckBox ID="chkGanTrungTamThuongMai" runat="server" Enabled="False" /></td>
				</tr>
				<tr>
					<td>Gần Trung Tâm Giải Trí: </td>
					<td><asp:CheckBox ID="chkGanTrungTamGiaiTri" runat="server" Enabled="False" /></td>
				</tr>
				<tr>
					<td>Gần Công Viên: </td>
					<td><asp:CheckBox ID="chkGanCongVien" runat="server" Enabled="False" /></td>
				</tr>
			</table>	
		</asp:View>
		<asp:View ID="TinTuyenDungView" runat="server">
			<table cellpadding="4" cellspacing="4">
				<tr>
					<td colspan="2" align="center"><b>Thông Tin Nhà Tuyển Dụng</b></td>
				</tr>
				<tr>
					<td>Tên Nhà Tuyển Dụng:</td>
					<td><asp:Label ID="lblTenNhaTuyenDung" runat="server" /></td>
				</tr>
				<tr>
					<td>Giới Thiệu Nhà Tuyển Dụng:</td>
					<td><asp:Label ID="lblGioiThieuNhaTuyenDung" runat="server" /></td>
				</tr>
				<tr>
					<td>Website</td>
					<td><asp:HyperLink ID="hypWebsite" runat="server" NavigateUrl=''></asp:HyperLink></td>
				</tr>
				<tr>
					<td>Người Đại Diện:</td>
					<td><asp:Label ID="lblNguoiDaiDien" runat="server" /></td>
				</tr>
				<tr>
					<td>Địa Chỉ Liên Hệ:</td>
					<td><asp:Label ID="lblDiaChiLienHe" runat="server" /></td>
				</tr>
				<tr>
					<td>Điện Thoại:</td>
					<td><asp:Label ID="lblDienThoai" runat="server" /></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><asp:Label ID="lblEmail" runat="server" /></td>
				</tr>
			</table>
			<table cellpadding="4" cellspacing="4">
				<tr>
					<td colspan="2" align="center"><b>Thông Tin Công Việc</b></td>
				</tr>
				<tr>
					<td>Vị Trí Tuyển Dụng:</td>
					<td><asp:Label ID="lblViTriTuyenDung" runat="server" /></td>
				</tr>
				<tr>
					<td>Yêu Cầu Công Việc:</td>
					<td><asp:Label ID="lblYeuCauCongViec" runat="server" /></td>
				</tr>
				<tr>
					<td>Yêu Cầu Kinh Nghiệm:</td>
					<td><asp:Label ID="lblYeuCauKinhNghiem" runat="server" /></td>
				</tr>
				<tr>
					<td>Thời Gian Lam Việc:</td>
					<td><asp:Label ID="lblThoiGianLamViec" runat="server" /></td>
				</tr>
				<tr>
					<td>Số Lượng Cần Tuyển:</td>
					<td><asp:Label ID="lblSoLuongCanTuyen" runat="server" /></td>
				</tr>
				<tr>
					<td>Mức lương Khởi Điểm:</td>
					<td><asp:Label ID="lblMucLuongKhoiDiem" runat="server" /></td>
				</tr>
				<tr>
					<td>Thời Gian Thử Việc:</td>
					<td><asp:Label ID="lblThoiGianThuViec" runat="server" /></td>
				</tr>
				<tr>
					<td>Lương Thử Việc:</td>
					<td><asp:Label ID="lblLuongThuViec" runat="server" /></td>
				</tr>
				<tr>
					<td>Quyền Lợi Được Hưởng:</td>
					<td><asp:Label ID="lblQuyenLoiDuocHuong" runat="server" /></td>
				</tr>
				<tr>
					<td>Hồ Sơ Bao Gồm:</td>
					<td><asp:Label ID="lblHoSoBaoGom" runat="server" /></td>
				</tr>
				<tr>
					<td>Thời Hạn Kết Thúc Nộp Hồ Sơ:</td>
					<td><asp:Label ID="lblThoiHanKetThucNopHoSo" runat="server" /></td>
				</tr>
			</table>
		</asp:View>
		<asp:View ID="HoSoTuyenDungView" runat="server">
			<table cellpadding="4" cellspacing="4">
				<tr>
					<td colspan="3" align="center"><b>Thông Tin Cá Nhân</b></td>
				</tr>
				<tr>
					<td>Họ Tên:</td>
					<td colspan="2"><asp:Label ID="lblTen" runat="server" /></td>
				</tr>
				<tr>
					<td>Ngày Sinh:</td>
					<td colspan="2"><asp:Label ID="lblNgaySinh" runat="server" /></td>
				</tr>
				<tr>
					<td>Giới Tính</td>
					<td><asp:CheckBox ID="chkNam" runat="server" Enabled="False" Text="Nam" /></td>
					<td><asp:CheckBox ID="chkNu" runat="server" Enabled="False" Text="Nu" /></td>
				</tr>
				<tr>
					<td>Tình Trạng Hôn Nhân:</td>
					<td colspan="2"><asp:CheckBox ID="chkTinhTrangHonNhan" runat="server" Enabled="False" Text="Đã Kết Hôn" /></td>
				</tr>
				<tr>
					<td>Quốc Tịch:</td>
					<td colspan="2"><asp:Label ID="lblQuocTich" runat="server" /></td>
				</tr>
				<tr>
					<td>Địa Chỉ Liên Lạc:</td>
					<td colspan="2"><asp:Label ID="lblDiaChiLienLac" runat="server" /></td>
				</tr>
				<tr>
					<td>Số Điện Thoại:</td>
					<td colspan="2"><asp:Label ID="lblSoDienThoai" runat="server" /></td>
				</tr>
				<tr>
					<td>Di Động:</td>
					<td colspan="2"><asp:Label ID="lblDiDong" runat="server" /></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td colspan="2"><asp:Label ID="lblEmailCaNhan" runat="server" /></td>
				</tr>
			</table>
			<table cellpadding="4" cellspacing="4">
				<tr>
					<td colspan="2" align="center"><b>Học Vấn</b></td>
				</tr>
				<tr>
					<td>Thông Tin Học Vấn:</td>
					<td><asp:Label ID="lblThongTinHocVan" runat="server" /></td>
				</tr>
				<tr>
					<td>Bằng Cấp:</td>
					<td><asp:Label ID="lblBangCap" runat="server" /></td>
				</tr>
				<tr>
					<td>Ngoại Ngữ:</td>
					<td><asp:Label ID="lblNgoaiNgu" runat="server" /></td>
				</tr>
				<tr>
					<td>Kỹ Năng:</td>
					<td><asp:Label ID="lblKyNang" runat="server" /></td>
				</tr>
			</table>
			<table cellpadding="4" cellspacing="4">
				<tr>
					<td colspan="2" align="center"><b>Kinh Nghiệm Làm Việc</b></td>
				</tr>
				<tr>
					<td>Cấp Bậc:</td>
					<td><asp:Label ID="lblCapBac" runat="server" /></td>
				</tr>
				<tr>
					<td>Số Năm Kinh Nghiệm:</td>
					<td><asp:Label ID="lblSoNamKinhNghiem" runat="server" /></td>
				</tr>
				<tr>
					<td>Công Ty Làm Việc:</td>
					<td><asp:Label ID="lblCongTyLamViec" runat="server" /></td>
				</tr>
				<tr>
					<td>Chức Danh:</td>
					<td><asp:Label ID="lblChucDanh" runat="server" /></td>
				</tr>
				<tr>
					<td>Tóm Tắt Kinh Nghiệm:</td>
					<td><asp:Label ID="lblTomTatKinhNghiem" runat="server" /></td>
				</tr>
				<tr>
					<td>Mô Tả Công Việc Lý Tưởng:</td>
					<td><asp:Label ID="lblMoTaCongViecLyTuong" runat="server" /></td>
				</tr>
				<tr>
					<td>Nguyện Vọng:</td>
					<td><asp:Label ID="lblNguyenVong" runat="server" /></td>
				</tr>
				<tr>
					<td>Thời Gian Làm Việc Mong Muốn:</td>
					<td><asp:Label ID="lblThoiGianLamViecMongMuon" runat="server" /></td>
				</tr>
				<tr>
					<td>Lương Mong Muốn:</td>
					<td><asp:Label ID="lblLuongMongMuon" runat="server" /></td>
				</tr>
			</table>
		</asp:View>
	</asp:MultiView>
    <asp:HyperLink ID="hypXemThongTinLienHe" runat="server" 
        Text="Xem Thông Tin Liên Hệ" NavigateUrl="../DanhMuc/XemThongTinLienHe.aspx" 
        ForeColor="#990099"></asp:HyperLink>
</div>