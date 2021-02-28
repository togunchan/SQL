--Alt Sorgular(i� i�e sorgular):
--1. kullan�m �ekli: Select ile from aras�na bir sorgu yaz�l�r.
--Bu sorguda �nemli nokta sogunun tek kolonu olmal�d�r.

select *,(select CategoryName from Categories as c where c.CategoryID=u.CategoryID) as KategoriAdi from Products as u

--�r�nler tablosunu tedarik�i ad� ile birlikte listeleyiniz.

select *,(select CompanyName from Suppliers t where t.SupplierID=p.SupplierID) TedarikciAdi from Products p

--�r�nler tablosunu tedarik�i ad� ve kategori ad�, �r�n ad�, fiyat ve stok bilgileri ile birlikte listeleyiniz.

select ProductName,UnitPrice,UnitsInStock, (select CategoryName from Categories k where k.CategoryID=p.CategoryID) as KategoriAdi, (select CompanyName from Suppliers s where s.SupplierID=p.SupplierID ) as TedarikciAdi from Products p

--Sat��lar tablosunu m��teri ad� soyad�, personel ad� soyad� ile birlikte listeleyiniz.

select *,(select ContactName+' '+ContactTitle from Customers c where c.CustomerID=o.CustomerID) as MusteriAdi,(select FirstName+' '+LastName from Employees e where e.EmployeeID=o.EmployeeID) as PersonelAdi from Orders o

--�r�nlerle birlikte �r�n�n toplam sat�� adedi bilgisini de g�steren sorguyu yaz�n�z.

select *,(select sum(Quantity) from [Order Details] as o where p.ProductID=o.ProductID) from Products p

--Yap�lan sat��lar�n, maksimum sat�� fiyat� bilgisi listeleyiniz

select *,(select max(UnitPrice) from [Order Details] od where od.OrderID=o.OrderID ) MaksFiyat from Orders o

--�r�nleri �r�ne uygulanan maksimum indirim y�zdesi bilgisi ile birlikte listeleyen sorguyu yaz�n�z.

select *,(select MAX(Discount) from [Order Details] od where od.ProductID=p.ProductID) from Products p

--Yap�lan sat��lar� toplam sat�� tutarlar� ile birlikte listeleyen sorguyu yaz�n�z.

select *,(select SUM(Quantity*UnitPrice*(1-Discount)) from [Order Details] od where od.OrderID=o.OrderID) from Orders o
