--SubQuery

select * from sales.customers
--Ex-1
select  order_id, order_date, customer_id from sales.orders where
 customer_id IN (
select customer_id from sales.customers where city = 'New York'
)
order by
   customer_id;

--Ex-2
select * from production.products where list_price=(
select min(list_price) from production.products
)


--Ex-3
select * from sales.orders
select customer_id,first_name from sales.customers where customer_id in( 
select customer_id from sales.orders
)

