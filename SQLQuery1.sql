use master;
go
-- Tạo Database QuanLyTuýeninh
if DB_ID('QuanLyTuyenSinh') is not null
	drop database QuanLyTuyenSinh;
go

create database QuanLyTuyenSinh;
go
-- Tạo Table.
use QuanLyTuyenSinh
go

create table HOSOTHISINH(
SBD int,
HoDem varchar(20) not null,
Ten varchar(10) not null,
NgaySinh date,
GioiTinh bit,
MaHoKhau int,
MaDoiTuong int,
MaDanToc int,
MaNganh varchar(50),
NguyenVong int,
CONSTRAINT pk_HOSOTHISINH primary key(SBD)
);
go

create table NGANH(
MaNganh varchar (50) not null,
TenNganh varchar(100) not null,
ChiTieu float,
CONSTRAINT pk_NGANH primary key(MaNganh)
);
go

create table DANTOC(
MaDanToc int not null,
TenDanToc varchar(50) not null,
DiemCongDToc float,
CONSTRAINT pk_DANTOC primary key(MaDanToc)
);
go

create table DIEM(
SBD int not null,
Khoi varchar(10) not null,
Diem1 float,
Diem2 float,
Diem3 float,
CONSTRAINT pk_DIEM primary key(SBD)
);
go

create table DOITUONG(
MaDoiTuong int not null,
LoaiDoiTuong varchar(100),
DiemCongDTuong float,
CONSTRAINT pk_DOITUONG primary key(MaDoiTuong)
);
go

create table HOKHAU(
MaHoKhau int not null,
TenHuyen varchar(30),
TenTinh varchar(30),
MaKhuVuc varchar(10),
CONSTRAINT pk_HOKHAU primary key(MaHoKhau)
);
go

create table KHUVUC(
MaKhuVuc varchar(10) not null,
TenKhuVuc varchar(30) not null,
DiemCongKV float,
CONSTRAINT pk_KHUVUC primary key(MaKhuVuc)
);
go
-- Tạo khoá ngoại.

alter table HOSOTHISINH
with nocheck add constraint fk_HOSOTHISINH_DANTOC
foreign key (MaDanToc) references DANTOC(MaDanToc);
go

alter table HOSOTHISINH
with nocheck add constraint fk_HOSOTHISINH_NGANH
foreign key (MaNganh) references NGANH(MaNganh);
go

alter table HOSOTHISINH
with nocheck add constraint fk_HOSOTHISINH_HOKHAU
foreign key (MaHoKhau) references HOKHAU(MaHoKhau);

alter table HOSOTHISINH
with nocheck add constraint fk_HOSOTHISINH_DOITUONG
foreign key (MaDoiTuong) references DOITUONG(MaDoiTuong);
go

alter table HOSOTHISINH
with nocheck add constraint fk_HOSOTHISINH_DIEM
foreign key(SBD) references DIEM(SBD);
go
/*
alter table DIEM
with nocheck add constraint fk_DIEM_HOSOTHISINH
foreign key (SBD) references HOSOTHISINH(SBD);
go
*/
alter table HOKHAU
with nocheck add constraint fk_HOKHAU_KHUVUC
foreign key (MaKhuVuc) references KHUVUC(MaKhuVuc);
go

