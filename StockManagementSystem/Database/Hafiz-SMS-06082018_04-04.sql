USE [master]
GO
/****** Object:  Database [StockManagementSystem]    Script Date: 06/08/2018 4:02:02 PM ******/
CREATE DATABASE [StockManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StockInventorySystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\StockInventorySystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StockInventorySystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\StockInventorySystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [StockManagementSystem] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StockManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StockManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StockManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StockManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StockManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StockManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [StockManagementSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StockManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StockManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StockManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StockManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StockManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StockManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StockManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StockManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StockManagementSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StockManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StockManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StockManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StockManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StockManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StockManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StockManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StockManagementSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StockManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [StockManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StockManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StockManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StockManagementSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [StockManagementSystem]
GO
/****** Object:  Table [dbo].[CategoryInfo]    Script Date: 06/08/2018 4:02:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Created] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyInfo]    Script Date: 06/08/2018 4:02:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemInfo]    Script Date: 06/08/2018 4:02:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
	[CompanyName] [nvarchar](max) NOT NULL,
	[ReorderLevel] [decimal](10, 3) NULL,
	[AvailableQuantity] [decimal](10, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 06/08/2018 4:02:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Position] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CategoryInfo] ON 

INSERT [dbo].[CategoryInfo] ([Id], [Name], [Created]) VALUES (1, N'Food', CAST(N'2018-08-06T14:28:10.080' AS DateTime))
INSERT [dbo].[CategoryInfo] ([Id], [Name], [Created]) VALUES (2, N'Electronics', CAST(N'2018-08-06T14:28:10.080' AS DateTime))
INSERT [dbo].[CategoryInfo] ([Id], [Name], [Created]) VALUES (3, N'Furniture', CAST(N'2018-08-06T14:28:10.080' AS DateTime))
INSERT [dbo].[CategoryInfo] ([Id], [Name], [Created]) VALUES (4, N'Food2', CAST(N'2018-08-06T14:28:10.080' AS DateTime))
INSERT [dbo].[CategoryInfo] ([Id], [Name], [Created]) VALUES (5, N'Hridoy', CAST(N'2018-08-06T14:28:10.080' AS DateTime))
INSERT [dbo].[CategoryInfo] ([Id], [Name], [Created]) VALUES (6, N'hafiz', CAST(N'2018-08-06T14:28:10.080' AS DateTime))
INSERT [dbo].[CategoryInfo] ([Id], [Name], [Created]) VALUES (7, N'Colors', CAST(N'2018-08-06T14:28:10.080' AS DateTime))
INSERT [dbo].[CategoryInfo] ([Id], [Name], [Created]) VALUES (8, N'Stationary', CAST(N'2018-08-06T14:28:10.080' AS DateTime))
INSERT [dbo].[CategoryInfo] ([Id], [Name], [Created]) VALUES (9, N'Kanij', CAST(N'2018-08-06T14:28:10.080' AS DateTime))
SET IDENTITY_INSERT [dbo].[CategoryInfo] OFF
SET IDENTITY_INSERT [dbo].[CompanyInfo] ON 

INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (1, N'Aux joyeux ecclésiastiques', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (2, N'Bigfoot Breweries', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (3, N'Cooperativa de Quesos Las Cabras', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (4, N'Escargots Nouveaux', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (5, N'Exotic Liquids', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (6, N'Forêts dérables', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (7, N'Formaggi Fortini s.r.l.', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (8, N'Gai pâturage', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (9, N'Gday, Mate', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (10, N'Grandma Kellys Homestead', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (11, N'Heli Süßwaren GmbH & Co. KG', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (12, N'Karkki Oy', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (13, N'Leka Trading', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (14, N'Lyngbysild', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (15, N'Ma Maison', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (16, N'Mayumis', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (17, N'New England Seafood Cannery', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (18, N'New Orleans Cajun Delights', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (19, N'Nord-Ost-Fisch Handelsgesellschaft mbH', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (20, N'Norske Meierier', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (21, N'Pasta Buttini s.r.l.', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (22, N'Pavlova, Ltd.', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (23, N'PB Knäckebröd AB', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (24, N'Plutzer Lebensmittelgroßmärkte AG', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (25, N'Refrescos Americanas LTDA', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (26, N'Specialty Biscuits, Ltd.', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (27, N'Svensk Sjöföda AB', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (28, N'Tokyo Traders', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (29, N'Zaanse Snoepfabriek', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (10002, N'Hafiz Softwares.Ltd', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (10003, N'Hafiz Softwares.Ltd', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (10004, N'Hafiz Softwares.Ltd', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (10005, N'Hafiz Softwares.Ltd', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (10006, N'Hafiz Softwares.Lab', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (10007, N'Himal Labs. Ltd', NULL)
INSERT [dbo].[CompanyInfo] ([Id], [Name], [Created]) VALUES (10008, N'Obaedullah Inc', NULL)
SET IDENTITY_INSERT [dbo].[CompanyInfo] OFF
SET IDENTITY_INSERT [dbo].[ItemInfo] ON 

INSERT [dbo].[ItemInfo] ([Id], [Name], [CategoryName], [CompanyName], [ReorderLevel], [AvailableQuantity]) VALUES (1, N'Air Conditioner', N'Electronics', N'Norske Meierier', CAST(5.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[ItemInfo] ([Id], [Name], [CategoryName], [CompanyName], [ReorderLevel], [AvailableQuantity]) VALUES (2, N'Digital Fan', N'Electronics', N'New England Seafood Cannery', CAST(10.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)))
SET IDENTITY_INSERT [dbo].[ItemInfo] OFF
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([Id], [Username], [Password], [FullName], [Position]) VALUES (1, N'admin', N'admin', N'Mohammad Hafijul Islam', N'admin')
INSERT [dbo].[UserInfo] ([Id], [Username], [Password], [FullName], [Position]) VALUES (2, N'manager', N'manager', N'Mohammad Hafijul Islam', N'manager')
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
ALTER TABLE [dbo].[CategoryInfo] ADD  CONSTRAINT [DF_CategoryInfo_Created]  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[CompanyInfo] ADD  CONSTRAINT [DF_CompanyInfo_Created]  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[ItemInfo] ADD  DEFAULT ((0.0)) FOR [ReorderLevel]
GO
ALTER TABLE [dbo].[ItemInfo] ADD  DEFAULT ((0.0)) FOR [AvailableQuantity]
GO
USE [master]
GO
ALTER DATABASE [StockManagementSystem] SET  READ_WRITE 
GO
