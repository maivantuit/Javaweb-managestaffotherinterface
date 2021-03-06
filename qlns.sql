CREATE database QLNS
go
use QLNS
go
create table Staff(
MaNV int identity(100,1) primary key not null,
Ho char(6) not null,
Ten varchar(30) not null,
dob date not null,
sex char(10) check(Sex= N'Nam' or sex= N'Nu'),
CMND int check(len(CMND)=9 or len(CMND)=12) unique,
PW varchar(5) not null,
Status nvarchar(100),

)

-------------------------------------------

insert into Staff values ('Mai Van','Tu','01/12/1995','Nam','231026084','12345','')
insert into Staff values ('nguyen','Trung','2/11/1985','Nam','231026085','12346','')
insert into Staff values ('tran','Linh','05/10/1990','Nu','231026078','12789','')
insert into Staff values ('bui','Hao','05/05/1991','Nam','230456084','12365','')
insert into Staff values ('nguyen','Hoang','04/12/1989','Nam','231987123','12897','')

-------------------------------------------
go
create table department(
MaDV int identity(10,1) primary key not null,
TenDV nvarchar(50) not null,
Tel char(11)check(Tel like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'or Tel like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' ) not null,
Email nvarchar(50)check(Email like '%@%') not null,
)
-----------------------------------------
insert into department values('Kinh Doanh','01677314240','lyamy@gmail.com')
insert into department values('Ke Toan','01633059921','hao123@gmail.com')
insert into department values('Kiem Toan','0905678234','hoakim@gmail.com')
-----------------------------------------
go
create table DSNV(
MaNV int foreign key references Staff(MaNV),
MaDV int foreign key references department(MaDV),
primary key(MaNV,MaDV),
chucvu nvarchar(30) not null,
capnhat nvarchar(50) not null,
ghichu nvarchar(50),
)
----------------------------------------
insert into DSNV values('100','10','thu ngan','','BT')
insert into DSNV values('101','10','giam doc','','BT')
insert into DSNV values('102','10','pho truong phong','','BT')
insert into DSNV values('103','11','giam doc','','BT')
insert into DSNV values('104','12','pho truong phong','','BT')

----------------------------------------
go
create table SuKien(
MaSK int identity(50,1) primary key,
TenSK nvarchar(30) not null,
MoTa nvarchar(160)not null,
)
----------------------------------------
insert into SuKien values('lể trao bằng','')
insert into SuKien values('lể nhận chức','')
insert into SuKien values('ra mat san pham moi','')
----------------------------------------
go
create  table NhatKy(
LogID int identity(0,1) primary key,
MaNV int foreign key references Staff(MaNV),
MaSK int foreign key references SuKien(MaSK),
NoiDung nvarchar(100),
NgayHL datetime default(getDate()),

)
-----------------------------------------
insert into NhatKy values('100','50','','12/7/2017')
insert into NhatKy values('101','51','','8/23/2017')
insert into NhatKy values('102','52','','05/9/2017')





