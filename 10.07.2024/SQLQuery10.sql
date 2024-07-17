--Boy Kilo Endeksi Hesaplama
--E�er Ki�i Kad�n �se *1.05
--Erkek ise *1.00
--Ya� i�in her 10 ya� i�in �arpan olarak 0.01 de�erinde �arpan olu�turun
--yani ki�i 50 ya��ndaysa sonuc*1.05 olacak

create proc BKE @Yas int,@Kilo float,@Boy float,@Cinsiyet nvarchar(5)
as
begin

    declare @sonuc float
    declare @yasHesap float
    declare @cinsiyetCarpan float=1.00
    declare @sonucString nvarchar(50)

    set @sonuc=(@Kilo/(@Boy*@Boy))*10000
    set @yasHesap=((@Yas/10)/100)+1

    if(@Cinsiyet='Kad�n') set @cinsiyetCarpan=1.05

    set @sonuc=@sonuc*@yasHesap*@cinsiyetCarpan

    if(@sonuc<18.5) set @sonucString=' Zay�f'
    else if(@sonuc<24.9) set @sonucString=' Normal'
    else if(@sonuc<29.9) set @sonucString=' Kilolu'
    else if(@sonuc<34.9) set @sonucString=' A��r� Kilolu'
    else if(@sonuc>=35) set @sonucString=' Obez'

    print 'Sonuc: '+ cast(@sonuc as nvarchar) + @sonucString
end


exec BKE 28,83,183,'Erkek'