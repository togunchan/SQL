--Outer join: ili�kili tablolardaki null olan kay�tlar da dahil t�m kay�tlar� getirir.
--3 �e�it outer join vard�r.
--Bunlar: left outer join, right outer join, full outer join
--1: Left outer join: Left tablo ilk yaz�lan yani soldaki tablodur. Sol tablodaki t�m kay�rlar getirilir, null olsa bile ve sa� tablodan sol tablonun ili�kili kay�tlar� getirilir.

select * from Products p
left outer join Categories c
on p.CategoryID=c.CategoryID

--Right outer join: Sa�daki tablo right tablodur. Sa�daki tablodaki null kay�tlar dahil t�m kay�tlar getirilir. Soldaki tablodan ili�kili kay�tlar getirilir.

select * from Products p
right outer join Categories c
on p.CategoryID=c.CategoryID

--Full outer join hem sa�daki tablodan hem soldaki tablodan null kay�tlarda dahil olmak �zere t�m kay�tlar� getirir.

select * from Products p
full outer join Categories c
on c.CategoryID=p.CategoryID

--Hangi tedarik�iden toplamda ka� dolarl�k �r�n tedarik edilmi�tir.(t�m tedarik�iler gelmelidir.)

select s.SupplierID,SUM(p.UnitPrice) from Suppliers s
right outer join Products p
on s.SupplierID=p.SupplierID
group by s.SupplierID

--Hi� sat�� yap�lmayan m��terilerimizi yaz�n�z.

select * from Customers c
left join Orders o
on c.CustomerID=o.CustomerID
where o.OrderID is null

--Hi� nakliye yapmayan nakliyecilerimizi listeleyen sorguyu yaz�n�.

select * from Orders o
right join Shippers s
on s.ShipperID=o.ShipVia
where o.ShipVia is null

--Hangi personel hangi �r�nden sat�� yapmam��t�r.
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