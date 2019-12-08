use QuanLyTuyenSinh;
go
---Function--Vương
if OBJECT_ID('ShowHOSOTHISINH') is not null drop function ShowHOSOTHISINH;
go

create function ShowHOSOTHISINH()
 returns table
	return (select * from HOSOTHISINH);
 go
 -----------------------------------------------------------------------------
 --Store PROC--Vương

if OBJECT_ID('LOADNganh') is not null drop PROC LOADNganh;
go

create PROC LOADNganh
as
begin
	select MaNganh,TenNganh,ChiTieu,DiemChuan
	from NGANH
end
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

if OBJECT_ID('LOADKhuVuc') is not null drop proc LOADKhuVuc;
go

create proc LOADKhuVuc
as
begin
	select MaKhuVuc,TenKhuVuc,DiemCongKV
	from KHUVUC
end
go
-----------------------------------------------------------------
--------------------Account--------------------------------------

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

if OBJECT_ID('LOADAccount') is not null drop PROC LOADAccount;
go

create PROC LOADAccount
as
begin 
	select ID,NamePerson, UserName, TypePerson 
	from Account;
end
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
------------------------------------------------------
------------------HoKhau------------------------------
if OBJECT_ID('LOADHoKhau') is not null drop PROC LOADHoKhau;
go

create PROC LOADHoKhau
as
begin 
	select MaHoKhau, TenTinh,TenHuyen,KHUVUC.MaKhuVuc,TenKhuVuc,DiemCongKV
	from HOKHAU join KHUVUC on HOKHAU.MaKhuVuc=KHUVUC.MaKhuVuc
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
----------------------------------------------------------------------
-------------------------------Hosothisinh----------------------------
if OBJECT_ID('LOADTableHoSoThiSinh') is not null drop PROC LOADTableHoSoThiSinh
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

if OBJECT_ID('DELETEHoSoThiSinh') is not null drop proc DELETEHoSoThiSinh;
go

create proc DELETEHoSoThiSinh
@sbd int
as
begin
	Delete NGUYENVONG where SBD=@sbd;
	Delete HOSOTHISINH where SBD=@sbd;
end
go

if OBJECT_ID('INSERTHoSoThiSinh') is not null drop proc INSERTHoSoThiSinh;
go

create proc INSERTHoSoThiSinh
@sbd int,@hodem varchar(50),@ten varchar(50),@ngaysinh smalldatetime,@gioitinh bit,@tenhuyen varchar(50),@tentinh varchar(50),@doituong varchar(50),
@dantoc varchar(50),@toan float,@ly float,@hoa float,@sinh float,@van float,@su float,@dia float,@anhvan float
as
begin 
		declare @mahokhau int
			select @mahokhau=MaHoKhau
			from HOKHAU
			where TenHuyen=@tenhuyen and TenTinh=@tentinh
		declare @madoituong int
			select @madoituong = MaDoiTuong
			from DOITUONG
			where LoaiDoiTuong=@doituong
		declare  @madantoc int
			select @madantoc=MaDanToc
			from DANTOC
			where TenDanToc=@dantoc
		if(@mahokhau is not null and @madoituong is not null and @madantoc is not null)
		begin
			Insert HOSOTHISINH(SBD,HoDem,Ten,NgaySinh,GioiTinh,MaHoKhau,MaDoiTuong,MaDanToc,Toan,Ly,Hoa,Sinh,Van,Su,Dia,AnhVan)
			values (@sbd,@hodem,@ten, @ngaysinh,@gioitinh,@mahokhau,@madoituong,@madantoc,@toan,@ly,@hoa,@sinh,@van,@su,@dia,@anhvan)
		end;
end;
GO

if OBJECT_ID('UPDATEHoSoThiSinh') is not null drop proc UPDATEHoSoThiSinh;
go

