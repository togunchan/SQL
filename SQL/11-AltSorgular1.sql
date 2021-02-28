--Alt Sorgular(iç içe sorgular):
--1. kullaným þekli: Select ile from arasýna bir sorgu yazýlýr.
--Bu sorguda önemli nokta sogunun tek kolonu olmalýdýr.

select *,(select CategoryName from Categories as c where c.CategoryID=u.CategoryID) as KategoriAdi from Products as u

--Ürünler tablosunu tedarikçi adý ile birlikte listeleyiniz.

select *,(select CompanyName from Suppliers t where t.SupplierID=p.SupplierID) TedarikciAdi from Products p

--ürünler tablosunu tedarikçi adý ve kategori adý, ürün adý, fiyat ve stok bilgileri ile birlikte listeleyiniz.

select ProductName,UnitPrice,UnitsInStock, (select CategoryName from Categories k where k.CategoryID=p.CategoryID) as KategoriAdi, (select CompanyName from Suppliers s where s.SupplierID=p.SupplierID ) as TedarikciAdi from Products p

--Satýþlar tablosunu müþteri adý soyadý, personel adý soyadý ile birlikte listeleyiniz.

select *,(select ContactName+' '+ContactTitle from Customers c where c.CustomerID=o.CustomerID) as MusteriAdi,(select FirstName+' '+LastName from Employees e where e.EmployeeID=o.EmployeeID) as PersonelAdi from Orders o

--Ürünlerle birlikte ürünün toplam satýþ adedi bilgisini de gösteren sorguyu yazýnýz.

select *,(select sum(Quantity) from [Order Details] as o where p.ProductID=o.ProductID) from Products p

--Yapýlan satýþlarýn, maksimum satýþ fiyatý bilgisi listeleyiniz

select *,(select max(UnitPrice) from [Order Details] od where od.OrderID=o.OrderID ) MaksFiyat from Orders o

--Ürünleri ürüne uygulanan maksimum indirim yüzdesi bilgisi ile birlikte listeleyen sorguyu yazýnýz.

select *,(select MAX(Discount) from [Order Details] od where od.ProductID=p.ProductID) from Products p

--Yapýlan satýþlarý toplam satýþ tutarlarý ile birlikte listeleyen sorguyu yazýnýz.

select *,(select SUM(Quantity*UnitPrice*(1-Discount)) from [Order Details] od where od.OrderID=o.OrderID) from Orders o
