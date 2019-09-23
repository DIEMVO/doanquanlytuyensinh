use master;
go

drop database if exists QuanLyTuyenSinh;
go

create database QuanLyTuyenSinh;
go

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
MaNganh int,
NguyenVong int,
CONSTRAINT pk_HOSOTHISINH primary key(SBD)
);
go

create table NGANH(
MaNganh int not null,
TenNganh varchar(50) not null,
ChiTieu int,
CONSTRAINT pk_NGANH primary key(MaNganh)
);
go

create table DANTOC(
MaDanToc int not null,
TenDanToc varchar(50) not null,
DiemCongDToc int,
CONSTRAINT pk_DANTOC primary key(MaDanToc)
);
go

create table DIEM(
SBD int not null,
Khoi varchar(10) not null,
Diem1 int,
Diem2 int,
Diem3 int,
CONSTRAINT pk_DIEM primary key(SBD)
);
go

create table DOITUONG(
MaDoiTuong int not null,
LoaiDoiTuong varchar,
DiemCongDTuong int,
CONSTRAINT pk_DOITUONG primary key(MaDoiTuong)
);
go

create table HOKHAU(
MaHoKhau int not null,
TenHuyen varchar(30),
TenTinh varchar(30),
MaKhuVuc int,
CONSTRAINT pk_HOKHAU primary key(MaHoKhau)
);
go

create table KHUVUC(
MaKhuVuc int not null,
TenKhuVuc varchar(30),
DiemCongKV int,
CONSTRAINT pk_KHUVUC primary key(MaKhuVuc)
);
go

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


drop table HOSOTHISINH
drop table DANTOC
drop table DIEM
drop table DOITUONG
drop table HOKHAU
drop table KHUVUC
drop table NGANH
go