--Insert, u�date, delete
--Insert : Bir tabloya kay�t eklemeyi sa�layan komuttur.
--Yaz�m�: Insert [into] TabloAdi(kolon,kolon,kolon) values (de�er,de�er,de�er)

--�r�nler tablosuna �r�n ekleyen sorguyu yaz�n�z.
insert into Products(ProductName,UnitPrice,UnitsInStock) values ('Elma',2,120)

--Personel tablosuna kendinizi personel olarak ekleyin.
insert into Employees(FirstName,LastName) values ('Serkan','Polat')
select * from Employees

insert Categories values('Meyve','Elma,armut vs.', null)
select * from Categories