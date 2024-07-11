create proc Havale›slemi @CustomerNo nvarchar(10),@Password nvarchar(4), @AccountNo int,@Price float, @RecipientAccountNo
as
begin 
    declare @IsCustomer int
    declare @IsPassword nvarchar(4)
    declare @ErrorPasswordCount int
    declare @IsBlock bit
    declare @Balance float

    select    @IsCustomer=Id,
            @IsPassword=Password,
            @IsBlock=IsBlock,
            @ErrorPasswordCount=ErrorPasswordCount
    from Customer where
    CustomerNo=@CustomerNo
end
