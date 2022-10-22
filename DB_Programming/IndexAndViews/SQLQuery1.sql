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


--Views

use MyDatabase

select * from Department
select * from Employee 


--syntx to create view
use BikeStore

select
    product_name, 
    brand_name, 
    list_price
from
    production.products p
inner join production.brands b 
        ON b.brand_id = p.brand_id;


create view sales.product_info
as
select
    product_name, 
    brand_name, 
    list_price
from
    production.products p
inner join production.brands b on b.brand_id = p.brand_id;
        


select * from sales.product_info;

create view sales.product_info1
as
select
    product_name, 
    brand_name, 
    list_price
from
    production.products p
inner join production.brands b on b.brand_id = p.brand_id where brand_name='Haro'

select * from sales.product_info1


--alter

alter view sales.product_info1
as
select
    product_name, 
    brand_name, 
    list_price
from
    production.products p
inner join production.brands b on b.brand_id = p.brand_id where brand_name='Haro'  or brand_name= 'Trek'

select * from sales.product_info1

-- to delete  the view

drop view sales.product_info1


use MyDatabase
--To create view
create view vw_ForEmp
as
select * from Employee

--To call a view
select * from vw_ForEmp

--inserting new values into view table
insert into vw_ForEmp values('Ajay',20000,'HR',2)

-- updating data into view table
update vw_ForEmp set EmpName='Shreya' where EmpId='10'

--deleting data into view table
delete from vw_ForEmp where EmpId=9