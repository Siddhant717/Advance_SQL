--Cluster Index


select * from Employee
insert into Employee values(5,'Siddhant','M','Indore','MP')
insert into Employee values(6,'Rishabh','M','Indore','MP')
insert into Employee values(7,'Priyanka','F','Indore','MP')
insert into Employee values(8,'Tarun','M','Indore','MP')
insert into Employee values(9,'Varidhi','F','Indore','MP')
insert into Employee values(10,'Tanya','F','Indore','MP')


create clustered index ix_Id
on Employee(Id)


sp_helpindex Employee


--non cluster index

create nonclustered index ix_Name
on Employee(Name asc)


sp_helpindex Employee


--To delete clustered and nonclustered index

drop index Employee.ix_Id

drop index Employee.ix_Name