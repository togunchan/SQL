--�r�n id'si 5,14,17,25,34 olmayan �r�nleri listeleyiniz.
select * from Products where ProductID not in (5,14,17,25,34)

--�r�n ad�nca c ge�meyen �r�nleri listeleyiniz.
select * from Products where ProductName not like '%c%'

select * from Categories where Description not like '' and Picture is not null