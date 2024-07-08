-- Yuvarlama iþlemleri Round , Celling,Floor



 --Round
--Round:Sayýyý En yakýn bölgeye yuvarlar.
--Roundda basamak sayýsý belirtilmek zorundadýr.
--Eðer Round Deðeri 0 verilirse tam sayý çýkar
--Eðer Round Deðeri 0 dan farklý verilirse kesirli sayý çýkar
select Name,ROUND(Price,0) from Product where Id=11 --Id si 11 olan tutarý tam sayý yapacak
select Name,ROUND(Price,1) from Product where Id=11 --Id si 11 olan tutarýn virgülden sonra 1 rakamýný yuvarlayacak
select*from Product


--Celling
--Deðerin ne olduðuna bakmaksýzýn yukarýya yuvarlýcak,Küsuratýn ne kadar küçük olduðuna bakmýyor.tam sayý yapýyor
select Name,CEILING(Price) from Product where Id=11


--Floor 
--Floor ,virgülden sonraki olan küsuratý siler tam sayý yapar yani aþaðý yuvarlar
select Name, FLOOR(Price) from Product where Id=11



