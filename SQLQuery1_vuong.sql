use master;
go
-- Tạo Database QuanLyTuýeninh
if DB_ID('QuanLyTuyenSinh') is not null
	drop database QuanLyTuyenSinh;
go

create database QuanLyTuyenSinh;
go
-- Tạo Table.
use QuanLyTuyenSinh;
go

if OBJECT_ID('Account') is not null drop table Account;
go-------Acount--
-------------------------------------
create table Account
(
ID int Identity(1,1),
NamePerson varchar(50),
UserName varchar(50) not null unique,
Pass varchar(50) not null,
TypePerson int not null,
Constraint pk_Account primary key (ID)
)
go 

insert Account(NamePerson,UserName,Pass,TypePerson)
values
('Vuong','Admin','123',1)
go
-------------------------Database----------------------
use QuanLyTuyenSinh
go
---------------------HoSoThiSinh---------------------
create table HOSOTHISINH(
SBD int,
HoDem varchar(20) not null,
Ten varchar(10) not null,
NgaySinh smalldatetime,
GioiTinh bit,
MaHoKhau int,
MaDoiTuong int,
MaDanToc int,
Toan float,
Ly float,
Hoa float,
Sinh float,
Van float,
Su float,
Dia float,
AnhVan float,
CONSTRAINT pk_HOSOTHISINH primary key(SBD)
);
go

insert HOSOTHISINH (SBD,HoDem,Ten,NgaySinh,GioiTinh,MaHoKhau,MaDoiTuong,MaDanToc,Toan,Ly,Hoa,Sinh,Van,Su,Dia,AnhVan)
values
(1,'Le Quoc Nguyen','Vuong',CAST('2019-11-25 00:00:00' as smalldatetime),1,1,1,1,10,10,10,10,10,10,10,10),
(2,'Vo Thanh','Tam',CAST('2019-11-25 00:00:00' as smalldatetime),1,2,1,1,10,10,10,10,10,10,10,10),
(3,'Phan Dinh','Hoang',CAST('2019-11-25 00:00:00' as smalldatetime),3,1,1,1,10,10,10,10,10,10,10,10)
go
---------------------Nganh------------------------- 
create table NGANH(
MaNganh int not null,
TenNganh varchar(100) not null,
ChiTieu int,
DiemChuan float,
CONSTRAINT pk_NGANH primary key(MaNganh)
);
go

