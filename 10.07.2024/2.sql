--Hata i�leme yap�yoruz
--Bu hatalar� kendi yazd��m�z hatalara �evirebiliyoruz
--transaction i�lemi ile istedi�imiz b�lgeri geri al�yoruz
--Transaction i�lemleri

create proc ToplamaIslemi @Sayi1 tinyint, @Sayi2 tinyint
as
begin
    declare @sonuc tinyint

    begin try
        begin tran hesaplama
            set @sonuc=@Sayi1+@Sayi2
           
            insert into Buy(ProductId,Quantity) values(21,20)
            print @sonuc
        commit tran hesaplama

    end try
    begin catch
        rollback tran hesaplama --sadece hesap transaction i�lemini iptal eder
        --rollback tran --o anda yap�lan biti i�lemleri iptal eder
        print 'Beklenmedik Bir Hata Olu�tu!'
    end catch
end

exec ToplamaIslemi 200,125