--Procedure Kullan�m�
create proc GetAllProduct
as
begin
    select
        P.Id,
        P.Name,
        C.Name as CategoryName,
        S.Piece,
        P.Price,
        P.Price*S.Piece as TotalPrice
    from Product as P
    inner join Category as C
    on(P.CategoryId=C.Id)
    inner join Stock as S
    on(S.ProductId=P.Id)
end

--Procedure �al��t�rma kodu
exec GetAllProduct