-- �r�n ad� chai olan �r�n� listeleyiniz.
select * from Products where ProductName='Chai'

--like:
--ilk harfi c ile ba�layan ve devam�nda herhangi bir �ey gelen �r�nleri listeleyiniz.
select * from Products where ProductName like 'C%'
select * from Products where ProductName like '%C_' --sondan bir �nceki C olmas� i�in "_" konur.

--�r�n ad�nda herhangi bir yerde c ge�en �r�nleri listeleyiniz.
select * from Products where ProductName like '%C%'

--�r�n ad�n�n ilk harci c veya a ile ba�layan �r�nleri listeleyiniz.
select * from Products where ProductName like '[_c,a]%'

--�r�n ad�nda sos ge�en �r�nleri listeleyiniz.
select * from Products where ProductName like '%sos%'

--�r�n ad� s ile ba�lay�p e ile biten �r�nleri listeleyiniz.
select * from Products where ProductName like 's%e'

--�r�n ad�n�n ikinci harfi a veya e olan �r�nleri listeleyiniz.
select * from Products where ProductName like '_[_a,e]%'

--�r�n ad�n�n sondan ikinci harfi t veya l olan ve k ile ba�layan �r�nleri listeleyiniz.
select * from Products where ProductName like 'C%[t,l]_'