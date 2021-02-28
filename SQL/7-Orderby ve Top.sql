--order by: Kay�tlarda s�ralama i�lemini sa�lar.
--asc:0-9 veya a-z
--desc: 9-0 veya z-a

--�r�nleri fiyatlar� �oktan aza do�ru listeleyiniz.

select * from Products order by UnitPrice desc

-- Kategori Id'si 5 olmayan ve �r�n ad�n�n ikinci harfi i olan �r�nleri sto�una tersten s�ralayan sorguyu yaz�n�z.
select * from Products where ProductName like '_i%' and CategoryID!=5 order by UnitsInStock desc

--Personel Id'si 4 olan ve nakliye �creti 15 ile 45 aras�nda olan sevk tarihine g�re tersten s�ralayacak
--son 3 kayd� getiren
select * from Orders
select top 3 * from Orders where EmployeeID=4 and Freight between 15 and 45 order by ShippedDate desc