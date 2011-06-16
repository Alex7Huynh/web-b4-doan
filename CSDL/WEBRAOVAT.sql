----------------------------------------------------------------------------------------------------------------------------------------
--Xoa CSDL
drop database RAO_VAT
--Tao CSDL
create database RAO_VAT
go
use RAO_VAT
go
--1. Tao bang LOAINGUOIDUNG
Create table LOAINGUOIDUNG
(
	MaLoaiNguoiDung int identity(1,1),
	TenLoaiNguoiDung nchar(50),		
	Deleted bit,
	CONSTRAINT PK_LOAINGUOIDUNG PRIMARY KEY (MaLoaiNguoiDung),
)

--2. Tao bang NGUOIDUNG
Create table NGUOIDUNG
(
	MaNguoiDung int identity(1,1),
	TenNguoiDung nchar(50),	
	MatKhau char(50),
	Email varchar(50),
	DienThoai char(15),
	DiaChi nvarchar(100),
	MaKichHoatTaiKhoan int,
	TinhTrangKichHoatTaiKhoan bit,
	ThoiGianDangKy datetime,
	ThoiGianHetHan datetime,
	MaLoaiNguoiDung int,
	Deleted bit,
	CONSTRAINT PK_NGUOIDUNG PRIMARY KEY (MaNguoiDung),
)

--3. Tao bang LICHSUNGUOIDUNG
Create table LICHSUNGUOIDUNG
(
	MaLichSuNguoiDung int identity(1,1),
	MaNguoiDung int,
	ThoiGianDangNhap datetime,
	ThoiGianDangXuat datetime,	
	CONSTRAINT PK_LICHSUNGUOIDUNG PRIMARY KEY (MaLichSuNguoiDung, MaNguoiDung),
)

--4. Tao bang LICHSUNGUOIDUNGVIPHAM
Create table LICHSUNGUOIDUNGVIPHAM
(
	MaLichSuNguoiDungViPham int identity(1,1),
	MaNguoiDungViPham int,
	MaNguoiDungBaoCaoViPham int,
	ThoiGianBaoCaoViPham datetime,
	deleted bit,
	ThoiGianCanhCao int,
	LyDo nvarchar(100),
	CONSTRAINT PY_LSNGUOIDUNGVIPHAM PRIMARY KEY(MaLichSuNguoiDungViPham),
)
--5. Tao bang THEME
Create table THEME
(
	MaTheme int identity(1,1),
	TenTheme nchar(50),
	Color varchar(155),
	Background varchar(155),
	Border varchar(155),
	CSS varchar(155),
	Deleted bit,
	CONSTRAINT PK_THEME PRIMARY KEY (MaTheme)
)

--6. Tao bang LOGO
Create table LOGO
(
	MaLogo int identity(1,1),
	TenLogo nvarchar(50),
	DuongDanLogo nvarchar(155),	
	Deleted bit,
	CONSTRAINT PK_LOGO PRIMARY KEY (MaLogo)
)

--7. Tao bang BANNERGIAODIEN
Create table BANNERGIAODIEN
(
	MaBannerGiaoDien int identity(1,1),
	TenBannerGiaoDien nvarchar(50),	
	DuongDanBannerGiaoDien nvarchar(155),	
	Deleted bit,
	CONSTRAINT PK_BANNERGIAODIEN PRIMARY KEY (MaBannerGiaoDien)
)

--8. Tao bang CHITIETGIAODIEN
Create table CHITIETGIAODIEN
(
	MaChiTietGiaoDien int identity(1,1),
	TenGiaoDien nvarchar(50),
	MaBannerGiaoDien int,
	MaLogo int,
	MaTheme int,
	Deleted bit,
	MaNguoiDung int,
	ThoiGianThayDoi datetime,
	CONSTRAINT PK_CHITIETGIAODIEN PRIMARY KEY (MaChiTietGiaoDien),
)

--9. Tao bang TREATAS
Create table TREATAS
(
	MaTreatAs int identity(1,1),
	TreatAsName nchar(50),		
	Deleted bit,
	CONSTRAINT PK_TREATAS PRIMARY KEY (MaTreatAs),
)

--10. Tao bang MAILSERVER
Create table MAILSERVER
(
	MaMailServer int identity(1,1),
	DomainName char(50),
	MailServer char(50),
	UserName char(50),
	Password char(50),
	Port int,
	SecuredAuthentication char(20),
	MaTreatAs int,	
	CONSTRAINT PK_MAILSERVER PRIMARY KEY (MaMailServer),
)

--11. Tao bang LOAIQUANGCAO
Create table LOAIQUANGCAO
(
	MaLoaiQuangCao int identity(1,1),
	TenLoaiQuangCao nchar(50),
	Deleted bit,
	CONSTRAINT PK_LOAIQUANGCAO PRIMARY KEY (MaLoaiQuangCao),	
)

--12. Tao bang QUANGCAO
Create table QUANGCAO
(
	MaQuangCao int identity(1,1),
	TenQuangCao nchar(50),	
	Link char(100),
	ThoiGianDang datetime,
	ThoiGianHetHan datetime,
	Deleted bit,
	NoiDungQuangCao nvarchar(200),
	MaLoaiQuangCao int,
	MaNguoiDung int,
	CONSTRAINT PK_QUANGCAO PRIMARY KEY (MaQuangCao),
)

--13. Tao bang DANHMUCCHINH
Create table DANHMUCCHINH
(
	MaDanhMucChinh int identity(1,1),
	TenDanhMucChinh nchar(50),
	MaChuyenMuc int,
	Thumbnail varchar(155),		
	Deleted bit,	
	CONSTRAINT PK_DANHMUCCHINH PRIMARY KEY (MaDanhMucChinh),	
)

--CHUYENMUC
Create table CHUYENMUC
(
	MaChuyenMuc int identity(1,1),
	TenChuyenMuc nvarchar(200),
	Deleted bit,
	CONSTRAINT PK_CHUYENMUC PRIMARY KEY (MaChuyenMuc),
)

--14. Tao bang DANHMUCCON
Create table DANHMUCCON
(
	MaDanhMucCon int identity(1,1),
	TenDanhMucCon nvarchar(50),	
	MaDanhMucChinh int,	
	Deleted bit,	
	CONSTRAINT PK_DANHMUCCON PRIMARY KEY (MaDanhMucCon),
)

--15. Tao bang DIADIEM
Create table DIADIEM
(
	MaDiaDiem int identity(1,1),
	TenDiaDiem nvarchar(155),		
	Deleted bit,	
	CONSTRAINT PK_DIADIEM PRIMARY KEY (MaDiaDiem),	
)

--16. Tao bang TINRAOVAT
Create table TINRAOVAT
(
	MaTinRaoVat int identity(1,1),
	ThoiGianDang datetime,
	ThoiHanLuuTin int,
	MaDiaDiem int,
	SoLanXem int,
	MaNguoiDung int,
	MaDanhMucCon int,
	TieuDe nvarchar(50),
	Thumbnail varchar(155),
	GhiChuHinhAnh nvarchar(100),
	Deleted bit,
	CONSTRAINT PK_TINRAOVAT PRIMARY KEY (MaTinRaoVat),
)

--16.1. Tao bang TINRAOVATTHUONG
Create table TINRAOVATTHUONG
(
		MaTinRaoVatThuong int identity(1,1),
		MaTinRaoVat int,	
		NoiDungTinRaoVat nvarchar(1000),
		Gia int,	
		Deleted bit,
	CONSTRAINT PK_TINRAOVATTHUONG PRIMARY KEY (MaTinRaoVatThuong),
)

--16.2. Tao bang TINRAOVATBATDONGSAN
Create table TINRAOVATBATDONGSAN
(
	MaTinRaoVatBatDongSan int identity(1,1),
	MaTinRaoVat int,
	NoiDungTinRaoVat nvarchar(1000),
	Gia int,
	DiaChi nvarchar(400),
	DienTich int,
	Huong nvarchar(100),
	LoGioi nvarchar(100),
	Lau int,
	Lung int, 
	MatTien bit,
	GiayTo nvarchar(100),
	DuongTruocNha nvarchar(100),
	DienNhaNuoc bit,
	NuocMay bit,
	SoPhongNgu int,
	SoNhaVeSinh int,
	NamXayDung int,
	
	--noi that, tien nghi
	PhongKhach bit,
	GaraOto bit,
	NhaBep bit,
	HoBoi bit,
	SanThuong bit,
	DieuHoa bit,
	SanVuon bit,
	ThangMay bit,
	--van hoa, xa hoi
	GanTruongMauGiao bit,
	GanTruongCap1 bit,
	GanTruongCap2 bit,
	GanTruongCap3 bit,
	GanCho bit,
	GanBenhVien bit,
	GanTrungTamThuongMai bit,
	GanTrungTamGiaiTri bit,
	GanCongVien bit,

	Deleted bit,

	CONSTRAINT PK_TINRAOVATBATDONGSAN PRIMARY KEY (MaTinRaoVatBatDongSan),
)

