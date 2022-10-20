--Transaction
select * from Employee

insert into Employee values(1,'Akhilesh','M','Mumbai','Maharashtra')
insert into Employee values(2,'Divyansh','M','Indore','MP')
insert into Employee values(3,'Ajay','M','Mumbai','Maharashtra')


Begin transaction
insert into Employee values(4,'Shreya','F','Pune','Maharashtra')

update Employee set Address='Indore' where Name='Ajay' 
update Employee set State='MP' where Name='Ajay' 


delete from Employee where Name='Divyansh'

Declare @ch int;
set @ch=1
if @ch=0
begin
commit
end
else
begin 
rollback
end


begin transaction
delete from Employee where Name='Akhilesh'

rollback
commit

