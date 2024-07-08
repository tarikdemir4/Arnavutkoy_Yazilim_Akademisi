--Math Fonksiyonlarý ve Kullanýmý
--Matematik fonksiyonlarýnýn hepsi tek hücreli sayýsal bir sonuç çýkarýr
--çýkan sonuç baþka sorgularda iþleme girebilir yada üzerinde matemaytiksel iþlemler yapýlýr
--sum- toplama fonksiyonu 
select*from Product -- bütün ürünleri getirir
select SUM(Price) from Product --Product tablosundaki Price deðerlerini toplar

select SUM(Price) as 'Total Price(TL)' from Product -- Price daki deðerleri toplayýp ismini deðiþtirip ekrana yazdýrýr.


select SUM(Price) as 'Bilgisayarlarýn Toplam Tutarý'  from Product where CategoryId=2


--count--sayma:tabloda bulunan verilerin kaç satýra ait olduðunu döndürür 

select COUNT(Id) as 'Ürün Miktarý' from Product -- Product kýsmýnda kaç Id varsa miktarýný verir.

 select COUNT(*) as 'Telefon Sayýsý' from Product where CategoryId=1 --Kaç Adet Telefon mevcut olduðunu hesaplar

select SUM(Price)/COUNT(*) as 'Ürünlerin Ortalama Deðeri' from Product --Ürünlerin Ortalam Fiyatlarýný Gösterir

select AVG(Price) from Product -- Ürünlerin ortalamasýný verir

--Min Max En küçük ve en büyük deðeri bulma 



select MAX(Price) from Product--Fiyatý en büyük olan ürünü getirme

select Name,Price from Product where Price=(select MAX(Price) from Product)-- iç içe sorgu ile fiyatý en yüksek olan ürünü bulma

select min(Price) from Product--Fiyatý en küçük olan ürünü getirme

select Name,Price from Product where Price=(select min(Price) from Product)-- iç içe sorgu ile fiyatý en düþük olan ürünü bulma



--Küçüktür --büyüktür--küçük eþittir- büyük eþittir

select*from Product where Price<50000 --Fiyatý 50000 den kucuk olanlarý listeler
select*from Product where Price>50000 --Fiyatý 50000 den büyük olanlarý listeler

select*from Product where Price<=25000 -- Fiyatý 2500 den küçük ve eþit olanlarý listeler
select*from Product where Price>=25000 -- Fiyatý 2500 den büyük ve eþit olanlarý listeler

select*from Product where Price>25000 or Price<25000 and Price=25000 





