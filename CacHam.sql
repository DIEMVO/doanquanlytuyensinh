use QuanLyTuyenSinh;
go
---Function
if OBJECT_ID('ShowHOSOTHISINH') is not null drop function ShowHOSOTHISINH;
go

create function ShowHOSOTHISINH()
 returns table
	return (select * from HOSOTHISINH);
 go
 --------------------------
 --Store PROC
 if OBJECT_ID('CHECKLOGIN') is not null drop PROC CHECKLOGIN;
 go

create PROC CHECKLOGIN
 @UserName varchar(50),
 @Pass varchar(50)
as
begin  
	select * from dbo.Account where UserName=@UserName AND Pass=@Pass;
end
go

--if OBJECT_ID('LOADTableHoSoThiSinh') is not null drop PROC LOADTableHoSoThiSinh;
-- go

-- create PROC LOADTableHoSoThiSinh
-- as
-- begin 
--	select SBD, HoDem, Ten, NgaySinh, GioiTinh, TenHuyen,TenTinh, LoaiDoiTuong, TenDanToc, TenNganh, NguyenVong
--	from (((HOSOTHISINH join HOKHAU on HOSOTHISINH.MaHoKhau=HOKHAU.MaHoKhau)  join
--	DOITUONG on DOITUONG.MaDoiTuong=HOSOTHISINH.MaDoiTuong) join 
--	DANTOC on DANTOC.MaDanToc= HOSOTHISINH.MaDanToc) join
--	NGANH on HOSOTHISINH.MaNganh=NGANH.MaNganh
--end
--go


use QuanLyTuyenSinh
go
if OBJECT_ID('LOADAccount') is not null drop PROC LOADAccount;
go

create PROC LOADAccount
as
begin 
	select NamePerson, UserName, TypePerson 
	from Account;
end
go


use QuanLyTuyenSinh
go
if OBJECT_ID('LOADNganh') is not null drop PROC LOADNganh;
go

create PROC LOADNganh
as
begin
	select MaNganh,TenNganh,ChiTieu,DiemChuan
	from NGANH
end
go

use QuanLyTuyenSinh
go

if OBJECT_ID('LOADDoiTuong') is not null drop PROC LOADDoiTuong;
go

create PROC LOADDoiTuong
as
begin 
	select  MaDoiTuong,LoaiDoiTuong,DiemCongDTuong
	from DOITUONG
	order by DiemCongDTuong;
end
go

use QuanLyTuyenSinh;
go
if OBJECT_ID('LOADHoKhau') is not null drop PROC LOADHoKhau;
go

create PROC LOADHoKhau
as
begin 
	select MaHoKhau, TenTinh,TenHuyen,KHUVUC.MaKhuVuc,TenKhuVuc,DiemCongKV
	from HOKHAU join KHUVUC on HOKHAU.MaKhuVuc=KHUVUC.MaKhuVuc
end
go

use QuanLyTuyenSinh;
go
if OBJECT_ID('LOADKhuVuc') is not null drop proc LOADKhuVuc;
go

create proc LOADKhuVuc
as
begin
	select MaKhuVuc,TenKhuVuc,DiemCongKV
	from KHUVUC
end
go

use QuanLyTuyenSinh;
go
if OBJECT_ID('INSERTAccount') is not null drop proc INSERTAccount;
go

create proc INSERTAccount
@NamePerson varchar(50),
@UserName varchar(50),
@Pass varchar(50),
@TypePerson int
as
begin 
	Insert Account (NamePerson,UserName,Pass,TypePerson)
	values (@NamePerson,@UserName,@Pass,@TypePerson)
end
go

use QuanLyTuyenSinh;
go



declare @NamePerson varchar(50),
@UserName varchar(50),
@Pass varchar(50),
@TypePerson int;
Exec INSERTAccount @NamePerson='Diem',@UserName='Admin2',@Pass='1',@TypePerson=1;
go

select *
from Account;

-----------------------
--test





