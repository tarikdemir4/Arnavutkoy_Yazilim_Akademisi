--Union kullanýmý
--Ortak Sorgu Kullanýmý

(Select Name,Surname from Customer)
Union
(select Name,Surname from Staff)

(Select Name,Surname from Customer)
Union All
(select Name,Surname from Staff)

/*
    Sorgudaki veri türlerinin yani kolonlarýn ayný olmasý gerekir
    Birleþtirmeden sora veriler A-Z sýralanýr
    Bütün verileri görmek için Union All ile veriler Çekilir
*/