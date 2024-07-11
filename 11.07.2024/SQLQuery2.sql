--ATM'den Para yatýrma Ýþlemi
create proc AtmParaYatýrma @CustomerNo nvarchar(10) , @Password nvarchar(4),@AcccountNo int , @Price float
as
begin
  declare @IsCustomer int 
  declare @IsPassword nvarchar(4)
  declare @ErrorPasswordCount int
  declare @IsBlock bit
  declare @Balance float

  select @IsCustomer=Id,
         @IsPassword=Password,
         @IsBlock=IsBlock,
         @ErrorPasswordCount=ErrorPasswordCount
  from Customer where
  @CustomerNo=CustomerNo

  if(@IsCustomer>0)
  begin


      if(@IsPassword=Password)
      begin

      end

  end
  else begin
  print 'HEsap Bulunamadý'
  end
end