--order by: Kayýtlarda sýralama iþlemini saðlar.
--asc:0-9 veya a-z
--desc: 9-0 veya z-a

--Ürünleri fiyatlarý çoktan aza doðru listeleyiniz.

select * from Products order by UnitPrice desc

-- Kategori Id'si 5 olmayan ve ürün adýnýn ikinci harfi i olan ürünleri stoðuna tersten sýralayan sorguyu yazýnýz.
select * from Products where ProductName like '_i%' and CategoryID!=5 order by UnitsInStock desc

--Personel Id'si 4 olan ve nakliye ücreti 15 ile 45 arasýnda olan sevk tarihine göre tersten sýralayacak
--son 3 kaydý getiren
select * from Orders
select top 3 * from Orders where EmployeeID=4 and Freight between 15 and 45 order by ShippedDate desc