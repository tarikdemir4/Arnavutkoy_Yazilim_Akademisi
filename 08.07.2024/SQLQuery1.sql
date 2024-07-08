create database DepoYonetimSistemiDb
go

use DepoYonetimSistemiDb
go

create table Category(
    Id int primary key identity(1,1) not null,
    [Name] nvarchar(50),
    IsStatus bit default 1,
    IsDelete bit default 0
)
create table Product(
    Id int primary key identity(1,1) not null,
    [Name] nvarchar(50),
    Price float,
    CategoryId int,
    IsStatus bit default 1,
    IsDelete bit default 0
)
create table Shelf(
    Id int primary key identity(1,1) not null,
    [Name] nvarchar(50),
    IsStatus bit default 1,
    IsDelete bit default 0
)
create table ProductShelf(
    Id int primary key identity(1,1) not null,
    ProductId int,
    ShelfId int
)
create table Stock(
    Id int primary key identity(1,1) not null,
    ProductId int,
    Piece int
)
create table Buy(
    Id int primary key identity(1,1) not null,
    ProductId int,
    Quantity int
)
create table Sell(
    Id int primary key identity(1,1) not null,
    ProductId int,
    Quantity int
)