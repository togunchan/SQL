--Update: Belli kay�tlar� g�ncellemeyi sa�layan komuttur.
--Yaz�m�: update TabloAdi set Kolon=deger, Kolon=deger, Kolon=deger (varsa where yaz�l�r)

begin tran
update Products set UnitPrice=15
rollback tran

update Products set UnitPrice=5 where ProductID=70

select * from Products


--Kategori Id'si 2 olan �r�nlerin sto�unu 5 art�ran sorguyu yaz�n�z.

update Products set UnitsInStock=UnitsInStock+5 where CategoryID=2
