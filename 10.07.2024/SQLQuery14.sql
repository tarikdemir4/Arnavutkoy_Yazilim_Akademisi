create proc UpdateProductProc @Id int,@Name nvarchar(50),@Price float,@CategoryId int
as
begin
    declare @IsProduct int
    select @IsProduct=COUNT(*) from Product where Id=@Id

    if(@IsProduct=1)
    begin
        update Product set Name=@Name,Price=@Price,CategoryId=@CategoryId where Id=@Id
        print 'Update Product Successful'
    end
    else begin
        print 'Not Found Product'
    end
end

exec UpdateProductProc 21,'Toshiba Oled Tv',45000,5