--16.3. Tao bang TINTUYENDUNG
Create table TINTUYENDUNG
(
	MaTinTuyenDung int identity(1,1),
	MaTinRaoVat int,
	
	--thong tin nha tuyen dung
	TenNhaTuyenDung nvarchar(100),
	GioiThieuNhaTuyenDung nvarchar(1000),
	Website nvarchar(100),
	NguoiDaiDien nvarchar(100),
	DiaChiLienHe nvarchar(100),
	DienThoai nvarchar(100),
	Email nvarchar(100),
	--thong tin cong viec
	MaNganhNghe int,
	ViTriTuyenDung nvarchar(100),
	YeuCauCongViec nvarchar(300),
	YeuCauKinhNghiem nvarchar(300),
	ThoiGianLamViec nvarchar(100),
	SoLuongCanTuyen int,
	MucLuongKhoiDiem int,
	ThoiGianThuViec nvarchar(100),
	LuongThuViec int,
	QuyenLoiDuocHuong nvarchar(100),
	HoSoBaoGom nvarchar(100),
	ThoiHanKetThucNopHoSo datetime,	
	
	Deleted bit,

	CONSTRAINT PK_TINTUYENDUNG PRIMARY KEY (MaTinTuyenDung),
)

--16.4. Tao bang HOSOTUYENDUNG
Create table HOSOTUYENDUNG
(
	MaHoSoTuyenDung int identity(1,1),
	MaTinRaoVat int,
	DongYHienThi bit,
	HoTen nvarchar(100),
	NgaySinh datetime,
	GioiTinh bit,
	TinhTrangHonNhan bit,
	QuocTich nvarchar(100),
	DiaChiLienLac nvarchar(100),
	SoDienThoai nvarchar(100),
	DiDong nvarchar(100),
	Email nvarchar(100),
	
	--hoc van
	ThongTinHocVan nvarchar(1000),
	BangCap nvarchar(100),
	NgoaiNgu nvarchar(100),
	KyNang nvarchar(100),
	
	--kinh nghiem lam viec
	CapBac nvarchar(100),
	SoNamKinhNghiem int,
	CongTyLamViec nvarchar(100),
	ChucDanh nvarchar(100),
	TomTatKinhNghiem nvarchar(100),
	MoTaCongViecLyTuong nvarchar(100),
	NguyenVong nvarchar(100),
	ThoiGianLamViec nvarchar(100),
	LuongMongMuon nvarchar(100),
	
	Deleted bit,
	CONSTRAINT PK_HOSOTUYENDUNG PRIMARY KEY (MaHoSoTuyenDung),
)

--16.5. Tao bang CHITIETHOSOTUYENDUNG
Create table CHITIETHOSOTUYENDUNG
(
	MaChiTietHoSoTuyenDung int identity(1,1),
	MaHoSoTuyenDung int,
	MaNganhNghe int,
	CONSTRAINT PK_CHITIETHOSOTUYENDUNG PRIMARY KEY (MaChiTietHoSoTuyenDung),
)

--16.6. Tao Bang NGANHNGHE
Create table NGANHNGHE
(
	MaNganhNghe int identity(1,1),
	TenNganhNghe nvarchar(100),
	CONSTRAINT PK_NGANHNGHE PRIMARY KEY (MaNganhNghe),
)

--17. Tao bang EMAILNHANTINRAOVAT
Create table EMAILNHANTINRAOVAT
(
	MaEmailNhanTinRaoVat int identity(1,1),
	EmailNhanTinRaoVat varchar(50),
	ThoiGianDangKy datetime, 
	Deleted bit,
	CONSTRAINT PK_EMAILNHANTINRAOVAT PRIMARY KEY (MaEmailNhanTinRaoVat),	
)

--17. Tao bang EMAILNHANTINRAOVATTHEOMUCCHINH
Create table EMAILNHANTINRAOVATTHEOMUCCHINH
(
	MaEmailNhanTinRaoVatTheoMucChinh int identity(1,1),
	EmailNhanTinRaoVat varchar(50),
	ThoiGianDangKy datetime, 
	MaDanhMucChinh int,
	Deleted bit,
	CONSTRAINT PK_EMAILNHANTINRAOVATTHEOMUCCHINH PRIMARY KEY (MaEmailNhanTinRaoVatTheoMucChinh),	
)

--17. Tao bang EMAILNHANTINRAOVATTHEOMUCCON
Create table EMAILNHANTINRAOVATTHEOMUCCON
(
	MaEmailNhanTinRaoVatTheoMucCon int identity(1,1),
	EmailNhanTinRaoVat varchar(50),
	ThoiGianDangKy datetime, 
	MaDanhMucCon int,
	Deleted bit,
	CONSTRAINT PK_EMAILNHANTINRAOVATTHEOMUCCON PRIMARY KEY (MaEmailNhanTinRaoVatTheoMucCon),	
)

--19. Tao bang BAITRALOI
Create table BAITRALOI
(
	MaBaiTraLoi int identity(1,1),
	MaTinRaoVat int,	
	NoiDungTraLoi nvarchar(500),
	ThoiGianTraLoi datetime,
	Deleted bit,
	MaNguoiDung int,
	CONSTRAINT PK_BAITRALOI PRIMARY KEY (MaBaiTraLoi,MaTinRaoVat),
)

--20. Tao bang LIKED
Create table LIKED
(	
	MaTinRaoVat int,	
	MaLike int identity(1,1),	
	MaNguoiDung int,
	ThoiGianLike datetime,
	Deleted bit,
	MaBaiTraLoi int
	CONSTRAINT PK_LIKED PRIMARY KEY (MaTinRaoVat,MaLike),
)

--21. Tao bang TINRAOVATDALUU
Create table TINRAOVATDALUU
(	
	MaTinRaoVatDaLuu int identity(1,1),		
	MaNguoiDung int,
	MaTinRaoVat int,
	ThoiGianLuu datetime,
	Deleted bit,	
	CONSTRAINT PK_TINRAOVATDALUU PRIMARY KEY (MaTinRaoVatDaLuu),
)

--22. Tao bang TINNHAN
Create table TINNHAN
(	
	MaTinNhan int identity(1,1),		
	MaNguoiDung int,
	MaNguoiNhanTin int,
	TieuDeTinNhan nvarchar(155),
	NoiDungTinNhan nvarchar(500),	
	ThoiGianNhanTin datetime,
	Readed bit,
	Deleted bit,	
	CONSTRAINT PK_TINNHAN PRIMARY KEY (MaTinNhan),	
)

--23. Tao bang LICHSUTINRAOVATVIPHAM
Create table LICHSUTINRAOVATVIPHAM
(
	MaLichSuTinRaoVatViPham int identity(1,1),
	MaTinRaoVatViPham int,
	MaNguoiDungBaoCaoViPham int,
	ThoiGianBaoCaoViPham datetime,
	deleted bit,
	LyDo nvarchar(100),	
	CONSTRAINT PY_LSTINRAOVATVIPHAM PRIMARY KEY(MaLichSuTinRaoVatViPham),
)

----------------------------------------------------------------------------------------------------------------------------------------
--Tao Rang Buoc

--1. NGUOIDUNG
ALTER TABLE NGUOIDUNG
ADD CONSTRAINT FK_NGUOIDUNG_LOAINGUOIDUNG 
FOREIGN KEY (MaLoaiNguoiDung)
REFERENCES LOAINGUOIDUNG(MaLoaiNguoiDung)

--2. LICHSUNGUOIDUNG
ALTER TABLE LICHSUNGUOIDUNG
ADD CONSTRAINT FK_LSNGUOIDUNG_NGUOIDUNG 
FOREIGN KEY (MaNguoiDung) 
REFERENCES NGUOIDUNG(MaNguoiDung)

--3. LICHSUNGUOIDUNGVIPHAM
ALTER TABLE LICHSUNGUOIDUNGVIPHAM
ADD CONSTRAINT FK_LSNGUOIDUNG1_NGUOIDUNG 
FOREIGN KEY (MaNguoiDungViPham)
REFERENCES NGUOIDUNG(MaNguoiDung)

ALTER TABLE LICHSUNGUOIDUNGVIPHAM
ADD CONSTRAINT FK_LSNGUOIDUNG2_NGUOIDUNG
FOREIGN KEY (MaNguoiDungBaoCaoViPham)
REFERENCES NGUOIDUNG(MaNguoiDung)

--3. CHITIETGIAODIEN
ALTER TABLE CHITIETGIAODIEN
ADD CONSTRAINT FK_CHITIETGIAODIEN_BANNER 
FOREIGN KEY (MaBannerGiaoDien) 
REFERENCES BANNERGIAODIEN(MaBannerGiaoDien)

ALTER TABLE CHITIETGIAODIEN
ADD CONSTRAINT FK_CHITIETGIAODIEN_LOGO 
FOREIGN KEY (MaLogo) 
REFERENCES LOGO(MaLogo)

ALTER TABLE CHITIETGIAODIEN
ADD CONSTRAINT FK_CHITIETGIAODIEN_THEME 
FOREIGN KEY (MaTheme) 
REFERENCES THEME(MaTheme)

ALTER TABLE CHITIETGIAODIEN
ADD CONSTRAINT FK_CHITIETGIAODIEN_NGUOIDUNG 
FOREIGN KEY (MaNguoiDung) 
REFERENCES NGUOIDUNG(MaNguoiDung)

--4. MAILSERVER
ALTER TABLE MAILSERVER
ADD CONSTRAINT FK_MAILSERVER_TREATAS 
FOREIGN KEY (MaTreatAs) 
REFERENCES TREATAS(MaTreatAs)

--5. QUANGCAO
ALTER TABLE QUANGCAO
ADD CONSTRAINT FK_QUANGCAO_LOAIQUANGCAO 
FOREIGN KEY (MaLoaiQuangCao) 
REFERENCES LOAIQUANGCAO(MaLoaiQuangCao)

