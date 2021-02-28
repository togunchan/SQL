--Outer join: iliþkili tablolardaki null olan kayýtlar da dahil tüm kayýtlarý getirir.
--3 çeþit outer join vardýr.
--Bunlar: left outer join, right outer join, full outer join
--1: Left outer join: Left tablo ilk yazýlan yani soldaki tablodur. Sol tablodaki tüm kayýrlar getirilir, null olsa bile ve sað tablodan sol tablonun iliþkili kayýtlarý getirilir.

select * from Products p
left outer join Categories c
on p.CategoryID=c.CategoryID

--Right outer join: Saðdaki tablo right tablodur. Saðdaki tablodaki null kayýtlar dahil tüm kayýtlar getirilir. Soldaki tablodan iliþkili kayýtlar getirilir.

select * from Products p
right outer join Categories c
on p.CategoryID=c.CategoryID

--Full outer join hem saðdaki tablodan hem soldaki tablodan null kayýtlarda dahil olmak üzere tüm kayýtlarý getirir.

select * from Products p
full outer join Categories c
on c.CategoryID=p.CategoryID

--Hangi tedarikçiden toplamda kaç dolarlýk ürün tedarik edilmiþtir.(tüm tedarikçiler gelmelidir.)

select s.SupplierID,SUM(p.UnitPrice) from Suppliers s
right outer join Products p
on s.SupplierID=p.SupplierID
group by s.SupplierID

--Hiç satýþ yapýlmayan müþterilerimizi yazýnýz.

select * from Customers c
left join Orders o
on c.CustomerID=o.CustomerID
where o.OrderID is null

--Hiç nakliye yapmayan nakliyecilerimizi listeleyen sorguyu yazýný.

select * from Orders o
right join Shippers s
on s.ShipperID=o.ShipVia
where o.ShipVia is null

--Hangi personel hangi üründen satýþ yapmamýþtýr.
select p.ProductName, e.FirstName from Employees e
left join Orders o
on e.EmployeeID=o.EmployeeID
left join [Order Details] od
on od.OrderID=o.OrderID
left join Products p
on p.ProductID=od.ProductID
group by p.ProductName, e.FirstName
except
select ProductName,'' from Products