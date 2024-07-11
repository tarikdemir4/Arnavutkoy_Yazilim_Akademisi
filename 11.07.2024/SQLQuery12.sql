--Having Kullanýmý

--Gruplandýrýlmýþ verilerde where gibi kullanýlýr.

select SenderCustomerNo,COUNT(*)
from [Transfer]
group by SenderCustomerNo
having COUNT(*)>=3