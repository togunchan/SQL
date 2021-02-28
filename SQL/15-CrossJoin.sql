--Cross Join: Tablolardaki t�m kay�rlar� kartezyen �arp�m yaparak birbiri ile ili�kilendirir.

select * from Products p
cross join Categories

--Hangi personel hangi �r�nleri satmam��t�r?
select e.FirstName, p.ProductName from Employees e
cross join Products p
except
select e.FirstName, p.ProductName from Employees e
left join Orders o on o.EmployeeID=e.EmployeeID
left join [Order Details] od on od.OrderID=o.OrderID
left join Products p on p.ProductID=od.ProductID
group by e.FirstName, p.ProductName

--Hangi tedarik�iden hangi �r�n hi� tedarik edilmemi�tir?

select CompanyName,ProductName from Products
cross join Suppliers
except
select CompanyName, ProductName from Products p 
left join Suppliers s on p.SupplierID=s.SupplierID
group by CompanyName, ProductName

--Hangi �r�n hangi m��teriye hi� sat�lmam��t�r?

