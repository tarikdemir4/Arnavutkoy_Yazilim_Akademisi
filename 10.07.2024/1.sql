-Müþteri Ekleme Procedure

/*
    Müþteri eklenirlen daha önce müþterinin olup olmadýðý kontrol edilecek
    Tcno ayný olan kaydolamayacak
    Müþteriyi eklemek için sadece müdür veya müdür yardýmcýsý ekleyebilir
*/

create proc AddCustomer
@StaffId int,
@CustomerName nvarchar(50),
@CustomerSurname nvarchar(50),
@CustomerAge int,
@CustomerBirthDay date,
@CustmerGender nvarchar(10),
@CustomerTcNo nvarchar(11)
as
begin
    begin try
        begin tran addcustomer
            declare @IsCustomer int
            declare @Permission nvarchar(50)

            set @Permission=(    select Permission.Name
                                from Staff
                                inner join Permission
                                on(Staff.PermissionId=Permission.Id)
                                where Staff.Id=@StaffId)

            if(@Permission='Müdür' or @Permission='Müdür Yardýmcýsý')
            begin
                set @IsCustomer=(select COUNT(*) from Customer where TCNO=@CustomerTcNo)
                if(@IsCustomer=0)
                begin
                    insert into Customer(Name,Surname,Age,Birthday,Gender,TCNO,Password)
                    values(@CustomerName,@CustomerSurname,@CustomerAge,@CustomerBirthDay,@CustmerGender,@CustomerTcNo,'1234')
                    print 'Müþteri Ekleme Baþarýlý'
                    declare @CustomerNo nvarchar(10)
                    set @CustomerNo=(select CustomerNo from Customer where TCNO=@CustomerTcNo)
                    print 'Müþteri Numaranýz: '+@CustomerNo
                end
                else begin
                    print 'Bu Müþteri Daha Öncesinde Kaydedildi. Lütfen Farklý Bir Müþteri Ýle Devam Ediniz.'
                end
            end
            else begin
                print 'Yetersiz Yetki.Lütfen Yerkili Biri Ýle Ýþleme Devam Ediniz.'
                print 'Yaptýðýnýz Ýþlemden Dolayý Hesabýnýz Askýya Alýndý.'
                update Staff set IsStatus=0 where Id=@StaffId
            end
        commit tran addcustomer
    end try
    begin catch
        rollback tran addcustomer
        print 'Beklenmedik Bir Hata Oluþtur. Tüm Ýþlemler Geri Alýndý.'
    end catch
end

exec AddCustomer 2,'Fatma','Paltacý',27,'1997-11-28','Kadýn','12345678902'