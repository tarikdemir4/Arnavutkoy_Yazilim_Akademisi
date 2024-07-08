use DepoYonetimSistemiDb 
go

insert into Category(Name) values ('Telefon')
insert into Category(Name) values ('Bilgisayar')
insert into Category(Name) values ('Tv')
insert into Category(Name) values ('Tablet')
insert into Category(Name) values ('Beyaz Eþya')



insert into Product(Name,Price,CategoryId) values ('Iphone 16 Pro Max', 123000,1)
insert into Product(Name,Price,CategoryId) values ('Xiaomi K70 Pro', 36000,1)
insert into Product(Name,Price,CategoryId) values ('Samsung S22', 53000,1)
insert into Product(Name,Price,CategoryId) values ('Asus ROG Gaming Phone', 63000,1)
insert into Product(Name,Price,CategoryId) values ('Monster Abra A15 Gaming Pc ', 75000,2)
insert into Product(Name,Price,CategoryId) values ('MSI Gaming Laptop', 103000,2)
insert into Product(Name,Price,CategoryId) values ('Asus TUF Laptop', 83000,2)
insert into Product(Name,Price,CategoryId) values ('Apple MAcbook Pro', 110000,2)
insert into Product(Name,Price,CategoryId) values ('Samsung Curved Tv', 78000,3)
insert into Product(Name,Price,CategoryId) values ('Vestel Oled Tv', 56000,3)
insert into Product(Name,Price,CategoryId) values ('Primer Lcd Tv', 3250,3)
insert into Product(Name,Price,CategoryId) values ('Samsung Tab10', 28500,4)
insert into Product(Name,Price,CategoryId) values ('Apple Ipad 3', 12500,4)
insert into Product(Name,Price,CategoryId) values ('Asus Gaming Tablet', 35500,4)
insert into Product(Name,Price,CategoryId) values ('Samsung Nofrost Buzdolabý', 25000,5)
insert into Product(Name,Price,CategoryId) values ('Arçelik Bulaþýk Makinesi', 25000,5)
insert into Product(Name,Price,CategoryId) values ('Vestel Kurutma Makinesi', 123000,1)
insert into Product(Name,Price,CategoryId) values ('Iphone 16 Pro Max', 25000,5)



insert into Shelf(Name) values('Kýrmýzý Raf')
insert into Shelf(Name) values('Mavi Raf')
insert into Shelf(Name) values('Yeþil Raf')
insert into Shelf(Name) values('Sarý Raf')

insert into ProductShelf(ProductId,ShelfId) values(1,1)
insert into ProductShelf(ProductId,ShelfId) values(2,1)
insert into ProductShelf(ProductId,ShelfId) values(3,2)
insert into ProductShelf(ProductId,ShelfId) values(4,2)
insert into ProductShelf(ProductId,ShelfId) values(5,2)
insert into ProductShelf(ProductId,ShelfId) values(6,3)
insert into ProductShelf(ProductId,ShelfId) values(7,3)
insert into ProductShelf(ProductId,ShelfId) values(8,2)
insert into ProductShelf(ProductId,ShelfId) values(9,1)
insert into ProductShelf(ProductId,ShelfId) values(10,1)
insert into ProductShelf(ProductId,ShelfId) values(11,2)
insert into ProductShelf(ProductId,ShelfId) values(12,4)
insert into ProductShelf(ProductId,ShelfId) values(13,4)
insert into ProductShelf(ProductId,ShelfId) values(14,3)
insert into ProductShelf(ProductId,ShelfId) values(15,4)
insert into ProductShelf(ProductId,ShelfId) values(16,2)
insert into ProductShelf(ProductId,ShelfId) values(17,1)

--stock Data

insert into Stock(ProductId,Piece) values(1,11)
insert into Stock(ProductId,Piece) values(2,5)
insert into Stock(ProductId,Piece) values(3,2)
insert into Stock(ProductId,Piece) values(4,8)
insert into Stock(ProductId,Piece) values(5,25)
insert into Stock(ProductId,Piece) values(6,34)
insert into Stock(ProductId,Piece) values(7,13)
insert into Stock(ProductId,Piece) values(8,7)
insert into Stock(ProductId,Piece) values(9,5)
insert into Stock(ProductId,Piece) values(10,19)
insert into Stock(ProductId,Piece) values(11,38)
insert into Stock(ProductId,Piece) values(12,11)
insert into Stock(ProductId,Piece) values(13,1)
insert into Stock(ProductId,Piece) values(14,22)
insert into Stock(ProductId,Piece) values(15,14)
insert into Stock(ProductId,Piece) values(16,35)
insert into Stock(ProductId,Piece) values(17,18)


