-- Yuvarlama i�lemleri Round , Celling,Floor



 --Round
--Round:Say�y� En yak�n b�lgeye yuvarlar.
--Roundda basamak say�s� belirtilmek zorundad�r.
--E�er Round De�eri 0 verilirse tam say� ��kar
--E�er Round De�eri 0 dan farkl� verilirse kesirli say� ��kar
select Name,ROUND(Price,0) from Product where Id=11 --Id si 11 olan tutar� tam say� yapacak
select Name,ROUND(Price,1) from Product where Id=11 --Id si 11 olan tutar�n virg�lden sonra 1 rakam�n� yuvarlayacak
select*from Product


--Celling
--De�erin ne oldu�una bakmaks�z�n yukar�ya yuvarl�cak,K�surat�n ne kadar k���k oldu�una bakm�yor.tam say� yap�yor
select Name,CEILING(Price) from Product where Id=11


--Floor 
--Floor ,virg�lden sonraki olan k�surat� siler tam say� yapar yani a�a�� yuvarlar
select Name, FLOOR(Price) from Product where Id=11



