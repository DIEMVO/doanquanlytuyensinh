 use QuanLyTuyenSinh;
 go
 --Function
 select * from ShowHOSOTHISINH() as Show;
 go

 --Store PROC
 EXEC dbo.CHECKLOGIN @UserName=N'Admin';
 go