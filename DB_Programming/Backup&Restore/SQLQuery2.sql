create database BookStore

use BookStore

create table Users_Details(
Id int identity(1,1) primary key,
FullName varchar(100) not null,
EmailId varchar(100) not null,
Password varchar(100) not null,
MobileNumber bigint
)


--For Sign-Up
select * from Users_Details

create procedure sp_SignUp(@FullName varchar(100),@EmailId varchar(100),@Password varchar(150),@MobileNumber bigint)
as 
begin
 insert into Users_Details values(@FullName,@EmailId,@Password,@MobileNumber)
end


exec sp_SignUp 'Siddhant','siddhantshrivastava@gmail.com','Siddhant@111',999999999
exec sp_SignUp 'Siddharth','siddharthshrivastava@gmail.com','Siddharth@5',8888888888


--For Sign-in
create procedure sp_SignIn(@EmailId varchar(100),@Password varchar(150))
as 
begin
select * from Users_Details where emailid=@EmailId or password=@Password
end

exec sp_SignIn 'siddhantshrivastava@gmail.com','Siddhant@111'