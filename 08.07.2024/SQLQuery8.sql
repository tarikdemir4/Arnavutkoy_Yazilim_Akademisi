--join kullan�m�

/*
inner join: tam e�le�me gerekiyor yap� i�erde varsa getir yoksa getirme
*/
select 
Product.Id,Product.Name,Product.Price,Category.Name as 'Kategori Ad�' 
from Product 
inner join Category
on(Product.CategoryId=Category.Id)


/*
left join:solda yaz�lan tablonun tamam� ile sa�da yaz�lan tablodan soldan e�le�enleri getirir
*/

select*from Product left join Category on(Product.CategoryId=Category.Id)



/*
right join:sa�da yaz�lan tablonun tamam� ile solda yaz�lan tablodan sa�dan e�le�enleri getirir
*/

select*from Product right join Category on(Product.CategoryId=Category.Id)



/*
full join:e�le�sin yada e�le�mesin tamam�n� listeler
*/

select*from Product full join Category on(Product.CategoryId=Category.Id)


select CategoryId from Product Group by CategoryId

select CategoryId,COUNT(*) as Adet  from Product Group by CategoryId


select
Product.Id,
Product.Name,
Product.Price,Category.Name as CategoryName,
Stock.Piece 
from Product
inner join Category
on(Product.CategoryId=Category.Id)
inner join Stock
on(Product.Id=Stock.ProductId) --�r�nlerin Id,Name, Price, CategoryName,Stock de�erlerini yazd�rma

select
Category.Name,
SUM(Stock.Piece) as ToplamUrunAdedi ,
SUM(Stock.Piece*Product.Price) as ToplamTutar
from Product
inner join Category
on(Product.CategoryId=Category.Id)
inner join Stock
on(Product.Id=Stock.ProductId)  Group by Category.Name

select SUM(Price) as 'Bilgisayarlar�n Toplam Tutar�'  from Product where CategoryId=2



select Category.Name,
SUM(Id) as ToplamUrunAdedi
from Category Group by Category.Name--�r�nleri kategorilerine g�re gruplama,hangi kategoriler var listeleme yapar





