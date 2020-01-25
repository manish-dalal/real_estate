create table UserDetails
(
		userID int primary key identity(1,1),
		firstName varchar(50) NOT NULL,
		lastName varchar(50) NOT NULL,
		mobile varchar(50) NOT NULL,
		email varchar(50) NOT NULL,
		userName varchar(50) NOT NULL,
		password varchar(50) NOT NULL,
)
select * from UserDetails

create proc prcInsertUserDetails @fname varchar(50), @lname varchar(50), @mobile varchar(50), @email varchar(20),
@username varchar(250), @password varchar(50), @ret int output
as
begin
	if exists(select * from UserDetails where userName=@username)
	begin
		select @ret=0
	end
	else if exists(select * from Userdetails where mobile=@mobile)
	begin
		select @ret=-1
	end
	else
	begin
		insert into UserDetails (firstName, lastName, mobile, email, userName, password) 
	values(@fname, @lname, @mobile, @email, @username, @password)
		select @ret=1
	end
end

create proc prcCheckUserLogin @userName varchar(50), @password varchar(50), @ret int output
as
begin
	if exists(select * from UserDetails where userName=@userName and password=@password)
	begin
		select @ret=1
	end
	else 
	begin
		select @ret=0
	end
end

declare @r int
exec prcCheckUserLogin 'jhManish@123', 'pass', @r output
select @r

select * from UserDetails where password='pass'


create table admindetails (
username varchar(50),
password varchar(50)
)
select * from admindetails
insert into admindetails values ('admin','admin')


create table Property (
propertyID varchar(50) not null primary key,
area varchar(50) not null,
bedroom varchar(50) not null,
bathroom varchar(50) not null,
kitchen varchar(50) not null,
garage varchar(50) not null,
city varchar(50) not null,
description varchar(400),
price varchar(100) not null,
balcony varchar(50) not null,
pool varchar(50) not null,
status varchar(50) not null,
address varchar(100) not null,
images varchar(100) not null
)

select * from Property


create table userreq
(
		propertyId varchar(50) NOT NULL ,
		Name varchar(50) NOT NULL,
		mobile varchar(50) NOT NULL,
		email varchar(50) NOT NULL
)

select * from userreq


RESTORE DATABASE real FROM disk = 'E:\workJ2EE\real\realDB' WITH REPLACE



