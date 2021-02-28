--Delete: Belirli kayýtlarý tablodan silme iþlemini saðlayan komuttur.

delete from Categories where CategoryID=9
select * from Categories

--Ürüler tablosuna yeni bir ürün ekleyip sonrasýnda o ürünün fiyatýný stoðunu güncelleyip en son da o ürünü silen sorgularý yazýnýz.

insert into Products(ProductName) values ('Armut')
declare @id int=Scope_identity()
--set @id=Scope_identity
update Products set UnitPrice=10, UnitsInStock=5 where ProductID=@id
delete from Products where ProductID=@id

select * from Products
