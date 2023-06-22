use master
go
create database [AoeDataWeb]
go
use AoeDataWeb
go
create table [user]
(
	id int primary key identity,
	username varchar(10) unique not null,
	[password] varchar(10) not null,
	email varchar(50) unique not null,
	isAdmin bit not null default 0,
	isActive bit not null default 1
)
go
create table video
(
	id int primary key identity,
	title nvarchar(255) not null,
	href nvarchar(50) unique not null,
	poster varchar(255) null,
	[views] int not null default 0,
	shares int not null default 0,
	[description] nvarchar(255) not null,
	isActive bit not null default 1
)
go
create table history
(
	id int primary key identity,
	userId int foreign key references [user](id),
	videoId int foreign key references video(id),
	viewedDate datetime not null default getDate(),
	isLiked bit not null default 0,
	likeDate datetime null
)
insert into [user](username, [password], email, isAdmin) values
('phuph', '301', 'phuph301@gmail.com', 1),
('hoangtran', '222', 'hoangtran@gmail.com', 0)
go
insert into video(title, href, [description]) values
(N'SỰ KIỆN KHAI TRƯƠNG SHOWROOM APPLE ITAMLOAN LỚN NHẤT MIỀN TÂY', 'L6oZcjNArBQ', 'iTamLoan khai trương showroom Apple chính hãng lớn nhất miền tây vào ngày 29.11.2020, đánh dấu sự phát triển vượt bậc của iTamLoan sau chặng đường 12 năm.'),
(N'TỔ CHỨC SỰ KIỆN TRIỂN KHAI VÀ VẬN HÀNH THÀNH CÔNG DỰ ÁN ERP', 'cdmwBPnYt-A', 'Sự kiện diễn ra vào ngày 27/3 vừa qua, nhằm chúc mừng dự án vận hành thành công của Công ty Công Nghệ Tiên Tiến Việt Nam cùng đối tác Hưng Trí và ATS.'),
(N'Info Finance - Ngày Hội Đầu Tư Tài Chính Lớn Nhất 2023', 'SVI-uEddBuY', 'Công Ty TNHH Truyền Thông Sự Kiện Thiên An
VPĐD: 11A Hồng Hà, Phường 2, Quận Tân Bình, Tp.HCM
VPKD: 245E/1 Hoàng Văn Thụ, Phường 1, Tân Bình, Tp.HCM
Hotline : 0911 407 447')
go
insert into history(userId, videoId, isLiked, likeDate) values
(2,1,1, getDate()),
(2,3,0,null)
go