ALTER TABLE QUANGCAO
ADD CONSTRAINT PK_QUANGCAO_NGUOIDUNG 
FOREIGN KEY (MaNguoiDung) 
REFERENCES NGUOIDUNG(MaNguoiDung)

--?. DANHMUCCHINH
ALTER TABLE DANHMUCCHINH
ADD CONSTRAINT FK_DANHMUCCHINH_CHUYENMUC
FOREIGN KEY (MaChuyenMuc)
REFERENCES CHUYENMUC(MaChuyenMuc)

--6. DANHMUCCON
ALTER TABLE DANHMUCCON
ADD CONSTRAINT FK_DANHMUCCON_DANHMUCCHINH 
FOREIGN KEY (MaDanhMucChinh) 
REFERENCES DANHMUCCHINH(MaDanhMucChinh)

--7. TINRAOVAT
ALTER TABLE TINRAOVAT
ADD CONSTRAINT FK_TINRAOVAT_DIADIEM 
FOREIGN KEY (MaDiaDiem) 
REFERENCES DIADIEM(MaDiaDiem)

ALTER TABLE TINRAOVAT
ADD CONSTRAINT FK_TINRAOVAT_NGUOIDUNG 
FOREIGN KEY (MaNguoiDung) 
REFERENCES NGUOIDUNG(MaNguoiDung)

ALTER TABLE TINRAOVAT
ADD CONSTRAINT FK_TINRAOVAT_DANHMUCCON 
FOREIGN KEY (MaDanhMucCon) 
REFERENCES DANHMUCCON(MaDanhMucCon)

--7.1 TINRAOVATTHUONG
ALTER TABLE TINRAOVATTHUONG
ADD CONSTRAINT FK_TINRAOVATTHUONG_TINRAOVAT
FOREIGN KEY (MaTinRaoVat)
REFERENCES TINRAOVAT(MaTinRaoVat)

--7.2. TINRAOVATBATDONGSAN
ALTER TABLE TINRAOVATBATDONGSAN
ADD CONSTRAINT FK_TINRAOVATBATDONGSAN_TINRAOVAT
FOREIGN KEY (MaTinRaoVat)
REFERENCES TINRAOVAT(MaTinRaoVat)

--7.3. TINTUYENDUNG
ALTER TABLE TINTUYENDUNG
ADD CONSTRAINT FK_TINTUYENDUNG_TINRAOVAT
FOREIGN KEY (MaTinRaoVat)
REFERENCES TINRAOVAT(MaTinRaoVat)

ALTER TABLE TINTUYENDUNG
ADD CONSTRAINT FK_TINTUYENDUNG_NGANHNGHE
FOREIGN KEY (MaNganhNghe)
REFERENCES NGANHNGHE(MaNganhNghe)

--7.4. HOSOTUYENDUNG
ALTER TABLE HOSOTUYENDUNG
ADD CONSTRAINT FK_HOSOTUYENDUNG_TINRAOVAT
FOREIGN KEY (MaTinRaoVat)
REFERENCES TINRAOVAT(MaTinRaoVat)

--7.5. CHITIETHOSOTUYENDUNG
ALTER TABLE CHITIETHOSOTUYENDUNG
ADD CONSTRAINT FK_CHITIETHOSOTUYENDUNG_HOSOTUYENDUNG
FOREIGN KEY (MaHoSoTuyenDung)
REFERENCES HOSOTUYENDUNG(MaHoSoTuyenDung)

ALTER TABLE CHITIETHOSOTUYENDUNG
ADD CONSTRAINT FK_CHITIETHOSOTUYENDUNG_NGANHNGHE
FOREIGN KEY (MaNganhNghe)
REFERENCES NGANHNGHE(MaNganhNghe)

--8.1. EMAILNHANTINRAOVATTHEOMUCCHINH
ALTER TABLE EMAILNHANTINRAOVATTHEOMUCCHINH
ADD CONSTRAINT PK_EMAILNHANTINRAOVATTHEOMUCCHINH_DANHMUCCHINH
FOREIGN KEY (MaDanhMucChinh) 
REFERENCES DANHMUCCHINH(MaDanhMucChinh)

--8.2. EMAILNHANTINRAOVATTHEOMUCCON
ALTER TABLE EMAILNHANTINRAOVATTHEOMUCCON
ADD CONSTRAINT PK_EMAILNHANTINRAOVATTHEOMUCCON_DANHMUCCON
FOREIGN KEY (MaDanhMucCon) 
REFERENCES DANHMUCCON(MaDanhMucCon)

--9. BAITRALOI
ALTER TABLE BAITRALOI
ADD CONSTRAINT PK_BAITRALOI_NGUOIDUNG 
FOREIGN KEY (MaNguoiDung) 
REFERENCES NGUOIDUNG(MaNguoiDung)

--10. LIKED
ALTER TABLE LIKED
ADD CONSTRAINT FK_LIKED_TINRAOVAT 
FOREIGN KEY (MaTinRaoVat) 
REFERENCES TINRAOVAT(MaTinRaoVat)

ALTER TABLE LIKED
ADD CONSTRAINT FK_LIKED_BAITRALOI 
FOREIGN KEY (MaBaiTraLoi, MaTinRaoVat) 
REFERENCES BAITRALOI(MaBaiTraLoi, MaTinRaoVat)

ALTER TABLE LIKED
ADD CONSTRAINT FK_LIKED_NGUOIDUNG 
FOREIGN KEY (MaNguoiDung) 
REFERENCES NGUOIDUNG(MaNguoiDung)

--11. TINRAOVATDALUU
ALTER TABLE TINRAOVATDALUU
ADD CONSTRAINT FK_TINRAOVATDALUU_NGUOIDUNG 
FOREIGN KEY (MaNguoiDung) 
REFERENCES NGUOIDUNG(MaNguoiDung)

ALTER TABLE TINRAOVATDALUU
ADD CONSTRAINT FK_TINRAOVATDALUU_TINRAOVAT
FOREIGN KEY (MaTinRaoVat) 
REFERENCES TINRAOVAT(MaTinRaoVat)

--12. TINNHAN
ALTER TABLE TINNHAN
ADD CONSTRAINT FK_TINNHAN1_NGUOIDUNG 
FOREIGN KEY (MaNguoiDung) 
REFERENCES NGUOIDUNG(MaNguoiDung)

ALTER TABLE TINNHAN
ADD CONSTRAINT FK_TINNHAN2_NGUOIDUNG 
FOREIGN KEY (MaNguoiNhanTin) 
REFERENCES NGUOIDUNG(MaNguoiDung)

--13. LICHSUTINRAOVATVIPHAM
ALTER TABLE LICHSUTINRAOVATVIPHAM
ADD CONSTRAINT FK_LSTINRAOVATVIPHAM_NGUOIDUNG 
FOREIGN KEY (MaNguoiDungBaoCaoViPham) 
REFERENCES NGUOIDUNG(MaNguoiDung)

ALTER TABLE LICHSUTINRAOVATVIPHAM
ADD CONSTRAINT FK_LSTINRAOVATVIPHAM_TINRAOVAT 
FOREIGN KEY (MaTinRaoVatViPham) 
REFERENCES TINRAOVAT(MaTinRaoVat)
----------------------------------------------------------------------------------------------------------------------------------------
--Insert Du Lieu

--1. LOAINGUOIDUNG
INSERT INTO LOAINGUOIDUNG (TenLoaiNguoiDung, Deleted) VALUES ( N'Quản trị viên', '0')
INSERT INTO LOAINGUOIDUNG (TenLoaiNguoiDung, Deleted) VALUES ( N'Thành viên VIP', '0')
INSERT INTO LOAINGUOIDUNG (TenLoaiNguoiDung, Deleted) VALUES ( N'Thành viên thường', '0')

