create proc GetAllProductCategoryById
@Id int 
as 
begin 

  select*from Product where CategoryId=@Id
end

exec GetAllProductCategoryById



--Kategoriye göre Ürün Listesi Getirme
--Parametre alan procedure kullanýmý
create proc GetAllProductCategoryById
@Id int
as
begin
    select * from Product where CategoryId=@Id
end


exec GetAllProductCategoryById 2