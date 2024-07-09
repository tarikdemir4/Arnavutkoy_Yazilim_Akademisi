--Trigger:Tetikleyici 
--Trigger insert delete ve uptade ile �al���r.
--Trigger update  i�lemi yaparken hem insert hemde delete i�lemi yap�yor.


/*insert i�lemi
create trigger CreateStockCard 
on Product
after insert 
as 
begin 
   declare @ProductId int
   select @ProductId=Id   from inserted

   --Tetiklenecek olan i�lemler

   insert into Stock(ProductId,Piece) values(@ProductId,0)
end
*/

--Trigger i tetikleyecek olan insert sorgusu
insert into Product(Name,Price,CategoryId) values('Nokia 3310',1250,1)



/*Delete i�lemi 
create trigger DeleteProduct
on Product
after delete
as
begin
    declare @ProductId int
	declare @ProductName nvarchar(50)
	select @ProductId=Id,@ProductName=Name from deleted 

	--tetiklenecek olan i�lemler
	delete from Stock where ProductId=@ProductId
	delete from Buy where ProductId=@ProductId
	delete from Sell where ProductId=@ProductId
	delete from ProductShelf where ProductId=@ProductId
	Print @ProductName+ 'Adl� �r�n ve bilgileri silindi'
end*/
delete from Product where Id=20



/*update i�lemi yap�ld�
create trigger UpdateProduct
on Product
after update
as
begin
  declare @NewName nvarchar(50)
  declare @OldName nvarchar(50)


  select @NewName=Name from inserted
  select @OldName=Name from deleted


  print @OldName + 'Adl� �r�n ad� art�k ' + @NewName
end
*/
update Product set Name='Vestel Full Hd Tv' where Id=10




