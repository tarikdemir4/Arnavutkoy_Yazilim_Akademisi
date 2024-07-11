--Exists

/*
    Transfer tablosunda en az 1 para transferi yapan m��terileri listeleme
    Exists sadece alt sorgu ile �al���r
    Karma��k ve ko�ullu sorgularda �ok kullan�l�r
    EntityFramework Linq sorgular�n�n temelini olu�turur
*/

select * from Customer
where Exists(
    select 1
    from [Transfer]
    where Customer.CustomerNo=Transfer.SenderCustomerNo
    and Transfer.Price>0
)