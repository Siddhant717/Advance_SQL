--Offset Fetch clause---------------


--offset clause--------
select * from sales.customers
select first_name,last_name,city from sales.customers order by city desc
Offset 10 rows 

select * from production.products
select product_name, list_price from production.products order by list_price
OFFSET 10 rows 

select * from sales.staffs
select first_name from sales.staffs order by first_name
OFFSET 4 rows 

--Offset with fetch clause-------
select * from sales.customers
select first_name,city from sales.customers order by first_name
OFFSET 5 rows
fetch next 4 rows only

select first_name,city from sales.customers order by first_name
OFFSET 0 rows
fetch first 2 rows only

select * from production.products
select product_name,model_year from production.products order by product_name 
OFFSET 15 rows
fetch next 10 rows only

select * from production.products order by model_year 
OFFSET 0 rows
fetch first 30 rows only


--Select Top clause----

select * from production.products
select Top 3 product_name from production.products

--with order by clause
select * from production.products
select Top 3 product_name,list_price from production.products order by list_price

select * from sales.staffs
select Top 5 staff_id, first_name from sales.staffs 


--Using percentage
select * from production.products
select Top 10 percent product_name from production.products 

--with order by clause
select Top 10 percent product_name from production.products order by list_price

--With Ties
select * from production.products


select top 3 with ties
    product_name, 
    list_price
from
    production.products
order by 
    list_price desc;