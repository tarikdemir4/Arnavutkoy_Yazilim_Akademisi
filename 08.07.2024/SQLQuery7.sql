--Group by-- veri gruplama

select CategoryId from Product Group by CategoryId--�r�nleri kategorilerine g�re gruplama,hangi kategoriler var listeleme yapar

select CategoryId,COUNT(*) as Adet  from Product Group by CategoryId--Kategorilerine ayr�lan kategorilerde ka�ar adet �r�n var


/*
Product tablosunda Categorylerine g�re grupland�r�lan ve bu grupland�r�lm�� �r�nleri ka�ar adet oldu�unu ve ayr�ca
bu grupland�r�lm�� �r�nleri toplam tutar�n� yaz�n�z categoryId kac adet oldugu toplam tutar�
*/
select CategoryId,COUNT(*) as Adet,SUM(Price) as 'Toplam Fiyat�' from Product Group by CategoryId

