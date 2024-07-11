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

    -- M��teri Bilgilerini Al
    SELECT @IsCustomer = Id,
           @IsPassword = Password,
           @IsBlock = IsBlock,
           @ErrorPasswordCount = ErrorPasswordCount
    FROM Customer 
    WHERE CustomerNo = @CustomerNo

    IF (@IsCustomer > 0 AND @IsBlock = 0)
    BEGIN
        -- �ifre Kontrol�
        IF (@IsPassword = @Password)
        BEGIN
            -- Hesap Bakiyesini Al
            SET @Balance = (SELECT Balance FROM Account WHERE Id = @AccountNo)

            -- Yeterli Bakiye Kontrol�
            IF (@Balance >= @Price)
            BEGIN
                -- G�nderen Hesaptan Para D��
                UPDATE Account 
                SET Balance = Balance - @Price 
                WHERE Id = @AccountNo

                -- Al�c� Hesab�na Para Ekle
                UPDATE Account 
                SET Balance = Balance + @Price 
                WHERE Id = @ReceiverAccountNo

                -- Hata �ifre Say�s�n� S�f�rla
                UPDATE Customer 
                SET ErrorPasswordCount = 0 
                WHERE CustomerNo = @CustomerNo

                -- Transfer Tablosuna Kay�t Ekle
                INSERT INTO [Transfer] (SenderCustomerNo, ReceiverCustomerNo, Price, TransferDate)
                VALUES (@CustomerNo, @ReceiverAccountNo, @Price, GETDATE())

                PRINT 'Para Yat�rma ��lemi Ba�ar�l�.'
                PRINT 'Yat�r�lan Tutar: ' + CAST(@Price AS NVARCHAR) + ' TL'
                PRINT 'Toplam Bakiye: ' + CAST((@Balance - @Price) AS NVARCHAR) + ' TL'
            END
            ELSE
            BEGIN
                PRINT 'Yeterli bakiyeniz olmad��� i�in para g�nderimi yap�lam�yor'
            END
        END
        ELSE 
        BEGIN
            -- Hatal� �ifre ��lemleri
            SET @ErrorPasswordCount = @ErrorPasswordCount + 1
            UPDATE Customer 
            SET ErrorPasswordCount = @ErrorPasswordCount 
            WHERE CustomerNo = @CustomerNo

            IF (@ErrorPasswordCount >= 3)
            BEGIN
                PRINT '�ifreyi 3 Defa Hatal� Girdi�iniz ��in Hesab�n�z Bloke Oldu.'
                UPDATE Customer 
                SET IsBlock = 1 
                WHERE CustomerNo = @CustomerNo
            END

            PRINT CAST(@ErrorPasswordCount AS NVARCHAR) + ' Hatal� �ifre Girildi.'
        END
    END
    ELSE IF (@IsBlock = 1)
    BEGIN
        PRINT 'Hesab�n�z Blokeli Giri� Yapamazs�n�z. L�tfen Banka G�revlisi �le �leti�ime Ge�iniz.'
    END
    ELSE 
    BEGIN
        PRINT 'Hesap Bulunamad�'
    END
END

-- Prosed�r� �a��rma �rne�i
EXEC HavaleIslemi 'DB10000002', '1234', 3, 150000, 3
