--Find the product(s) with the highest total sales quantity.
SELECT p.product_name, sum(oi.quantity) as total_sales from dim_products as p
inner join dim_order_items as oi
on oi.product_id = p.product_id
group by p.product_name
order by total_sales desc
LIMIT 1

--Get a report showing each store's name, city, and the total number of products in stock.
select s.store_name,s.city,sum(st.quantity) from dim_stores as s
inner join dim_stocks as st
on s.store_id=st.store_id
GROUP by s.store_name,s.city

-- List all staff who manage other staff (i.e., their staff_id appears in another row's manager_id).

select distinct s1.first_name,s2.last_name from dim_staff as s1
inner join dim_staff as s2
on s1.staff_id=s2.manager_id

SELECT s1.first_name, s1.last_name
FROM dim_staff s1
JOIN dim_staff s2 ON s1.staff_id = s2.manager_id;

--Display customer names and the total amount they have spent, ordered by highest to lowest spend.
select c.first_name,c.last_name, sum(oi.list_price) as price from dim_customers as c
inner join fact_orders as o
on o.customer_id = c.customer_id
inner join dim_order_items as oi
on oi.order_id = o.order_id
group by c.first_name,c.last_name
order by price DESC








