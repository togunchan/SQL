-- Hangi üründen kaç tane satılmış?
select p.id, p.product_name, count(*) adet from products p inner join order_details od
on od.product_id = p.id
group by p.id
order by adet

-- En çok kazandıran ilk 3 ürün hangisi?
select p.id, p.product_name, sum(od.quantity*od.unit_price) as kazanç from products p inner join order_details od
on od.product_id = p.id
group by p.id
order by kazanç DESC
limit 3

-- Hangi kargo şirketlerine toplam ne kadar ödeme yapılmıştır?
select s.company, sum(o.shipping_fee) total from orders o inner join shippers s
on o.shipper_id = s.id
group by s.id
order by total

-- En uygun kargo ücreti hangisidir?
select s.company, sum(o.shipping_fee) from orders o inner join shippers s
on s.id = o.shipper_id
where o.shipping_fee > 0
group by s.id
having count(o.id) > 5