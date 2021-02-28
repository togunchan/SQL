--Insert, uðdate, delete
--Insert : Bir tabloya kayýt eklemeyi saðlayan komuttur.
--Yazýmý: Insert [into] TabloAdi(kolon,kolon,kolon) values (deðer,deðer,deðer)

--Ürünler tablosuna ürün ekleyen sorguyu yazýnýz.
insert into Products(ProductName,UnitPrice,UnitsInStock) values ('Elma',2,120)

--Personel tablosuna kendinizi personel olarak ekleyin.
insert into Employees(FirstName,LastName) values ('Serkan','Polat')
select * from Employees

insert Categories values('Meyve','Elma,armut vs.', null)
select * from Categories