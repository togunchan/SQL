--Update: Belli kayýtlarý güncellemeyi saðlayan komuttur.
--Yazýmý: update TabloAdi set Kolon=deger, Kolon=deger, Kolon=deger (varsa where yazýlýr)

begin tran
update Products set UnitPrice=15
rollback tran

update Products set UnitPrice=5 where ProductID=70

select * from Products


--Kategori Id'si 2 olan ürünlerin stoðunu 5 artýran sorguyu yazýnýz.

update Products set UnitsInStock=UnitsInStock+5 where CategoryID=2
