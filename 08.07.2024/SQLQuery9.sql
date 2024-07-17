--�r�n Listeleme 

/*
Kategorisi telefon olan 
fiyat� 50000den yuksek
adedi 10dan yuksek olan �r�nleri listeyiniz
c�kt�:Name Price CategoryName Piece
*/
select Product.Name,
Category.Name as '�r�n Ad�',
Stock.Piece as 'Kategori Ad�',
cast(Product.Price as nvarchar)+' TL' as Fiyat,
cast((Product.Price*1.2) as nvarchar) + ' TL' as 'KDV dahil fiyat'
from Product
inner join Category
on(Product.CategoryId=Category.Id)
inner join Stock
on(Product.Id=Stock.ProductId) where Category.Name='Telefon' and Product.Price>50000 and Stock.Piece>10
