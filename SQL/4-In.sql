--in: birden fazla kriteri ayn� anda uygulamam�z� sa�layan komuttur.

--�r�n Id'si 5,7,9,11 olan �r�nleri listeleyiniz.
select * from Products where ProductID in(5,7,9,11)

--�r�n ad� Chai ve chang olan �r�nleri listeleyiniz.
select * from Products where ProductName in('chai','chang')