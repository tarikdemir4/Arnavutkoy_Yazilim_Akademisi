--Case When Then Else end 

select Name,Price,

case 
when Price<50000 --�art
then Price*1.2 --Sa�lan�yorsa %20 art�r�cak
else Price --.Sa�lanm�yorsa  Price de�erini yazacak
end 

from Product 




/*Adedi 10dan k���kse sat��� yok 10dan b�y�kse %20 kdv katarak ekrana yazs�n*/
select Piece,

case 
when Piece<10--�art as
then '�r�n Sat��ta de�il' --Sa�lan�yorsa 
else  cast(Price*1.2 as nvarchar) + 'TL'  --.Sa�lanm�yorsa  
end as 'Sat�� Durumu'

from Product
inner join Category
on(Product.CategoryId=Category.Id)
inner join Stock
on(Product.Id=Stock.ProductId)


/*Adedi 10dan k���kse sat��� yok 10dan b�y�kse %20 kdv katarak ekrana yazs�n ve stokunun 10dan kucuk oldugu durum*/

select Piece,

case 
when Piece<10--�art as
then '�r�n Sat��ta de�il' --Sa�lan�yorsa 
else  cast(Price*1.2 as nvarchar) + 'TL'  --.Sa�lanm�yorsa  
end as 'Sat�� Durumu',

case 
when Stock.Piece<10--�art
then 'Stok Yok' --Sa�lan�yorsa 
when Stock.Piece=11--�art 
then 'Stok Var Fakat Son 1 Adet Kald�' --Sa�lan�yorsa 
else  cast(Stock.Piece as nvarchar)   --.Sa�lanm�yorsa  
end as 'Stok Durumu'

from Product
inner join Category
on(Product.CategoryId=Category.Id)
inner join Stock
on(Product.Id=Stock.ProductId)



--is null-is not null
Select*from Stock where Piece is null --Stok Miktar� Null ise getir 
Select*from Stock where Piece is not null --Stok Miktar� Null de�ilse getir 




--scope: alan yada b�lge olarak tan�mlanabilir.

if 15>14 
begin  --{ demek
  print 'Evet'
end --} demek
else
begin --{ demek
  print 'Hay�r'
end --} demek