--Union kullan�m�
--Ortak Sorgu Kullan�m�

(Select Name,Surname from Customer)
Union
(select Name,Surname from Staff)

(Select Name,Surname from Customer)
Union All
(select Name,Surname from Staff)

/*
    Sorgudaki veri t�rlerinin yani kolonlar�n ayn� olmas� gerekir
    Birle�tirmeden sora veriler A-Z s�ralan�r
    B�t�n verileri g�rmek i�in Union All ile veriler �ekilir
*/