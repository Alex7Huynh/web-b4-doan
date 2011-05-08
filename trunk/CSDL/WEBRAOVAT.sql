----------------------------------------------------------------------------------------------------------------------------------------
--Tao Bang
create database RAO_VAT

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
	TenLogo nchar(50),
	DuongDanLogo varchar(155),	
	Deleted bit,
	CONSTRAINT PK_LOGO PRIMARY KEY (MaLogo)
)

--7. Tao bang BANNERGIAODIEN
Create table BANNERGIAODIEN
(
	MaBannerGiaoDien int identity(1,1),
	TenBannerGiaoDien nchar(50),	
	DuongDanBannerGiaoDien varchar(155),	
	Deleted bit,
	CONSTRAINT PK_BANNERGIAODIEN PRIMARY KEY (MaBannerGiaoDien)
)

--8. Tao bang CHITIETGIAODIEN
Create table CHITIETGIAODIEN
(
	MaChiTietGiaoDien int identity(1,1),
	TenGiaoDien nchar(50),
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
	Thumbnail varchar(155),		
	Deleted bit,	
	CONSTRAINT PK_DANHMUCCHINH PRIMARY KEY (MaDanhMucChinh),	
)

--14. Tao bang DANHMUCCON
Create table DANHMUCCON
(
	MaDanhMucCon int identity(1,1),
	TenDanhMucCon nchar(50),	
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
	Deleted bit,
	CONSTRAINT PK_TINRAOVAT PRIMARY KEY (MaTinRaoVat),
)

