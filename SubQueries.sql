select id, order_date from orders 
where status_id = (select id from orders_status where status_name = 'Shipped')

select c.id, c.first_name, c.last_name,
(select count(o.id) from orders o where o.customer_id=c.id) as ordercount
from customers c

select id,product_name from products
where id in (select product_id from order_details where quantity>100)