insert NGANH(MaNganh, TenNganh, ChiTieu) values
('7140231D',	'Su Pham Tieng Anh (Dai Tra)',	23.04),	
('7210403D',	'Thiet Ke Do Hoa (Dại Tra)',	21),	
('7210404D',	'Thiet Ke Thoi Trang (Dai Tra)',18.44),	
('7220201D',	'Ngon Ngu Anh (Dai Tra)',	22.3),	
('7340120D',	'Kinh Doanh Quoc Te (Dai Tra)',	21.6),	
('7340122D',	'Thuong Mai Dien Tu (Dai Tra)',	22.4),	
('7340301C',	'Ke Toan (Chat Luong Cao Tieng Viet)',	19),	
('7340301D',	'Ke Toan (Dai Tra)',	21.1),	
('7480108A',	'Con Nghe Ky Thuat May Tinh (Chat Luong Cao Tieng Anh)',20.35),	
('7480108C',	'Cong Nghe Ky Thuat May Tinh (Chat Luong Cao Tieng Viet)',21.2),	
('7480108D',	'Cong Nghe Ky Thuat May Tinh (Dai Tra)',	22.9),	
('7480201A',	'Cong Nghe Thong Tin (Chat Luong Cao Tieng Anh)',	21.8),	
('7480201C',	'Cong Nghe Thong Tin (Chat Luong Cao Tieng Viet)',	22.3),	
('7480201D',	'Cong Nghe Thong Tin (Dai Tra)',	23.9),	
('7480203D',	'Ky Thuat Du Lieu (Dai Tra)',22.2),	
('7510102A',	'Cong Nghe Ky Thuat Cong Trinh Xay Dung (Chat Luong Cao Tieng Anh)', 17.8),	
('7510102C',	'Cong Nghe Ky Thuat Cong Trinh Xay Dung (Chat Luong Cao Tieng Viet)',18.6),	
('7510102D',	'Cong Nghe Ky Thuat Cong Trinh Xay Dung (Dai Tra)',	21.3),	
('7510106D',	'He Thong Cong Trinh Xay Dung (Dai Tra)',19.2),	
('7510201A',	'Cong Nghe Ky Thuat Co Khi (Chat Luong Cao Tieng Anh)',	20.5),	
('7510201C',	'Cong Nghe Ky Thuat Co Khi (Chat Luong Cao Tieng Viet)',21.4),	
('7510201D',	'Cong Nghe Ky Thuat Co Khi (Dai Tra)', 22.9),	
('7510202A',	'CN Che Tao May (Chat Luong Cao Tieng Anh)',19.5),	
('7510202C',	'CN Che Tao May (Chat Luong Cao Tieng Viet)',20.7),	
('7510202D',	'CN Che Tao May (Dai Tra)',21.9),	
('7510203A',	'Cong Nghe Ky Thuat Co Dien Tu (Chat Luong Cao Tien Anh)',	21),	
('7510203C',	'Cong Nghe Ky Thuat Co Dien Tu (Chat Luong Cao Tien Viet)',21.7),	
('7510203D',	'Cong Nghe Ky Thuat Co Dien Tu (Dai Tra)',23.1),	
('7510205A',	'Cong Nghe Ky Thuat O To (Chat Luong Cao Tieng Anh)',21.8),	
('7510205C',	'Cong Nghe Ky Thuat O To (Chat Luong Cao Tieng Viet)',22.7),	
('7510205D',	'Cong Nghe Ky Thuat O To (Dai Tra)',23.7),	
('7510206A',	'Cong Nghe Ky Thuat Nhiet (Chat Luong Cao Tieng Anh)',18.05),	
('7510206C',	'Cong Nghe Ky Thuat Nhiet (Chat Luong Cao Tieng Viet)',19.7),
('7510206D',	'Cong Nghe Ky Thuat Nhiet (Dai Tra)',21.5),	
('7510208D',	'Nang Luong Tai Tao (Dai Tra)',	21),	
('7510209D',	'Robot va Tri Tue Nhan Tao (Dai Tra)',25.2),	
('7510301A',	'Cong Nghe Ky Thuat Dien, Dien Tu (Chat Luong Cao Tieng Anh)',	19.3),	
('7510301C',	'Cong Nghe Ky Thuat Dien, Dien Tu (Chat Luong Cao Tieng Viet)',	21),	
('7510301D',	'Cong Nghe Ky Thuat Dien, Dien Tu (Dai Tra)', 22.8),	
('7510302A',	'Cong Nghe Ky Thuat Dien Tu - Vien Thong (Chat Luong Cao Tieng Anh)',18.4),	
('7510302C',	'Cong Nghe Ky Thuat Dien Tu - Vien Thong (Chat Luong Cao Tieng Viet)',	19.5),	
('7510302D',	'Cong Nghe Ky Thuat Dien Tu - Vien Thong (Dai Tra)',21.7),	
('7510303A',	'Cong Nghe Ky Thuat Dieu Khien va Tu Dong Hoa (Chat Luong Cao Tieng Anh)',	21.5),	
('7510303C',	'Cong Nghe Ky Thuat Dieu Khien va Tu Dong Hoa (Chat Luong Cao Tieng Viet)',	22.2),	
('7510303D',	'Cong Nghe Ky Thuat Dieu Khien va Tu Dong Hoa (Dai Tra)',  23.5),	
('7510401D',	'Cong Nghe Ky Thuat Hoa Hoc (Dai Tra)', 22.4),
('7510402D',	'Cong Nghe Vat Lieu (Dai Tra)',18.55),	
('7510406C',	'Cong Nghe Ky Thuat Moi Truong (Chat Luong Cao Tieng Viet)',17),	
('7510406D',	'Cong Nghe Ky Thuat Moi Truong (Dai Tra)',19),	
('7510601A',	'Quan Ly Cong Nghiep (Chat Luong Cao Tieng Anh)',18.5),	
('7510601C',	'Quan Ly Cong Nghiep (Chat Luong Cao Tieng Viet)',20.2),	
('7510601D',	'Quan Ly Cong Nghiep (Dai Tra)',22.2),	
('7510605D',	'Logistics & Quan Ly Chuoi Cung Ung (Dai Tra)',23.3),	
('7510801C',	'Cong Nghe Ky Thuat In (Chat Luong Cao Tieng Viet)',18.2),	
('7510801D',	'Cong Nghe Ky Thuat In (Dai Tra)', 20.3),	
('7520117D',	'KT Cong Nghiep (Dai Tra)',19.8),	
('7520212D',	'Ky Thuat Y Sinh (Dien Tu YS) (Dai Tra)',20.75),	
('7540101A',	'Cong Nghe Thuc Pham (Chat Luong Cao Tieng Anh)', 18.45),	
('7540101C',	'Cong Nghe Thuc Pham (Chat Luong Cao Tieng Viet)', 20),	
('7540101D',	'Cong Nghe Thuc Pham (Dai Tra)', 22.2),	
('7540203D',	'Cong Nghe Vat Lieu Det May (Dai Tra)', 18),	
('7540204C',	'Cong Nghe May (Chat Luong Cao Tieng Viet)',18.2),	
('7540204D',	'Cong Nghe May (Dai Tra)', 21.1),	
('7549002D',	'Ky Thuat Go va Noi That (Dai Tra)', 18.5),	
('7580101D',	'Kien Truc (Dai Tra)', 20.33),	
('7580205D',	'KT Xay Dung Cong Trinh Giao Thong (Dai Tra)',18.4),	
('7580302D',	'Quan Ly Xay Dung (Dai Tra)',20.3),	
('7810202D',	'Quan Tri Nha Hang va Dich Vu An Uong (Dai Tra)', 21.4),	
('7810502D',	'Ky Thuat Nu Cong (Dai Tra)',18)
go

insert KHUVUC(MaKhuVuc, TenKhuVuc, DiemCongKV) values
('I','Khu Vuc I',1),
('II','Khu Vuc II',0.5),
('II-NT','Khu Vuc II-Nong Thon',0.75),
('III','Khu Vuc III',0)
go

insert DIEM(SBD, Khoi, Diem1, Diem2, Diem3) values
(1,'A',7,8,9),
(2,'A1',7.5,8,7),
(3,'B',8,9,7),
(4,'D',8,8,9),
(5,'D1',9,8,7)
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