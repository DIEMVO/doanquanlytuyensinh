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
(2,'Vo Thanh','Tam',CAST('2018-11-25 00:00:00' as smalldatetime),1,2,1,1,10,10,10,10,10,10,10,10),
(3,'Phan Dinh','Hoang',CAST('2017-11-26 00:06:00' as smalldatetime),3,1,2,5,10,10,10,10,10,10,10,10),
(4,'Tran Van','A',CAST('2019-11-25 00:00:00' as smalldatetime),1,2,1,1,10,9,10,7,10,8,10,5),
(5,'Le Quoc','Vuong',CAST('2019-11-02 00:00:00' as smalldatetime),1,3,3,6,7,10,10,6,10,10,8,10),
(6,'Le Nguyen','Vuong',CAST('2019-11-01 00:00:00' as smalldatetime),1,2,1,1,10,10,10,10,10,10,10,10),
(7,'Vo Thi Kieu','Diem',CAST('2019-08-06 00:05:00' as smalldatetime),2,2,1,1,10,10,10,10,10,10,10,10),
(8,'Tran Gia','Han',CAST('2019-10-04 00:06:00' as smalldatetime),2,3,4,1,10,9,10,8,10,10,8,10),
(9,'Bui Thi Hong','Nhung',CAST('2019-12-29 00:01:00' as smalldatetime),2,2,6,5,6,7,8,10,9,10,10,10),
(10,'Le Nguyen','Vinh',CAST('2019-11-08 00:00:07' as smalldatetime),1,3,5,6,7,7,10,6,10,8,10,9),
(11,'Le Van','Vinh',CAST('2019-10-01 00:02:07' as smalldatetime),1,2,3,3,3,7,10,5,10,8,10,9),
(12,'Le Thi','Linh',CAST('2019-08-02 00:10:07' as smalldatetime),2,1,2,3,9,7,9,6,10,8,10,9),
(13,'Le Van','Trinh',CAST('2019-01-01 00:03:07' as smalldatetime),1,1,5,3,7,2,10,6,7,8,10,5),
(14,'Le Nguyen','Vinh',CAST('2019-11-01 00:00:07' as smalldatetime),1,3,5,6,7,7,10,6,10,8,10,9),
(15,'Vo Van','Chinh',CAST('2019-11-05 00:08:07' as smalldatetime),1,1,5,4,7,8,9,6,6,8,10,8),
(16,'Tran Gia','Ha',CAST('2019-03-10 00:05:04' as smalldatetime),2,2,5,3,2,7,5,6,10,6,10,9),
(17,'Nguyen Van','Doan',CAST('2019-12-14 00:00:03' as smalldatetime),1,2,2,2,7,5,4,6,5,8,6,9),
(18,'Nguyen','Vinh',CAST('2019-11-01 00:0:07' as smalldatetime),1,3,5,6,7,7,10,6,10,8,10,9),
(19,'Nguyen Tra','My',CAST('2019-11-05 00:05:07' as smalldatetime),2,2,5,3,5,7,9,6,10,8,10,9),
(20,'Nguyen Huyen','My',CAST('2019-11-10 00:05:06' as smalldatetime),2,1,2,2,5,6,9,2,7,8,3,9),
(21,'Nguyen Van','Hau',CAST('2019-03-10 00:03:06' as smalldatetime),1,4,2,4,5,6,7,7,7,8,5,6),
(22,'Nguyen Huyen','Anh',CAST('2019-04-10 00:02:04' as smalldatetime),2,3,4,5,6,6,2,2,7,5,3,2),
(23,'Nguyen Thi','Trang',CAST('2019-08-12 00:04:03' as smalldatetime),2,3,3,4,8,6,5,2,6,8,3,10),
(24,'Nguyen Van','Thinh',CAST('2019-02-10 00:01:06' as smalldatetime),1,1,2,3,5,7,9,2,7,8,3,9),
(25,'Le Quoc Nguyen','Trinh',CAST('2019-11-25 00:00:00' as smalldatetime),1,1,1,1,10,10,10,10,10,10,10,10),
(26,'Vo Thanh','Tanh',CAST('2018-11-25 00:00:00' as smalldatetime),1,2,1,1,10,10,10,10,10,10,10,10),
(27,'Phan Dinh','Thai',CAST('2017-11-26 00:06:00' as smalldatetime),3,1,2,5,10,10,10,10,10,10,10,10),
(28,'Tran Van','Hau',CAST('2019-11-25 00:00:00' as smalldatetime),1,2,1,1,10,9,10,7,10,8,10,5),
(29,'Le Quoc','Thai',CAST('2019-11-02 00:00:00' as smalldatetime),1,3,3,6,7,10,10,6,10,10,8,10),
(30,'Le Nguyen','Tam',CAST('2019-11-01 00:00:00' as smalldatetime),1,2,1,1,10,10,10,10,10,10,10,10),
(31,'Vo Thi Kieu','Trinh',CAST('2019-08-06 00:05:00' as smalldatetime),2,2,1,1,10,10,10,10,10,10,10,10),
(32,'Tran Gia','Hoa',CAST('2019-10-04 00:06:00' as smalldatetime),2,3,4,1,10,9,10,8,10,10,8,10),
(33,'Bui Thi Hong','Trang',CAST('2019-12-29 00:01:00' as smalldatetime),2,2,6,5,6,7,8,10,9,10,10,10),
(34,'Le Van','Vinh',CAST('2019-11-08 00:00:07' as smalldatetime),1,3,5,6,7,7,10,6,10,8,10,9),
(35,'Le Van','Binh',CAST('2019-10-01 00:02:07' as smalldatetime),1,2,3,3,3,7,10,5,10,8,10,9),
(36,'Le','Linh',CAST('2019-08-02 00:10:07' as smalldatetime),2,1,2,3,9,7,9,6,10,8,10,9),
(37,'Le Van','Tinh',CAST('2019-01-01 00:03:07' as smalldatetime),1,1,5,3,7,2,10,6,7,8,10,5),
(38,'Le thi','Vinh',CAST('2019-11-01 00:00:07' as smalldatetime),1,3,5,6,7,7,10,6,10,8,10,9),
(40,'Vo Van','Tao',CAST('2019-11-05 00:08:07' as smalldatetime),1,1,5,4,7,8,9,6,6,8,10,8),
(41,'Tran Gia','Nga',CAST('2019-03-10 00:05:04' as smalldatetime),2,2,5,3,2,7,5,6,10,6,10,9),
(42,'Nguyen Van','Han',CAST('2019-12-14 00:00:03' as smalldatetime),1,2,2,2,7,5,4,6,5,8,6,9),
(43,'Nguyen','Vinh',CAST('2019-11-01 00:0:07' as smalldatetime),1,3,5,6,7,7,10,6,10,8,10,9),
(44,'Nguyen Tra','Ngoc',CAST('2019-11-05 00:05:07' as smalldatetime),2,2,5,3,5,7,9,6,10,8,10,9),
(45,'Nguyen Huyen','My',CAST('2019-11-10 00:05:06' as smalldatetime),2,1,2,2,5,6,9,2,7,8,3,9),
(46,'Nguyen Van','Thai',CAST('2019-03-10 00:03:06' as smalldatetime),1,4,2,4,5,6,7,7,7,8,5,6),
(47,'Nguyen Thi Huyen','Anh',CAST('2019-04-10 00:02:04' as smalldatetime),2,3,4,5,6,6,2,2,7,5,3,2),
(48,'Nguyen Thi','Trang',CAST('2019-08-12 00:04:03' as smalldatetime),2,3,3,4,8,6,5,2,6,8,3,10),
(49,'Nguyen Van','Hieu',CAST('2019-02-10 00:01:06' as smalldatetime),1,1,2,3,5,7,9,2,7,8,3,9),






(7,'Le Quoc Nguyen','Van',CAST('2019-11-10 00:00:00' as smalldatetime),2,2,4,6,10,8,10,7,6,10,5,10)
go