insert NGANH(MaNganh, TenNganh, ChiTieu, DiemChuan) values
('7140231',	'Su Pham Tieng Anh',30,23.04),	
('7210403',	'Thiet Ke Do Hoa',30,21),	
('7210404',	'Thiet Ke Thoi Trang',30,18.44),	
('7220201',	'Ngon Ngu Anh',30	,22.3),	
('7340120',	'Kinh Doanh Quoc Te',30	,	21.6),	
('7340122',	'Thuong Mai Dien Tu',30	,	22.4),	
('7340301',	'Ke Toan',30	,	19),	
('7480108',	'Con Nghe Ky Thuat May Tinh',30	,20.35),	
('7480201',	'Cong Nghe Thong Tin',30	,	21.8),		
('7480203',	'Ky Thuat Du Lieu',30	,22.2),	
('7510102',	'Cong Nghe Ky Thuat Cong Trinh Xay Dung',30	, 17.8),	
('7510106',	'He Thong Cong Trinh Xay Dung',30	,19.2),	
('7510201',	'Cong Nghe Ky Thuat Co Khi',30	,	20.5),	
('7510202',	'CN Che Tao May',30	,19.5),	
('7510203',	'Cong Nghe Ky Thuat Co Dien Tu',30	,	21),	
('7510205',	'Cong Nghe Ky Thuat O To',30	,21.8),	
('7510206',	'Cong Nghe Ky Thuat Nhiet',30	,18.05),	
('7510208',	'Nang Luong Tai Tao',30	,	21),	
('7510301',	'Cong Nghe Ky Thuat Dien, Dien Tu',30	,	19.3),	
('7510302',	'Cong Nghe Ky Thuat Dien Tu - Vien Thong',30	,18.4),	
('7510303',	'Cong Nghe Ky Thuat Dieu Khien va Tu Dong Hoa',30	,	21.5),	
('7510401',	'Cong Nghe Ky Thuat Hoa Hoc',30	, 22.4),
('7510402',	'Cong Nghe Vat Lieu',30	,18.55),	
('7510406',	'Cong Nghe Ky Thuat Moi Truong',30	,17),		
('7510601',	'Quan Ly Cong Nghiep',30	,18.5),	
('7510605',	'Logistics & Quan Ly Chuoi Cung Ung',30	,23.3),	
('7510801',	'Cong Nghe Ky Thuat In',30	,18.2),	
('7520117',	'KT Cong Nghiep',30	,19.8),	
('7520212',	'Ky Thuat Y Sinh (Dien Tu YS)',30	,20.75),	
('7540101',	'Cong Nghe Thuc Pham (Chat Luong Cao Tieng Anh)',30	, 18.45),		
('7540203',	'Cong Nghe Vat Lieu Det May (Dai Tra)',30	, 18),	
('7540204',	'Cong Nghe May (Dai Tra)',30	, 21.1),	
('7549002',	'Ky Thuat Go va Noi That (Dai Tra)',30	, 18.5),	
('7580101',	'Kien Truc (Dai Tra)',30	, 20.33),	
('7580205',	'KT Xay Dung Cong Trinh Giao Thong (Dai Tra)',30	,18.4),	
('7580302',	'Quan Ly Xay Dung (Dai Tra)',30	,20.3),	
('7810202',	'Quan Tri Nha Hang va Dich Vu An Uong (Dai Tra)',30	, 21.4),	
('7810502',	'Ky Thuat Nu Cong (Dai Tra)',30	,18)
go
--------------------Nguyen Vong---------------------
create table NGUYENVONG(
SBD int not null,
MaNganh int not null,
Khoi varchar(10) not null,
NguyenVong int,
DiemTB float,
DanhGia varchar(50),
constraint pk_NGUYENVONG primary key(SBD,MaNganh,Khoi)
);
Insert NGUYENVONG(SBD,MaNganh,Khoi,NguyenVong)
values 
(1,'7480201','A',1),
(2,'7480201','A',1),
(3,'7480201','A',1)
go
--------------------Dan Toc-------------------
create table DANTOC(
MaDanToc int not null,
TenDanToc varchar(50) not null,
DiemCongDToc float,
CONSTRAINT pk_DANTOC primary key(MaDanToc)
);
go
insert DANTOC(MaDanToc,TenDanToc,DiemCongDToc)
values
(1,'Kinh',0),
(2,'Tay',0),
(3,'Thai',0),
(4,'Muong',0),
(5,'Kho Me',0),
(6,'H Mong',1),
(7,'Nung',1),
(8,'Hoa',1),
(9,'Dao',1.5),
(10,'Gia Rai',1.5),
(11,'E De',1.5),
(12,'Ba Na',1.5),
(13,'Xo Dang',2),
(14,'San Chay',2),
(15,'Co Ho',2),
(16,'Cham',2),
(17,'San Diu',2.5),
(18,'Hre',2.5),
(19,'Ra Giai',2.5),
(20,'M Nong',2.5),
(21,'X tieng',3)
go

