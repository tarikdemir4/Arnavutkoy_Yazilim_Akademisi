USE [master]
GO
/****** Object:  Database [DemirBank]    Script Date: 11.07.2024 09:28:02 ******/
CREATE DATABASE [DemirBank]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DemirBank', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DemirBank.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DemirBank_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DemirBank_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DemirBank] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DemirBank].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DemirBank] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DemirBank] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DemirBank] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DemirBank] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DemirBank] SET ARITHABORT OFF 
GO
ALTER DATABASE [DemirBank] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DemirBank] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DemirBank] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DemirBank] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DemirBank] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DemirBank] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DemirBank] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DemirBank] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DemirBank] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DemirBank] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DemirBank] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DemirBank] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DemirBank] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DemirBank] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DemirBank] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DemirBank] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DemirBank] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DemirBank] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DemirBank] SET  MULTI_USER 
GO
ALTER DATABASE [DemirBank] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DemirBank] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DemirBank] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DemirBank] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DemirBank] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DemirBank] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DemirBank] SET QUERY_STORE = ON
GO
ALTER DATABASE [DemirBank] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DemirBank]
GO
/****** Object:  User [erhan]    Script Date: 11.07.2024 09:28:03 ******/
CREATE USER [erhan] FOR LOGIN [erhan] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11.07.2024 09:28:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Balance] [float] NULL,
	[CustomerId] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[AccountTypeId] [int] NULL,
	[IsStatus] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__Account__3214EC07CC3A0046] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountType]    Script Date: 11.07.2024 09:28:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11.07.2024 09:28:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[Gender] [nvarchar](10) NULL,
	[Birthday] [date] NULL,
	[IsStatus] [bit] NULL,
	[IsBlock] [bit] NULL,
	[IsDelete] [bit] NULL,
	[CustomerNo] [nvarchar](10) NULL,
	[TCNO] [nvarchar](11) NULL,
	[Password] [nvarchar](50) NULL,
	[ErrorPasswordCount] [tinyint] NULL,
 CONSTRAINT [PK__Customer__3214EC078AF64776] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 11.07.2024 09:28:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 11.07.2024 09:28:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 11.07.2024 09:28:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[DepartmentId] [int] NULL,
	[PermissionId] [int] NULL,
	[IsStatus] [bit] NULL,
	[IsDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transfer]    Script Date: 11.07.2024 09:28:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transfer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SenderCustomerNo] [nvarchar](10) NULL,
	[ReceiverCustomerNo] [nvarchar](10) NULL,
	[Price] [float] NULL,
	[TransferDate] [date] NULL,
 CONSTRAINT [PK__Transfer__3214EC07429C3E73] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [Balance], [CustomerId], [Name], [AccountTypeId], [IsStatus], [IsDelete]) VALUES (1, 1500, 1, N'Bireysel', 1, 1, 0)
INSERT [dbo].[Account] ([Id], [Balance], [CustomerId], [Name], [AccountTypeId], [IsStatus], [IsDelete]) VALUES (2, 1500, 2, N'Bireysel', 1, 1, 0)
INSERT [dbo].[Account] ([Id], [Balance], [CustomerId], [Name], [AccountTypeId], [IsStatus], [IsDelete]) VALUES (3, 1500, 3, N'Bireysel', 1, 1, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[AccountType] ON 

INSERT [dbo].[AccountType] ([Id], [Name]) VALUES (1, N'Bireysel')
INSERT [dbo].[AccountType] ([Id], [Name]) VALUES (2, N'Kurumsal')
INSERT [dbo].[AccountType] ([Id], [Name]) VALUES (3, N'Kobi')
SET IDENTITY_INSERT [dbo].[AccountType] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Name], [Surname], [Age], [Gender], [Birthday], [IsStatus], [IsBlock], [IsDelete], [CustomerNo], [TCNO], [Password], [ErrorPasswordCount]) VALUES (1, N'Erhan', N'Er', 31, N'Erkek', CAST(N'1993-01-26' AS Date), 1, 0, 0, N'TB10000001', NULL, NULL, NULL)
INSERT [dbo].[Customer] ([Id], [Name], [Surname], [Age], [Gender], [Birthday], [IsStatus], [IsBlock], [IsDelete], [CustomerNo], [TCNO], [Password], [ErrorPasswordCount]) VALUES (2, N'Cemile', N'Orhan', 23, N'Kadýn', CAST(N'2001-03-14' AS Date), 1, 0, 0, N'DB10000002', N'12345678901', NULL, NULL)
INSERT [dbo].[Customer] ([Id], [Name], [Surname], [Age], [Gender], [Birthday], [IsStatus], [IsBlock], [IsDelete], [CustomerNo], [TCNO], [Password], [ErrorPasswordCount]) VALUES (3, N'Fatma', N'Paltacý', 27, N'Kadýn', CAST(N'1997-11-28' AS Date), 1, 0, 0, N'DB10000003', N'12345678902', N'1234', 0)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([Id], [Name]) VALUES (1, N'Bireysel')
INSERT [dbo].[Department] ([Id], [Name]) VALUES (2, N'Kurumsal')
INSERT [dbo].[Department] ([Id], [Name]) VALUES (3, N'Kobi')
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Permission] ON 