--2. NGUOIDUNG
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('admin', 'admin', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	11,	'1',	'10/18/2010 20:15',	'11/18/2010 20:15',1,0)
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('vipone', 'vipone', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	12,	'1',	'4/5/2011 13:54', '5/5/2011 13:54',2,0)
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('viptwo', 'viptwo', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	13,	'1',	'4/6/2011 19:50', '5/6/2011 19:50',2,0)
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('vipthree', 'vipthree', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	14,	'1',	'8/7/2010 18:02', '9/7/2010 18:02',2,0)
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('vipfour', 'vipfour', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	15,	'1',	'3/17/2011 17:15', '4/17/2011 17:15',2,	0)
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('userone', 'userone', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	16,	'1',	'3/17/2011 18:15', '4/17/2011 18:15',3,	0)
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('usertwo', 'usertwo', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	17,	'1',	'4/8/2011 19:41', '5/8/2011 19:41',3,0)
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('userthree', 'userthree', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	18,	'1',	'4/2/2011 6:59', '5/2/2011 6:59',3,0)
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('userfour', 'userfour', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	19,	'1',	'4/15/2011 2:59', '5/15/2011 2:59',3,	0)
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('userfive', 'userfive', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	20,	'1',	'4/11/2011 18:59', '5/11/2011 18:59',3,	0)
insert into NGUOIDUNG  (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
values('usersix','usersix','Hoangtam101@gmail.com','0976872096','Ho Chi Minh',1,'1','11/06/2006','11/06/2020',3,0)

--3. LICHSUNGUOIDUNG
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (1, '10/18/2010 20:20', '10/18/2010 20:35')
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (2, '04/05/2011 13:59', '04/05/2011 0:09')
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (3, '04/06/2011 19:59', '04/06/2011 20:05')
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (4, '08/07/2010 18:15', '08/07/2010 18:20')
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (5, '03/17/2011 17:20', '03/17/2011 17:35')
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (6, '03/17/2011 18:20', '03/17/2011 18:35')
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (7, '04/08/2011 19:50', '04/08/2011 19:55')
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (8, '04/02/2011 7:20', '04/02/2011 7:15')
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (9, '04/15/2011 3:15', '04/15/2011 3:20')
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (10, '04/11/2011 17:05', '04/11/2011 17:15')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (11,'06/04/2011','06/5/2011')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (1,'06/03/2011','06/5/2011')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (2,'06/02/2011','06/5/2011')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (3,'06/14/2011','06/5/2011')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (4,'06/14/2011','06/5/2011')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (5,'06/14/2011','06/5/2011')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (6,'06/14/2011','06/5/2011')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (7,'06/14/2011','06/5/2011')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (8,'06/14/2011','06/5/2011')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (9,'06/14/2011','06/5/2011')

--4. LICHSUNGUOIDUNGVIPHAM
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(2,1,'06/14/2011',3,0,N'Nhầm chuyên mục')
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(4,2,'06/14/2011',5,0,N'Spam')
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(3,2,'06/14/2011',3,0,N'Nhầm chuyên mục')
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(4,5,'06/14/2011',3,0,N'Nhầm chuyên mục')
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(4,2,'06/14/2011',10,0,N'Post vi rút')
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(2,4,'06/14/2011',3,0,N'Nhầm chuyên mục')
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(5,3,'06/14/2011',3,0,N'Nhầm chuyên mục')
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(3,5,'06/14/2011',10,0,N'Post vi rút')
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(2,3,'06/14/2011',3,0,N'Nhầm chuyên mục')
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(2,4,'06/14/2011',5,0,N'Spam')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (1,2,	'3/4/2009',	3,0,N'Nhầm chuyên mục')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (2,3,	'5/7/2009',	5,0,N'Nhầm chuyên mục')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (1,3,	'7/10/2009',2,0,N'Spam')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (4,3,	'9/12/2009',1,0,N'Vi Phạm Nội Quy')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (6,3,	'11/15/2009',3,0,N'Nhầm chuyên mục')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (4,3,	'1/18/2010',2,0,N'Nhầm chuyên mục')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (5,3,	'3/13/2010',2,0,N'Spam')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (7,3,	'5/16/2010',2,0,N'Nhầm chuyên mục')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (2,3,	'7/19/2010',1,0,N'Chửi thề, nói tục')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (6,3,	'10/1/2010',3,0,N'Nhầm chuyên mục')

--5. LOAIQUANGCAO
insert into LOAIQUANGCAO (TenLoaiQuangCao, Deleted) values(N'LoaiQuangCao01', 0)
insert into LOAIQUANGCAO (TenLoaiQuangCao, Deleted) values(N'LoaiQuangCao02', 0)
insert into LOAIQUANGCAO (TenLoaiQuangCao, Deleted) values(N'LoaiQuangCao03', 0)
insert into LOAIQUANGCAO (TenLoaiQuangCao, Deleted) values(N'LoaiQuangCao04', 0)
insert into LOAIQUANGCAO (TenLoaiQuangCao, Deleted) values(N'LoaiQuangCao05', 0)
insert into LOAIQUANGCAO (TenLoaiQuangCao, Deleted) values(N'LoaiQuangCao06', 0)
insert into LOAIQUANGCAO (TenLoaiQuangCao, Deleted) values(N'LoaiQuangCao07', 0)
insert into LOAIQUANGCAO (TenLoaiQuangCao, Deleted) values(N'LoaiQuangCao08', 0)
insert into LOAIQUANGCAO (TenLoaiQuangCao, Deleted) values(N'LoaiQuangCao09', 0)
insert into LOAIQUANGCAO (TenLoaiQuangCao, Deleted) values(N'LoaiQuangCao10', 0)
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao, Deleted) VALUES (N'Cây cảnh', 0)
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao, Deleted) VALUES (N'Thú nuôi', 0)
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao, Deleted) VALUES (N'Chứng khoán', 0)
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao, Deleted) VALUES (N'Chứng khoán', 0)
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao, Deleted) VALUES (N'Thủ công mỹ nghệ', 0)
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao, Deleted) VALUES (N'Thủ công mỹ nghệ', 0)
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao, Deleted) VALUES (N'Tìm việc', 0)
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao, Deleted) VALUES (N'Tìm việc', 0)
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao, Deleted) VALUES (N'Tuyển dụng', 0)
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao, Deleted) VALUES (N'Tuyển dụng', 0)

--6. QUANGCAO
insert into QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
values(N'MuaChung','Muachung.com','1/01/2009','12/01/2012',0,N'MuaChung',2,2)
insert into QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
values(N'Đồng Hồ','http://w-tech.com.vn','1/01/2009','12/01/2012',0,N'Đồng Hồ',7,2)
insert into QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
values(N'Ngân Hàng Phương Đông','http://www.ocb.com.vn/','5/01/2009','12/01/2012',0,N'Ngân Hàng Phương Đông Hotline 18006678 Miễn phí cuộc gọi',2,5)
insert into QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
values(N'Thẫm mỹ viện bác sỹ Tú','http://www.bacsitu.com','5/01/2009','12/01/2012',0,N'Giảm 15%, Mua 5 + 1 Xóa nếp nhăn, săn chắc da.',2,2)
insert into QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
values(N'Thiên Sơn Plaza','ThienSonPlaza.com.vn','1/01/2009','12/01/2012',0,N'Nhà hàng, café, điện máy, thời trang.',3,2)
insert into QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
values(N'Tuyển dụng miễn phí','http://www.tuyendungmienphi.com/','5/01/2009','12/01/2012',0,N'Tuyển dụng miễn phí',2,4)
insert into QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
values(N'honda','http://www.honda.com.vn/','1/01/2009','12/01/2012',0,N'Honda ab mẫu mới',2,3)
insert into QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
values(N'jetstar','http://www.jetstar.com/vn/vi/index.aspx','5/01/2009','12/01/2012',0,N'Du lịch hè giá rẻ',5,2)
insert into QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
values(N'Trần Anh','http://www.trananh.vn/khuyenmai/kmchung/','5/01/2009','12/01/2012',0,N'Diện máy- máy tính',6,2)
insert into QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
values(N'mobifone','http://www.mobifone.com.vn/','1/01/2009','12/01/2012',0,N'GọI mọI lúc mọI nơi',2,1)

INSERT INTO QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
VALUES (N'Cây cảnh',	'http://yeucaycanh.com',	'10/18/2010 19:15',	'11/18/2010 19:15',	0,	N'BÁN CÂY SANH CON 0935.818.711 (A Truyền) NHẬN TRỒNG,UỐN CÂY VÀ CHĂM SÓC TẠI VƯỜN (1.202)',	11,	11)
INSERT INTO QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
VALUES (N'Thú nuôi',	'www.yeuthucung.com',	'4/5/2011 20:54',	'5/5/2011 20:54',	0,	N'Chuyên cung cấp -Ếch con(1000/con)',	10,	10)
INSERT INTO QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
VALUES (N'Chứng khoán',	'http://www.ssi.com.vn',	'4/6/2011 16:50',	'5/6/2011 16:50',	0,	N'Tư vấn mở tài khoản đầu tư Chứng Khoán thị trường Mỹ tại Việt Nam.',	11,	11)
INSERT INTO QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
VALUES (N'Chứng khoán',	'http://www.ssi.com.vn',	'8/7/2010 16:02',	'9/7/2010 16:02',	0,	N'Tư vấn mở tài khoản đầu tư chứng khoán tại FPTS',	1,	1)
INSERT INTO QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
VALUES (N'Thủ công mỹ nghệ',	'www.mynghedua.com',	'3/17/2011 5:15',	'4/17/2011 15:15',	0,	N'GIỎ ĐAN DÂY NHỰA XUẤT KHẨU',	2,	2)
INSERT INTO QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
VALUES (N'Thủ công mỹ nghệ',	'www.mynghedua.com',	'3/17/2011 15:15',	'4/17/2011 15:15',	0,	N'GIỎ ĐAN DÂY NHỰA',	6,	6)
INSERT INTO QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
VALUES (N'Tìm việc',	'www.timviecnhanh.com',	'4/8/2011 13:41',	'5/8/2011 13:41',	0,	N'Tìm việc kế toán',	7,	7)
INSERT INTO QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
VALUES (N'Tìm việc',	'www.timviecnhanh.com',	'4/1/2011 13:59',	'5/1/2011 13:59',	0,	N'SV đại học Ngoại Thương nhận dạy kèm tại nhà',	8,	8)
INSERT INTO QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
VALUES (N'Tuyển dụng',	'http://tuyendung.com',	'4/11/2011 13:59',	'5/11/2011 13:59',	0,	N'Tuyển dụng',	4,	4)
INSERT INTO QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
VALUES (N'Tuyển dụng',	'http://tuyendung.com',	'4/11/2011 11:59',	'5/11/2011 11:59',	0,	N'HCM- tuyển nhân viên làm part time từ 17h20-20h20',	2,	2)