--16.1. Tao bang TINRAOVATTHUONG
Create table TINRAOVATTHUONG
(
	MaTinRaoVatThuong int identity(1,1),
	MaTinRaoVat int,
	TieuDe nchar(50),	
	Thumbnail varchar(155),
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
	TieuDe nchar(50),	
	Thumbnail varchar(155),
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
	DongHoDien bit,
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
	
	Thumbnail varchar(155),
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

--17. Tao bang EMAILDANGKYNHANTINRAOVAT
Create table EMAILDANGKYNHANTINRAOVAT
(
	MaEmailDangKyNhanTinRaoVat int identity(1,1),
	EmailNhanTinRaoVat varchar(50),
	ThoiGianDangKy datetime, 
	Deleted bit,
	CONSTRAINT PK_EMAILDANGKYNHANTINRAOVAT PRIMARY KEY (MaEmailDangKyNhanTinRaoVat),	
)

--18. Tao bang CHITIETEMAILDANGKYNHANTINRAOVAT
Create table CHITIETEMAILDANGKYNHANTINRAOVAT
(
	MaEmailDangKyNhanTinRaoVat int identity(1,1),
	NhanTatCaCacTin bit Default 1,
	NhanTheoMucChinh bit Default 0,
	MaDanhMucChinh int,
	NhanTheoMucCon bit Default 0,
	MaDanhMucCon int,
	CONSTRAINT PK_CHITIETEMAILTINRAOVAT PRIMARY KEY (MaEmailDangKyNhanTinRaoVat),
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

--7.1. TINRAOVATTHUONG
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

--8. CHITIETEMAILDANGKYNHANTINRAOVAT
ALTER TABLE CHITIETEMAILDANGKYNHANTINRAOVAT
ADD CONSTRAINT PK_CHITIETEMAILDANGKYNHANTINRAOVAT_EMAILDANGKYNHANTINRAOVAT
FOREIGN KEY (MaEmailDangKyNhanTinRaoVat) 
REFERENCES EMAILDANGKYNHANTINRAOVAT(MaEmailDangKyNhanTinRaoVat)

ALTER TABLE CHITIETEMAILDANGKYNHANTINRAOVAT
ADD CONSTRAINT PK_CHITIETEMAILDANGKYNHANTINRAOVAT_DANHMUCCHINH
FOREIGN KEY (MaDanhMucChinh) 
REFERENCES DANHMUCCHINH(MaDanhMucChinh)

ALTER TABLE CHITIETEMAILDANGKYNHANTINRAOVAT
ADD CONSTRAINT PK_CHITIETEMAILDANGKYNHANTINRAOVAT_DANHMUCCHINH
FOREIGN KEY (MaDanhMucChinh) 
REFERENCES DANHMUCCHINH(MaDanhMucChinh)

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
ADD CONSTRAINT FK_TINRAOVATDALUU_MaTinRaoVat 
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
INSERT INTO LOAINGUOIDUNG (TenLoaiNguoiDung, Deleted) VALUES ( N'Thành viên thường', '0')
INSERT INTO LOAINGUOIDUNG (TenLoaiNguoiDung, Deleted) VALUES ( N'Thành viên VIP', '0')
INSERT INTO LOAINGUOIDUNG (TenLoaiNguoiDung, Deleted) VALUES ( N'Mod', '0')
INSERT INTO LOAINGUOIDUNG (TenLoaiNguoiDung, Deleted) VALUES ( N'Quản trị viên', '0')
INSERT INTO LOAINGUOIDUNG (TenLoaiNguoiDung, Deleted) VALUES ( N'Khách', '0')

--2. NGUOIDUNG
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('N_M_T178', '113456', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	11,	'1',	'10/18/2010 20:15',	'11/18/2010 20:15',1,0)
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('N_M_T179', '113456', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	12,	'1',	'4/5/2011 13:54', '5/5/2011 13:54',1,0)
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('N_M_T177', '113456', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	13,	'1',	'4/6/2011 19:50', '5/6/2011 19:50',1,0)
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('N_M_T176', '113456', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	14,	'1',	'8/7/2010 18:02', '9/7/2010 18:02',1,0)
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('N_M_T175', '113456', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	15,	'1',	'3/17/2011 17:15', '4/17/2011 17:15',1,	0)
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('N_M_T174', '113456', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	16,	'1',	'3/17/2011 18:15', '4/17/2011 18:15',1,	0)
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('N_M_T173', '113456', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	17,	'1',	'4/8/2011 19:41', '5/8/2011 19:41',1,0)
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('N_M_T172', '113456', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	18,	'1',	'4/2/2011 6:59', '5/2/2011 6:59',1,0)
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('N_M_T171', '113456', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	19,	'1',	'4/15/2011 2:59', '5/15/2011 2:59',1,	0)
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
VALUES ('N_M_T170', '113456', 'N_M_T178@yahoo.com',	'11678915102',	N'711 Tạ Quang Bửu,Q.8,Tp.Hồ Chí Minh',	20,	'1',	'4/11/2011 18:59', '5/11/2011 18:59',1,	0)
insert into NGUOIDUNG  (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
values('Hoangtam101','8904xmcvnf','Hoangtam101@gmail.com','0976872096','Ho Chi Minh',1,'1','11/06/2006','11/06/2020',1,0)
insert into NGUOIDUNG  (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
values('Dtn2001','Akdgm13445','gtam101@gmail.com','097345096','Ho Chi Minh',0,'1','10/06/2006','11/06/2020',1,0)
insert into NGUOIDUNG  (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
values('Hoanganh','Hoanganh09','am101@gmail.com','09775662096','Ho Chi Minh',1,'1','08/06/2006','11/06/2020',2,0)
insert into NGUOIDUNG  (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
values('Boysitinh','8904xfdsnf','Hoang101@gmail.com','09686502096','Ho Chi Minh',1,'1','07/06/2006','11/06/2020',1,1)
insert into NGUOIDUNG  (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
values('Langtu007','890fdscvnf','Hoa67876ngtam101@gmail.com','0973568796','Ho Chi Minh',1,'1','09/06/2006','10/06/2020',2,0)
insert into NGUOIDUNG  (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
values('MaBu','8904fsdnf','Ho678angtam101@gmail.com','0974862096','Ho Chi Minh',0,'1','5/06/2006','12/06/2020',1,1)
insert into NGUOIDUNG  (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
values('tn_us','89fsdfmcvnf','Hoa687ngtam101@gmail.com','0983382096','Ho Chi Minh',1,'1','01/06/2006','12/06/2020',1,0)
insert into NGUOIDUNG  (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
values('cuckeoDidong','890fdcvnf','H68767oangtam101@gmail.com','09388802096','Ho Chi Minh',1,'1','03/06/2006','10/06/2020',3,1)
insert into NGUOIDUNG  (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
values('nguyenminhTuan','890fdvnf','H687oangtam101@gmail.com','097872096','Ho Chi Minh',0,'1','02/06/2006','2/06/2020',4,0)
insert into NGUOIDUNG  (TenNguoiDung, MatKhau, Email, DienThoai, DiaChi, MaKichHoatTaiKhoan, TinhTrangKichHoatTaiKhoan, ThoiGianDangKy, ThoiGianHetHan,MaLoaiNguoiDung, Deleted)
values('tranminhtai','89fdcvnf','Hoa38ngtam101@gmail.com','097338496','Ho Chi Minh',1,'1','1/06/2006','1/06/2020',2,1)

--3. LICHSUNGUOIDUNG
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (11, '10/18/2010 20:20', '10/18/2010 20:35')
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (12, '04/05/2011 13:59', '04/05/2011 0:09')
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (13, '04/06/2011 19:59', '04/06/2011 20:05')
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (14, '08/07/2010 18:15', '08/07/2010 18:20')
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (15, '03/17/2011 17:20', '03/17/2011 17:35')
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (16, '03/17/2011 18:20', '03/17/2011 18:35')
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (17, '04/08/2011 19:50', '04/08/2011 19:55')
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (18, '04/02/2011 7:20', '04/02/2011 7:15')
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (19, '04/15/2011 3:15', '04/15/2011 3:20')
INSERT INTO LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) VALUES (20, '04/11/2011 17:05', '04/11/2011 17:15')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (1,'06/04/2011','06/5/2011')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (2,'06/03/2011','06/5/2011')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (3,'06/02/2011','06/5/2011')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (3,'06/14/2011','06/5/2011')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (8,'06/14/2011','06/5/2011')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (9,'06/14/2011','06/5/2011')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (5,'06/14/2011','06/5/2011')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (4,'06/14/2011','06/5/2011')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (6,'06/14/2011','06/5/2011')
insert into LICHSUNGUOIDUNG (MaNguoiDung, ThoiGianDangNhap, ThoiGianDangXuat) values (7,'06/14/2011','06/5/2011')

--4. LICHSUNGUOIDUNGVIPHAM
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(2,1,'06/14/2011',3,0,N'Nhầm chuyên mục')
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(4,2,'06/14/2011',5,0,N'Spam')
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(3,2,'06/14/2011',3,0,N'Nhầm chuyên mục')
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(4,5,'06/14/2011',3,0,N'Nhầm chuyên mục')
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(4,2,'06/14/2011',10,0,N'Post vi rút')
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(2,4,'06/14/2011',3,0,N'Nhầm chuyên mục')
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(5,3,'06/14/2011',3,0,N'Nhầm chuyên mục')
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(3,5,'06/14/2011',10,1,N'Post vi rút')
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(2,3,'06/14/2011',3,1,N'Nhầm chuyên mục')
insert into LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) values(2,4,'06/14/2011',5,0,N'Spam')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (11,13,	'3/4/2009',	3,0,N'Nhầm chuyên mục')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (12,13,	'5/7/2009',	5,1,N'Nhầm chuyên mục')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (11,13,	'7/10/2009',2,0,N'Spam')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (14,13,	'9/12/2009',1,1,N'Vi Phạm Nội Quy')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (16,13,	'11/15/2009',3,0,N'Nhầm chuyên mục')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (14,13,	'1/18/2010',2,1,N'Nhầm chuyên mục')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (15,13,	'3/13/2010',2,0,N'Spam')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (17,13,	'5/16/2010',2,1,N'Nhầm chuyên mục')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (12,13,	'7/19/2010',1,0,N'Chửi thề, nói tục')
INSERT INTO LICHSUNGUOIDUNGVIPHAM (MaNguoiDungViPham, MaNguoiDungBaoCaoViPham, ThoiGianBaoCaoViPham, ThoiGianCanhCao, Deleted, LyDo) VALUES (16,13,	'10/1/2010',3,0,N'Nhầm chuyên mục')

--5. LOAIQUANGCAO
insert into LOAIQUANGCAO (TenLoaiQuangCao) values(N'LoaiQuangCao01')
insert into LOAIQUANGCAO (TenLoaiQuangCao) values(N'LoaiQuangCao02')
insert into LOAIQUANGCAO (TenLoaiQuangCao) values(N'LoaiQuangCao03')
insert into LOAIQUANGCAO (TenLoaiQuangCao) values(N'LoaiQuangCao04')
insert into LOAIQUANGCAO (TenLoaiQuangCao) values(N'LoaiQuangCao05')
insert into LOAIQUANGCAO (TenLoaiQuangCao) values(N'LoaiQuangCao06')
insert into LOAIQUANGCAO (TenLoaiQuangCao) values(N'LoaiQuangCao07')
insert into LOAIQUANGCAO (TenLoaiQuangCao) values(N'LoaiQuangCao08')
insert into LOAIQUANGCAO (TenLoaiQuangCao) values(N'LoaiQuangCao09')
insert into LOAIQUANGCAO (TenLoaiQuangCao) values(N'LoaiQuangCao10')
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao) VALUES (N'Cây cảnh')
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao) VALUES (N'Thú nuôi')
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao) VALUES (N'Chứng khoán')
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao) VALUES (N'Chứng khoán')
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao) VALUES (N'Thủ công mỹ nghệ')
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao) VALUES (N'Thủ công mỹ nghệ')
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao) VALUES (N'Tìm việc')
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao) VALUES (N'Tìm việc')
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao) VALUES (N'Tuyển dụng')
INSERT INTO LOAIQUANGCAO (TenLoaiQuangCao) VALUES (N'Tuyển dụng')

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
VALUES (N'Thú nuôi',	'www.yeuthucung.com',	'4/5/2011 20:54',	'5/5/2011 20:54',	0,	N'Chuyên cung cấp -Ếch con(1000/con)',	12,	12)
INSERT INTO QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
VALUES (N'Chứng khoán',	'http://www.ssi.com.vn',	'4/6/2011 16:50',	'5/6/2011 16:50',	0,	N'Tư vấn mở tài khoản đầu tư Chứng Khoán thị trường Mỹ tại Việt Nam.',	13,	13)
INSERT INTO QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
VALUES (N'Chứng khoán',	'http://www.ssi.com.vn',	'8/7/2010 16:02',	'9/7/2010 16:02',	0,	N'Tư vấn mở tài khoản đầu tư chứng khoán tại FPTS',	14,	14)
INSERT INTO QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
VALUES (N'Thủ công mỹ nghệ',	'www.mynghedua.com',	'3/17/2011 5:15',	'4/17/2011 15:15',	0,	N'GIỎ ĐAN DÂY NHỰA XUẤT KHẨU',	15,	15)
INSERT INTO QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
VALUES (N'Thủ công mỹ nghệ',	'www.mynghedua.com',	'3/17/2011 15:15',	'4/17/2011 15:15',	0,	N'GIỎ ĐAN DÂY NHỰA',	16,	16)
INSERT INTO QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
VALUES (N'Tìm việc',	'www.timviecnhanh.com',	'4/8/2011 13:41',	'5/8/2011 13:41',	0,	N'Tìm việc kế toán',	17,	17)
INSERT INTO QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
VALUES (N'Tìm việc',	'www.timviecnhanh.com',	'4/1/2011 13:59',	'5/1/2011 13:59',	0,	N'SV đại học Ngoại Thương nhận dạy kèm tại nhà',	18,	18)
INSERT INTO QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
VALUES (N'Tuyển dụng',	'http://tuyendung.com',	'4/11/2011 13:59',	'5/11/2011 13:59',	0,	N'Tuyển dụng',	19,	19)
INSERT INTO QUANGCAO (TenQuangCao, Link, ThoiGianDang, ThoiGianHetHan, Deleted, NoiDungQuangCao, MaLoaiQuangCao, MaNguoiDung) 
VALUES (N'Tuyển dụng',	'http://tuyendung.com',	'4/11/2011 11:59',	'5/11/2011 11:59',	0,	N'HCM- tuyển nhân viên làm part time từ 17h20-20h20',	20,	20)

