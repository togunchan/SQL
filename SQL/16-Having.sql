--Having Deyimi: Sadece group by kullan�lan sorgularda kullan�labilir. Aggregate functions kullanarak where yazmay� sa�lar.

--Sat�� fiyat� 100 dolardan fazla olan hangi �r�nleri hangi personel satm��t�r?

select e.FirstName, p.ProductName, sum(od.UnitPrice*od.Quantity*(1-od.Discount)) from Employees e
left join Orders o on e.EmployeeID=o.EmployeeID
left join [Order Details] od on o.OrderID=od.OrderID
left join Products p on p.ProductID=od.ProductID
group by e.FirstName, p.ProductName
having sum(od.UnitPrice*od.Quantity*(1-od.Discount)) > 1000