--Cross Join: Tablolardaki tüm kayýrlarý kartezyen çarpým yaparak birbiri ile iliþkilendirir.

select * from Products p
cross join Categories

--Hangi personel hangi ürünleri satmamýþtýr?
select e.FirstName, p.ProductName from Employees e
cross join Products p
except
select e.FirstName, p.ProductName from Employees e
left join Orders o on o.EmployeeID=e.EmployeeID
left join [Order Details] od on od.OrderID=o.OrderID
left join Products p on p.ProductID=od.ProductID
group by e.FirstName, p.ProductName

--Hangi tedarikçiden hangi ürün hiç tedarik edilmemiþtir?

select CompanyName,ProductName from Products
cross join Suppliers
except
select CompanyName, ProductName from Products p 
left join Suppliers s on p.SupplierID=s.SupplierID
group by CompanyName, ProductName

--Hangi ürün hangi müþteriye hiç satýlmamýþtýr?

