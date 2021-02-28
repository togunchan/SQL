--Group by: Tablo içindeki verileri gruplamayý saðlar.

--Hangi kategoriden kaç tane ürün vardýr?
select CategoryID, count(*) from Products group by CategoryID

--Stokta hangi kategoriden kaç dolarlýk ürün vardýr.
select CategoryID, sum(UnitPrice*UnitsInStock) as ToplamTutar from Products group by CategoryID

--Hangi kategoriden stokta kaç adet ürün vardýr.
select CategoryID, sum(UnitsInStock) from Products group by CategoryID

--Hangi tedarikçiden kaç tane ürün tedarik edilmiþtir?
select SupplierID, count(SupplierID) from Products group by SupplierID

--Hangi tedarikçiden stokta toplamda kaç dolarlýk ürün vardýr?
select SupplierID, sum(UnitsInStock*UnitPrice) from Products group by SupplierID

--Hangi personel, hangi müþteriye kaç adet satýþ yapmýþtýr.
--(satislar)
select EmployeeID, CustomerID, count(*) as Adet from Orders group by EmployeeID, CustomerID

--Hangi müþteri hangi nakliyeciden kaç adet sipariþte bulunmuþtur?(Shipvia)
select CustomerID,ShipVia, count(*) from Orders group by CustomerID,ShipVia

--Hangi üründen toplamda kaç dolarlýk satýþ yapýlmýþtýr?
select ProductID, sum(UnitPrice*Quantity*(1-Discount)) as ToplamTutar from [Order Details] group by ProductID order by ProductID
