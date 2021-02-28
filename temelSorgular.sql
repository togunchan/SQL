-- select * from shopapp.products
-- select Name from shopapp.products
-- select Name as Ad,Fiyat from shopapp.products


-- select * from shopapp.products where Id = 1
-- select * from shopapp.products where Fiyat = 2000
-- select * from shopapp.products where Fiyat >= 2000
-- select Name, Fiyat from shopapp.products where Fiyat >= 200 and Fiyat < 4000
-- select * from shopapp.products where Id = 1 or Id = 2
-- select * from shopapp.products where Name = 'Samsung S5'
-- select * from shopapp.products where Name != 'Samsung S5'
-- select * from shopapp.products where NOT Name = '!Samsung S5'
-- select * from shopapp.products where Name = 'Samsung S5' and Fiyat = 3000
-- select * from shopapp.products where Name = 'Samsung S5' and (Fiyat = 2000 OR Fiyat = 3000)

-- Where - Filtreleme Operatörleri
-- select * from shopapp.products where Fiyat Between 2000 and 4000
-- select * from shopapp.products where Id Between 1 and 4
-- select * from shopapp.products where Id Not Between 1 and 2

-- select * from shopapp.products where Category In('Telefon','Bilgisayar')
-- select * from shopapp.products where Category Not In('Telefon')
-- select * from shopapp.products where Id Not In('1','2')

-- select * from shopapp.products where Name LIKE '%a%' herhangi bir yerinde a olanları getirir.
-- select * from shopapp.products where Name LIKE '%a' sonunda a olanları getirir
-- select * from shopapp.products where Name LIKE 'a%' başında a olanları getirir
-- select * from shopapp.products where Name LIKE '_a%' ikinci karakter mutlaka a olmalıdır.
-- select * from shopapp.products where Name LIKE 'S_m%'
-- select * from shopapp.products where Name NOT LIKE '%Iphone%'
-- select * from shopapp.products where Name LIKE '%Iphone%' and Fiyat >=2000
-- select * from shopapp.products where Name LIKE '%Samsung%' and Description LIKE '%çift sim kartı%'

-- Order - Kayıt sıralama
-- select * from shopapp.products order by Fiyat
-- select * from shopapp.products order by Name
-- select * from shopapp.products order by Name ASC
-- select * from shopapp.products order by Fiyat DESC
-- select * from shopapp.products order by Category DESC, Fiyat ASC

-- SQL Fonksiyonları - Hesaplama
-- min(), max(), count(), avg(), sum()
-- select min(Fiyat) as 'minimum fiyat' from shopapp.products
-- select max(Fiyat) as 'maksimum fiyat' from shopapp.products
-- select name, fiyat from shopapp.products order by fiyat limit 1
-- select count(*) from shopapp.products
-- select count(Id) as Adet from shopapp.products
-- select avg(Fiyat) as ortalama from shopapp.products
-- select sum(Fiyat) as toplam from shopapp.products
-- select sum(Fiyat * Stock) as toplam from shopapp.products

-- SQL Fonksiyonları - String
-- select length('murat toğunçhan düzgün') as karaktersayisi
-- select name, length(name) as karakteruzunlugu from shopapp.products
-- select name, concat(left(name,3),'...') as karakteruzunlugu from shopapp.products
-- select right('murat toğunçhan düzgün',5) as name
-- select name, right(description,5) as name from shopapp.products
-- select name, lower(name) as lowered from shopapp.products
-- select name, lower(replace(name,' ','-')) as replaced from shopapp.products
-- select concat(trim('     Murat Toğunçhan Düzgün   '),'****') as trimmed
-- select name, trim(name) from shopapp.products
-- select name, ltrim(name) from shopapp.products
-- select name, rtrim(name) from shopapp.products

-- Group By- Distinct
-- select  distinct Category from shopapp.products
-- select category, count(*) as adet from shopapp.products group by category
-- select category, sum(Fiyat) as toplam from shopapp.products group by category
-- select category, avg(Fiyat) as ortalama from shopapp.products group by category
-- select category, avg(Fiyat) as ortalama from shopapp.products where Fiyat>3000 group by category
-- select category, count(*) as adet from shopapp.products group by category having Count(*) > 1

-- Kayıt Ekleme - Insert
-- select * from shopapp.products
-- INSERT INTO shopapp.products (Name, Fiyat, ImageUrl, Category, Description, Stock) VALUES ('Samsung S10',7000,'1.jpg','Telefon','Çok iyi telefon',10);
-- INSERT INTO shopapp.products (Name, Fiyat, Category) VALUES ('Samsung S11',8000,'Telefon');

-- Kayıt Güncelleme - Update
-- UPDATE shopapp.products SET Name = "Samsung S7", Fiyat=3000 Where Id=1
SET SQL_SAFE_UPDATES = 0;
-- UPDATE shopapp.products SET Fiyat=Fiyat+1000
-- UPDATE shopapp.products SET Fiyat=Fiyat*1.1
-- UPDATE shopapp.products SET Fiyat=Fiyat*1.5 Where Category = 'Telefon'
-- UPDATE shopapp.products SET ImageUrl = 'noproduct.jpg' WHERE ImageUrl IS NULL

-- Kayıt Silme - Delete
-- DELETE FROM shopapp.products WHERE Id = 1
-- DELETE FROM shopapp.products WHERE Fiyat > 2000 and category = 'Bilgisayar'
DELETE FROM shopapp.products WHERE description IS null