--7. DANHMUCCHINH
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Tất cả', N'~/images/DanhMucChinh/(1).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Thời trang', N'~/images/DanhMucChinh/(2).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Xây dựng - Nội thất – Ngoại thất', N'~/images/DanhMucChinh/(3).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Điện thoại', N'~/images/DanhMucChinh/(4).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Máy vi tính – Laptop', N'~/images/DanhMucChinh/(5).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Điện tử - Kỹ thuật số', N'~/images/DanhMucChinh/(6).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Ô tô', N'~/images/DanhMucChinh/(7).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Xe máy- Xe đạp', N'~/images/DanhMucChinh/(8).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Văn phòng phẩm', N'~/images/DanhMucChinh/(9).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Ẩm thực', N'~/images/DanhMucChinh/(10).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Đồ chơi - Mô hình', N'~/images/DanhMucChinh/(11).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Đào tạo - Giáo dục', N'~/images/DanhMucChinh/(12).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Sức Khỏe - Y tế', N'~/images/DanhMucChinh/(13).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Dụng cụ thể thao', N'~/images/DanhMucChinh/(14).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Du lịch', N'~/images/DanhMucChinh/(15).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Cây cảnh -  Thú nuôi', N'~/images/DanhMucChinh/(16).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Chứng khoán', N'~/images/DanhMucChinh/(17).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Dịch vụ', N'~/images/DanhMucChinh/(18).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Thủ công mỹ nghệ', N'~/images/DanhMucChinh/(19).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Việc làm', N'~/images/DanhMucChinh/(20).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Bất động sản', N'~/images/DanhMucChinh/(21).png',0)
insert into DANHMUCCHINH (TenDanhMucChinh, Thumbnail, Deleted) values(N'Linh tinh', N'~/images/DanhMucChinh/(22).png',0)