--7. CHUYENMUC
insert into CHUYENMUC (TenChuyenMuc, Deleted) values(N'Thường', 0)
insert into CHUYENMUC (TenChuyenMuc, Deleted) values(N'Bất Động Sản', 0)
insert into CHUYENMUC (TenChuyenMuc, Deleted) values(N'Tin Tuyển Dụng', 0)
insert into CHUYENMUC (TenChuyenMuc, Deleted) values(N'Hồ Sơ Tuyển Dụng', 0)

--7. DANHMUCCHINH
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Bất động sản', 2, N'21.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Tin Tuyển Dụng', 3, N'20.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Hồ Sơ Tuyển Dụng', 4, N'20.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Thời trang', 1, N'2.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Xây dựng - Nội thất – Ngoại thất', 1, N'3.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Điện thoại', 1, N'4.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Máy vi tính – Laptop', 1, N'5.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Điện tử - Kỹ thuật số', 1, N'6.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Ô tô', 1, N'7.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Xe máy- Xe đạp', 1, N'8.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Văn phòng phẩm', 1, N'9.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Ẩm thực', 1, N'10.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Đồ chơi - Mô hình', 1, N'11.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Đào tạo - Giáo dục', 1, N'12.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Sức Khỏe - Y tế', 1, N'13.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Dụng cụ thể thao', 1, N'14.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Du lịch', 1, N'15.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Cây cảnh -  Thú nuôi', 1, N'16.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Chứng khoán', 1, N'17.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Dịch vụ', 1, N'18.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Thủ công mỹ nghệ', 1, N'19.jpg',0)
insert into DANHMUCCHINH (TenDanhMucChinh, MaChuyenMuc, Thumbnail, Deleted) values(N'Linh tinh', 1, N'22.jpg',0)


--8. DANHMUCCON
--Bất động sản
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Căn hộ cao cấp',1,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Mua bán Đất',1,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Mua bán Nhà',1,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Thuê - Cho Thuê',1,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Sang nhượng khác',1,0)
--Tin tuyển dụng
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Tuyển dụng',2,0)
--Hồ sơ tuyển dụng
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Tìm việc',3,0)
--Thời trang
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Thời trang nam',4,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Thời trang nữ',4,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Mỹ phẩm',4,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Trang sức',4,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Đồ hóa trang',4,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Khác',4,0)
--Xây dựng
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Phòng ngủ',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Phòng khách',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Phòng tắm',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Phòng bếp',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Phòng làm việc',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Đồ thờ cúng',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Phong thủy',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Sân vườn',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Khác',5,0)
--Điện thoại
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Nokia',6,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Apple',6,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Samsung',6,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Sony Ericsson',6,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Motorola',6,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'LG',6,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Linh kiện',6,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Khác',6,0)
--Máy vi tính – Laptop
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Desktop',7,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Laptop',7,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Máy chiếu-Máy in-Máy scan',7,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Phần mềm',7,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Thiết bị mạng',7,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Linh kiện - Phụ kiện',7,0)
--Điện tử - Kỹ thuật số
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Máy ảnh – máy quay phim',8,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Máy nghe nhạc',8,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Loa – Karaoke – Âm thanh',8,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Máy chơi game',8,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Máy tính – Kim từ điển',8,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Tivi – Tủ lạnh – Máy điều hòa',8,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Thiết bị nhà bếp',8,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Thiết bị khác',8,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Các thiết bị khác',8,0)
--Ô tô
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Toyota',9,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Ford',9,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Honda',9,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Mitsubishi',9,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'GM Daewoo',9,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Hyundai',9,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Lamborghini',9,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Hãng khác',9,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Phụ tùng - Đồ chơi',9,0)
--Xe máy- Xe đạp
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Honda',10,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Suzuki',10,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Yamaha',10,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Piaggio',10,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Xe đạp',10,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Hãng khác',10,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Phụ tùng - đồ chơi',10,0)
--Văn phòng phẩm
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Dụng cụ',11,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Sách',11,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Băng đĩa',11,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Quà tặng',11,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Khác',11,0)
--Ẩm thực
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Nhà hàng',12,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Quán ăn',12,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Dụng cụ nhà bếp',12,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Khác',12,0)
--Đồ chơi - Mô hình
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Đồ chơi',13,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Mô hình',13,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Khác',13,0)
--Đào tạo - Giáo dục
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Trung tâm tin học',14,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Trung tâm ngoại ngữ',14,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Khóa học kỹ năng mềm',14,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Khác',14,0)
--Sức Khỏe - Y tế
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Bệnh viện',15,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Trung tâm y tế',15,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Trạm xá',15,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Khác',15,0)
--Dụng cụ thể thao
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Bóng đá',16,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Quần vợt',16,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Cầu lông',16,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Bơi lội',16,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Điền kinh',16,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Khác',16,0)
--Du lịch
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Nội địa',17,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Nước ngoài',17,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Khách sạn',17,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Vé máy bay, tàu, xe',17,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Thuê xe',17,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Địa điểm vui chơi - giải trí',17,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Dịch vụ khác',17,0)
--Cây cảnh -  Thú nuôi
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Cây cảnh',18,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Thú nuôi',18,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Khác',18,0)
--Chứng khoán
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Chứng khoán OTC',19,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Sàn giao dịch',19,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Khác',19,0)
--Dịch vụ
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Vận chuyển - sửa chữa',20,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Làm đẹp',20,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Giấy tờ - sổ sách',20,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'PR - Tổ chức sự kiện',20,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'In ấn - Quảng cáo',20,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Tư vấn',20,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Khác',20,0)
--Thủ công mỹ nghệ
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Mỹ nghệ',21,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Gốm sứ',21,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Sơn mài',21,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Điêu khắc',21,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Tranh vẽ',21,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Sản phẩm khác',21,0)
--Linh tinh
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Các dịch vụ khác',22,0)

--15. DiaDiem
insert into DIADIEM(TenDiaDiem,Deleted) values (N'Hồ Chí Minh',0)
insert into DIADIEM(TenDiaDiem,Deleted) values (N'Quảng Bình',0)
insert into DIADIEM(TenDiaDiem,Deleted) values (N'Hà Nội',0)
insert into DIADIEM(TenDiaDiem,Deleted) values (N'Đà Nẵng',0)
insert into DIADIEM(TenDiaDiem,Deleted) values (N'Huế',0)
insert into DIADIEM(TenDiaDiem,Deleted) values (N'Cần Thơ',0)
insert into DIADIEM(TenDiaDiem,Deleted) values (N'Bến Tre',0)
insert into DIADIEM(TenDiaDiem,Deleted) values (N'Tây Ninh',0)
insert into DIADIEM(TenDiaDiem,Deleted) values (N'Quảng Trị',0)
insert into DIADIEM(TenDiaDiem,Deleted) values (N'Hải Phòng',0)


--16.1. TINRAOVATTHUONG
INSERT INTO TINRAOVAT (	ThoiGianDang,		ThoiHanLuuTin,	SoLanXem,	MaDiaDiem,	MaNguoiDung,	MaDanhMucCon,	TieuDe,										Thumbnail,	Deleted)
VALUES (				'10/18/2010 19:15',	10,				202,		1,			7,				95,				N'BÁN CÂY SANH CON 0935.818.711 (A Tiến)',	'1.jpg',	0)
INSERT INTO TINRAOVATTHUONG (MaTinRaoVat,	NoiDungTinRaoVat,	Gia,	Deleted)
VALUES (1, N'Chào các bác !Tại đây chuyên cung cấp tất cả các loại cây cảnh.Đặc biệt cung cấp :cây sanh con,vừng con,mai con...và còn nhiều cây cổ thụ như sanh, khế  ,sưa ,mai ...Mọi chi tiết xin liên hệ đt 0935.818.711 (A Truyền).NHẬN TRỒNG,UỐN CÂY VÀ CHĂM SÓC TẠI VƯỜN.Giá cả thương lượng khi xem hàng.ok', 150000,	0)
	
INSERT INTO TINRAOVAT (ThoiGianDang, ThoiHanLuuTin,	SoLanXem,	MaDiaDiem,	MaNguoiDung,	MaDanhMucCon, TieuDe,	Thumbnail,	Deleted)
VALUES ('4/5/2011 20:54',	10, 70,	2,	7,	96, N'Chuyên cung cấp -Ếch con(1000/con)',	'2.jpg',	0)
INSERT INTO TINRAOVATTHUONG (MaTinRaoVat,	NoiDungTinRaoVat,	Gia,	Deleted)
VALUES (2,	N'Chuyên cung cấp -Ếch con(1000/con) -Ếch bố mẹ (400ngàn/cặp),cho đẻ liền ,tùy loại. -Tại Thị trấn Tân Túc Huyện Bình Chánh TPHCM. -LH:A_Nhân:01658404456',	150000,	0)

INSERT INTO TINRAOVAT (ThoiGianDang, ThoiHanLuuTin,	SoLanXem,	MaDiaDiem,	MaNguoiDung,	MaDanhMucCon, TieuDe,	Thumbnail,	Deleted)
VALUES ('4/6/2011 16:50',	10, 8, 3,	7,	99, N'Tư vấn mở tài khoản đầu tư CKTT Mỹ tại Việt Nam.',	'3.jpg',	0)
INSERT INTO TINRAOVATTHUONG (MaTinRaoVat,	NoiDungTinRaoVat,	Gia,	Deleted)
VALUES (3,	N'Chúng tôi hỗ trợ Quý nhà đầu tư mở tài khoản giao dịch cổ phiếu trên thị trường Mỹ. Những lợi thế khi tham gia thị trường: - Mở tài khoản đầu tư đơn giản như mở một tài khoản ngân hàng, vốn của Quý nhà đầu tư nằm trong tài khoản ngân hàng của Quý nhà đầu tư tại Việt Nam', 150000, 0)
	
