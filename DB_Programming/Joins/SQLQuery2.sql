--Joins

select * from production.products
select * from production.categories

--InnerJoin
select product_name,category_name,list_price from production.products p inner join production.categories c on p.category_id=c.category_id

--left join
select * from sales.order_items
select * from production.products

select product_name,order_id from production.products p left join sales.order_items o on o.product_id = p.product_id
order by order_id;

--right join
select product_name,order_id from sales.order_items o right join production.products p   on o.product_id = p.product_id
order by order_id;