-------------------Doi Tuong------------------
create table DOITUONG(
MaDoiTuong int not null,
LoaiDoiTuong varchar(100),
DiemCongDTuong float,
CONSTRAINT pk_DOITUONG primary key(MaDoiTuong)
);
go
insert DOITUONG(MaDoiTuong, LoaiDoiTuong, DiemCongDTuong) values
(1,'Gia Dinh Thuong Binh',0.25),
(2,'Gia Dinh Anh Hung Dan Toc',0.25),
(3,'Dan Toc Thieu So',0.25),
(4,'Dan Toc Kinh & Cu tru 3 nam',0.25),
(5,'Bi Nhiem Chat Doc Mau Da Cam',0.25),
(6,'Giai Nhat, Nhi, Ba cap Quoc Gia',2),
(7,'Giat Nhat Tinh',2),
(8,'Giai Khuyen Khich Quoc Gia',1.5),
(9,'Giai Nhi Tinh',1.5),
(10,'Giai Ba Tinh',1),
(11,'Chung Nhan Nghe Loai Gioi',2),
(12,'Chung Nhan Nghe Loai Kha',1.5),
(13,'Chung Nhan Nghe Loai Trung Binh',1)
go
-------------------Ho Khau----------------------
create table HOKHAU(
MaHoKhau int not null identity(1,1),
TenHuyen varchar(30),
TenTinh varchar(30),
MaKhuVuc varchar(10),
CONSTRAINT pk_HOKHAU primary key(MaHoKhau)
);
go

insert HOKHAU(TenHuyen,TenTinh,MaKhuVuc)
values
('Phan Thiet','Binh Thuan','II'),
('Trang Boom','Dong Nai','II'),
('Quan 1','TP.Ho Chi Minh','III')
go
--------------------Khu Vuc-----------------------
create table KHUVUC(
MaKhuVuc varchar(10) not null,
TenKhuVuc varchar(30) not null unique,
DiemCongKV float,
CONSTRAINT pk_KHUVUC primary key(MaKhuVuc)
);
go

insert KHUVUC(MaKhuVuc, TenKhuVuc, DiemCongKV) values
('I','Khu Vuc I',1),
('II','Khu Vuc II',0.5),
('II-NT','Khu Vuc II-Nong Thon',0.75),
('III','Khu Vuc III',0)
go

-- Tạo khoá ngoại.
alter table HOKHAU
with nocheck add constraint fk_HOKHAU_KHUVUC
foreign key (MaKhuVuc) references KHUVUC(MaKhuVuc);
go

alter table HOSOTHISINH
with nocheck add constraint fk_HOSOTHISINH_DANTOC
foreign key (MaDanToc) references DANTOC(MaDanToc);
go


alter table HOSOTHISINH
with nocheck add constraint fk_HOSOTHISINH_HOKHAU
foreign key (MaHoKhau) references HOKHAU(MaHoKhau);

alter table HOSOTHISINH
with nocheck add constraint fk_HOSOTHISINH_DOITUONG
foreign key (MaDoiTuong) references DOITUONG(MaDoiTuong);
go


alter table NGUYENVONG
with nocheck add constraint fk_NGUYENVONG_HOSOTHISINH
foreign key (SBD) references HOSOTHISINH(SBD);

alter table NGUYENVONG
with nocheck add constraint fk_NGUYENVONG_NGANH
foreign key (MaNganh) references NGANH(MaNganh);


-- drop table
--use QuanLyTuyenSinh;
--go

--drop table HOSOTHISINH
--go

--alter table HOSOTHISINH
--	drop constraint fk_HOSOTHISINH_DANTOC
--drop table DANTOC
--go

--alter table HOSOTHISINH
--	drop constraint fk_HOSOTHISINH_DIEM
--drop table DIEM
--go

--alter table HOSOTHISINH
--	drop constraint fk_HOSOTHISINH_DOITUONG
--drop table DOITUONG
--go

--alter table HOSOTHISINH
--	drop constraint fk_HOSOTHISINH_HOKHAU
--drop table HOKHAU
--go

--alter table HOKHAU
--	drop constraint fk_HOKHAU_KHUVUC
--drop table KHUVUC
--go

--alter table HOSOTHISINH
--	drop constraint fk_HOSOTHISINH_NGANH;
--drop table NGANH
--go