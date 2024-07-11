/*
    in - not in - between - not between

    i�ide olan- i�inde olayan- aral�kta olan -aral�kta olmayan

*/


--in kullan�m�

--Name de�erinde Cemile kelimesi ile �rt��en de�er var m�?
select * from Customer where Name in('Cemile')
select * from Customer where Name='Cemile'

select * from Customer where Name in('Cemile','Erhan')
--benzer kullan�m�
select * from Customer where Name='Cemile' or Name='Erhan'

--not in
--Name de�erinde Cemile haricindekileri getirme
select * from Customer where Name not in('Cemile')
select * from Customer where Name not in('Cemile','Fatma')

--between - aral�k i�inde olan de�eri bulma

--bakiyesi 2500 ile 5000 aras�nda olan hesaplar� getir
select * from Customer inner join Account on(Customer.Id=Account.CustomerId)
where Balance Between 2500 and 5000

--benzer kullan�m�
select * from Customer inner join Account on(Customer.Id=Account.CustomerId)
where Balance>=2500 or Balance<=5000


--not between - aral�k d���nda kalanlar� bulma
select * from Customer inner join Account on(Customer.Id=Account.CustomerId)
where Balance not Between 2500 and 5000

--benzer kullan�m�
select * from Customer inner join Account on(Customer.Id=Account.CustomerId)
where Balance<2500 or Balance>5000

S�n�f yorumu ekle�


Duyuru: "--Like Kullan�m� --String Arama i�lemi�"
Erhan Kaya
Olu�turulma tarihi: 15:0015:00
--Like Kullan�m�
--String Arama i�lemi

--Ba�lang�� de�erine g�re Like ile arama yapma
select * from Customer where (Name Like 'er%')

--Son de�erine g�re Like ile arama yapma
select * from Customer where (Name Like '%ma')

--��eride herhangi bir yerde olan de�eri arama
select * from Customer where (Name Like '%a%')


select * from Customer where (Name Like '%a%') or (Surname Like '%a%') and (Surname Like '%n%')