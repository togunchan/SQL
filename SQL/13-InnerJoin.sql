--Join: Aralar�nda ili�ki bulunan tablolar�n birbiri ile ba�lant�s�n� kurarak tek sorguda tek tablo ��kt�s� vermeyi sa�layan yap�d�r.
--3 �e�it join vard�r.
--Bunlar: inner join, outer join , cross join
--1:Inner join ili�kili tablolardaki null olmayan kay�tlar� listeler.

select * from Products p inner join Categories c on p.CategoryID=c.CategoryID

--�r�nleri tedarik�i firma isimleri ile birlikte listeleyiniz.

select p.*, s.CompanyName from Products p inner join Suppliers s on p.SupplierID=s.SupplierID

--Yap�lan sat��lar� m��teri ad� soyad� ve personel ad� soyad� ile birlikte listeleyiniz.

select o.*, e.FirstName+' '+e.LastName as Personel, c.ContactName from Orders as o
inner join Employees as e on o.EmployeeID=e.EmployeeID
inner join Customers as c on o.CustomerID=c.CustomerID

--Hangi personel hangi �r�nden toplamda ka� dolarl�k sat�� yapm��t�r?(employee,products, order details, orders)
select e.FirstName+' '+e.LastName as Personel, p.ProductName, sum(od.Quantity*od.UnitPrice*(1-od.Discount)) from Orders o
inner join Employees e on o.EmployeeID=e.EmployeeID
inner join [Order Details] od on o.OrderID=od.OrderID
inner join Products p on od.ProductID=p.ProductID
group by p.ProductName, e.FirstName+' '+e.LastName

--Hangi personel hangi kategoriden toplamda ka� adet �r�n sat��� yapm��t�r.(employee, order, order details, category)

select e.FirstName+' '+e.LastName as Personel, c.CategoryName, sum(UnitsInStock) as Adet from Orders o
inner join Employees e on e.EmployeeID=o.EmployeeID
inner join [Order Details] od on od.OrderID=o.OrderID
inner join Products p on p.ProductID=od.ProductID
inner join Categories c on c.CategoryID=p.CategoryID
group by e.FirstName+' '+e.LastName, c.CategoryName

--Nakliyeci �irket adi 'Speedy Express' olan nakliyeci sat�� fiyat� 15 dolardan y�ksek ka� adet �r�n ta��m��t�r?(join, group by, where)

select s.CompanyName, SUM(Quantity) from Orders o
inner join [Order Details] od on o.OrderID=od.OrderID
inner join Shippers s on s.ShipperID=o.ShipVia
where s.CompanyName='Speedy Express' and od.UnitPrice>15
group by s.CompanyName