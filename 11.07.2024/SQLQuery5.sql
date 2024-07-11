use DemirBank
go

--ATM'den Para Yatýrma Ýþlemi
/*
    Giriþ Ýþlemi
    Þifre Kontrol Ýþlemi
    Hesap Seçme
*/

create proc Havale @CustomerNo nvarchar(10),@Password nvarchar(4),@AccountNo int,@Price float,@ReceiverCustomerNo
as
begin
    declare @IsCustomer int
    declare @IsPassword nvarchar(4)
    declare @ErrorPasswordCount int
    declare @IsBlock bit
    declare @Balance float

    select    @IsCustomer=Id,
            @IsPassword=Password,
            @IsBlock=IsBlock,
            @ErrorPasswordCount=ErrorPasswordCount
    from Customer where
    CustomerNo=@CustomerNo

    if(@IsCustomer>0 and @IsBlock=0)
    begin
        if(@IsPassword=@Password)
        begin
            update Customer set ErrorPasswordCount=0 where CustomerNo=@CustomerNo

            update Account set Balance=Balance+@Price where Id=@AccountNo
            insert into [Transfer](SenderCustomerNo,ReceiverCustomerNo,Price,TransferDate)
            values(@CustomerNo,@CustomerNo,@Price,GETDATE())

            set @Balance=(select Balance from Account where Id=@AccountNo)

            print 'Para Yatýrma Ýþlemi Baþarýlý.'
            print 'Yatýrýlan Tutar: '+cast(@Price as nvarchar)+' TL'
            print 'Toplam Bakiye: '+cast(@Balance as nvarchar)+' TL'
        end
        else begin
            set @ErrorPasswordCount=@ErrorPasswordCount+1
            update Customer set ErrorPasswordCount=@ErrorPasswordCount where CustomerNo=@CustomerNo
            if(@ErrorPasswordCount>=3)
            begin
                print 'Þifreyi 3 Defa Hatalý Girdiðiniz Ýçin Hesabýnýz Bloke Oldu.'
                update Customer set IsBlock=1 where CustomerNo=@CustomerNo
            end

            print cast(@ErrorPasswordCount as nvarchar)+' Hatalý Þifre Girildi.'
        end
    end
    else if(@IsBlock=1)
    begin
        print 'Hesabýnýz Blokeli Giriþ Yamazsýnýz. Lütfen Banka Görevlisi Ýle Ýletiþime Geçiniz.'
    end
    else begin
        print 'Hesap Bulunamadý'
    end
end

exec AtmParaYatirma 'DB10000003','1234',3,150000
