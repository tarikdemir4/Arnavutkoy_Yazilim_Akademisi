--Ürün Listeleme 

/*
Kategorisi telefon olan 
fiyatý 50000den yuksek
adedi 10dan yuksek olan ürünleri listeyiniz
cýktý:Name Price CategoryName Piece
*/
select Product.Name,
Category.Name as 'Ürün Adý',
Stock.Piece as 'Kategori Adý',
cast(Product.Price as nvarchar)+' TL' as Fiyat,
cast((Product.Price*1.2) as nvarchar) + ' TL' as 'KDV dahil fiyat'
from Product
inner join Category
on(Product.CategoryId=Category.Id)
inner join Stock
on(Product.Id=Stock.ProductId) where Category.Name='Telefon' and Product.Price>50000 and Stock.Piece>10
