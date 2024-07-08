--Group by-- veri gruplama

select CategoryId from Product Group by CategoryId--Ürünleri kategorilerine göre gruplama,hangi kategoriler var listeleme yapar

select CategoryId,COUNT(*) as Adet  from Product Group by CategoryId--Kategorilerine ayrýlan kategorilerde kaçar adet ürün var


/*
Product tablosunda Categorylerine göre gruplandýrýlan ve bu gruplandýrýlmýþ ürünleri kaçar adet olduðunu ve ayrýca
bu gruplandýrýlmýþ ürünleri toplam tutarýný yazýnýz categoryId kac adet oldugu toplam tutarý
*/
select CategoryId,COUNT(*) as Adet,SUM(Price) as 'Toplam Fiyatý' from Product Group by CategoryId