create proc UPDATEHoSoThiSinh
@sbd int,@hodem varchar(50),@ten varchar(50),@ngaysinh smalldatetime,@gioitinh bit,@tenhuyen varchar(50),@tentinh varchar(50),@doituong varchar(50),
@dantoc varchar(50),@toan float,@ly float,@hoa float,@sinh float,@van float,@su float,@dia float,@anhvan float
as
begin 
	declare @mahokhau int
		select @mahokhau=MaHoKhau
		from HOKHAU
		where TenHuyen=@tenhuyen and TenTinh=@tentinh
	declare @madoituong int
		select @madoituong = MaDoiTuong
		from DOITUONG
		where LoaiDoiTuong=@doituong
	declare  @madantoc int
		select @madantoc=MaDanToc
		from DANTOC
		where TenDanToc=@dantoc
		if(@mahokhau is not null and @madoituong is not null and @madantoc is not null)
		begin
			Update HOSOTHISINH set HoDem=@hodem , Ten=@ten , NgaySinh=@ngaysinh , GioiTinh=@gioitinh,
			MaHoKhau=@mahokhau , MaDoiTuong=@madoituong , MaDanToc=@madantoc , Toan=@toan , Ly=@ly , 
			Hoa=@hoa , Sinh=@sinh , Van=@van , Su=@su , Dia=@dia , AnhVan=@anhvan
			where SBD=@sbd;
		end;
end
GO


----------------------------------------------------------------------------------------------------------------------
------------Nguyện Vọng---------

if OBJECT_ID('INSERTNguyenVong') is not null drop proc INSERTNguyenVong;
go

create proc INSERTNguyenVong
@sbd int,@tennganh varchar(50),@khoi varchar(50),@nguyenvong int
as
	declare @manganh int
	select @manganh=MaNganh
	from NGANH
	where TenNganh=@tennganh
	Insert NGUYENVONG (SBD,MaNganh,Khoi,NguyenVong)
	values(@sbd,@manganh,@khoi,@nguyenvong)
go

if OBJECT_ID('TriggerInsertNguyenVong') is not null drop trigger TriggerInsertNguyenVong;
go

create trigger TriggerInsertNguyenVong
on NGUYENVONG
instead of Insert
as
declare @sbd int,@manganh varchar(50),@khoi varchar(10),@nguyenvong int,
		@diemTB float,@danhgia varchar(50),@TestRowCount int;
