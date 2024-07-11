/*
    in - not in - between - not between

    içide olan- içinde olayan- aralýkta olan -aralýkta olmayan

*/


--in kullanýmý

--Name deðerinde Cemile kelimesi ile örtüþen deðer var mý?
select * from Customer where Name in('Cemile')
select * from Customer where Name='Cemile'

select * from Customer where Name in('Cemile','Erhan')
--benzer kullanýmý
select * from Customer where Name='Cemile' or Name='Erhan'

--not in
--Name deðerinde Cemile haricindekileri getirme
select * from Customer where Name not in('Cemile')
select * from Customer where Name not in('Cemile','Fatma')

--between - aralýk içinde olan deðeri bulma

--bakiyesi 2500 ile 5000 arasýnda olan hesaplarý getir
select * from Customer inner join Account on(Customer.Id=Account.CustomerId)
where Balance Between 2500 and 5000

--benzer kullanýmý
select * from Customer inner join Account on(Customer.Id=Account.CustomerId)
where Balance>=2500 or Balance<=5000


--not between - aralýk dýþýnda kalanlarý bulma
select * from Customer inner join Account on(Customer.Id=Account.CustomerId)
where Balance not Between 2500 and 5000

--benzer kullanýmý
select * from Customer inner join Account on(Customer.Id=Account.CustomerId)
where Balance<2500 or Balance>5000

Sýnýf yorumu ekle…


Duyuru: "--Like Kullanýmý --String Arama iþlemi…"
Erhan Kaya
Oluþturulma tarihi: 15:0015:00
--Like Kullanýmý
--String Arama iþlemi

--Baþlangýç deðerine göre Like ile arama yapma
select * from Customer where (Name Like 'er%')

--Son deðerine göre Like ile arama yapma
select * from Customer where (Name Like '%ma')

--Ýçeride herhangi bir yerde olan deðeri arama
select * from Customer where (Name Like '%a%')


select * from Customer where (Name Like '%a%') or (Surname Like '%a%') and (Surname Like '%n%')