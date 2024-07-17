-M��teri Ekleme Procedure

/*
    M��teri eklenirlen daha �nce m��terinin olup olmad��� kontrol edilecek
    Tcno ayn� olan kaydolamayacak
    M��teriyi eklemek i�in sadece m�d�r veya m�d�r yard�mc�s� ekleyebilir
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

            if(@Permission='M�d�r' or @Permission='M�d�r Yard�mc�s�')
            begin
                set @IsCustomer=(select COUNT(*) from Customer where TCNO=@CustomerTcNo)
                if(@IsCustomer=0)
                begin
                    insert into Customer(Name,Surname,Age,Birthday,Gender,TCNO,Password)
                    values(@CustomerName,@CustomerSurname,@CustomerAge,@CustomerBirthDay,@CustmerGender,@CustomerTcNo,'1234')
                    print 'M��teri Ekleme Ba�ar�l�'
                    declare @CustomerNo nvarchar(10)
                    set @CustomerNo=(select CustomerNo from Customer where TCNO=@CustomerTcNo)
                    print 'M��teri Numaran�z: '+@CustomerNo
                end
                else begin
                    print 'Bu M��teri Daha �ncesinde Kaydedildi. L�tfen Farkl� Bir M��teri �le Devam Ediniz.'
                end
            end
            else begin
                print 'Yetersiz Yetki.L�tfen Yerkili Biri �le ��leme Devam Ediniz.'
                print 'Yapt���n�z ��lemden Dolay� Hesab�n�z Ask�ya Al�nd�.'
                update Staff set IsStatus=0 where Id=@StaffId
            end
        commit tran addcustomer
    end try
    begin catch
        rollback tran addcustomer
        print 'Beklenmedik Bir Hata Olu�tur. T�m ��lemler Geri Al�nd�.'
    end catch
end

exec AddCustomer 2,'Fatma','Paltac�',27,'1997-11-28','Kad�n','12345678902'