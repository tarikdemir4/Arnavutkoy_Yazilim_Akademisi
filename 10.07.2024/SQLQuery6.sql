create proc GetAllProductCategoryById
@Id int 
as 
begin 

  select*from Product where CategoryId=@Id
end

exec GetAllProductCategoryById



--Kategoriye g�re �r�n Listesi Getirme
--Parametre alan procedure kullan�m�
create proc GetAllProductCategoryById
@Id int
as
begin
    select * from Product where CategoryId=@Id
end


exec GetAllProductCategoryById 2