--Where: Kriter uygulamak i�in kullan�lan komuttur.

select * from Products where ProductID =5

--Fiyat� elliden b�y�k olan �r�nlerin listesi

select * from Products where UnitPrice>50

--KategoriId'si 6 olan �r�nleri listeleyiniz.

select * from Products where CategoryID=6

--Sto�u yirmiden k���k olan �r�nleri listeleyiniz.

select * from Products where UnitsInStock<20