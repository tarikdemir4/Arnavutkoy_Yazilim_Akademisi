--join kullanýmý

/*
inner join: tam eþleþme gerekiyor yapý içerde varsa getir yoksa getirme
*/
select 
Product.Id,Product.Name,Product.Price,Category.Name as 'Kategori Adý' 
from Product 
inner join Category
on(Product.CategoryId=Category.Id)


/*
left join:solda yazýlan tablonun tamamý ile saðda yazýlan tablodan soldan eþleþenleri getirir
*/

select*from Product left join Category on(Product.CategoryId=Category.Id)



/*
right join:saðda yazýlan tablonun tamamý ile solda yazýlan tablodan saðdan eþleþenleri getirir
*/

select*from Product right join Category on(Product.CategoryId=Category.Id)



/*
full join:eþleþsin yada eþleþmesin tamamýný listeler
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
on(Product.Id=Stock.ProductId) --Ürünlerin Id,Name, Price, CategoryName,Stock deðerlerini yazdýrma

select
Category.Name,
SUM(Stock.Piece) as ToplamUrunAdedi ,
SUM(Stock.Piece*Product.Price) as ToplamTutar
from Product
inner join Category
on(Product.CategoryId=Category.Id)
inner join Stock
on(Product.Id=Stock.ProductId)  Group by Category.Name

select SUM(Price) as 'Bilgisayarlarýn Toplam Tutarý'  from Product where CategoryId=2



select Category.Name,
SUM(Id) as ToplamUrunAdedi
from Category Group by Category.Name--Ürünleri kategorilerine göre gruplama,hangi kategoriler var listeleme yapar





