create database HotelManagement
go
use HotelManagement

create table tbl_HotelRoom(
	ID_R int primary key,
	Ten_R nvarchar(20),
	Loai_R nvarchar(20),
	SoGiuong_R tinyint,
	Gia_R money
)
go
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(201,N'Phòng T2-201',N'Standard',1,600000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(202,N'Phòng T2-202',N'Standard',1,600000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(203,N'Phòng T2-203',N'Superior',1,800000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(204,N'Phòng T2-204',N'Standard',2,950000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(205,N'Phòng T2-205',N'Standard',1,600000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(301,N'Phòng T3-301',N'Standard',1,600000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(302,N'Phòng T3-302',N'Superior',1,800000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(303,N'Phòng T3-303',N'Standard',2,950000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(304,N'Phòng T3-304',N'Standard',1,600000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(305,N'Phòng T3-305',N'Deluxe',1,1200000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(401,N'Phòng T4-401',N'Standard',1,600000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(402,N'Phòng T4-402',N'Deluxe',2,1450000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(403,N'Phòng T4-403',N'Standard',1,600000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(404,N'Phòng T4-404',N'Standard',1,600000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(405,N'Phòng T4-405',N'Suite',2,1850000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(501,N'Phòng T5-501',N'Standard',1,600000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(502,N'Phòng T5-502',N'Standard',1,600000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(503,N'Phòng T5-503',N'Deluxe',1,1200000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(504,N'Phòng T5-504',N'Superior',1,800000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(505,N'Phòng T5-505',N'Superior',2,1100000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(601,N'Phòng T6-601',N'Standard',1,600000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(602,N'Phòng T6-602',N'Superior',1,600000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(603,N'Phòng T6-603',N'Standard',1,600000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(604,N'Phòng T6-604',N'Superior',1,800000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(605,N'Phòng T6-605',N'Deluxe',2,1450000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(701,N'Phòng T7-701',N'Standard',1,600000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(702,N'Phòng T7-702',N'Standard',1,600000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(703,N'Phòng T7-703',N'Standard',1,600000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(704,N'Phòng T7-704',N'Superior',1,800000)
Insert into tbl_HotelRoom(ID_R,Ten_R,Loai_R,SoGiuong_R,Gia_R) values(705,N'Phòng T7-705',N'Superior',2,1100000)

--Khách Hàng
create table tbl_KH(
	ID_KH int primary key,
	Ten_KH nvarchar(20),
	DC_KH nvarchar(30),
	SDT_KH varchar(20),	
)
go
Insert into tbl_KH(ID_KH,Ten_KH,DC_KH,SDT_KH) values(2551,N'Hoàng Phương Mai',N'Hà Nội',N'0904864564')
Insert into tbl_KH(ID_KH,Ten_KH,DC_KH,SDT_KH) values(3658,N'Thổ Văn Tả',N'Bắc Giang',N'0906967533')
Insert into tbl_KH(ID_KH,Ten_KH,DC_KH,SDT_KH) values(6854,N'Lý Thất Dạ',N'Kon Tum',N'0904879463')
Insert into tbl_KH(ID_KH,Ten_KH,DC_KH,SDT_KH) values(4587,N'Bùi Minh Đức',N'Thái Bình',N'0904834874')
Insert into tbl_KH(ID_KH,Ten_KH,DC_KH,SDT_KH) values(6300,N'Hoàng Nhật Tân',N'Hà Tĩnh',N'0909854534')
Insert into tbl_KH(ID_KH,Ten_KH,DC_KH,SDT_KH) values(5230,N'Nguyễn Khắc Cháng',N'Hà Nội 2',N'0904898560')
Insert into tbl_KH(ID_KH,Ten_KH,DC_KH,SDT_KH) values(2034,N'Nguyễn Duy Việt',N'Nghệ An',N'0906987251')
Insert into tbl_KH(ID_KH,Ten_KH,DC_KH,SDT_KH) values(6012,N'Trần Duy Chinh',N'Nam Định',N'0902543577')
Insert into tbl_KH(ID_KH,Ten_KH,DC_KH,SDT_KH) values(6024,N'Trần Thị Liên',N'TP Hồ Chí Minh',N'0909685224')
Insert into tbl_KH(ID_KH,Ten_KH,DC_KH,SDT_KH) values(6482,N'Trần Công Đại',N'Bắc Ninh',N'0906088493')
go

--Phòng đã đặt
create table tbl_BookedRoom(
	ID_BK int primary key,
	ID_R int,
	ID_KH int,
	NgayNhan date,
	NgayTra date,
	bkstatus bit,
	constraint KN_ID_R_BK foreign key(ID_R) references tbl_HotelRoom(ID_R),
	constraint KN_ID_KH_BK foreign key(ID_KH) references tbl_KH(ID_KH)
)
go
Insert into tbl_BookedRoom(ID_BK,ID_R,ID_KH,NgayNhan,NgayTra,bkstatus) values(1001,502,6012,'04/25/2022','04/27/2022',1)
Insert into tbl_BookedRoom(ID_BK,ID_R,ID_KH,NgayNhan,NgayTra,bkstatus) values(1002,601,5230,'04/27/2022','04/30/2022',1)
Insert into tbl_BookedRoom(ID_BK,ID_R,ID_KH,NgayNhan,NgayTra,bkstatus) values(1003,305,4587,'04/28/2022','04/30/2022',1)
Insert into tbl_BookedRoom(ID_BK,ID_R,ID_KH,NgayNhan,NgayTra,bkstatus) values(1004,403,6482,'04/29/2022','04/30/2022',1)
Insert into tbl_BookedRoom(ID_BK,ID_R,ID_KH,NgayNhan,NgayTra,bkstatus) values(1005,204,6024,'04/30/2022','05/02/2022',1)
Insert into tbl_BookedRoom(ID_BK,ID_R,ID_KH,NgayNhan,NgayTra,bkstatus) values(1006,404,6012,'04/30/2022','05/05/2022',1)
Insert into tbl_BookedRoom(ID_BK,ID_R,ID_KH,NgayNhan,NgayTra,bkstatus) values(2001,205,6854,'04/30/2022','05/03/2022',1)
Insert into tbl_BookedRoom(ID_BK,ID_R,ID_KH,NgayNhan,NgayTra,bkstatus) values(2002,402,2551,'05/01/2022','05/02/2022',1)
Insert into tbl_BookedRoom(ID_BK,ID_R,ID_KH,NgayNhan,NgayTra,bkstatus) values(2003,304,3658,'05/02/2022','05/04/2022',1)
Insert into tbl_BookedRoom(ID_BK,ID_R,ID_KH,NgayNhan,NgayTra,bkstatus) values(2004,503,2034,'05/05/2022','05/07/2022',1)
Insert into tbl_BookedRoom(ID_BK,ID_R,ID_KH,NgayNhan,NgayTra,bkstatus) values(2005,701,6300,'05/06/2022','05/10/2022',1)

go

--Nhân viên
create table tbl_NV(
	ID_NV varchar(6) primary key,
	Ho_NV nvarchar(20),
	Ten_NV nvarchar(10),
	CCCD_NV char(12),
	ChucVu nvarchar(30),
	Luong money,
	GT nvarchar(10),
	DC_NV nvarchar(30),
	SDT_NV varchar(10)
)
go
Insert into tbl_NV(ID_NV,Ho_NV,Ten_NV,CCCD_NV,ChucVu,Luong,GT,DC_NV,SDT_NV) values('nv01',N'Trần Thị Thu',N'Phương',152654896570,N'Quản Lý',7000000,N'Nữ',N'Cà Mau',N'0904474544')
Insert into tbl_NV(ID_NV,Ho_NV,Ten_NV,CCCD_NV,ChucVu,Luong,GT,DC_NV,SDT_NV) values('nv02',N'Bùi Minh',N'Đức',189642301040,N'Nhân Viên Vệ Sinh',3000000,N'Nam',N'Thái Bình',N'0907372351')
Insert into tbl_NV(ID_NV,Ho_NV,Ten_NV,CCCD_NV,ChucVu,Luong,GT,DC_NV,SDT_NV) values('nv03',N'Hoàng Nhật',N'Tân',102354145570,N'Lễ Tân',4500000,N'Nữ',N'Hà Tĩnh',N'0907864582')
Insert into tbl_NV(ID_NV,Ho_NV,Ten_NV,CCCD_NV,ChucVu,Luong,GT,DC_NV,SDT_NV) values('nv04',N'Trần Công',N'Đại',169853400524,N'Quản Lý',8000000,N'Nam',N'Bắc Ninh',N'0903348697')
Insert into tbl_NV(ID_NV,Ho_NV,Ten_NV,CCCD_NV,ChucVu,Luong,GT,DC_NV,SDT_NV) values('nv05',N'Nguyễn Khắc',N'Cháng',112048965701,N'Giám Đốc',1000000,N'Nam',N'Hà Tây',N'0969630128')
Insert into tbl_NV(ID_NV,Ho_NV,Ten_NV,CCCD_NV,ChucVu,Luong,GT,DC_NV,SDT_NV) values('nv06',N'Trần Thị Thanh',N'Trúc',139853400478,N'Nhân Viên Dịch Vụ',6000000,N'Nữ',N'Bắc Ninh',N'0905630421')
Insert into tbl_NV(ID_NV,Ho_NV,Ten_NV,CCCD_NV,ChucVu,Luong,GT,DC_NV,SDT_NV) values('nv07',N'Trần Thị Thanh',N'Vân',169825471520,N'Lễ Tân',4000000,N'Nữ',N'Nghệ An',N'0904821530')
Insert into tbl_NV(ID_NV,Ho_NV,Ten_NV,CCCD_NV,ChucVu,Luong,GT,DC_NV,SDT_NV) values('nv08',N'Trần Thị',N'Thảo',169858421520,N'Thu Ngân',8000000,N'Nữ',N'Nghệ An',N'0904842350')
Insert into tbl_NV(ID_NV,Ho_NV,Ten_NV,CCCD_NV,ChucVu,Luong,GT,DC_NV,SDT_NV) values('nv09',N'Phạm Văn',N'Vân',135245474254,N'Thu Ngân',7500000,N'Nam',N'Nghệ An',N'0904856531')
go

--Hóa đơn
create table tbl_HD(
	ID_HD int primary key,
	ID_BK int,
	ID_NV varchar(6),
	CheckinDate date,
	CheckinTime  time,
	CheckoutDate date,
	CheckoutTime time,
	SoDem tinyint,
	hdstatus bit,
	constraint KN_ID_BK_HD foreign key(ID_BK) references tbl_BookedRoom(ID_BK),
	constraint KN_ID_NV_HD foreign key(ID_NV) references tbl_NV(ID_NV)
)
go
Insert into tbl_HD(ID_HD,ID_BK,ID_NV,CheckinDate,CheckinTime,CheckoutDate,CheckoutTime,SoDem,hdstatus) values(1100,1001,'nv03','04/25/2022', '13:27','04/27/2022', '10:24',2,1)
Insert into tbl_HD(ID_HD,ID_BK,ID_NV,CheckinDate,CheckinTime,CheckoutDate,CheckoutTime,SoDem,hdstatus) values(1101,1002,'nv07','04/27/2022','18:32','04/30/2022','08:58' ,3,1)
Insert into tbl_HD(ID_HD,ID_BK,ID_NV,CheckinDate,CheckinTime,CheckoutDate,CheckoutTime,SoDem,hdstatus) values(1102,1003,'nv07','04/28/2022','15:24','04/30/2022','12:30',2,1)
Insert into tbl_HD(ID_HD,ID_BK,ID_NV,CheckinDate,CheckinTime,CheckoutDate,CheckoutTime,SoDem,hdstatus) values(1103,1004,'nv03','04/29/2022','12:33','04/30/2022','10:24',1,1)
Insert into tbl_HD(ID_HD,ID_BK,ID_NV,CheckinDate,CheckinTime,CheckoutDate,CheckoutTime,SoDem,hdstatus) values(1104,1005,'nv07','04/30/2022','12:21','05/02/2022','07:30',2,1)
Insert into tbl_HD(ID_HD,ID_BK,ID_NV,CheckinDate,CheckinTime,CheckoutDate,CheckoutTime,SoDem,hdstatus) values(1105,1006,'nv03','04/30/2022','12:15','05/05/2022','10:21',5,1)
Insert into tbl_HD(ID_HD,ID_BK,ID_NV,CheckinDate,CheckinTime,CheckoutDate,CheckoutTime,SoDem,hdstatus) values(1106,2001,'nv03','04/30/2022','16:25','05/03/2022','11:15',3,1)
Insert into tbl_HD(ID_HD,ID_BK,ID_NV,CheckinDate,CheckinTime,CheckoutDate,CheckoutTime,SoDem,hdstatus) values(1107,2002,'nv07','05/01/2022','12:10','05/02/2022','12:30',1,1)
Insert into tbl_HD(ID_HD,ID_BK,ID_NV,CheckinDate,CheckinTime,CheckoutDate,CheckoutTime,SoDem,hdstatus) values(1108,2003,'nv03','05/02/2022','19:07','05/04/2022','09:04',2,1)
Insert into tbl_HD(ID_HD,ID_BK,ID_NV,CheckinDate,CheckinTime,CheckoutDate,CheckoutTime,SoDem,hdstatus) values(1109,2004,'nv07','05/05/2022','17:30','05/07/2022','10:24',2,1)
Insert into tbl_HD(ID_HD,ID_BK,ID_NV,CheckinDate,CheckinTime,CheckoutDate,CheckoutTime,SoDem,hdstatus) values(1110,2005,'nv07','05/06/2022','11:54','05/10/2022','13:30',4,1)
--go

--Dịch vụ
create table tbl_DV(
	ID_DV int primary key,
	Ten_DV nvarchar(30),
	SL_DV tinyint,
	Gia_DV money,
	GhiChu_DV nvarchar(100)
)
go
Insert into tbl_DV(ID_DV,Ten_DV,Gia_DV,GhiChu_DV) values(0000,N'Không sử dụng dịch vụ',0,N' ')
Insert into tbl_DV(ID_DV,Ten_DV,Gia_DV,GhiChu_DV) values(0001,N'Bể bơi',100000,N'')
Insert into tbl_DV(ID_DV,Ten_DV,Gia_DV,GhiChu_DV) values(0002,N'Spa',500000,N'')
Insert into tbl_DV(ID_DV,Ten_DV,Gia_DV,GhiChu_DV) values(0003,N'Đặt xe',100000,N'Theo yêu cầu của khách hàng')
Insert into tbl_DV(ID_DV,Ten_DV,Gia_DV,GhiChu_DV) values(0004,N'Đặt tiệc',5000000,N'Sự kiện: sinh nhật, cầu hôn, tiệc cưới...')
Insert into tbl_DV(ID_DV,Ten_DV,Gia_DV,GhiChu_DV) values(0005,N'Giặt, ủi quần áo',30000,N'Theo trọng lượng(kg)')
Insert into tbl_DV(ID_DV,Ten_DV,Gia_DV,GhiChu_DV) values(0006,N'Gym',200000,N'Tầng 1 phòng 103')
Insert into tbl_DV(ID_DV,Ten_DV,Gia_DV,GhiChu_DV) values(0007,N'Trông trẻ',500000,N'Đón trẻ từ 8 giờ sáng, trả trẻ lúc 6 giờ tối')
Insert into tbl_DV(ID_DV,Ten_DV,Gia_DV,GhiChu_DV) values(0008,N'Thuê xe tự lái',5000000,N'Khách chỉ được thuê xe khi vẫn đang trong thời gian sử dụng phòng')
Insert into tbl_DV(ID_DV,Ten_DV,Gia_DV,GhiChu_DV) values(0009,N'Đặt vé du lịch',100000,N'Đặt vé và giá vé sẽ thanh toán trong chi tiết hóa đơn')
Insert into tbl_DV(ID_DV,Ten_DV,Gia_DV,GhiChu_DV) values(0010,N'Ăn Sáng',100000,N'')
Insert into tbl_DV(ID_DV,Ten_DV,Gia_DV,GhiChu_DV) values(0011,N'Ăn Trưa',200000,N'')
Insert into tbl_DV(ID_DV,Ten_DV,Gia_DV,GhiChu_DV) values(0012,N'Ăn Tối',200000,N'')
Insert into tbl_DV(ID_DV,Ten_DV,Gia_DV,GhiChu_DV) values(0013,N'Nước uống trong tủ lạnh',30000,N'Chai')
Insert into tbl_DV(ID_DV,Ten_DV,Gia_DV,GhiChu_DV) values(0014,N'Snack',30000,N'Gói')
Insert into tbl_DV(ID_DV,Ten_DV,Gia_DV,GhiChu_DV) values(0015,N'Coffee',30000,N'')
go

-- Chi tiết hóa đơn(dịch vụ)
create table tbl_ChiTietHD_DV(
	ID_HD int not null,
	ID_DV int not null,
	NgayDung date,
	SoLuong tinyint,
	GhiChu nvarchar(100),
	DenBu int,
	primary key(ID_HD,ID_DV),
	constraint KN_ID_HD_CT foreign key(ID_HD) references tbl_HD(ID_HD),
	constraint KN_ID_DV_CT foreign key(ID_DV) references tbl_DV(ID_DV)
)
go
Insert into tbl_ChiTietHD_DV(ID_HD,ID_DV,NgayDung,SoLuong,GhiChu,DenBu) values(1100,0011,'04/26/2022',1,N' ',0)
Insert into tbl_ChiTietHD_DV(ID_HD,ID_DV,NgayDung,SoLuong,GhiChu,DenBu) values(1100,0005,'04/26/2022',1,N' ',0)
Insert into tbl_ChiTietHD_DV(ID_HD,ID_DV,NgayDung,SoLuong,GhiChu,DenBu) values(1100,0009,'04/27/2022',3,N'Đặt vé du lịch Sapa',0)
Insert into tbl_ChiTietHD_DV(ID_HD,ID_DV,NgayDung,SoLuong,GhiChu,DenBu) values(1101,0000,'04/30/2022',1,N' ',0)
Insert into tbl_ChiTietHD_DV(ID_HD,ID_DV,NgayDung,SoLuong,GhiChu,DenBu) values(1102,0003,'04/28/2022',1,N' ',0)
Insert into tbl_ChiTietHD_DV(ID_HD,ID_DV,NgayDung,SoLuong,GhiChu,DenBu) values(1102,0013,'04/29/2022',2,N' ',0)
Insert into tbl_ChiTietHD_DV(ID_HD,ID_DV,NgayDung,SoLuong,GhiChu,DenBu) values(1103,0005,'04/29/2022',1,N' ',0)
Insert into tbl_ChiTietHD_DV(ID_HD,ID_DV,NgayDung,SoLuong,GhiChu,DenBu) values(1103,0014,'04/30/2022',1,N' ',0)
Insert into tbl_ChiTietHD_DV(ID_HD,ID_DV,NgayDung,SoLuong,GhiChu,DenBu) values(1104,0004,'05/01/2022',1,N'Đặt tiệc cưới',0)
Insert into tbl_ChiTietHD_DV(ID_HD,ID_DV,NgayDung,SoLuong,GhiChu,DenBu) values(1104,0012,'05/01/2022',1,N'  ',0)
Insert into tbl_ChiTietHD_DV(ID_HD,ID_DV,NgayDung,SoLuong,GhiChu,DenBu) values(1105,0002,'05/01/2022',1,N' ',0)
Insert into tbl_ChiTietHD_DV(ID_HD,ID_DV,NgayDung,SoLuong,GhiChu,DenBu) values(1105,0008,'05/02/2022',1,N' ',0)
Insert into tbl_ChiTietHD_DV(ID_HD,ID_DV,NgayDung,SoLuong,GhiChu,DenBu) values(1106,0007,'04/25/2021',1,N'Trẻ ngoan, lần sau anh chị đừng cho cháu đến, Vỡ 3 cái bình hoa: 300000',300000)
Insert into tbl_ChiTietHD_DV(ID_HD,ID_DV,NgayDung,SoLuong,GhiChu,DenBu) values(1107,0003,'05/02/2022',1,N'Xe mui trần',0)
Insert into tbl_ChiTietHD_DV(ID_HD,ID_DV,NgayDung,SoLuong,GhiChu,DenBu) values(1108,0001,'05/03/2022',1,N' ',0)
Insert into tbl_ChiTietHD_DV(ID_HD,ID_DV,NgayDung,SoLuong,GhiChu,DenBu) values(1110,0006,'05/08/2022',1,N' ',0)
go

--Khách hàng tại phòng
create table tbl_KH_stay(
	ID_HD int not null,
	Ten_KH_stay nvarchar(30),
	CCCD_KH_stay varchar(20),
	NgaySinh date,
	QuocTich nvarchar(20),
	constraint KN_ID_HD_KHS foreign key(ID_HD) references tbl_HD(ID_HD)
)
go
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1100,N'Hoàng Phương Mai',N'10204864564','08/25/2002',N'Việt Nam')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1100,N'Thổ Văn Tả',N'002306967533','02/15/1992',N'Việt Nam')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1101,N'Lý Thất Dạ',N'010904879463','09/02/1997',N'Việt Nam')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1102,N'Bùi Minh Đức',N'002904834874','04/01/2001',N'Việt Nam')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1102,N'Hoàng Nhật Tân',N'100909854534','10/02/2001',N'Việt Nam')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1103,N'Nguyễn Khắc Cháng',N'0010904898560','08/12/2001',N'Việt Nam')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1103,N'Nguyễn Duy Việt',N'010906987251','04/01/2001',N'Việt Nam')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1104,N'Trần Duy Chinh',N'00120902543577','05/02/2001',N'Việt Nam')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1104,N'Trần Thị Liên',N'0040909685224','12/23/1999',N'Việt Nam')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1104,N'Lê Ngọc Ánh',N'0014727847325','10/21/1998',N'Việt Nam')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1105,N'Justin Bieber',N'50933729814323','03/01/1994',N'Canada')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1106,N'Lý Công Minh',N'0198327176411','07/28/1993',N'Việt Nam')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1106,N'Cao Minh Quốc',N'03934273472131','06/14/2004',N'Việt Nam')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1107,N'Đào Hiệp Giang',N'01247267442232','09/27/1969',N'Việt Nam')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1107,N'Nguyễn Hoàng Lan',N'00237482724224','10/30/2003',N'Việt Nam')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1108,N'Lê Mai Hương Quỳnh',N'092371649321332','05/28/1996',N'Việt Nam')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1108,N'Nguyễn Minh Hoàng Lâm',N'02237462164235','12/08/1998',N'Việt Nam')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1109,N'Trần Quang Gà',N'0932717647234','01/02/1957',N'Việt Nam')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1110,N'Nguyễn Lan Ngọc Linh',N'02544572728352','06/27/1999',N'Việt Nam')
Insert into tbl_KH_stay(ID_HD,Ten_KH_stay,CCCD_KH_stay,NgaySinh,QuocTich) values(1110,N'Quanh Văn Hải',N'01408583765368','04/09/1998',N'Việt Nam')
go

--Trinh trang phong
create table tbl_RoomStatus(
	ID_R int primary key,
	statusRoom nvarchar(30),
	constraint KN_ID_RS_R foreign key(ID_R) references tbl_RoomStatus(ID_R),
)
go
Insert into tbl_RoomStatus(ID_R, statusRoom) values(201,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(202,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(203,N'Đang sử dụng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(204,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(205,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(301,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(302,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(303,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(304,N'Chưa sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(305,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(401,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(402,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(403,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(404,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(405,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(501,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(502,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(503,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(504,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(505,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(601,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(602,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(603,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(604,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(605,N'Đang sử dụng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(701,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(702,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(703,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(704,N'Sẵn sàng')
Insert into tbl_RoomStatus(ID_R, statusRoom) values(705,N'Hỏng')

--account
create table tbl_Account(
	username varchar(30) primary key,
	pass varchar(30),
	ten nvarchar(50),
	chucvu nvarchar(20),
	sdt varchar(20)
)

Insert into tbl_Account(username, pass, ten, chucvu, sdt) values('admin','admin', N'Quản lý', 'admin', '0969630128')
Insert into tbl_Account(username, pass, ten, chucvu, sdt) values('tan','tan', N'Hoàng Nhật Tân', 'lt', '0943473854')
Insert into tbl_Account(username, pass, ten, chucvu, sdt) values('dai','dai', N'Trần Công Đại', 'lt', '0846274372')
Insert into tbl_Account(username, pass, ten, chucvu, sdt) values('duc','duc', N'Bùi Minh Đức', 'dv', '0948347453')
