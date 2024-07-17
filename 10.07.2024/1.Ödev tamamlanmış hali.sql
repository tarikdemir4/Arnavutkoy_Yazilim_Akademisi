
declare @Sabit nvarchar(2)='EK'
declare @Kod float
declare @RandomHarf nvarchar(5)=''
declare @RandomChar char(1)
declare @GenerateCode nvarchar(12)

set @Kod=FLOOR(Rand()*90000+10000)

while LEN(@RandomHarf)<5
begin
    set @RandomChar=CHAR(65+FLOOR(RAND()*58))
    if @RandomChar not in('[',']','\','_','`','^')
    begin
        set @RandomHarf=@RandomHarf+@RandomChar
    end

end

set @GenerateCode=@Sabit+CAST(@Kod as nvarchar)+@RandomHarf

print @GenerateCode

declare @IsCode int

select @IsCode=COUNT(*) from Codes where Code=@GenerateCode
if(@IsCode=0)
begin
    insert into Codes(Code) values(@GenerateCode)
    print 'Kod Baþarýlý Bir Þekilde Kaydedildi'
end
else begin
    print 'Oluþan Kod Sistemde Mevcut Tekrar Deneyiniz.'
end