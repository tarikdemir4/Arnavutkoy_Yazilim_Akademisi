--Like Kullan�m�
--String Arama i�lemi

--Ba�lang�� de�erine g�re Like ile arama yapma
select * from Customer where (Name Like 'er%')

--Son de�erine g�re Like ile arama yapma
select * from Customer where (Name Like '%ma')

--��eride herhangi bir yerde olan de�eri arama
select * from Customer where (Name Like '%a%')


select * from Customer where (Name Like '%a%') or ((Surname Like '%a%') and (Surname Like '%n%'))