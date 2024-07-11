USE DemirBank
GO

create PROC HavaleIslemi 
    @CustomerNo NVARCHAR(10),
    @Password NVARCHAR(4),
    @AccountNo INT,
    @Price FLOAT,
    @ReceiverAccountNo INT
AS
BEGIN
    DECLARE @IsCustomer INT
    DECLARE @IsPassword NVARCHAR(4)
    DECLARE @ErrorPasswordCount INT
    DECLARE @IsBlock BIT
    DECLARE @Balance FLOAT

    -- Müþteri Bilgilerini Al
    SELECT @IsCustomer = Id,
           @IsPassword = Password,
           @IsBlock = IsBlock,
           @ErrorPasswordCount = ErrorPasswordCount
    FROM Customer 
    WHERE CustomerNo = @CustomerNo

    IF (@IsCustomer > 0 AND @IsBlock = 0)
    BEGIN
        -- Þifre Kontrolü
        IF (@IsPassword = @Password)
        BEGIN
            -- Hesap Bakiyesini Al
            SET @Balance = (SELECT Balance FROM Account WHERE Id = @AccountNo)

            -- Yeterli Bakiye Kontrolü
            IF (@Balance >= @Price)
            BEGIN
                -- Gönderen Hesaptan Para Düþ
                UPDATE Account 
                SET Balance = Balance - @Price 
                WHERE Id = @AccountNo

                -- Alýcý Hesabýna Para Ekle
                UPDATE Account 
                SET Balance = Balance + @Price 
                WHERE Id = @ReceiverAccountNo

                -- Hata Þifre Sayýsýný Sýfýrla
                UPDATE Customer 
                SET ErrorPasswordCount = 0 
                WHERE CustomerNo = @CustomerNo

                -- Transfer Tablosuna Kayýt Ekle
                INSERT INTO [Transfer] (SenderCustomerNo, ReceiverCustomerNo, Price, TransferDate)
                VALUES (@CustomerNo, @ReceiverAccountNo, @Price, GETDATE())

                PRINT 'Para Yatýrma Ýþlemi Baþarýlý.'
                PRINT 'Yatýrýlan Tutar: ' + CAST(@Price AS NVARCHAR) + ' TL'
                PRINT 'Toplam Bakiye: ' + CAST((@Balance - @Price) AS NVARCHAR) + ' TL'
            END
            ELSE
            BEGIN
                PRINT 'Yeterli bakiyeniz olmadýðý için para gönderimi yapýlamýyor'
            END
        END
        ELSE 
        BEGIN
            -- Hatalý Þifre Ýþlemleri
            SET @ErrorPasswordCount = @ErrorPasswordCount + 1
            UPDATE Customer 
            SET ErrorPasswordCount = @ErrorPasswordCount 
            WHERE CustomerNo = @CustomerNo

            IF (@ErrorPasswordCount >= 3)
            BEGIN
                PRINT 'Þifreyi 3 Defa Hatalý Girdiðiniz Ýçin Hesabýnýz Bloke Oldu.'
                UPDATE Customer 
                SET IsBlock = 1 
                WHERE CustomerNo = @CustomerNo
            END

            PRINT CAST(@ErrorPasswordCount AS NVARCHAR) + ' Hatalý Þifre Girildi.'
        END
    END
    ELSE IF (@IsBlock = 1)
    BEGIN
        PRINT 'Hesabýnýz Blokeli Giriþ Yapamazsýnýz. Lütfen Banka Görevlisi Ýle Ýletiþime Geçiniz.'
    END
    ELSE 
    BEGIN
        PRINT 'Hesap Bulunamadý'
    END
END

-- Prosedürü Çaðýrma Örneði
EXEC HavaleIslemi 'DB10000002', '1234', 3, 150000, 3
