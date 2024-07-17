create proc AddProduct @Name nvarchar(50),@Price float,@CategoryId int
as
begin
    insert into Product(Name,Price,CategoryId) values(@Name,@Price,@CategoryId)
end

exec AddProduct 'Samsung Tv',25000,5