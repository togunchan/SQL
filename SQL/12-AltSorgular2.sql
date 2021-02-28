--Alt sorgularda 2. kýsým
--Alt sorguyu kullanarak kriter üretmek.
--Bu alt sorgular where kýsmýnda kullanýlýr.

--Adý Nancy olan personelin yaptýðý satýþlarý listeleyiniz.
select * from Orders where EmployeeID = (select EmployeeID from Employees where FirstName='Nancy')

--Adý nancy ve janet olan personellerin yaptýðý satýþlarý listeleyiniz.

select * from Orders where EmployeeID in (select EmployeeID from Employees where FirstName='Nancy' or FirstName='Janet')

--Personel adý nancy veya janet olan ve nakliyecisi speedy express olan satýþlarý listeleyiniz.

select * from Orders where EmployeeID in(select EmployeeID from Employees where FirstName='Nancy' or FirstName='Janet') and ShipVia = (select ShipperID from Shippers where CompanyName='Speedy Express' )

--Ürün adý chai olan ürünün toplam satýþ tutarýný gösteren sorguyu yazýnýz.

select sum(Quantity*UnitPrice*(1-Discount)) from [Order Details] where ProductID=(select ProductID from Products where ProductName='chai')

--Id'si 5 olan kategorideki ürünleri, toplam satýþ tutarýný bulan sorguyu yazýnýz. Birden fazla ürün geleceði için 'in' kullanýlýr.

select SUM(Quantity*UnitPrice*(1-Discount)) from [Order Details] where ProductID in (select ProductID from Products where CategoryID=5)

--1997 yýlýnda yapýlan satýþlarda ne kadar ciro elde edildiðini bulan sorgu yazýnýz.

select SUM(od.UnitPrice*Quantity*(1-Discount)) as 'Toplam Satis' from [Order Details] od where od.OrderID in (select o.OrderID from Orders o where o.OrderDate between '1997.01.01' and '1997.12.31')

--Id'si Alfký müþterisinin yaptýðý toplam satýþ tutarýný bulan sorguyu yazýnýz.
select SUM(Quantity*UnitPrice*(1-Discount)) as SatisDetay from [Order Details]  where OrderID in(select OrderID from Orders where CustomerID='Alfký') 

--Speedy Express adlý nakliyeci bugüne kadar kaç adet ürün taþýmýþtýr.
select SUM(Quantity) from [Order Details] where OrderID in(select OrderID from Orders where ShipVia=(select ShipperID from Shippers where CompanyName='Speedy Express'))

--Alfký adlý müþteri hangi kategorilerde ürün satýn almýþtýr? group by kullanýlýr çünkü soruda 'hangi' var.

select CategoryID from Products 
where ProductID in
(select ProductID from [Order Details] where OrderID in
(select OrderID from Orders where CustomerID='Alfký')) 
group by CategoryID