--16.2. TINRAOVATBTDONGSAN
INSERT INTO TINRAOVAT (	ThoiGianDang,		ThoiHanLuuTin,	SoLanXem,	MaDiaDiem,	MaNguoiDung,	MaDanhMucCon,	TieuDe,											Thumbnail,	Deleted)
VALUES (				'8/7/2010 16:02',	10,				54,			4,			2,				2,				N'Bán / Cho Thuê Kho và Đất tại Buôn Mê Thuột',	'4.jpg',	0)
INSERT INTO TINRAOVATBATDONGSAN (
	MaTinRaoVat,
	NoiDungTinRaoVat,
	Gia,
	DiaChi,
	DienTich,
	Huong,
	LoGioi,
	Lau,
	Lung, 
	MatTien,
	GiayTo,
	DuongTruocNha,
	DienNhaNuoc,
	NuocMay,
	SoPhongNgu,
	SoNhaVeSinh,
	NamXayDung,
	
	--noi that, tien nghi
	PhongKhach,
	GaraOto,
	NhaBep,
	HoBoi,
	SanThuong,
	DieuHoa,
	SanVuon,
	ThangMay,
	--van hoa, xa hoi
	GanTruongMauGiao,
	GanTruongCap1,
	GanTruongCap2,
	GanTruongCap3,
	GanCho,
	GanBenhVien,
	GanTrungTamThuongMai,
	GanTrungTamGiaiTri,
	GanCongVien,
	
	Deleted
)
VALUES (
	4,
	N'Bán/ Cho thuê Kho 800m2 tại phường Tân Lập TP. Ban Mê Thuột
	Giá cả thương lượng,
	Liên hệ : 01232509999 - 0908858595',
	10000000,
	N'TP. Ban Mê Thuột',
	700,
	N'Nam',
	N'Gần Đường',
	1, 
	1, 
	1, 
	N'giấy tờ sổ đỏ đầy đủ',
	N'đường NayDer',
	1,
	1,
	3,
	2,
	1990,
	
	--noi that, tien nghi
	1,
	0,
	1,
	1,
	0,
	1,
	0,
	1,
	
	--van hoa, xa hoi
	1,
	0,
	1,
	0,
	1,
	0,
	1,
	1,
	0,
	
	0)
	
INSERT INTO TINRAOVAT (	ThoiGianDang,		ThoiHanLuuTin,	SoLanXem,	MaDiaDiem,	MaNguoiDung,	MaDanhMucCon,	TieuDe,												Thumbnail,	Deleted)
VALUES (				'3-04-11 11:02',	10,				150,		5,			2,				1,				N'Cần bán căn hộ chung cư Mỹ Đức – Lô E – 21 tầng',	'5.jpg',	0)
INSERT INTO TINRAOVATBATDONGSAN (
	MaTinRaoVat,
	NoiDungTinRaoVat,
	Gia,
	DiaChi,
	DienTich,
	Huong,
	LoGioi,
	Lau,
	Lung, 
	MatTien,
	GiayTo,
	DuongTruocNha,
	DienNhaNuoc,
	NuocMay,
	SoPhongNgu,
	SoNhaVeSinh,
	NamXayDung,
	
	--noi that, tien nghi
	PhongKhach,
	GaraOto,
	NhaBep,
	HoBoi,
	SanThuong,
	DieuHoa,
	SanVuon,
	ThangMay,
	--van hoa, xa hoi
	GanTruongMauGiao,
	GanTruongCap1,
	GanTruongCap2,
	GanTruongCap3,
	GanCho,
	GanBenhVien,
	GanTrungTamThuongMai,
	GanTrungTamGiaiTri,
	GanCongVien,
	
	Deleted
)
VALUES (
	5,	
	N'Căn hộ chung cư Mỹ Đức – Lô E – 21 tầng. 
	Với tầm cao 22 tầng, tất cả các cảnh quan của đường phố, của Thảo Cầm Viên, của sông Sài Gòn, của khu du lịch Văn Thánh đều nằm trong tầm quan sát của cao Ốc Mỹ Đức. 
	Kí hiệu căn hộ: A2, đơn nguyên: E1.',
	32.800,
	N'Địa chỉ: hẻm 220, đường Xô Viết Nghệ Tĩnh – Phường 21, Quận Bình Thạnh, nằm gần trung tâm Quận 1, ngã 4 Hàng Xanh, cầu Sài Gòn và đặc biệt là đối diện khu du lịch Văn Thánh',
	200,
	N'Bac',
	N'Cao Tầng',
	1, 
	1, 
	1, 
	N'giấy tờ sổ đỏ đầy đủ',
	N'đường Xô Viết Nghệ Tĩnh',
	1,
	1,
	2,
	2,
	2005,
	
	--noi that, tien nghi
	0,
	0,
	1,
	1,
	1,
	1,
	1,
	1,
	
	--van hoa, xa hoi
	1,
	1,
	1,
	0,
	1,
	0,
	1,
	1,
	1,
	
	0)
	
--16.3.1. NGANHNGHE
INSERT INTO NGANHNGHE (TenNganhNghe) VALUES (N'Bán hàng')
INSERT INTO NGANHNGHE (TenNganhNghe) VALUES (N'Bán hàng kỹ thuật')
INSERT INTO NGANHNGHE (TenNganhNghe) VALUES (N'Bán lẻ/Bán sĩ')
INSERT INTO NGANHNGHE (TenNganhNghe) VALUES (N'Báo chí')
INSERT INTO NGANHNGHE (TenNganhNghe) VALUES (N'Bảo hiểm')
INSERT INTO NGANHNGHE (TenNganhNghe) VALUES (N'Điện tử')
INSERT INTO NGANHNGHE (TenNganhNghe) VALUES (N'Dịch vụ an ninh')
INSERT INTO NGANHNGHE (TenNganhNghe) VALUES (N'Môi trường')
INSERT INTO NGANHNGHE (TenNganhNghe) VALUES (N'Mỹ phẩm')
INSERT INTO NGANHNGHE (TenNganhNghe) VALUES (N'Kiến trúc')
INSERT INTO NGANHNGHE (TenNganhNghe) VALUES (N'Nhân sự')
INSERT INTO NGANHNGHE (TenNganhNghe) VALUES (N'Pháp lý')
INSERT INTO NGANHNGHE (TenNganhNghe) VALUES (N'Viễn thông')
INSERT INTO NGANHNGHE (TenNganhNghe) VALUES (N'Công việc khác')
	
--16.3. TINTUYENDUNG
INSERT INTO TINRAOVAT (	ThoiGianDang,		ThoiHanLuuTin,	SoLanXem,	MaDiaDiem,	MaNguoiDung,	MaDanhMucCon,	TieuDe,											Thumbnail,	Deleted)
VALUES (				'4-30-2011 10:02',	30,				2,			6,			8,				6,				N'Tập đoàn Cathay Life Viet Nam tuyển dụng',	'6.jpg',	0)
INSERT INTO TINTUYENDUNG
(
	MaTinRaoVat,
	
	--thong tin nha tuyen dung
	TenNhaTuyenDung,
	GioiThieuNhaTuyenDung,
	Website,
	NguoiDaiDien,
	DiaChiLienHe,
	DienThoai,
	Email,
	--thong tin cong viec
	MaNganhNghe,
	ViTriTuyenDung,
	YeuCauCongViec,
	YeuCauKinhNghiem,
	ThoiGianLamViec,
	SoLuongCanTuyen,
	MucLuongKhoiDiem,
	ThoiGianThuViec,
	LuongThuViec,
	QuyenLoiDuocHuong,
	HoSoBaoGom,
	ThoiHanKetThucNopHoSo,
	
	Deleted
)
VALUES (
	6,
	
	--thong tin nha tuyen dung
	N'Cathay Life Viet Nam',
	N'Tập đoàn tài chính Cathay',
	N'http://cathaylife.com.vn/vn_home.htm',
	N'Công',
	N'266 Đội Cấn Ba Đình Hà Nội',
	N'0906373345',
	N'congtr31@gmail.com',
	
	--thong tin cong viec
	1,
	N'Nhân Viên Kinh Doanh + NV Văn Phòng',
	N'Hỗ trợ bộ phận tuyển dụng tìm kiếm ứng viên theo yêu cầu của Trưởng phòng',
	N'Không đòi hỏi kinh nghiệm',
	N'Hành chánh',
	3,
	3000000,
	N'Không',
	0,
	N'Cơ hội được làm việc ổn định, lâu dài',
	N'01 bản phô tô bằng cấp có liên quan',
	'5-20-2011 15:30',
	
	0
)

