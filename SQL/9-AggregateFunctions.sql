--Aggregate Function:
--Select ile from aras�na yaz�l�r.
--1. Count() -> Sat�r adetini veren fonksiyondur.

select COUNT(ProductName) from Products
select COUNT(Description) from Categories
select count(CategoryName) from Categories

--2. Sum: Toplama i�lemi yapan fonsiyondur.

--Stokta toplam ka� adet �r�n bulunmaktad�r.

select sum(UnitsInStock) from Products

--Stokta bulunan �r�nlerin toplam fiyat�n� bulunuz.

select sum(UnitPrice) from Products

--3. Avg -> Ortalama alan fonksiyondur.

--Sto�umuzda ortalama ka� adet vard�r.
select AVG(UnitsInStock) from Products

--Sto�umuzda ortalama fiyat olarak ne kadarl�k �r�n vard�r?
Select avg(UnitPrice*UnitsInStock) from Products

--4. Max -> Belirtilen kolon i�inden de�eri maks olan veriyi getirir.

--Sto�u en y�ksek olan �r�n� getiriniz.
select MAX(UnitsInStock) from Products

--5. Min -> Belirtilen kolon i�inden de�eri en d���k olan veriyi getirir.

--Fiyat� en az olan �r�n�n fiyat�n� bulunuz.
select MIN(UnitPrice) EnD���kFiyat from Products

select ProductID, ProductName '�r�n Ad�', UnitPrice, UnitsInStock from Products

--Toplam fiyat olarak ne kadarl�k �r�n sat��� yap�lm��t�r?
select sum(UnitPrice*Quantity*(1-Discount)) as 'Toplam Tutar' from [Order Details]
select * from [Order Details] 