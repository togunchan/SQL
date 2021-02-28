--Join: Aralarýnda iliþki bulunan tablolarýn birbiri ile baðlantýsýný kurarak tek sorguda tek tablo çýktýsý vermeyi saðlayan yapýdýr.
--3 çeþit join vardýr.
--Bunlar: inner join, outer join , cross join
--1:Inner join iliþkili tablolardaki null olmayan kayýtlarý listeler.

select * from Products p inner join Categories c on p.CategoryID=c.CategoryID

--Ürünleri tedarikçi firma isimleri ile birlikte listeleyiniz.

select p.*, s.CompanyName from Products p inner join Suppliers s on p.SupplierID=s.SupplierID

--Yapýlan satýþlarý müþteri adý soyadý ve personel adý soyadý ile birlikte listeleyiniz.

select o.*, e.FirstName+' '+e.LastName as Personel, c.ContactName from Orders as o
inner join Employees as e on o.EmployeeID=e.EmployeeID
inner join Customers as c on o.CustomerID=c.CustomerID

--Hangi personel hangi üründen toplamda kaç dolarlýk satýþ yapmýþtýr?(employee,products, order details, orders)
select e.FirstName+' '+e.LastName as Personel, p.ProductName, sum(od.Quantity*od.UnitPrice*(1-od.Discount)) from Orders o
inner join Employees e on o.EmployeeID=e.EmployeeID
inner join [Order Details] od on o.OrderID=od.OrderID
inner join Products p on od.ProductID=p.ProductID
group by p.ProductName, e.FirstName+' '+e.LastName

--Hangi personel hangi kategoriden toplamda kaç adet ürün satýþý yapmýþtýr.(employee, order, order details, category)

select e.FirstName+' '+e.LastName as Personel, c.CategoryName, sum(UnitsInStock) as Adet from Orders o
inner join Employees e on e.EmployeeID=o.EmployeeID
inner join [Order Details] od on od.OrderID=o.OrderID
inner join Products p on p.ProductID=od.ProductID
inner join Categories c on c.CategoryID=p.CategoryID
group by e.FirstName+' '+e.LastName, c.CategoryName

--Nakliyeci þirket adi 'Speedy Express' olan nakliyeci satýþ fiyatý 15 dolardan yüksek kaç adet ürün taþýmýþtýr?(join, group by, where)

select s.CompanyName, SUM(Quantity) from Orders o
inner join [Order Details] od on o.OrderID=od.OrderID
inner join Shippers s on s.ShipperID=o.ShipVia
where s.CompanyName='Speedy Express' and od.UnitPrice>15
group by s.CompanyName