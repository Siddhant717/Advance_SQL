
select * from sales.customers;

--It will display only first name and email columns from customers table
select first_name,email from sales.customers;

--It will display only first name,city,street,state columns from customers table
select first_name, city,street ,state from sales.customers


select * from production.products

--It will display only product name,model year,list price columns from customers table
select product_name,model_year,list_price from production.products

--It will display all the records from each tables
select * from production.categories
select * from production.brands
select * from production.products
select * from production.stocks

--Display only those product name  whose model year is 2019
select product_name ,model_year from production.products where model_year =2019

select * from production.products where category_id=6

select * from sales.customers

--Display first name in asc order
select * from  sales.customers order by first_name 

--Display city names in desc order
select city from sales.customers order by city desc

--with where clause
select first_name ,last_name, city from sales.customers where city='Fairport' order by first_name 

select first_name , street ,state from sales.customers where state='TX' order by first_name

select * from production.products where category_id=3 or category_id=4 order by product_name desc

select * from production.stocks where quantity=15 

select * from production.brands order by brand_name desc

select first_name,last_name, store_id from sales.staffs where store_id=2 order by first_name

select * from sales.staffs
select * from sales.customers
select * from sales.order_items
select * from sales.orders
select * from sales.stores

select * from sales.customers  group by city

--group by
select city,count(*) Total from sales.customers group by city

select category_id,count(*) Total from production.products group by category_id

select product_name , count(*) Total from production.products where  model_year=2016 group by product_name order by product_name desc



