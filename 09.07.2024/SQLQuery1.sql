--Case When Then Else end 

select Name,Price,

case 
when Price<50000 --Þart
then Price*1.2 --Saðlanýyorsa %20 artýrýcak
else Price --.Saðlanmýyorsa  Price deðerini yazacak
end 

from Product 




/*Adedi 10dan küçükse satýþý yok 10dan büyükse %20 kdv katarak ekrana yazsýn*/
select Piece,

case 
when Piece<10--Þart as
then 'Ürün Satýþta deðil' --Saðlanýyorsa 
else  cast(Price*1.2 as nvarchar) + 'TL'  --.Saðlanmýyorsa  
end as 'Satýþ Durumu'

from Product
inner join Category
on(Product.CategoryId=Category.Id)
inner join Stock
on(Product.Id=Stock.ProductId)


/*Adedi 10dan küçükse satýþý yok 10dan büyükse %20 kdv katarak ekrana yazsýn ve stokunun 10dan kucuk oldugu durum*/

select Piece,

case 
when Piece<10--Þart as
then 'Ürün Satýþta deðil' --Saðlanýyorsa 
else  cast(Price*1.2 as nvarchar) + 'TL'  --.Saðlanmýyorsa  
end as 'Satýþ Durumu',

case 
when Stock.Piece<10--Þart
then 'Stok Yok' --Saðlanýyorsa 
when Stock.Piece=11--Þart 
then 'Stok Var Fakat Son 1 Adet Kaldý' --Saðlanýyorsa 
else  cast(Stock.Piece as nvarchar)   --.Saðlanmýyorsa  
end as 'Stok Durumu'

from Product
inner join Category
on(Product.CategoryId=Category.Id)
inner join Stock
on(Product.Id=Stock.ProductId)



--is null-is not null
Select*from Stock where Piece is null --Stok Miktarý Null ise getir 
Select*from Stock where Piece is not null --Stok Miktarý Null deðilse getir 




--scope: alan yada bölge olarak tanýmlanabilir.

if 15>14 
begin  --{ demek
  print 'Evet'
end --} demek
else
begin --{ demek
  print 'Hayýr'
end --} demek