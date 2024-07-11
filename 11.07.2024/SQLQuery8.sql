--Like Kullanýmý
--String Arama iþlemi

--Baþlangýç deðerine göre Like ile arama yapma
select * from Customer where (Name Like 'er%')

--Son deðerine göre Like ile arama yapma
select * from Customer where (Name Like '%ma')

--Ýçeride herhangi bir yerde olan deðeri arama
select * from Customer where (Name Like '%a%')


select * from Customer where (Name Like '%a%') or ((Surname Like '%a%') and (Surname Like '%n%'))