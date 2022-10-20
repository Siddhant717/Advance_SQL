--Trigger

create table EmployeeDetails(
Id int  identity,
Name varchar(10),
Department varchar(20),
Gender char(1),
Salary money
)

select * from EmployeeDetails

insert into EmployeeDetails values ('Siddhant','Mech','M',35000)
insert into EmployeeDetails values ('Shreya','Sales','F',30000)
insert into EmployeeDetails values ('Riya','HR','F',38000)
insert into EmployeeDetails values ('Atharva','HR','M',20000)
insert into EmployeeDetails values ('Shubham','Mech','M',15000)
insert into EmployeeDetails values ('Aniket','Mech','M',15000)
insert into EmployeeDetails values ('saara','HR','F',15000)
insert into EmployeeDetails values ('Tushar','HR','M',20000)
set Identity_Insert Employeedetails ON
insert into EmployeeDetails values ('Akshita','CS','F',25000)
set Identity_Insert Employeedetails OFF




create table Audit_table(
Audit_Id int primary key identity,
Audit_Info varchar(255)
)

select * from Audit_table

create trigger EmployeeDetails_insert
on EmployeeDetails 
after insert
as
begin
Declare @id int
select @Id=id from inserted
insert into Audit_table values('Employee with id'+ cast(@Id as varchar(20))+ ' is added at '+ cast(getdate() as varchar(20)))
end

alter trigger EmployeeDetails_insert
on EmployeeDetails 
after insert
as
begin
Declare @name varchar (20)
select @Name=name from inserted
insert into Audit_table values('Employee with name '+ @Name+ ' is added at '+ cast(getdate() as varchar(20)))
end

create trigger EmployeeDetails_ForDelete
on EmployeeDetails 
after delete
as
begin
Declare @name varchar (20)
select @Name=name from deleted
insert into Audit_table values('Employee with name '+ @Name+ ' is deleted at '+ cast(getdate() as varchar(20)))
end

delete from EmployeeDetails where Id=13
delete from EmployeeDetails where Id=14
