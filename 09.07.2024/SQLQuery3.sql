--Trigger:Tetikleyici 
--Trigger insert delete ve uptade ile çalýþýr.
--Trigger update  iþlemi yaparken hem insert hemde delete iþlemi yapýyor.


/*insert iþlemi
create trigger CreateStockCard 
on Product
after insert 
as 
begin 
   declare @ProductId int
   select @ProductId=Id   from inserted

   --Tetiklenecek olan iþlemler

   insert into Stock(ProductId,Piece) values(@ProductId,0)
end
*/

--Trigger i tetikleyecek olan insert sorgusu
insert into Product(Name,Price,CategoryId) values('Nokia 3310',1250,1)



/*Delete iþlemi 
create trigger DeleteProduct
on Product
after delete
as
begin
    declare @ProductId int
	declare @ProductName nvarchar(50)
	select @ProductId=Id,@ProductName=Name from deleted 

	--tetiklenecek olan iþlemler
	delete from Stock where ProductId=@ProductId
	delete from Buy where ProductId=@ProductId
	delete from Sell where ProductId=@ProductId
	delete from ProductShelf where ProductId=@ProductId
	Print @ProductName+ 'Adlý ürün ve bilgileri silindi'
end*/
delete from Product where Id=20



/*update iþlemi yapýldý
create trigger UpdateProduct
on Product
after update
as
begin
  declare @NewName nvarchar(50)
  declare @OldName nvarchar(50)


  select @NewName=Name from inserted
  select @OldName=Name from deleted


  print @OldName + 'Adlý ürün adý artýk ' + @NewName
end
*/
update Product set Name='Vestel Full Hd Tv' where Id=10




