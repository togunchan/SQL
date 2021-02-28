--in: birden fazla kriteri ayný anda uygulamamýzý saðlayan komuttur.

--Ürün Id'si 5,7,9,11 olan ürünleri listeleyiniz.
select * from Products where ProductID in(5,7,9,11)

--Ürün adý Chai ve chang olan ürünleri listeleyiniz.
select * from Products where ProductName in('chai','chang')