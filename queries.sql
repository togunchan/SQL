-- Seçilen Kayıtların Başka Tabloya Eklenmesi
insert into employee_performance(employee_id,fullname,email,satis_adeti)
select e.id, concat(e.first_name,' ',e.last_name) as fullname, e.email_address, count(o.id) as adet
from employees e left join orders o on e.id = o.employee_id
group by e.id

-- Join ile Update
update employees e inner join employee_performance ep
on e.id = ep.employee_id
set e.email_address = ep.email
where ep.email like '%updated%'

-- Join ile Delete
-- siparişi olmayan müşteriler siliniz.
select c.id, c.first_name, o.customer_id from customers c
left join orders o on o.customer_id = c.id
where o.customer_id is null

delete customers 
from customers left join orders
on orders.customer_id = customers.id
where orders.customer_id is null and customers.id = 13

-- Union ile çalışma
select email from employee_performance
union all
select email_address from employees

select city, country_region from employees
union 
select city, country_region from customers