--16.4. HOSOTUYENDUNG
INSERT INTO TINRAOVAT (	ThoiGianDang,		ThoiHanLuuTin,	SoLanXem,	MaDiaDiem,	MaNguoiDung,	MaDanhMucCon,	TieuDe,					Thumbnail,	Deleted)
VALUES (				'3-21-2011 12:02',	30,				62,			7,			3,				7,				N'NGUYEN THAI TRUC',	'7.jpg',	0)
INSERT INTO HOSOTUYENDUNG
(
	--thông tin cá nhân
	MaTinRaoVat,
	DongYHienThi,
	HoTen,
	NgaySinh,
	GioiTinh,
	TinhTrangHonNhan,
	QuocTich,
	DiaChiLienLac,
	SoDienThoai,
	DiDong,
	Email,
	
	--hoc van
	ThongTinHocVan,
	BangCap,
	NgoaiNgu,
	KyNang,
	
	--kinh nghiem lam viec
	CapBac,
	SoNamKinhNghiem,
	CongTyLamViec,
	ChucDanh,
	TomTatKinhNghiem,
	MoTaCongViecLyTuong,
	NguyenVong,
	ThoiGianLamViec,
	LuongMongMuon,
	
	Deleted
)
VALUES (
	7,
	1,
	N'NGUYEN THAI TRUC',
	'1-7-1986',
	1,
	1,
	N'Việt Nam',
	N'E5 ICH THANH TRƯỜNG THẠNH Q9',
	N'0572206874',
	N'01674584792',
	N'THAITRUC85@GMAIL.COM',
	
	--hoc van
	N'TRÌNH ĐỘ HOC VẤN :12/12 TRÌNH ĐỘ CHUYÊN MÔN QTKD',
	N'Trung cấp',
	N'Tiếng Đức - Trình độ : Sơ cấp',
	N'GIAO TIẾP CHIỆU ÁP LỤC CÔNG VIỆC ĐIỀU HÀNH SẢN XUẤT HỆ THỐNG CÔNG VIỆC',
	
	--kinh nghiem lam viec
	N'Chuyên viên',
	3,
	N'Dệt Thái Tuấn',
	N'Tổ trưởng',
	N'QUẢN LÝ SẢN XUẤT (TỔ TRƯỞNG)',
	N'ĐIỀU HÀNH DOANH NGHIỆP',
	N'Nhanh được thăng cấp',
	N'Hành chánh',
	N'300USD',
	
	0
)
--16.5. CHITIETHOSOTUYENDUNG
INSERT INTO CHITIETHOSOTUYENDUNG (MaHoSoTuyenDung,MaNganhNghe) VALUES (1, 1)
INSERT INTO CHITIETHOSOTUYENDUNG (MaHoSoTuyenDung,MaNganhNghe) VALUES (1, 6)
INSERT INTO CHITIETHOSOTUYENDUNG (MaHoSoTuyenDung,MaNganhNghe) VALUES (1, 11)

--17. EMAILNHANTINRAOVAT
INSERT INTO EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T178@yahoo.com',	'10/18/2010 20:15',	0)
INSERT INTO EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T179@yahoo.com',	'4/5/2011 13:54',	0)
INSERT INTO EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T177@yahoo.com',	'4/6/2011 19:50',	0)
INSERT INTO EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T176@yahoo.com',	'8/7/2010 18:02',	0)
INSERT INTO EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T175@yahoo.com',	'3/17/2011 17:15',	0)
INSERT INTO EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T174@yahoo.com',	'3/17/2011 18:15',	0)
INSERT INTO EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T173@yahoo.com',	'4/8/2011 19:41',	0)
INSERT INTO EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T172@yahoo.com',	'4/2/2011 6:59',	0)
INSERT INTO EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T171@yahoo.com',	'4/15/2011 2:59',	0)
INSERT INTO EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T170@yahoo.com',	'4/11/2011 18:59',	0)
insert into EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('Hoangtam.cntt@gmail.com','03/07/2009',0)
insert into EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('boysitinh@yahoo.com','09/02/2010',0)
insert into EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('Hotboy2010@gmail.com','05/05/2010',0)
insert into EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('Phamhoangan@yahoo.com','01/01/2011',0)
insert into EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('langtu09@yahoo.com','02/08/2010',0)
insert into EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('BoyPro@gmail.com','03/11/2009',0)
insert into EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('NusinhChayLinhTinh@yahoo.com','10/12/2010',0)
insert into EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('BacLieuCaoThu@gmail.com','05/12/2010',0)
insert into EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('khocviai@yahoo.com','01/12/2008',0)
insert into EMAILNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('TienKhongLaVanDe@gmail.com','02/08/2010',0)

--18.1. EMAILNHANTINRAOVATTHEOMUCCHINH
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) VALUES ('N_M_T178@yahoo.com',	'10/18/2010 20:15',	1, 0)
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) VALUES ('N_M_T179@yahoo.com',	'4/5/2011 13:54',	1, 0)
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) VALUES ('N_M_T177@yahoo.com',	'4/6/2011 19:50',	1, 0)
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) VALUES ('N_M_T176@yahoo.com',	'8/7/2010 18:02',	1, 0)
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) VALUES ('N_M_T175@yahoo.com',	'3/17/2011 17:15',	1, 0)
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) VALUES ('N_M_T174@yahoo.com',	'3/17/2011 18:15',	1, 0)
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) VALUES ('N_M_T173@yahoo.com',	'4/8/2011 19:41',	1, 0)
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) VALUES ('N_M_T172@yahoo.com',	'4/2/2011 6:59',	1, 0)
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) VALUES ('N_M_T171@yahoo.com',	'4/15/2011 2:59',	1, 0)
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) VALUES ('N_M_T170@yahoo.com',	'4/11/2011 18:59',	1, 0)
insert into EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) values ('Hoangtam.cntt@gmail.com','03/07/2009', 1,0)
insert into EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) values ('boysitinh@yahoo.com','09/02/2010',1,0)
insert into EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) values ('Hotboy2010@gmail.com','05/05/2010',1,0)
insert into EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) values ('Phamhoangan@yahoo.com','01/01/2011',1,0)
insert into EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) values ('langtu09@yahoo.com','02/08/2010',1,0)
insert into EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) values ('BoyPro@gmail.com','03/11/2009',1,0)
insert into EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) values ('NusinhChayLinhTinh@yahoo.com','10/12/2010',1,0)
insert into EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) values ('BacLieuCaoThu@gmail.com','05/12/2010',1,0)
insert into EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) values ('khocviai@yahoo.com','01/12/2008',1,0)
insert into EMAILNHANTINRAOVATTHEOMUCCHINH (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucChinh, Deleted) values ('TienKhongLaVanDe@gmail.com','02/08/2010',1,0)

--18.1. EMAILNHANTINRAOVATTHEOMUCCON
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) VALUES ('N_M_T178@yahoo.com',	'10/18/2010 20:15',	1, 0)
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) VALUES ('N_M_T179@yahoo.com',	'4/5/2011 13:54',	1, 0)
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) VALUES ('N_M_T177@yahoo.com',	'4/6/2011 19:50',	1, 0)
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) VALUES ('N_M_T176@yahoo.com',	'8/7/2010 18:02',	1, 0)
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) VALUES ('N_M_T175@yahoo.com',	'3/17/2011 17:15',	1, 0)
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) VALUES ('N_M_T174@yahoo.com',	'3/17/2011 18:15',	1, 0)
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) VALUES ('N_M_T173@yahoo.com',	'4/8/2011 19:41',	1, 0)
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) VALUES ('N_M_T172@yahoo.com',	'4/2/2011 6:59',	1, 0)
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) VALUES ('N_M_T171@yahoo.com',	'4/15/2011 2:59',	1, 0)
INSERT INTO EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) VALUES ('N_M_T170@yahoo.com',	'4/11/2011 18:59',	1, 0)
insert into EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) values ('Hoangtam.cntt@gmail.com','03/07/2009', 1,0)
insert into EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) values ('boysitinh@yahoo.com','09/02/2010',1,0)
insert into EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) values ('Hotboy2010@gmail.com','05/05/2010',1,0)
insert into EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) values ('Phamhoangan@yahoo.com','01/01/2011',1,0)
insert into EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) values ('langtu09@yahoo.com','02/08/2010',1,0)
insert into EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) values ('BoyPro@gmail.com','03/11/2009',1,0)
insert into EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) values ('NusinhChayLinhTinh@yahoo.com','10/12/2010',1,0)
insert into EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) values ('BacLieuCaoThu@gmail.com','05/12/2010',1,0)
insert into EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) values ('khocviai@yahoo.com','01/12/2008',1,0)
insert into EMAILNHANTINRAOVATTHEOMUCCON (EmailNhanTinRaoVat, ThoiGianDangKy, MaDanhMucCon, Deleted) values ('TienKhongLaVanDe@gmail.com','02/08/2010',1,0)


--19. BAITRALOI
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (11,	N'Up',	'2/3/2009',	0, 1)
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (11,	N'Up nè',	'5/6/2008',	0, 2)
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (13,	N'Up tiếp',	'4/1/2009',0, 1)
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (14,	N'Sẽ tới chọn một bộ',	'2/3/2009',	0, 3)
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (15,	N'Up',	'5/6/2008',0, 4)
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (16,	N'good',	'4/1/2009',	0, 6)
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (17,	N'Up dùm cho bạn',	'2/3/2009',	0, 9)
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (18,	N'thanks',	'5/6/2008',	0, 8)
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (19,	N'Bạn có bảo hành không vậy',	'4/1/2009',	0, 8)
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (20,	N'Up',	'2/3/2009',	0, 3)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (1,		N'Up','04/04/2011',0,1)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (1,		N'Up nè','02/03/2011',0,8)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (1,		N'Up tiếp','10/04/2011',0,4)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (1,		N'Sẽ tới chọn một bộ','01/04/2011',0,2)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (5,		N'Up','02/02/2011',0,5)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (3,		N'good','04/04/2011',0,8)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (7,		N'Up dùm cho bạn','02/03/2011',0,5)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (1,		N'thanks','10/04/2011',0,8)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (3,		N'Bạn có bảo hành không vậy','01/04/2011',0,1)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (1,		N'Up','02/02/2011',0,9)