select	@TestRowCount=COUNT(*) from inserted;
if @TestRowCount=1
	begin
		select @sbd=SBD,@manganh=MaNganh,@khoi=Khoi,@nguyenvong=NguyenVong
		from inserted;
		if(@sbd is not null and @manganh is not null and @khoi is not null and @nguyenvong is not null)
		begin
			if(@khoi=N'A')
			begin
				select @diemTB=Toan+Ly+Hoa
				from HOSOTHISINH
				where SBD=@sbd;
				if(@diemTB>=0)
				begin
					--print'vao dung diem';
					select @danhgia='True'
					from NGANH
					where NGANH.MaNganh=@manganh and @diemTB>NGANH.DiemChuan;

					--select @danhgia;
					Insert NGUYENVONG (SBD,MaNganh,Khoi,NguyenVong,DiemTB,DanhGia)
					values(@sbd,@manganh,@khoi,@nguyenvong,@diemTB,@danhgia)
				end;
			end;
		else
			if(@khoi=N'A1')
			begin
				select @diemTB=Toan+Ly+AnhVan
				from HOSOTHISINH
				where SBD=@sbd;

				if(@diemTB>=0)
				begin
					--print'vao dung diem';
					select @danhgia='True'
					from NGANH
					where NGANH.MaNganh=@manganh and @diemTB>NGANH.DiemChuan;

					--select @danhgia;
					Insert NGUYENVONG (SBD,MaNganh,Khoi,NguyenVong,DiemTB,DanhGia)
					values(@sbd,@manganh,@khoi,@nguyenvong,@diemTB,@danhgia)
				end;
			end;
			else
			if(@khoi=N'B')
			begin
				select @diemTB=Toan+Hoa+Sinh
				from HOSOTHISINH
				where SBD=@sbd;

				if(@diemTB>=0)
				begin
					--print'vao dung diem';
					select @danhgia='True'
					from NGANH
					where NGANH.MaNganh=@manganh and @diemTB>NGANH.DiemChuan;

					--select @danhgia;
					Insert NGUYENVONG (SBD,MaNganh,Khoi,NguyenVong,DiemTB,DanhGia)
					values(@sbd,@manganh,@khoi,@nguyenvong,@diemTB,@danhgia)
				end;
			end;
			else
			if(@khoi=N'C')
			begin
				select @diemTB=Van+Su+Dia
				from HOSOTHISINH
				where SBD=@sbd;

				if(@diemTB>=0)
				begin
					--print'vao dung diem';
					select @danhgia='True'
					from NGANH
					where NGANH.MaNganh=@manganh and @diemTB>NGANH.DiemChuan;

					--select @danhgia;
					Insert NGUYENVONG (SBD,MaNganh,Khoi,NguyenVong,DiemTB,DanhGia)
					values(@sbd,@manganh,@khoi,@nguyenvong,@diemTB,@danhgia)
				end;
			end;
			else
			if(@khoi=N'D')
			begin
				select @diemTB=Toan+Van+AnhVan
				from HOSOTHISINH
				where SBD=@sbd;

				if(@diemTB>=0)
				begin
					--print'vao dung diem';
					select @danhgia='True'
					from NGANH
					where NGANH.MaNganh=@manganh and @diemTB>NGANH.DiemChuan;

					--select @danhgia;
					Insert NGUYENVONG (SBD,MaNganh,Khoi,NguyenVong,DiemTB,DanhGia)
					values(@sbd,@manganh,@khoi,@nguyenvong,@diemTB,@danhgia)
				end;
			end;
			else
			throw 5000,'Lỗi khối',1;
		end;
		else
		throw 5000,'Lỗi không có dữ liệu từ 4 biến',1;
	end;
else
	throw 5000,'Bạn bị lỗi insert Nguyện Vọng',1;
go

if OBJECT_ID('DELETENguyenVong') is not null drop proc DELETENguyenVong
go

create proc DELETENguyenVong
@sbd int,
@tennganh varchar(50),
@khoi varchar(50),
@nguyenvong int
as
begin
	declare @manganh int
	select @manganh=MaNganh
	from NGANH
	where TenNganh=@tennganh;

	Delete NGUYENVONG where SBD=@sbd and MaNganh=@manganh and Khoi=@khoi and NguyenVong=@nguyenvong;
end;
go


-----------------------------------------------------------------------
-------------------------Diễm------------------------------------------

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

-----------------------
--test


declare @sbd int,
@tennganh varchar(50),
@khoi varchar(50),
@nguyenvong int
exec DELETENguyenVong @sbd=1,@tennganh='Su Pham Tieng Anh',@khoi='A',@nguyenvong=2;

---------------------------------Test Trigger------------------------------------------------------





create trigger TriggerInsertNguyenVong
on NGUYENVONG
instead of Insert
as
declare @sbd int,@manganh varchar(50),@khoi varchar(10),@nguyenvong int,
		@diemTB float,@danhgia bit,@TestRowCount int;
