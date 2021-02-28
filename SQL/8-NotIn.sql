--ürün id'si 5,14,17,25,34 olmayan ürünleri listeleyiniz.
select * from Products where ProductID not in (5,14,17,25,34)

--ürün adýnca c geçmeyen ürünleri listeleyiniz.
select * from Products where ProductName not like '%c%'

select * from Categories where Description not like '' and Picture is not null