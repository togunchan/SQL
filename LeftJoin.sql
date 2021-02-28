-- Hiç sipariş vermeyenler
select c.first_name, o.id as orderid from customers c
left join orders o
on o.customer_id = c.id
where o.id is null

select p.id, p.product_name from products p left join order_details od
on p.id = od.product_id