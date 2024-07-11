--View Kullanýmý - Sanal tablo


--View Oluþturma

create view Musteriler
as
select C.CustomerNo,C.Name,C.Surname,A.Balance from Customer as C
inner join Account as A
on(C.Id=A.CustomerId)

--View tablosunu çaðýrma
select * from Musteriler


create view Musteriler2
as
select CustomerNo,Name,Surname from Customer

select * from Musteriler2

insert into Musteriler (Name,Surname) values('Antep','Fýstýðý')

/*
    Eðer join kulllanýlýyorsa insert-update-delete gibi yapýlarý kullanmazsýnýz
    Tablo oluþturulurken boþ kolon adý býrakýlamaz
    Order by kullanýlmaz
    Birden fazla sorgu kullanýlmaz sadece join kullanýlýr
    alt sorgu kullanýlabilir
    Parametre gönderilemez

    --Avantajlarý--
    Güvenli ve Veri çýkýþý kontrollüdür
    Dýþarýdan müdahele edilemez
    Join ile birlikte birden fazla tablo tek tablo olarak kullanýlýr
    alt sorgulara izin verir
*/