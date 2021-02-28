--Having Deyimi: Sadece group by kullanýlan sorgularda kullanýlabilir. Aggregate functions kullanarak where yazmayý saðlar.

--Satýþ fiyatý 100 dolardan fazla olan hangi ürünleri hangi personel satmýþtýr?

select e.FirstName, p.ProductName, sum(od.UnitPrice*od.Quantity*(1-od.Discount)) from Employees e
left join Orders o on e.EmployeeID=o.EmployeeID
left join [Order Details] od on o.OrderID=od.OrderID
left join Products p on p.ProductID=od.ProductID
group by e.FirstName, p.ProductName
having sum(od.UnitPrice*od.Quantity*(1-od.Discount)) > 1000