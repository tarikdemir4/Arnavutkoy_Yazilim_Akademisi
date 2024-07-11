--View Kullan�m� - Sanal tablo


--View Olu�turma

create view Musteriler
as
select C.CustomerNo,C.Name,C.Surname,A.Balance from Customer as C
inner join Account as A
on(C.Id=A.CustomerId)

--View tablosunu �a��rma
select * from Musteriler


create view Musteriler2
as
select CustomerNo,Name,Surname from Customer

select * from Musteriler2

insert into Musteriler (Name,Surname) values('Antep','F�st���')

/*
    E�er join kulllan�l�yorsa insert-update-delete gibi yap�lar� kullanmazs�n�z
    Tablo olu�turulurken bo� kolon ad� b�rak�lamaz
    Order by kullan�lmaz
    Birden fazla sorgu kullan�lmaz sadece join kullan�l�r
    alt sorgu kullan�labilir
    Parametre g�nderilemez

    --Avantajlar�--
    G�venli ve Veri ��k��� kontroll�d�r
    D��ar�dan m�dahele edilemez
    Join ile birlikte birden fazla tablo tek tablo olarak kullan�l�r
    alt sorgulara izin verir
*/