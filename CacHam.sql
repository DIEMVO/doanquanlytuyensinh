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
 @UserName varchar(50)
as
begin  
	select * from dbo.Account where UserName=@UserName;
end
go