--8. DANHMUCCON
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Thời trang nam',2,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Thời trang nữ',2,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Mỹ phẩm',2,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Trang sức',2,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Đồ hóa trang',2,0)

insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Phòng ngủ',3,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Phòng khách',3,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Phòng tắm',3,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Phòng bếp',3,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Phòng làm việc',3,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Đồ thờ cúng',3,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Phong thủy',3,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Sân vườn',3,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Khác',3,0)

insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Nokia',4,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Apple',4,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Samsung',4,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Sony Ericsson',4,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Motorola',4,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'BlackBerry',4,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Vertu',4,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'LG',4,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Hãng khác',4,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Linh kiện',4,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Sim số',4,0)

insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Acer',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Asus',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'HP-Compaq',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Dell',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'IBM-Lenovo',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Apple',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Panasonic',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Toshiba',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Samsung',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Gateway',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Sony',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Logitech',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Hãng khác',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Máy tính bảng',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Máy chiếu-Máy in-Máy scan',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Phần mềm',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Thiết bị mạng',5,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Linh kiện - Phụ kiện',5,0)

insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Máy ảnh – máy quay phim',6,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Máy nghe nhạc',6,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Loa – Karaoke – Âm thanh',6,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Máy chơi game',6,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Máy tính – Kim từ điển',6,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Tivi – Tủ lạnh – Máy điều hòa',6,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Thiết bị nhà bếp',6,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Thiết bị khác',6,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Các thiết bị khác',6,0)

insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Toyota',7,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Ford',7,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Honda',7,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Mitsubishi',7,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'GM Daewoo',7,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Hyundai',7,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Lamborghini',7,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Hãng khác',7,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Phụ tùng - Đồ chơi',7,0)

insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Honda',8,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Suzuki',8,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Yamaha',8,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'SYM',8,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Piaggio',8,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Xe đạp',8,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Hãng khác',8,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Phụ tùng - đồ chơi',8,0)

insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Dụng cụ',9,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Sách',9,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Băng đĩa',9,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Quà tặng',9,0)

insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Nhà hàng - Quán ăn',10,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Dụng cụ nhà bếp',10,0)

insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Nội địa',15,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Nước ngoài',15,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Khách sạn',15,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Vé máy bay, tàu, xe',15,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Thuê xe',15,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Địa điểm vui chơi - giải trí',15,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Dịch vụ khác',15,0)

insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Cây cảnh',16,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Thú nuôi',16,0)

insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Vận chuyển - sửa chữa',18,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Làm đẹp',18,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Giấy tờ - sổ sách',18,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'PR - Tổ chức sự kiện',18,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'In ấn - Quảng cáo',18,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Tư vấn',18,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Khác',18,0)

insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Tìm việc',20,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Tuyển dụng',20,0)

insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Đất đai',11,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Nhà ở',11,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Chung cư - Tập thể',11,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Chung cư cao cấp',11,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Biệt thự',11,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Nhà xưởng - trang trại',11,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'Nhà cho thuê',11,0)
insert into DANHMUCCON (TenDanhMucCon, MaDanhMucChinh, Deleted) values(N'khác',11,0)


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
INSERT INTO TINRAOVAT (ThoiGianDang, ThoiHanLuuTin,	SoLanXem,	MaDiaDiem,	MaNguoiDung,	MaDanhMucCon,	Deleted)
VALUES ('10/18/2010 19:15',	2, 202,	1,	12,	12,	0)
INSERT INTO TINRAOVATTHUONG (MaTinRaoVat, TieuDe,	Thumbnail,	NoiDungTinRaoVat,	Gia,	Deleted)
VALUES (0, 'BÁN CÂY SANH CON 0935.818.711 (A Truyền)',	
	'http://www.vatgia.com/raovat_pictures/1/naa1201713372.jpg',	
	N'Chào các bác !Tại đây chuyên cung cấp tất cả các loại cây cảnh.Đặc biệt cung cấp :cây sanh con,vừng con,mai con...và còn nhiều cây cổ thụ như sanh, khế  ,sưa ,mai ...Mọi chi tiết xin liên hệ đt 0935.818.711 (A Truyền).NHẬN TRỒNG,UỐN CÂY VÀ CHĂM SÓC TẠI VƯỜN.Giá cả thương lượng khi xem hàng.ok',	
	150000,	0)
	
INSERT INTO TINRAOVAT (ThoiGianDang, ThoiHanLuuTin,	SoLanXem,	MaDiaDiem,	MaNguoiDung,	MaDanhMucCon,	Deleted)
VALUES ('4/5/2011 20:54',	4, 70,	2,	11,	11,	0)
INSERT INTO TINRAOVATTHUONG (MaTinRaoVat, TieuDe,	Thumbnail,	NoiDungTinRaoVat,	Gia,	Deleted)
VALUES (1, N'Chuyên cung cấp -Ếch con(1000/con)',	
	'http://www.vatgia.com/raovat_pictures/1/fet1202011149.jpg',	
	N'Chuyên cung cấp -Ếch con(1000/con) -Ếch bố mẹ (400ngàn/cặp),cho đẻ liền ,tùy loại. -Tại Thị trấn Tân Túc Huyện Bình Chánh TPHCM. -LH:A_Nhân:01658404456',	
	150000,	0)

INSERT INTO TINRAOVAT (ThoiGianDang, ThoiHanLuuTin,	SoLanXem,	MaDiaDiem,	MaNguoiDung,	MaDanhMucCon,	Deleted)
VALUES ('4/6/2011 16:50',	4, 8, 3,	13,	13,	0)
INSERT INTO TINRAOVATTHUONG (MaTinRaoVat, TieuDe,	Thumbnail,	NoiDungTinRaoVat,	Gia,	Deleted)
VALUES (2, N'Tư vấn mở tài khoản đầu tư CKTT Mỹ tại Việt Nam.',	
	'http://www.vatgia.com/raovat_pictures/1/naa1201713372.jpg',	
	N'Chúng tôi hỗ trợ Quý nhà đầu tư mở tài khoản giao dịch cổ phiếu trên thị trường Mỹ. Những lợi thế khi tham gia thị trường: - Mở tài khoản đầu tư đơn giản như mở một tài khoản ngân hàng, vốn của Quý nhà đầu tư nằm trong tài khoản ngân hàng của Quý nhà đầu tư tại Việt Nam',	
	150000,	0)
	