INSERT [dbo].[Permission] ([Id], [Name]) VALUES (1, N'Müdür')
INSERT [dbo].[Permission] ([Id], [Name]) VALUES (2, N'Müdür Yardýmcýsý')
INSERT [dbo].[Permission] ([Id], [Name]) VALUES (3, N'Müþteri Temsilcisi')
INSERT [dbo].[Permission] ([Id], [Name]) VALUES (4, N'Giþe Yetkilisi')
INSERT [dbo].[Permission] ([Id], [Name]) VALUES (5, N'Güvenlik')
SET IDENTITY_INSERT [dbo].[Permission] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([Id], [Name], [Surname], [DepartmentId], [PermissionId], [IsStatus], [IsDelete]) VALUES (1, N'Rabia', N'Laçin', 1, 3, 1, 0)
INSERT [dbo].[Staff] ([Id], [Name], [Surname], [DepartmentId], [PermissionId], [IsStatus], [IsDelete]) VALUES (2, N'Büþra', N'Karadað', 2, 1, 1, 0)
INSERT [dbo].[Staff] ([Id], [Name], [Surname], [DepartmentId], [PermissionId], [IsStatus], [IsDelete]) VALUES (3, N'Su', N'Fiydan', 3, 2, 1, 0)
INSERT [dbo].[Staff] ([Id], [Name], [Surname], [DepartmentId], [PermissionId], [IsStatus], [IsDelete]) VALUES (4, N'Ahmet Yasir', N'Aksoy', 1, 5, 0, 0)
INSERT [dbo].[Staff] ([Id], [Name], [Surname], [DepartmentId], [PermissionId], [IsStatus], [IsDelete]) VALUES (5, N'Rüdeyna', N'Keskin', 1, 4, 1, 0)
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF__Account__Balance__52593CB8]  DEFAULT ((1500)) FOR [Balance]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF__Account__IsStatu__534D60F1]  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF__Account__IsDelet__5441852A]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsStat__49C3F6B7]  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsBloc__4AB81AF0]  DEFAULT ((0)) FOR [IsBlock]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsDele__4BAC3F29]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_ErrorPasswordCount]  DEFAULT ((0)) FOR [ErrorPasswordCount]
GO
ALTER TABLE [dbo].[Staff] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[Staff] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[Transfer] ADD  CONSTRAINT [DF__Transfer__Transf__5EBF139D]  DEFAULT (getdate()) FOR [TransferDate]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_AccountType] FOREIGN KEY([AccountTypeId])
REFERENCES [dbo].[AccountType] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_AccountType]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Customer]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Department]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Permission] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[Permission] ([Id])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Permission]
GO
/****** Object:  StoredProcedure [dbo].[AddCustomer]    Script Date: 11.07.2024 09:28:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Müþteri Ekleme Procedure

/*
	Müþteri eklenirlen daha önce müþterinin olup olmadýðý kontrol edilecek
	Tcno ayný olan kaydolamayacak
	Müþteriyi eklemek için sadece müdür veya müdür yardýmcýsý ekleyebilir
*/

create proc [dbo].[AddCustomer]
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

			set @Permission=(	select Permission.Name 
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
GO
/****** Object:  Trigger [dbo].[AddCustomerTrigger]    Script Date: 11.07.2024 09:28:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Müþreti Ekleme Trigger

create trigger [dbo].[AddCustomerTrigger]
on [dbo].[Customer]
after insert
as
begin
	declare @CustomerId int
	declare @CustomerNo nvarchar(10)

	select @CustomerId=Id from inserted

	--Müþteri Numarasý Oluþturma
	set @CustomerNo='DB'+cast(10000000+@CustomerId as nvarchar)

	--oluþturulan müþteri numarasýný müþteriye aktarma
	update Customer set CustomerNo=@CustomerNo where Id=@CustomerId

	insert into Account(Name,CustomerId,AccountTypeId) values('Bireysel',@CustomerId,1)

end
GO
ALTER TABLE [dbo].[Customer] ENABLE TRIGGER [AddCustomerTrigger]
GO
USE [master]
GO
ALTER DATABASE [DemirBank] SET  READ_WRITE 
GO