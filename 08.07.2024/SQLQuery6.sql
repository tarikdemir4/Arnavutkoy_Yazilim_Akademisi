--Replace -Yer deðiþtirme 

--Id si 3 olan tv kategorisindeki ürünleri Id 5 olan beyaz eþya kategorisine tasýma

/*
Replace bütün satýrlarý arasýnda gezer ve bu satýrlarda CategoryId 3 olanlarý arar
eðer Id 3 deðilse sadece bakmýþ olur eðer Id3 ise 5 ile yer deðiþtirme iþlemi yapar
*/

update Product set CategoryId=REPLACE(CategoryId,3,5)

select*from Product