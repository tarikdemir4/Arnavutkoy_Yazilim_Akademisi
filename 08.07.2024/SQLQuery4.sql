-- Order by --Sýralama Ýþlemleri
--asc a-z 0-9 yani küçükten büyüðe sýralama iþlemi yapar
--desc z-a 9-0 yani büyükten küçüe sýralama iþlemi yapar


select*from Product Order by [Name] --Ürünleri a'dan z'ye sýralama( order by default olarak asc olarak çalýþýr)
select*from Product Order by [Name] desc --Ürünleri z'den a'ya sýralama 
select*from Product Order by Price desc --Fiyatlarý büyükten küçüðe sýralama 
select top(1)* from Product  order by Price asc -- Ürünleri fiyatý küçükten büyüðe sýralar ve 1. yi ekrana yazdýrýr



