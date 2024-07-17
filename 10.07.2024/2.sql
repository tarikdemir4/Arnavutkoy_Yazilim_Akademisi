--Hata iþleme yapýyoruz
--Bu hatalarý kendi yazdðýmýz hatalara çevirebiliyoruz
--transaction iþlemi ile istediðimiz bölgeri geri alýyoruz
--Transaction iþlemleri

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
        rollback tran hesaplama --sadece hesap transaction iþlemini iptal eder
        --rollback tran --o anda yapýlan biti iþlemleri iptal eder
        print 'Beklenmedik Bir Hata Oluþtu!'
    end catch
end

exec ToplamaIslemi 200,125