use QuanLyTuyenSinh;
go
---Function
if OBJECT_ID('ShowHOSOTHISINH') is not null drop function ShowHOSOTHISINH;
go

create function ShowHOSOTHISINH()
 returns table
	return (select * from HOSOTHISINH);
 go
 -----------------------------------------------------------------------------
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

--use QuanLyTuyenSinh
--go

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
	select ID,NamePerson, UserName, TypePerson 
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

use QuanLyTuyenSinh
go
if OBJECT_ID('LOADTableHoSoThiSinh') is not null drop PROC LOADTableHoSoThiSinh;
 go

 create PROC LOADTableHoSoThiSinh
 as
 begin 
select SBD, HoDem,Ten,NgaySinh,GioiTinh,HOSOTHISINH.MaHoKhau,TenHuyen,TenTinh,HOSOTHISINH.MaDoiTuong,LoaiDoiTuong, HOSOTHISINH.MaDanToc,TenDanToc,Toan,Ly,Hoa,Sinh,Van,Su,Dia,AnhVan
from ((HOSOTHISINH	join HOKHAU	  on HOSOTHISINH.MaHoKhau=HOKHAU.MaHoKhau) 
					join DOITUONG on HOSOTHISINH.MaDoiTuong=DOITUONG.MaDoiTuong)
					join DANTOC	  on HOSOTHISINH.MaDanToc=DANTOC.MaDanToc
end
go

use QuanLyTuyenSinh;
go
if OBJECT_ID('LOADNguyenVong') is not null drop proc LOADNguyenVong;
go
create PROC LOADNguyenVong
as
begin 
	select HOSOTHISINH.SBD,Ten, MaNganh, Khoi, NguyenVong, (HOSOTHISINH.Toan+HOSOTHISINH.Ly+HOSOTHISINH.Hoa) as DiemTB , NGUYENVONG.DiemTB
	from NGUYENVONG join HOSOTHISINH on NGUYENVONG.SBD=HOSOTHISINH.SBD
	where NGUYENVONG.Khoi=N'A'
	

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
	declare @CheckUser varchar(50)
	select @CheckUser=UserName
	from Account
	where @UserName=UserName;

	if @UserName=@CheckUser or @UserName is null
		Throw 50001,'Not insert Account.',1;
	else
		Insert Account (NamePerson,UserName,Pass,TypePerson)
		values (@NamePerson,@UserName,@Pass,@TypePerson)
end
go






if OBJECT_ID('RePassAccount') is not null drop proc RePassAccount;
go

create proc RePassAccount
@Id int,
@Pass varchar(50)
as
begin
	update Account set Pass=@Pass where ID=@Id;
end
go


if OBJECT_ID('DELETEAccount') is not null drop proc DELETEAccount;
go

create proc DELETEAccount
@Id int
as
begin
	Delete Account where ID=@Id;
end
go


if OBJECT_ID('INSERTHoKhau') is not null drop proc INSERTHoKhau
go

create proc INSERTHoKhau
@tenhuyen varchar(50), @tentinh varchar(50), @tenkhuvuc varchar(50)
as
begin 
	declare @MaKhuVuc varchar(50);
	
	select @MaKhuVuc=MaKhuVuc
	from KHUVUC
	where TenKhuVuc=@tenkhuvuc;

	Insert HOKHAU (TenHuyen,TenTinh,MaKhuVuc)
		values(@tenhuyen,@tentinh,@MaKhuVuc);
end
go




if OBJECT_ID('DELETEHoKhau') is not null drop proc DELETEHoKhau;
go

create proc DELETEHoKhau
@id int
as
begin 
	Delete HOKHAU where MaHoKhau=@id;
end
go

if OBJECT_ID('EDITHoKhau') is not null drop proc EDITHoKhau;
go

create proc EDITHoKhau
@mahokhau varchar(50),
@tentinh varchar(50),
@tenhuyen varchar(50),
@makhuvuc varchar(50),
@tenkhuvuc varchar(50)
as
begin 
	declare @checkmakhuvuc varchar(50)
	select @checkmakhuvuc=MaKhuVuc
	from KHUVUC
	where @tenkhuvuc=TenKhuVuc;

	if @checkmakhuvuc = @makhuvuc
		update HOKHAU set TenTinh=@tentinh, TenHuyen=@tenhuyen where MaHoKhau=@mahokhau
	else
		update HOKHAU set TenTinh=@tentinh, TenHuyen=@tenhuyen, MaKhuVuc=@checkmakhuvuc where MaHoKhau=@mahokhau
end
go


-----------------------
--test


use QuanLyTuyenSinh;
go
if OBJECT_ID('INSERTNganh') is not null drop proc INSERTNganh;
go

create proc INSERTNganh
@MaNganh varchar(50), @TenNganh varchar(50), @ChiTieu int, @DiemChuan float

as
begin 
	declare @CheckMaNganh varchar(50);
	
	select @CheckMaNganh=@MaNganh
	from NGANH
	where MaNganh=@MaNganh;

	Insert NGANH (MaNganh, TenNganh, ChiTieu, DiemChuan)
		values(@MaNganh, @TenNganh, @ChiTieu, @DiemChuan);
