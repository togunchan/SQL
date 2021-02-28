-- Ürün adý chai olan ürünü listeleyiniz.
select * from Products where ProductName='Chai'

--like:
--ilk harfi c ile baþlayan ve devamýnda herhangi bir þey gelen ürünleri listeleyiniz.
select * from Products where ProductName like 'C%'
select * from Products where ProductName like '%C_' --sondan bir önceki C olmasý için "_" konur.

--Ürün adýnda herhangi bir yerde c geçen ürünleri listeleyiniz.
select * from Products where ProductName like '%C%'

--Ürün adýnýn ilk harci c veya a ile baþlayan ürünleri listeleyiniz.
select * from Products where ProductName like '[_c,a]%'

--ürün adýnda sos geçen ürünleri listeleyiniz.
select * from Products where ProductName like '%sos%'

--ürün adý s ile baþlayýp e ile biten ürünleri listeleyiniz.
select * from Products where ProductName like 's%e'

--ürün adýnýn ikinci harfi a veya e olan ürünleri listeleyiniz.
select * from Products where ProductName like '_[_a,e]%'

--ürün adýnýn sondan ikinci harfi t veya l olan ve k ile baþlayan ürünleri listeleyiniz.
select * from Products where ProductName like 'C%[t,l]_'