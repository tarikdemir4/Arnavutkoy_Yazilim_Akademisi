--Having Kullan�m�

--Grupland�r�lm�� verilerde where gibi kullan�l�r.

select SenderCustomerNo,COUNT(*)
from [Transfer]
group by SenderCustomerNo
having COUNT(*)>=3