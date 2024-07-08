--Math Fonksiyonlar� ve Kullan�m�
--Matematik fonksiyonlar�n�n hepsi tek h�creli say�sal bir sonu� ��kar�r
--��kan sonu� ba�ka sorgularda i�leme girebilir yada �zerinde matemaytiksel i�lemler yap�l�r
--sum- toplama fonksiyonu 
select*from Product -- b�t�n �r�nleri getirir
select SUM(Price) from Product --Product tablosundaki Price de�erlerini toplar

select SUM(Price) as 'Total Price(TL)' from Product -- Price daki de�erleri toplay�p ismini de�i�tirip ekrana yazd�r�r.


select SUM(Price) as 'Bilgisayarlar�n Toplam Tutar�'  from Product where CategoryId=2


--count--sayma:tabloda bulunan verilerin ka� sat�ra ait oldu�unu d�nd�r�r 

select COUNT(Id) as '�r�n Miktar�' from Product -- Product k�sm�nda ka� Id varsa miktar�n� verir.

 select COUNT(*) as 'Telefon Say�s�' from Product where CategoryId=1 --Ka� Adet Telefon mevcut oldu�unu hesaplar

select SUM(Price)/COUNT(*) as '�r�nlerin Ortalama De�eri' from Product --�r�nlerin Ortalam Fiyatlar�n� G�sterir

select AVG(Price) from Product -- �r�nlerin ortalamas�n� verir

--Min Max En k���k ve en b�y�k de�eri bulma 



select MAX(Price) from Product--Fiyat� en b�y�k olan �r�n� getirme

select Name,Price from Product where Price=(select MAX(Price) from Product)-- i� i�e sorgu ile fiyat� en y�ksek olan �r�n� bulma

select min(Price) from Product--Fiyat� en k���k olan �r�n� getirme

select Name,Price from Product where Price=(select min(Price) from Product)-- i� i�e sorgu ile fiyat� en d���k olan �r�n� bulma



--K���kt�r --b�y�kt�r--k���k e�ittir- b�y�k e�ittir

select*from Product where Price<50000 --Fiyat� 50000 den kucuk olanlar� listeler
select*from Product where Price>50000 --Fiyat� 50000 den b�y�k olanlar� listeler

select*from Product where Price<=25000 -- Fiyat� 2500 den k���k ve e�it olanlar� listeler
select*from Product where Price>=25000 -- Fiyat� 2500 den b�y�k ve e�it olanlar� listeler

select*from Product where Price>25000 or Price<25000 and Price=25000 





