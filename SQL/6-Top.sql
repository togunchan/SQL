--Top

--�r�nler tablosundan ilk n kayd� listeleyiniz.

select top 10 * from Products

--�r�n ad� c ile ba�lay�p sondan ikinci harfi n veya a olan
--ve fiyat� 25 ile 75 aras�nda olan �r�nlerden ilk 2'sini getiren sorguyu yaz�n�z.

select top 2 * from Products where ProductName like 'C%[n,a]_' and UnitPrice between 15 and 75