end
go


if OBJECT_ID('DELETENganh') is not null drop proc DELETENganh;
go

create proc DELETENganh
@id int
as
begin 
	Delete NGANH where MaNganh=@id;
end
go

if OBJECT_ID('EDITNganh') is not null drop proc EDITNganh;
go

create proc EDITNganh
@MaNganh varchar (50),
@TenNganh varchar(100),
@ChiTieu int,
@DiemChuan float
as
begin 
	declare @checkmanganh varchar(50)
	select @checkmanganh=MANGANH 
	from NGANH
	where @MaNganh=MaNganh;

	if @checkmanganh = @MaNganh 
		update NGANH set TenNganh=@TenNganh, ChiTieu=@ChiTieu where MANGANH=@MaNganh 
	else
		update NGANH set MaNganh=@checkmanganh, TenNganh=@TenNganh, ChiTieu=@ChiTieu, DiemChuan=@DiemChuan where MANGANH=@MaNganh 
end
go

---//////////////////////////////////
use QuanLyTuyenSinh;
go
if OBJECT_ID('INSERTDoituong') is not null drop proc INSERTDoituong;
go

if OBJECT_ID('INSERTDoituong') is not null drop proc INSERTDoituong
go

create proc INSERTDoituong
@LoaiDoiTuong varchar(100), @DiemCongDTuong float
as
begin 
	declare @MaDoiTuong int;
	
	select @MaDoiTuong=@MaDoiTuong
	from DOITUONG
	where LoaiDoiTuong=@LoaiDoiTuong;

	Insert DOITUONG(MaDoituong, LoaiDoiTuong, DiemCongDTuong)
		values(@MaDoiTuong, @LoaiDoiTuong, @DiemCongDTuong);
end
go


if OBJECT_ID('DELETEDoituong') is not null drop proc DELETEDoituong;
go

create proc DELETEDoituong
@id int
as
begin 
	Delete DOITUONG where MaDoiTuong=@id;
end
go

if OBJECT_ID('EDITDoituong') is not null drop proc EDITDoituong;
go

create proc EDITDoituong
@MaDoiTuong int ,
@LoaiDoiTuong varchar(100),
@DiemCongDTuong float
as
begin 
	declare @checkmadoituong int
	select @checkmadoituong=MADOITUONG 
	from DOITUONG
	where @MaDoiTuong=MaDoiTuong;

	if @checkmadoituong = @MaDoiTuong
		update DOITUONG set LoaiDoiTuong=@LoaiDoiTuong, DiemCongDTuong=@DiemCongDTuong where MADOITUONG=@MaDoiTuong
	else
		update DOITUONG set MaDoiTuong=@checkmadoituong,LoaiDoiTuong=@LoaiDoiTuong, DiemCongDTuong=@DiemCongDTuong where MADOITUONG=@MaDoiTuong 
end
go

---function ngành 
create function Fn_nganh()
returns table return
	select MaNganh, TenNganh, ChiTieu, DiemChuan
	from NGANH

go 
select * from Fn_nganh()
---
 USE master
GO

CREATE PROCEDURE dbo.sp_FindStringInTable @stringToFind VARCHAR(100), @schema sysname, @table sysname 
AS

BEGIN TRY
   DECLARE @sqlCommand varchar(max) = 'SELECT * FROM [' + @schema + '].[' + @table + '] WHERE ' 
	   
   SELECT @sqlCommand = @sqlCommand + '[' + COLUMN_NAME + '] LIKE ''' + @stringToFind + ''' OR '
   FROM INFORMATION_SCHEMA.COLUMNS 
   WHERE TABLE_SCHEMA = @schema
   AND TABLE_NAME = @table 
   AND DATA_TYPE IN ('char','nchar','ntext','nvarchar','text','varchar')

   SET @sqlCommand = left(@sqlCommand,len(@sqlCommand)-3)
   EXEC (@sqlCommand)
   PRINT @sqlCommand
END TRY

BEGIN CATCH 
   PRINT 'There was an error. Check to make sure object exists.'
   PRINT error_message()
END CATCH 
--USE QuanLyTuyenSinh 
--GO 
--EXEC sp_FindStringInTable '%cong%', 'TenNganh'
use QuanLyTuyenSinh
go 

CREATE PROCEDURE dNganh
 @TenNganh varchar(100) OUT

AS

BEGIN

DECLARE @nhanvien_id INT;

SET @nhanvien_id = '';


 SET @TenNganh = '';
 

END;
select * from NGANH
go
SELECT TOP(5)
 MaNganh, TenNganh, ChiTieu, DiemChuan
	from NGANH
WHERE TenNganh = ''
ORDER BY MaNganh;

use QuanLyTuyenSinh;
go
if OBJECT_ID('SearchNganh') is not null drop proc SearchNganh;
go

create proc SearchNganh
@MaNganh varchar(50), @TenNganh varchar(50), @ChiTieu int, @DiemChuan float

as
begin 
	declare @CheckTenNganh varchar(50);
	
	select @CheckTenNganh=@TenNganh
	from NGANH
	where TenNganh=@TenNganh;

	
end
go
