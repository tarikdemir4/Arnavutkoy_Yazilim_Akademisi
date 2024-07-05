select*from [User] -- User tablosunu listeler

insert into [User] (Name,Surname,Age,Gender,TcNo,Phone) -- insert into ile yeni veri giri�i yapt�k.
values ('ay�e','fatma',27,'kad�n',23456789876,08978978967) --values ile de�erlerin kar��l�klar�n� yazd�k.


delete from [User] where Id=3 --delete veri silme i�lemi yapar, hangi veriyi silece�imizde where ile belirtilir. sak�ncal� bir i�lemdir.

UPDATE	[User] set IsDelete=1 where Id=5 -- update veri g�ncellemeye yarar, hangi �arta g�re g�ncelleme yap�laca��n� da where ile g�stermi� olduk.

update [User] set IsDelete=0, Balance=Balance*1.1 --update komutunu kullanarak ayn� sat�rda matematiksel i�lemler de yapabilir ve veriyi de�i�tirebiliriz.


--alter komutu ile tabloya bir�ey ekleyebilir veya silebiliriz

alter table [User] add Email nvarchar(200)-- alter ve add kullan�larak Email s�tunu eklenmi� oldu.

alter table [User] add [Password] nvarchar(234) default 'demirtarik4@gmail.com' -- add komutu ile tabloya Password s�tunu ekler default yani ba�lang�� de�eri de verilmi� olur.

alter table [User] drop column Email -- drop komutu ile tablodan Email s�tununu silmeye yarar



truncate table [User]-- Tablodaki b�t�n de�erleri siler