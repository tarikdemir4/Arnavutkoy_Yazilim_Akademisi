-- Order by --S�ralama ��lemleri
--asc a-z 0-9 yani k���kten b�y��e s�ralama i�lemi yapar
--desc z-a 9-0 yani b�y�kten k���e s�ralama i�lemi yapar


select*from Product Order by [Name] --�r�nleri a'dan z'ye s�ralama( order by default olarak asc olarak �al���r)
select*from Product Order by [Name] desc --�r�nleri z'den a'ya s�ralama 
select*from Product Order by Price desc --Fiyatlar� b�y�kten k����e s�ralama 
select top(1)* from Product  order by Price asc -- �r�nleri fiyat� k���kten b�y��e s�ralar ve 1. yi ekrana yazd�r�r