select	@TestRowCount=COUNT(*) from inserted;
if @TestRowCount=1
	begin
		select @sbd=SBD,@manganh=MaNganh,@khoi=Khoi,@nguyenvong=NguyenVong
		from inserted;
		declare @diemA float,@diemA1 float,@diemB float,@diemC float,@diemD float;
		--if (@sbd is not null and @manganh is not null and @khoi is not null and @nguyenvong is not null)
			--begin
				--if @diemTB is null
					--begin
						select @diemA=Toan+Ly+Hoa
						from NGUYENVONG join HOSOTHISINH on NGUYENVONG.SBD=HOSOTHISINH.SBD
						where Khoi=N'A' and NGUYENVONG.SBD=@sbd --and NGUYENVONG.MaNganh=@manganh;
					--end;
				--if @diemTB is null
					--begin
						select @diemA1=Toan+Ly+AnhVan
						from NGUYENVONG join HOSOTHISINH on NGUYENVONG.SBD=HOSOTHISINH.SBD
						where Khoi=N'A1' and NGUYENVONG.SBD=@sbd --and NGUYENVONG.MaNganh=@manganh;
					--end;
				--if @diemTB is null
					--begin
						select @diemB=Sinh+Ly+Hoa
						from NGUYENVONG join HOSOTHISINH on NGUYENVONG.SBD=HOSOTHISINH.SBD
						where Khoi=N'B' and NGUYENVONG.SBD=@sbd --and NGUYENVONG.MaNganh=@manganh;
					--end;
				--if @diemTB is null
					--begin
						select @diemC=Van+Su+Dia
						from NGUYENVONG join HOSOTHISINH on NGUYENVONG.SBD=HOSOTHISINH.SBD
						where Khoi=N'C' and NGUYENVONG.SBD=@sbd --and NGUYENVONG.MaNganh=@manganh;
					--end;
				--if @diemTB is null
					--begin
						select @diemD=Toan+Ly+AnhVan
						from NGUYENVONG join HOSOTHISINH on NGUYENVONG.SBD=HOSOTHISINH.SBD
						where Khoi=N'D1' and NGUYENVONG.SBD=@sbd --and NGUYENVONG.MaNganh=@manganh;
					--end;
				--if (@danhgia is null and @diemTB is not null)
					--begin
						select @danhgia=1
						from NGUYENVONG join NGANH on NGUYENVONG.MaNganh=NGANH.MaNganh
						where NGUYENVONG.SBD=@sbd and NGUYENVONG.MaNganh=@manganh and @diemTB>NGANH.DiemChuan;
					--end;
				--if (@danhgia is null and @diemTB is not null)
					--begin
						select @danhgia=0
						from NGUYENVONG join NGANH on NGUYENVONG.MaNganh=NGANH.MaNganh
						where NGUYENVONG.SBD=@sbd and NGUYENVONG.MaNganh=@manganh and @diemTB<NGANH.DiemChuan;
					--end;
				Insert NGUYENVONG (SBD,MaNganh,Khoi,NguyenVong,DiemTB,DanhGia)
				values(@sbd,@manganh,@khoi,@nguyenvong,@diemTB,@danhgia)
			--end;
		--else
			--throw 50027,'Limit Insert to a single row.',1;
	end;
go
create trigger TriggerInsertNguyenVong
on NGUYENVONG
instead of Insert
as
declare @sbd int,@manganh varchar(50),@khoi varchar(10),@nguyenvong int,
		@diemTB float,@danhgia varchar(50),@TestRowCount int;
