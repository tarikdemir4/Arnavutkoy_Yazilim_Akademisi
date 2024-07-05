select*from [User] -- User tablosunu listeler

insert into [User] (Name,Surname,Age,Gender,TcNo,Phone) -- insert into ile yeni veri giriþi yaptýk.
values ('ayþe','fatma',27,'kadýn',23456789876,08978978967) --values ile deðerlerin karþýlýklarýný yazdýk.


delete from [User] where Id=3 --delete veri silme iþlemi yapar, hangi veriyi sileceðimizde where ile belirtilir. sakýncalý bir iþlemdir.

UPDATE	[User] set IsDelete=1 where Id=5 -- update veri güncellemeye yarar, hangi þarta göre güncelleme yapýlacaðýný da where ile göstermiþ olduk.

update [User] set IsDelete=0, Balance=Balance*1.1 --update komutunu kullanarak ayný satýrda matematiksel iþlemler de yapabilir ve veriyi deðiþtirebiliriz.


--alter komutu ile tabloya birþey ekleyebilir veya silebiliriz

alter table [User] add Email nvarchar(200)-- alter ve add kullanýlarak Email sütunu eklenmiþ oldu.

alter table [User] add [Password] nvarchar(234) default 'demirtarik4@gmail.com' -- add komutu ile tabloya Password sütunu ekler default yani baþlangýç deðeri de verilmiþ olur.

alter table [User] drop column Email -- drop komutu ile tablodan Email sütununu silmeye yarar



truncate table [User]-- Tablodaki bütün deðerleri siler