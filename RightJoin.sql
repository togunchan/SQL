select o.id, e.first_name from orders o right join employees e
on e.id = o.employee_id
order by o.id