select	@TestRowCount=COUNT(*) from inserted;
if @TestRowCount=1
	begin
		select @sbd=SBD,@manganh=MaNganh,@khoi=Khoi,@nguyenvong=NguyenVong
		from inserted;

		--declare @diemA float,@diemA1 float,@diemB float,@diemC float,@diemD float;
		if (@khoi=N'A')
			begin
				print'vao dung khoi';
				--declare @diemTB float
				--declare @danhgia varchar(50)
				select @diemTB=Toan+Ly+Hoa
				from HOSOTHISINH
				where SBD=1;
				if(@diemTB>0)
				begin
					print'vao dung diem';
					select @danhgia='True'
					from NGANH
					where NGANH.MaNganh=7140231 and @diemTB>NGANH.DiemChuan;

					select TenNganh
					from NGANH
					where NGANH.MaNganh=7140231 and @diemTB>NGANH.DiemChuan;

					Print '$' + convert(varchar,@danhgia,1);
					select @danhgia;
					print 'hello';
					Insert NGUYENVONG (SBD,MaNganh,Khoi,NguyenVong,DiemTB,DanhGia)
					values(1,7140231,'A',2,@diemTB,@danhgia)
				end;
				else
				throw 50027,'Limit Insert to a single row.',1;
			end
			
		--if (@sbd is not null and @manganh is not null and @khoi is not null and @nguyenvong is not null)
		--	--begin
		--		--if @diemTB is null
		--			--begin
		--				select @diemA=Toan+Ly+Hoa
		--				from NGUYENVONG join HOSOTHISINH on NGUYENVONG.SBD=HOSOTHISINH.SBD
		--				where Khoi=N'A' and NGUYENVONG.SBD=@sbd --and NGUYENVONG.MaNganh=@manganh;
		--			--end;
		--		--if @diemTB is null
		--			--begin
		--				select @diemA1=Toan+Ly+AnhVan
		--				from NGUYENVONG join HOSOTHISINH on NGUYENVONG.SBD=HOSOTHISINH.SBD
		--				where Khoi=N'A1' and NGUYENVONG.SBD=@sbd --and NGUYENVONG.MaNganh=@manganh;
		--			--end;
		--		--if @diemTB is null
		--			--begin
		--				select @diemB=Sinh+Ly+Hoa
		--				from NGUYENVONG join HOSOTHISINH on NGUYENVONG.SBD=HOSOTHISINH.SBD
		--				where Khoi=N'B' and NGUYENVONG.SBD=@sbd --and NGUYENVONG.MaNganh=@manganh;
		--			--end;
		--		--if @diemTB is null
		--			--begin
		--				select @diemC=Van+Su+Dia
		--				from NGUYENVONG join HOSOTHISINH on NGUYENVONG.SBD=HOSOTHISINH.SBD
		--				where Khoi=N'C' and NGUYENVONG.SBD=@sbd --and NGUYENVONG.MaNganh=@manganh;
		--			--end;
		--		--if @diemTB is null
		--			--begin
		--				select @diemD=Toan+Ly+AnhVan
		--				from NGUYENVONG join HOSOTHISINH on NGUYENVONG.SBD=HOSOTHISINH.SBD
		--				where Khoi=N'D1' and NGUYENVONG.SBD=@sbd --and NGUYENVONG.MaNganh=@manganh;
		--			--end;
		--		--if (@danhgia is null and @diemTB is not null)
		--			--begin
		--				select @danhgia=1
		--				from NGUYENVONG join NGANH on NGUYENVONG.MaNganh=NGANH.MaNganh
		--				where NGUYENVONG.SBD=@sbd and NGUYENVONG.MaNganh=@manganh and @diemTB>NGANH.DiemChuan;
		--			--end;
		--		--if (@danhgia is null and @diemTB is not null)
		--			--begin
		--				select @danhgia=0
		--				from NGUYENVONG join NGANH on NGUYENVONG.MaNganh=NGANH.MaNganh
		--				where NGUYENVONG.SBD=@sbd and NGUYENVONG.MaNganh=@manganh and @diemTB<NGANH.DiemChuan;
		--			--end;
					
		--	--end;
		----else
		--	--throw 50027,'Limit Insert to a single row.',1;
	end

go
-----
declare @sbd int,@tennganh varchar(50),@khoi varchar(50),@nguyenvong int

INSERT NGUYENVONG (SBD,MaNganh,Khoi,NguyenVong)
values (1,'7140231','A',1)

select * from NGANH 

select * from NGUYENVONG

select * from HOSOTHISINH

delete NGUYENVONG where SBD=1;



insert NGANH(MaNganh, TenNganh, ChiTieu, DiemChuan) values
('7140231',	'Su Pham Tieng Anh111',30,23.04)

select TenNganh
from NGUYENVONG join NGANH on NGUYENVONG.MaNganh=NGANH.MaNganh
where SBD=1 and NGUYENVONG.MaNganh=7140231 --and 30>NGANH.DiemChuan;


select *
from NGANH
where TenNganh like '@ten%'