--20. LIKED
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (1,	1,	'2/4/2011',	0, null)
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (2,	2,	'2/5/2011',	0, null)
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (1,	3,	'2/6/2011',	0, null)
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (1,	4,	'2/7/2011',	0, null)
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (1,	5,	'2/8/2011',	0, null)
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (1,	6,	'2/9/2011',	0, null)
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (1,	7,	'2/10/2011',0, null)
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (1,	8,	'2/11/2011',0, null)
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (1,	9,	'2/12/2011',0, null)
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (2,	10,	'2/13/2011',0, null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (1,2,'04/04/2011',0,null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (2,3,'02/03/2011',0,null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (3,4,'05/04/2011',0,null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (4,5,'06/04/2011',0,null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (5,6,'12/04/2011',0,null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (5,7,'11/04/2011',0,null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (2,8,'03/03/2011',0,null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (3,9,'07/04/2011',0,null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (4,1,'06/03/2011',0,null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (1,2,'07/04/2011',0,null)

--11. TINRAOVATDALUU
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (1,		1,	'10/18/2010 19:15',	0)
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (2,		1,	'4/5/2011 20:54',	0)
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (3,		1,	'4/6/2011 16:50',	0)
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (4,		2,	'8/7/2010 16:02',	0)
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (5,		2,	'3/17/2011 15:15',	0)
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (6,		2,	'3/17/2011 15:15',	0)
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (7,		2,	'4/8/2011 13:41',	0)
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (8,		2,	'4/1/2011 13:59',	0)
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (9,		3,	'4/11/2011 13:59',	0)
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (8,		3,	'4/11/2011 11:59',	0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (1,		3,	'04/04/2011',		0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (2,		4,	'04/04/2011',		0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (3,		4,	'05/04/2011',		0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (4,		4,	'01/04/2011',		0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (5,		5,	'04/02/2011',		0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (6,		5,	'10/04/2011',		0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (7,		5,	'09/04/2011',		0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (8,		5,	'09/04/2011',		0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (9,		6,	'08/04/2011',		0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (10,	7,	'07/06/2011',		0)


--12. TINNHAN
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (5,	2,	N'Reply',	N'Xin hỏi mua cây cảnh',	'10/18/2010 20:20',	1,	0)
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (5,	2,	N'Reply',	N'Xin hỏi mua thú nuôi',	'4/5/2011 13:59',	1,	0)
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (5,	2,	N'Reply',	N'Xin tư vấn về chứng khoán',	'4/6/2011 19:59',	1,	0)
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (6,	7,	N'Reply',	N'Xin tư vấn về chứng khoán',	'8/7/2010 18:15',	0,	0)
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (6,	7,	N'Reply',	N'Xin hỏi mua hàng thủ công mỹ nghệ',	'3/17/2011 17:20',	0,	0)
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (6,	7,	N'Reply',	N'Xin hỏi mua hàng thủ công mỹ nghệ',	'3/17/2011 18:20',1,	0)
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (5,	8,	N'Reply',	N'Xin tư vấn việc làm',	'4/8/2011 19:50',	1,	0)
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (5,	8,	N'Reply',	N'Xin tư vấn việc làm',	'4/2/2011 7:20',	1,	0)
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (6,	3,	N'Reply',	N'Xin tư vấn tìm việc',	'4/15/2011 3:15',	0,	0)
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (6,	3,	N'Reply',	N'Xin tư vấn tìm việc',	'4/11/2011 17:05',	0,	0)
insert into  TINNHAN(MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
values (1,2,N'Hi',N'Chào bạn, làm quen nha.','01/03/2010',0 ,0 )
insert into  TINNHAN(MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
values (3,4,N'Mình muốn hỏi chút',N'Bạn cho mình số điện thoại và địa chỉ của bạn đi.','01/04/2011',1 ,0 )
insert into  TINNHAN(MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
values (5,6,N'Ok',N'Số điện thoại01116367919Số nhà : 135B Trần Hưng Đạo, Quận 1.Tới đó bạn gọi mình sẽ ra gặp.','02/04/2011', 1,0 )
insert into  TINNHAN(MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
values (7,8,N'À quên',N'Cho mình hỏi bạn tên gì vậy ?','02/04/2011', 0, 0)
insert into  TINNHAN(MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
values (9,1,N'Kaka',N'Bạn có bán giày thể thao nam không ?','01/04/2011',0 ,0 )
insert into  TINNHAN(MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
values (10,2,N'Hỏi đường',N'Chỗ bạn bán có gần chợ bà chiều không','01/03/2010',1 ,0 )
insert into  TINNHAN(MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
values (3,5,N'Mình muốn hỏi chút',N'Bạn có thể chuyển  hàng free không?','11/04/2011',1 , 0)
insert into  TINNHAN(MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
values (6,9,N'Ok',N'Số điện thoại01116367919Số nhà : 135B Trần Hưng Đạo, Quận 1.Tới đó bạn gọi mình sẽ ra gặp.','12/04/2011', 1, 0)
insert into  TINNHAN(MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
values (2,8,N'Shop quần áo',N'Miễn phí chuyển hàng','02/01/2011',0 ,0 )
insert into  TINNHAN(MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
values (1,7,N'Kaka',N'Còn hàng không bạn','11/04/2011', 1,1 )

--13. LICHSUTINRAOVATVIPHAM
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted,	LyDo) VALUES (1, 2, '2/3/2011',	0,N'Nhầm chuyên mục')
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted,	LyDo) VALUES (2, 2, '3/4/2009',	0,N'Spam')
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted,	LyDo) VALUES (3, 2, '5/6/2008',	0,N'Nhầm chuyên mục')
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted,	LyDo) VALUES (4, 2, '2/3/2011',	0,N'Nói tục')
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted,	LyDo) VALUES (3, 4, '5/6/2009',	0,N'Không tiêu đề')
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted,	LyDo) VALUES (1, 4, '2/3/2018',	0,N'Viết không dấu')
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted,	LyDo) VALUES (2, 4, '2/3/2011',	0,N'Nói tục')
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted,	LyDo) VALUES (3, 7, '3/4/2009',	0,N'Spam nick')
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted,	LyDo) VALUES (3, 8, '5/6/2008',	0,N'Spam')
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted,	LyDo) VALUES (3, 9, '2/3/2011', 0,N'Spam')

--14. LOGO
INSERT INTO LOGO (TenLogo, DuongDanLogo, Deleted) VALUES (N'Logo01', N'~/images/Logo/Logo01.JPG', 0)
INSERT INTO LOGO (TenLogo, DuongDanLogo, Deleted) VALUES (N'Logo02', N'~/images/Logo/Logo02.JPG', 0)
INSERT INTO LOGO (TenLogo, DuongDanLogo, Deleted) VALUES (N'Logo03', N'~/images/Logo/Logo03.JPG', 0)
INSERT INTO LOGO (TenLogo, DuongDanLogo, Deleted) VALUES (N'Logo04', N'~/images/Logo/Logo04.JPG', 0)
INSERT INTO LOGO (TenLogo, DuongDanLogo, Deleted) VALUES (N'Logo05', N'~/images/Logo/Logo05.JPG', 0)
INSERT INTO LOGO (TenLogo, DuongDanLogo, Deleted) VALUES (N'Logo06', N'~/images/Logo/Logo06.JPG', 0)

--15. BANNERGIAODIEN
INSERT INTO BANNERGIAODIEN (TenBannerGiaoDien, DuongDanBannerGiaoDien, Deleted) VALUES (N'Banner01', N'~/images/Banner/Banner01.jpg', 0)
INSERT INTO BANNERGIAODIEN (TenBannerGiaoDien, DuongDanBannerGiaoDien, Deleted) VALUES (N'Banner02', N'~/images/Banner/Banner02.jpg', 0)
INSERT INTO BANNERGIAODIEN (TenBannerGiaoDien, DuongDanBannerGiaoDien, Deleted) VALUES (N'Banner03', N'~/images/Banner/Banner03.jpg', 0)
INSERT INTO BANNERGIAODIEN (TenBannerGiaoDien, DuongDanBannerGiaoDien, Deleted) VALUES (N'Banner04', N'~/images/Banner/Banner04.jpg', 0)
INSERT INTO BANNERGIAODIEN (TenBannerGiaoDien, DuongDanBannerGiaoDien, Deleted) VALUES (N'Banner05', N'~/images/Banner/Banner05.jpg', 0)
INSERT INTO BANNERGIAODIEN (TenBannerGiaoDien, DuongDanBannerGiaoDien, Deleted) VALUES (N'Banner06', N'~/images/Banner/Banner06.jpg', 0)

--16. CHITIETGIAODIEN
INSERT INTO CHITIETGIAODIEN (TenGiaoDien,		MaBannerGiaoDien,	MaLogo, MaTheme,	Deleted,	MaNguoiDung,	ThoiGianThayDoi)
VALUES						(N'Giao diện 1',	1,					1,		NULL,		0,			1,				'10/18/2010 20:15')