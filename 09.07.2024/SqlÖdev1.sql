/*
    12 basamakl� Random Code �retilecek
	�retilen bu kodlar veritaban�na eklenecek
	E�er ayn� kod �retilirse kod �retimi hatal� diyip tekrar bir kod �retecek
	Kodun ilk 2 hanesi sabit. �rne�in : EK12345kJhGm yani EK sabit
	sonraki 5 rakam� random son 5 harfi ise random harflerden olu�acak 
	ama b�y�k ve k���k kar���k olacak arada kalan �zel karakterler kullan�lmayacak
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


set @RandomChars1 = SUBSTRING(@Alphabet, CAST(FLOOR(RAND() * LEN(@Alphabet)) + 1 AS INT), 1)
set @RandomChars2 = SUBSTRING(@Alphabet, CAST(FLOOR(RAND() * LEN(@Alphabet)) + 1 AS INT), 1)
set @RandomChars3 = SUBSTRING(@Alphabet, CAST(FLOOR(RAND() * LEN(@Alphabet)) + 1 AS INT), 1)
set @RandomChars4 = SUBSTRING(@Alphabet, CAST(FLOOR(RAND() * LEN(@Alphabet)) + 1 AS INT), 1)
set @RandomChars5 = SUBSTRING(@Alphabet, CAST(FLOOR(RAND() * LEN(@Alphabet)) + 1 AS INT), 1)

declare @Code nvarchar(12)
set @Code = 'TD49958Ugzcd'

DECLARE  @ExistingCode int

select @ExistingCode =Count(*) from RandomCode where Code=@Code
if @ExistingCode=0 
begin
  print 'Bu kod zaten var,yeni kod �retilecek'
end

insert into RandomCode (Code) values (@Code)
select * from RandomCode