--16.2. TINRAOVATBTDONGSAN
INSERT INTO TINRAOVAT (ThoiGianDang, ThoiHanLuuTin,	SoLanXem,	MaDiaDiem,	MaNguoiDung,	MaDanhMucCon,	Deleted)
VALUES ('8/7/2010 16:02',	1, 54, 4,	14,	14,	0)
INSERT INTO TINRAOVATBATDONGSAN (
	MaTinRaoVat,
	TieuDe,	
	Thumbnail,
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
	DongHoDien,
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
	3, 
	N'Bán / Cho Thuê Kho và Đất tại Buôn Mê Thuột',	
	'http://www.vatgia.com/raovat_pictures/1/naa1201713372.jpg',	
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
	
INSERT INTO TINRAOVAT (ThoiGianDang, ThoiHanLuuTin,	SoLanXem,	MaDiaDiem,	MaNguoiDung,	MaDanhMucCon,	Deleted)
VALUES ('28-04-11 12:02',	4, 150, 5,	15,	15,	0)
INSERT INTO TINRAOVATBATDONGSAN (
	MaTinRaoVat,
	TieuDe,	
	Thumbnail,
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
	DongHoDien,
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
	N'Cần bán căn hộ chung cư Mỹ Đức – Lô E – 21 tầng',	
	'http://raovat.com/resize_image.php?f=upload/raovat/raovat_raovat_batdongsan543868.jpg',	
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
INSERT INTO NGANHNGHE
(
	TenNganhNghe
)
VALUES
(
	N'Kế toán/Tài chính'
)
	
--16.3. TINTUYENDUNG
INSERT INTO TINRAOVAT (ThoiGianDang, ThoiHanLuuTin,	SoLanXem,	MaDiaDiem,	MaNguoiDung,	MaDanhMucCon,	Deleted)
VALUES ('30-4-2011 12:02',	30, 2, 6,	16,	16,	0)
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
	
	Thumbnail,
	Deleted
)
VALUES (
	5,
	
	--thong tin nha tuyen dung
	N'Cathay Life Viet Nam',
	N'Tập đoàn tài chính Cathay có trên 45 năm hoạt động trong các lĩnh vực: Bảo hiểm nhân thọ; Bảo hiểm phi nhân thọ: Ngân hàng; Chứng khoán và Bất động sản. Tập đoàn tài chính Cathay được xếp hạng thứ 320 trong danh sách 500 doanh nghiệp lớn nhất thế giới năm 2009, Tập đoàn tài chính Cathay là một trong những công ty tài chính vững mạnh và lớn nhất Đài Loan với tổng số tài sản ước tính đến năm 2008 lên đến 121 tỉ đôla Mỹ. ',
	N'	http://cathaylife.com.vn/vn_home.htm',
	N'Công',
	N'266 Đội Cấn Ba Đình Hà Nội',
	N'0906373345',
	N'congtr31@gmail.com',
	
	--thong tin cong viec
	0,
	N'Nhân Viên Kinh Doanh + NV Văn Phòng',
	N'Hỗ trợ bộ phận tuyển dụng tìm kiếm ứng viên theo yêu cầu của Trưởng phòng, - Sắp xếp các cuộc hẹn cho ứng viên, - Chuẩn bị cho ứng viên dự phỏng vấn, - Sàng lọc ứng viên qua phỏng vấn trực tiếp, - Nhập dữ liệu ứng viên vào hệ thống, quản lý hồ sơ nhân viên, - Hỗ trợ Trưởng Phòng các giấy tờ nhân sự và hành chính bán hàng.',
	N'Không đòi hỏi kinh nghiệm',
	N'Hành chánh',
	3,
	3000000,
	N'Không',
	0,
	N'Cơ hội được làm việc ổn định, lâu dài. Môi trường làm việc năng động, chuyên nghiệp, cơ hội thăng tiến rõ ràng. - Chế độ lương, thưởng cao, phù hợp khả năng, năng lực. - Các chế độ lao động khác theo Quy chế của công ty. - Nghỉ Thứ 7, Chủ Nhật và các ngày lễ khác. - Được huấn luyện các kỹ năng nghiệp vụ.',
	N'01 bản phô tô bằng cấp có liên quan
	Lưu ý:
	- Chỉ phỏng vấn những ứng viên có hồ sơ được công chứng đầy đủ
	- Ưu tiên ứng viên nộp hồ sơ sớm
	- Liên hệ trước với người tuyển dụng để được hẹn nộp hồ sơ và phỏng vấn Hạn nộp hồ sơ: 0906373345 gặp Mr Công',
	'20-5-2011 15:30',
	
	N'http://raovat.com/vieclam/imagesv2/top_logo.jpg',
	0
)

--16.4. HOSOTUYENDUNG
INSERT INTO TINRAOVAT (ThoiGianDang, ThoiHanLuuTin,	SoLanXem,	MaDiaDiem,	MaNguoiDung,	MaDanhMucCon,	Deleted)
VALUES ('21-3-2011 12:02',	7, 62, 7,	17,	17,	0)
INSERT INTO HOSOTUYENDUNG
(
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
	6,
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
	N'Chuyên Viên',
	3,
	N'Dệt Thái Tuấn',
	N'Tổ trưởng',
	N'QUẢN LÝ SẢN XUẤT (TỔ TRƯỞNG)',
	N'ĐIỀU HÀNH DOANH NGHIỆP',
	N'',
	N'',
	N'',
	
	0
)

--17. EMAILDANGKYNHANTINRAOVAT
INSERT INTO EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T178@yahoo.com',	'10/18/2010 20:15',	'0')
INSERT INTO EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T179@yahoo.com',	'4/5/2011 13:54',	'0')
INSERT INTO EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T177@yahoo.com',	'4/6/2011 19:50',	'0')
INSERT INTO EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T176@yahoo.com',	'8/7/2010 18:02',	'0')
INSERT INTO EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T175@yahoo.com',	'3/17/2011 17:15',	'0')
INSERT INTO EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T174@yahoo.com',	'3/17/2011 18:15',	'0')
INSERT INTO EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T173@yahoo.com',	'4/8/2011 19:41',	'0')
INSERT INTO EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T172@yahoo.com',	'4/2/2011 6:59',	'0')
INSERT INTO EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T171@yahoo.com',	'4/15/2011 2:59',	'0')
INSERT INTO EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) VALUES ('N_M_T170@yahoo.com',	'4/11/2011 18:59',	'0')
insert into EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('Hoangtam.cntt@gmail.com','03/07/2009',0)
insert into EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('boysitinh@yahoo.com','09/02/2010',0)
insert into EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('Hotboy2010@gmail.com','05/05/2010',0)
insert into EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('Phamhoangan@yahoo.com','01/01/2011',0)
insert into EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('langtu09@yahoo.com','02/08/2010',0)
insert into EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('BoyPro@gmail.com','03/11/2009',0)
insert into EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('NusinhChayLinhTinh@yahoo.com','10/12/2010',1)
insert into EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('BacLieuCaoThu@gmail.com','05/12/2010',1)
insert into EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('khocviai@yahoo.com','01/12/2008',0)
insert into EMAILDANGKYNHANTINRAOVAT (EmailNhanTinRaoVat, ThoiGianDangKy, Deleted) values ('TienKhongLaVanDe@gmail.com','02/08/2010',1)

