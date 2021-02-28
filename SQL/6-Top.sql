--Top

--Ürünler tablosundan ilk n kaydý listeleyiniz.

select top 10 * from Products

--Ürün adý c ile baþlayýp sondan ikinci harfi n veya a olan
--ve fiyatý 25 ile 75 arasýnda olan ürünlerden ilk 2'sini getiren sorguyu yazýnýz.

select top 2 * from Products where ProductName like 'C%[n,a]_' and UnitPrice between 15 and 75