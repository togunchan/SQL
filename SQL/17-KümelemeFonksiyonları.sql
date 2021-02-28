--Kümeleme fonksiyonlarý: Birleþtirme, kesiþim ve fark olmak üzere 3'e ayrýlýr.
--Farklý iki sorgu üzerinde yukarýda belirtilen iþlemleri yapar.
--Önemli bir kural vardýr. Yukarýdaki tüm iþlemlerde iki sorgudaki kolon sayýsý ve kýlýn tipleri ayný olmak zorundadýr.
--Birleþtirme -> Union
--Fark -> Except
--Kesiþim -> intersect

--Union:
--Tüm carilerimizi listeleyen sorguyu yazýnýz.(hem müþteri hem tedarikçilerimizi listeleyen sorgu)

select CompanyName, 'Tedarikçi' from Suppliers
union
select CompanyName, 'Müþteri' from Customers

--Intersect: alttaki ve üstteki sorgunun kesiþimini alýr. Ýkisinde de ayný veri varsa o kesiþimi gösterir.

select CompanyName from Suppliers
intersect
select CompanyName from Customers

--Except: iki sorgu arasýndaki farký alýr.
select CompanyName from Suppliers
except
select CompanyName from Customers


