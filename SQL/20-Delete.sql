--Delete: Belirli kay�tlar� tablodan silme i�lemini sa�layan komuttur.

delete from Categories where CategoryID=9
select * from Categories

--�r�ler tablosuna yeni bir �r�n ekleyip sonras�nda o �r�n�n fiyat�n� sto�unu g�ncelleyip en son da o �r�n� silen sorgular� yaz�n�z.

insert into Products(ProductName) values ('Armut')
declare @id int=Scope_identity()
--set @id=Scope_identity
update Products set UnitPrice=10, UnitsInStock=5 where ProductID=@id
delete from Products where ProductID=@id

select * from Products
