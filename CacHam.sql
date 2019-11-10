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

if OBJECT_ID('LOADTableHoSoThiSinh') is not null drop PROC LOADTableHoSoThiSinh;
 go

 create PROC LOADTableHoSoThiSinh
 as
 begin 
	select SBD, HoDem, Ten, NgaySinh, GioiTinh, TenHuyen,TenTinh, LoaiDoiTuong, TenDanToc, TenNganh, NguyenVong
	from (((HOSOTHISINH join HOKHAU on HOSOTHISINH.MaHoKhau=HOKHAU.MaHoKhau) join
	DOITUONG on DOITUONG.MaDoiTuong=HOSOTHISINH.MaDoiTuong) join 
	DANTOC on DANTOC.MaDanToc= HOSOTHISINH.MaDanToc) join
	NGANH on HOSOTHISINH.MaNganh=NGANH.MaNganh
end
go

EXEC LOADTableHoSoThiSinh;
go
-----------------------
--test





