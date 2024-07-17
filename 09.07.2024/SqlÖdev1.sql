/*
    12 basamaklý Random Code Üretilecek
	Üretilen bu kodlar veritabanýna eklenecek
	Eðer ayný kod üretilirse kod üretimi hatalý diyip tekrar bir kod üretecek
	Kodun ilk 2 hanesi sabit. Örneðin : EK12345kJhGm yani EK sabit
	sonraki 5 rakamý random son 5 harfi ise random harflerden oluþacak 
	ama büyük ve küçük karýþýk olacak arada kalan özel karakterler kullanýlmayacak
*/
Create Table RandomCode(
Id int primary key identity(1,1) not null,
Code nvarchar(12)
)

declare @Alphabet nvarchar(52)
set @Alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'


declare @RandomChars1 char(1)
declare @RandomChars2 CHAR(1)
declare @RandomChars3 CHAR(1)
declare @RandomChars4 CHAR(1)
declare @RandomChars5 CHAR(1)


set @RandomChars1 = SUBSTRING(@Alphabet, CAST(FLOOR(RAND() * LEN(@Alphabet)) + 1 as int), 1)
set @RandomChars2 = SUBSTRING(@Alphabet, CAST(FLOOR(RAND() * LEN(@Alphabet)) + 1 as int), 1)
set @RandomChars3 = SUBSTRING(@Alphabet, CAST(FLOOR(RAND() * LEN(@Alphabet)) + 1 as int), 1)
set @RandomChars4 = SUBSTRING(@Alphabet, CAST(FLOOR(RAND() * LEN(@Alphabet)) + 1 as int), 1)
set @RandomChars5 = SUBSTRING(@Alphabet, CAST(FLOOR(RAND() * LEN(@Alphabet)) + 1 as int), 1)

declare @Code nvarchar(12)
set @Code = 'TD' + CAST(FLOOR(RAND() * 9 * 10000 + 10000) as nvarchar(12))
                           + @RandomChars1 
                           + @RandomChars2 
                           + @RandomChars3 
                           + @RandomChars4 
                           + @RandomChars5


insert into RandomCode (Code) values (@Code)
select * from RandomCode