--18
INSERT INTO CHITIETEMAILDANGKYNHANTINRAOVAT (NhanTatCaCacTin, NhanTheoMucChinh, MaDanhMucChinh, NhanTheoMucCon, MaDanhMucCon) VALUES (0, 1, 5, 0, 0)
INSERT INTO CHITIETEMAILDANGKYNHANTINRAOVAT (NhanTatCaCacTin, NhanTheoMucChinh, MaDanhMucChinh, NhanTheoMucCon, MaDanhMucCon) VALUES (0, 0, 0, 1, 6)
INSERT INTO CHITIETEMAILDANGKYNHANTINRAOVAT (NhanTatCaCacTin, NhanTheoMucChinh, MaDanhMucChinh, NhanTheoMucCon, MaDanhMucCon) VALUES (0, 1, 7, 0, 0)
INSERT INTO CHITIETEMAILDANGKYNHANTINRAOVAT (NhanTatCaCacTin, NhanTheoMucChinh, MaDanhMucChinh, NhanTheoMucCon, MaDanhMucCon) VALUES (0, 1, 9, 0, 0)
INSERT INTO CHITIETEMAILDANGKYNHANTINRAOVAT (NhanTatCaCacTin, NhanTheoMucChinh, MaDanhMucChinh, NhanTheoMucCon, MaDanhMucCon) VALUES (0, 0, 0, 1, 1)
INSERT INTO CHITIETEMAILDANGKYNHANTINRAOVAT (NhanTatCaCacTin, NhanTheoMucChinh, MaDanhMucChinh, NhanTheoMucCon, MaDanhMucCon) VALUES (0, 1, 21, 0, 0)
INSERT INTO CHITIETEMAILDANGKYNHANTINRAOVAT (NhanTatCaCacTin, NhanTheoMucChinh, MaDanhMucChinh, NhanTheoMucCon, MaDanhMucCon) VALUES (0, 1, 2, 0, 0)
INSERT INTO CHITIETEMAILDANGKYNHANTINRAOVAT (NhanTatCaCacTin, NhanTheoMucChinh, MaDanhMucChinh, NhanTheoMucCon, MaDanhMucCon) VALUES (0, 0, 0, 1, 4)
INSERT INTO CHITIETEMAILDANGKYNHANTINRAOVAT (NhanTatCaCacTin, NhanTheoMucChinh, MaDanhMucChinh, NhanTheoMucCon, MaDanhMucCon) VALUES (0, 0, 0, 1, 6)
INSERT INTO CHITIETEMAILDANGKYNHANTINRAOVAT (NhanTatCaCacTin, NhanTheoMucChinh, MaDanhMucChinh, NhanTheoMucCon, MaDanhMucCon) VALUES (0, 0, 0, 1, 9)
INSERT INTO CHITIETEMAILDANGKYNHANTINRAOVAT (NhanTatCaCacTin, NhanTheoMucChinh, MaDanhMucChinh, NhanTheoMucCon, MaDanhMucCon) VALUES (0, 1, 14, 0, 0)


--19. BAITRALOI
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (11,	N'Up',	'2/3/2009',	0, 11)
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (11,	N'Up nè',	'5/6/2008',	0, 12)
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (13,	N'Up tiếp',	'4/1/2009',0, 1)
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (14,	N'Sẽ tới chọn một bộ',	'2/3/2009',	0, 13)
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (15,	N'Up',	'5/6/2008',0, 4)
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (16,	N'good',	'4/1/2009',	0, 6)
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (17,	N'Up dùm cho bạn',	'2/3/2009',	0, 9)
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (18,	N'thanks',	'5/6/2008',	0, 8)
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (19,	N'Bạn có bảo hành không vậy',	'4/1/2009',	0, 8)
INSERT INTO BAITRALOI (MaTinRaoVat,	NoiDungTraLoi,	ThoiGianTraLoi,	Deleted,	MaNguoiDung) VALUES (20,	N'Up',	'2/3/2009',	0, 3)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (1,N'Up','04/04/2011',0,1)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (1,N'Up nè','02/03/2011',0,11)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (1,N'Up tiếp','10/04/2011',0,14)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (1,N'Sẽ tới chọn một bộ','01/04/2011',0,16)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (5,N'Up','02/02/2011',0,19)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (3,N'good','04/04/2011',0,11)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (7,N'Up dùm cho bạn','02/03/2011',0,5)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (1,N'thanks','10/04/2011',0,8)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (3,N'Bạn có bảo hành không vậy','01/04/2011',0,1)
insert into BAITRALOI (MaTinRaoVat, NoiDungTraLoi,  ThoiGianTraLoi, Deleted,	MaNguoiDung) values (1,N'Up','02/02/2011',0,12)

