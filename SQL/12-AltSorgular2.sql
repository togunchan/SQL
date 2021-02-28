--Alt sorgularda 2. k�s�m
--Alt sorguyu kullanarak kriter �retmek.
--Bu alt sorgular where k�sm�nda kullan�l�r.

--Ad� Nancy olan personelin yapt��� sat��lar� listeleyiniz.
select * from Orders where EmployeeID = (select EmployeeID from Employees where FirstName='Nancy')

--Ad� nancy ve janet olan personellerin yapt��� sat��lar� listeleyiniz.

select * from Orders where EmployeeID in (select EmployeeID from Employees where FirstName='Nancy' or FirstName='Janet')

--Personel ad� nancy veya janet olan ve nakliyecisi speedy express olan sat��lar� listeleyiniz.

select * from Orders where EmployeeID in(select EmployeeID from Employees where FirstName='Nancy' or FirstName='Janet') and ShipVia = (select ShipperID from Shippers where CompanyName='Speedy Express' )

--�r�n ad� chai olan �r�n�n toplam sat�� tutar�n� g�steren sorguyu yaz�n�z.

select sum(Quantity*UnitPrice*(1-Discount)) from [Order Details] where ProductID=(select ProductID from Products where ProductName='chai')

--Id'si 5 olan kategorideki �r�nleri, toplam sat�� tutar�n� bulan sorguyu yaz�n�z. Birden fazla �r�n gelece�i i�in 'in' kullan�l�r.

select SUM(Quantity*UnitPrice*(1-Discount)) from [Order Details] where ProductID in (select ProductID from Products where CategoryID=5)

--1997 y�l�nda yap�lan sat��larda ne kadar ciro elde edildi�ini bulan sorgu yaz�n�z.

select SUM(od.UnitPrice*Quantity*(1-Discount)) as 'Toplam Satis' from [Order Details] od where od.OrderID in (select o.OrderID from Orders o where o.OrderDate between '1997.01.01' and '1997.12.31')

--Id'si Alfk� m��terisinin yapt��� toplam sat�� tutar�n� bulan sorguyu yaz�n�z.
select SUM(Quantity*UnitPrice*(1-Discount)) as SatisDetay from [Order Details]  where OrderID in(select OrderID from Orders where CustomerID='Alfk�') 

--Speedy Express adl� nakliyeci bug�ne kadar ka� adet �r�n ta��m��t�r.
select SUM(Quantity) from [Order Details] where OrderID in(select OrderID from Orders where ShipVia=(select ShipperID from Shippers where CompanyName='Speedy Express'))

--Alfk� adl� m��teri hangi kategorilerde �r�n sat�n alm��t�r? group by kullan�l�r ��nk� soruda 'hangi' var.

select CategoryID from Products 
where ProductID in
(select ProductID from [Order Details] where OrderID in
(select OrderID from Orders where CustomerID='Alfk�')) 
group by CategoryID