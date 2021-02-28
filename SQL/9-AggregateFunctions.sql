--Aggregate Function:
--Select ile from arasýna yazýlýr.
--1. Count() -> Satýr adetini veren fonksiyondur.

select COUNT(ProductName) from Products
select COUNT(Description) from Categories
select count(CategoryName) from Categories

--2. Sum: Toplama iþlemi yapan fonsiyondur.

--Stokta toplam kaç adet ürün bulunmaktadýr.

select sum(UnitsInStock) from Products

--Stokta bulunan ürünlerin toplam fiyatýný bulunuz.

select sum(UnitPrice) from Products

--3. Avg -> Ortalama alan fonksiyondur.

--Stoðumuzda ortalama kaç adet vardýr.
select AVG(UnitsInStock) from Products

--Stoðumuzda ortalama fiyat olarak ne kadarlýk ürün vardýr?
Select avg(UnitPrice*UnitsInStock) from Products

--4. Max -> Belirtilen kolon içinden deðeri maks olan veriyi getirir.

--Stoðu en yüksek olan ürünü getiriniz.
select MAX(UnitsInStock) from Products

--5. Min -> Belirtilen kolon içinden deðeri en düþük olan veriyi getirir.

--Fiyatý en az olan ürünün fiyatýný bulunuz.
select MIN(UnitPrice) EnDüþükFiyat from Products

select ProductID, ProductName 'Ürün Adý', UnitPrice, UnitsInStock from Products

--Toplam fiyat olarak ne kadarlýk ürün satýþý yapýlmýþtýr?
select sum(UnitPrice*Quantity*(1-Discount)) as 'Toplam Tutar' from [Order Details]
select * from [Order Details] 