--20. LIKED
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (11,	1,	'2/4/2011',	0, null)
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (12,	2,	'2/5/2011',	0, null)
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (13,	3,	'2/6/2011',	0, null)
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (14,	4,	'2/7/2011',	0, null)
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (15,	5,	'2/8/2011',	0, null)
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (16,	6,	'2/9/2011',	0, null)
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (17,	7,	'2/10/2011',0, null)
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (18,	8,	'2/11/2011',0, null)
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (19,	9,	'2/12/2011',0, null)
INSERT INTO LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) VALUES (20,	10,	'2/13/2011',0, null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (1,11,'04/04/2011',0,null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (2,12,'02/03/2011',0,null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (3,13,'05/04/2011',0,null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (4,14,'06/04/2011',0,null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (5,15,'12/04/2011',0,null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (6,16,'11/04/2011',0,null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (7,17,'03/03/2011',0,null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (8,18,'07/04/2011',0,null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (9,19,'06/03/2011',0,null)
insert into LIKED (MaTinRaoVat,	MaNguoiDung,	ThoiGianLike,	Deleted,	MaBaiTraLoi) values (10,20,'07/04/2011',0,null)

--11. TINRAOVATDALUU
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (11,	11,	'10/18/2010 19:15',	0)
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (12,	12,	'4/5/2011 20:54',	0)
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (13,	13,	'4/6/2011 16:50',	0)
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (14,	14,	'8/7/2010 16:02',	0)
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (15,	15,	'3/17/2011 15:15',	0)
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (16,	16,	'3/17/2011 15:15',	0)
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (17,	17,	'4/8/2011 13:41',	0)
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (18,	18,	'4/1/2011 13:59',	0)
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (19,	19,	'4/11/2011 13:59',	0)
INSERT INTO TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) VALUES (20,	20,	'4/11/2011 11:59',	0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (1,1,'04/04/2011',0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (2,2,'04/04/2011',0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (3,3,'05/04/2011',0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (4,4,'01/04/2011',0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (5,5,'04/02/2011',0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (6,6,'10/04/2011',0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (7,7,'09/04/2011',0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (8,8,'09/04/2011',0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (9,9,'08/04/2011',0)
insert into TINRAOVATDALUU (MaNguoiDung,	MaTinRaoVat,	ThoiGianLuu,	Deleted) values (10,10,'07/06/2011',0)


--12. TINNHAN
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (11,	12,	N'Reply',	N'Xin hỏi mua cây cảnh',	'10/18/2010 20:20',	1,	0)
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (12,	13,	N'Reply',	N'Xin hỏi mua thú nuôi',	'4/5/2011 13:59',	1,	0)
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (13,	14,	N'Reply',	N'Xin tư vấn về chứng khoán',	'4/6/2011 19:59',	1,	0)
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (14,	15,	N'Reply',	N'Xin tư vấn về chứng khoán',	'8/7/2010 18:15',	0,	0)
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (15,	16,	N'Reply',	N'Xin hỏi mua hàng thủ công mỹ nghệ',	'3/17/2011 17:20',	0,	0)
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (16,	17,	N'Reply',	N'Xin hỏi mua hàng thủ công mỹ nghệ',	'3/17/2011 18:20',1,	0)
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (17,	18,	N'Reply',	N'Xin tư vấn việc làm',	'4/8/2011 19:50',	1,	0)
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (18,	19,	N'Reply',	N'Xin tư vấn việc làm',	'4/2/2011 7:20',	1,	0)
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (19,	20,	N'Reply',	N'Xin tư vấn tìm việc',	'4/15/2011 3:15',	0,	0)
INSERT INTO TINNHAN (MaNguoiDung,	MaNguoiNhanTin,	TieuDeTinNhan,	NoiDungTinNhan,	ThoiGianNhanTin,	Readed,	Deleted) 
VALUES (20,	11,	N'Reply',	N'Xin tư vấn tìm việc',	'4/11/2011 17:05',	0,	0)
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
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted) VALUES (11, null, '2/3/2011',	0)
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted) VALUES (12, null, '3/4/2009',	0)
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted) VALUES (13, null, '5/6/2008',	0)
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted) VALUES (14, null, '2/3/2011',	0)
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted) VALUES (null, 15, '5/6/2009',	0)
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted) VALUES (null, 16, '2/3/2018',	0)
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted) VALUES (null, 17, '2/3/2011',	0)
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted) VALUES (18, null, '3/4/2009',0)
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted) VALUES (19, null, '5/6/2008',	0)
INSERT INTO LICHSUTINRAOVATVIPHAM (MaTinRaoVatViPham,	MaNguoiDungBaoCaoViPham,	ThoiGianBaoCaoViPham,	Deleted) VALUES (20, null, '2/3/2011',    0)