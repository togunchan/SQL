select id, first_name from customers c
where EXISTS
(select id from orders o where c.id = o.customer_id and payment_type='Credit Card')


-- ikiden fazla sipariş verenler
select id, first_name, last_name from customers c
where EXISTS
(select count(*) from orders o
where c.id = o.customer_id
group by o.customer_id
having count(*)>2)



/*ANY & ALL*/

select id, product_name, list_price from products 
where id = any (select product_id from order_details where quantity > 10)

-- (id=2) or (id=3) or (id=5) or (id=10) 

select id, product_name, list_price from products 
where id > all (select product_id from order_details where quantity > 10)

-- (id=2) and (id=3) and (id=5) and (id=10) 

-- Select avg(salary) from customers2

select * from customers2
where salary > any (select avg(salary) from customers2)

select * from customers2
where age > any (select age from customers2 where salary > 5000)