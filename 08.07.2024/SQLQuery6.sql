--Replace -Yer de�i�tirme 

--Id si 3 olan tv kategorisindeki �r�nleri Id 5 olan beyaz e�ya kategorisine tas�ma

/*
Replace b�t�n sat�rlar� aras�nda gezer ve bu sat�rlarda CategoryId 3 olanlar� arar
e�er Id 3 de�ilse sadece bakm�� olur e�er Id3 ise 5 ile yer de�i�tirme i�lemi yapar
*/

update Product set CategoryId=REPLACE(CategoryId,3,5)

select*from Product