--List all orders along with the customer’s name and the store they ordered from.
SELECT fact_orders.order_id,dim_customers.first_name,dim_customers.last_name,dim_stores.store_name  FROM fact_orders
inner join dim_customers
on dim_customers.customer_id = fact_orders.order_id
inner join dim_stores
on fact_orders.store_id = dim_stores.store_id

--Get a list of products that are currently in stock, including product name, quantity, and store name.
SELECT dim_products.product_name, dim_orderitems.quantity,dim_stores.store_name from dim_products
inner join dim_products
on dim_products.product_id=dim_stocks.product_id
inner join dim_products
on dim_products.product_id=dim_order_items.product_id
inner join dim_products
on dim_products.


--Find the total number of orders placed by each customer.

SELECT fact_orders.customer_id,count(fact_orders.order_id) as total_orders from fact_orders
GROUP by fact_orders.customer_id
order by fact_orders.customer_id asc
