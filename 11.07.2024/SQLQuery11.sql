--Exists

/*
    Transfer tablosunda en az 1 para transferi yapan müþterileri listeleme
    Exists sadece alt sorgu ile çalýþýr
    Karmaþýk ve koþullu sorgularda çok kullanýlýr
    EntityFramework Linq sorgularýnýn temelini oluþturur
*/

select * from Customer
where Exists(
    select 1
    from [Transfer]
    where Customer.CustomerNo=Transfer.SenderCustomerNo
    and Transfer.Price>0
)