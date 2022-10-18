--Stored procedure


select * from production.products
--Non parameterised Stored procedure

create procedure ListOfProducts
as
begin
select product_name,category_id,list_price from production.products order by product_name
end

--there are two ways to call stored procedure
Execute ListOfProducts               -- First one
Exec ListOfProducts                  -- Second one


select * from sales.customers

create procedure ListOfCustomers
as
begin 
select customer_id, first_name,last_name, city , state from sales.customers order by first_name
end

exec ListOfCustomers


--Modifying stored procedure

alter procedure ListOfProducts
as
begin
select product_name,model_year,category_id,list_price from production.products order by list_price
end

Exec ListOfProducts  


--For deleting stored procedure, use below commands
drop procedure ListOfProducts

drop procedure ListOfCustomers


--Parameterised stored procedure

create procedure GetEmpById @Id int
as 
begin 
select * from sales.customers where customer_id=@Id
end

exec GetEmpById 10


create procedure uspFindProducts(@min_list_price as decimal)
as
begin
select   product_name, list_price from production.products where list_price <= @min_list_price
order by list_price;
end;

EXEC uspFindProducts 200;


