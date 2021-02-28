--K�meleme fonksiyonlar�: Birle�tirme, kesi�im ve fark olmak �zere 3'e ayr�l�r.
--Farkl� iki sorgu �zerinde yukar�da belirtilen i�lemleri yapar.
--�nemli bir kural vard�r. Yukar�daki t�m i�lemlerde iki sorgudaki kolon say�s� ve k�l�n tipleri ayn� olmak zorundad�r.
--Birle�tirme -> Union
--Fark -> Except
--Kesi�im -> intersect

--Union:
--T�m carilerimizi listeleyen sorguyu yaz�n�z.(hem m��teri hem tedarik�ilerimizi listeleyen sorgu)

select CompanyName, 'Tedarik�i' from Suppliers
union
select CompanyName, 'M��teri' from Customers

--Intersect: alttaki ve �stteki sorgunun kesi�imini al�r. �kisinde de ayn� veri varsa o kesi�imi g�sterir.

select CompanyName from Suppliers
intersect
select CompanyName from Customers

--Except: iki sorgu aras�ndaki fark� al�r.
select CompanyName from Suppliers
except
select CompanyName from Customers


