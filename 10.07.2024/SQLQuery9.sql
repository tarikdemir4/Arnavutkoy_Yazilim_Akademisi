--Procedure ile basit toplama iþlemi

create proc Toplama @Sayi1 float,@Sayi2 float
as
begin
    declare @Sonuc float

    set @Sonuc=@Sayi1+@Sayi2

    print 'Toplama Sonucu: '+cast(@Sonuc as nvarchar)
end

exec Toplama 235,865