USE [DepoYonetimSistemiDb]
GO
/****** Object:  Trigger [dbo].[SellProduct]    Script Date: 9.07.2024 14:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--stok g�ncelleme i�lemleri

ALTER trigger [dbo].[SellProduct]
on [dbo].[Sell]
after insert
as
begin
    declare @ProductId int
    declare @Quantity int
    declare @Stock int

    select @ProductId=ProductId,@Quantity=Quantity from inserted
   

        select @Stock=Piece from Stock where ProductId=@ProductId

        --set @Stock=(select SUM(Piece) from Stock where ProductId=1)
        if(@Stock>=@Quantity)
        begin
            update Stock set Piece=Piece-@Quantity where ProductId=@ProductId
        end
        else begin
            print 'Sat�lacak Olan �r�n�n Sto�u Yetersiz L�tfen Tekrar Deneyiniz. Stok:'+cast(@Stock as nvarchar)
            rollback Transaction
        end
        print 'Stok G�ncellendi'
    end
   

insert into Sell(ProductId,Quantity) values(14,25)

S�n�f yorumu ekle�


Duyuru: "--stok g�ncelleme i�lemleri create�"
Erhan Kaya
Olu�turulma tarihi: 14:0714:07
--stok g�ncelleme i�lemleri

create trigger SellProduct
on Sell
after insert
as
begin
    declare @ProductId int
    declare @Quantity int
    declare @Stock int

    select @ProductId=ProductId,@Quantity=Quantity from inserted
   
    select @Stock=Piece from Stock where ProductId=1

    --set @Stock=(select SUM(Piece) from Stock where ProductId=1)
    if(@Stock>=@Quantity)
    begin
        update Stock set Piece=Piece-@Quantity where ProductId=@ProductId
    end
    else begin
        print 'Sat�lacak Olan �r�n�n Sto�u Yetersiz L�tfen Tekrar Deneyiniz. Stok:'+@Stock
    end
    print 'Stok G�ncellendi'
end

--insert into Product(Name,Price,CategoryId) values('Nokia 3310',1250,1)

insert into Sell(ProductId,Quantity) values(19,28)