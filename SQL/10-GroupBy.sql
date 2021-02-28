--Group by: Tablo i�indeki verileri gruplamay� sa�lar.

--Hangi kategoriden ka� tane �r�n vard�r?
select CategoryID, count(*) from Products group by CategoryID

--Stokta hangi kategoriden ka� dolarl�k �r�n vard�r.
select CategoryID, sum(UnitPrice*UnitsInStock) as ToplamTutar from Products group by CategoryID

--Hangi kategoriden stokta ka� adet �r�n vard�r.
select CategoryID, sum(UnitsInStock) from Products group by CategoryID

--Hangi tedarik�iden ka� tane �r�n tedarik edilmi�tir?
select SupplierID, count(SupplierID) from Products group by SupplierID

--Hangi tedarik�iden stokta toplamda ka� dolarl�k �r�n vard�r?
select SupplierID, sum(UnitsInStock*UnitPrice) from Products group by SupplierID

--Hangi personel, hangi m��teriye ka� adet sat�� yapm��t�r.
--(satislar)
select EmployeeID, CustomerID, count(*) as Adet from Orders group by EmployeeID, CustomerID

--Hangi m��teri hangi nakliyeciden ka� adet sipari�te bulunmu�tur?(Shipvia)
select CustomerID,ShipVia, count(*) from Orders group by CustomerID,ShipVia

--Hangi �r�nden toplamda ka� dolarl�k sat�� yap�lm��t�r?
select ProductID, sum(UnitPrice*Quantity*(1-Discount)) as ToplamTutar from [Order Details] group by ProductID order by ProductID
