USE [master]
GO
/****** Object:  Database [ShopManagementDB]    Script Date: 9/10/2023 12:43:00 PM ******/
CREATE DATABASE [ShopManagementDB]
-- CONTAINMENT = NONE
-- ON  PRIMARY 
--( NAME = N'ShopManagementDB', FILENAME = N'D:\Programs file\SQL\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShopManagementDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
-- LOG ON 
--( NAME = N'ShopManagementDB_log', FILENAME = N'D:\Programs file\SQL\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShopManagementDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
-- WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShopManagementDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopManagementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopManagementDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopManagementDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopManagementDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopManagementDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopManagementDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopManagementDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopManagementDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopManagementDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopManagementDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopManagementDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopManagementDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopManagementDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopManagementDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopManagementDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopManagementDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShopManagementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopManagementDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopManagementDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopManagementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopManagementDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopManagementDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ShopManagementDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopManagementDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ShopManagementDB] SET  MULTI_USER 
GO
ALTER DATABASE [ShopManagementDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopManagementDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopManagementDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopManagementDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopManagementDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopManagementDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShopManagementDB', N'ON'
GO
ALTER DATABASE [ShopManagementDB] SET QUERY_STORE = OFF
GO
USE [ShopManagementDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/10/2023 12:43:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 9/10/2023 12:43:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/10/2023 12:43:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/10/2023 12:43:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/10/2023 12:43:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/10/2023 12:43:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/10/2023 12:43:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserCartId] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 9/10/2023 12:43:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 9/10/2023 12:43:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorys](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categorys] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 9/10/2023 12:43:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 9/10/2023 12:43:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[DateOrder] [datetime2](7) NOT NULL,
	[OrderStatus] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/10/2023 12:43:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[SizeScreen] [nvarchar](max) NULL,
	[Weight] [nvarchar](max) NULL,
	[Camera] [nvarchar](max) NULL,
	[RAM] [nvarchar](max) NULL,
	[Memory] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[OS] [nvarchar](max) NULL,
	[Battery] [nvarchar](max) NULL,
	[Sim] [nvarchar](max) NULL,
	[PhuKien] [nvarchar](max) NULL,
	[BaoHanh] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCart]    Script Date: 9/10/2023 12:43:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCart](
	[UserCartId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[ProductName] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_UserCart] PRIMARY KEY CLUSTERED 
(
	[UserCartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230906030757_init', N'7.0.10')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230906034932_new init', N'7.0.10')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230906055036_add new', N'7.0.10')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230906083029_addcolum', N'7.0.10')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'273180a6-5425-4d4f-9e36-788b8e0a1e26', N'Employee', N'EMPLOYEE', NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'aa3aa04b-22c7-45c4-b386-8d4e130f2401', N'User', N'USER', NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ef2e4d0a-b346-43a0-b9f2-19395235667f', N'Owner', N'OWNER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5b9dda1a-ab2d-46ae-9c50-0c4df41abc89', N'273180a6-5425-4d4f-9e36-788b8e0a1e26')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bca91587-99c1-4a24-b0da-3b8e56c83090', N'273180a6-5425-4d4f-9e36-788b8e0a1e26')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'01f318dc-aca1-43e5-b7cc-6334bb873c40', N'aa3aa04b-22c7-45c4-b386-8d4e130f2401')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'48466186-0511-4bb0-8902-993652cc85da', N'aa3aa04b-22c7-45c4-b386-8d4e130f2401')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c35fd022-8118-432f-852f-848087c7b72f', N'ef2e4d0a-b346-43a0-b9f2-19395235667f')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserCartId]) VALUES (N'01f318dc-aca1-43e5-b7cc-6334bb873c40', N'IdentityUser', N'testaccount', N'TESTACCOUNT', N'testaccount@gmail.com', N'TESTACCOUNT@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAENe2S01K1cOIu6rhTiuF0vsoVBYN6/HSwanaWpWhBiF4T98XQqiwAow+lNbiBFRhxw==', N'W53MPAMIXZT5CITZA2ZHPCJITDYNQZKP', N'fbbbcc35-637c-4e27-ad4a-0a301c2f608a', NULL, 0, 0, NULL, 1, 0, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserCartId]) VALUES (N'211f59f6-d038-41a2-9f3a-6f3b86c6559d', N'IdentityUser', N'abcd', N'ABCD', N'abcd@gmail.com', N'ABCD@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEF1Y0krnGhHJPvPW3jIXyDstqPShWEaUoKzvyv0DxgzeT4H0biJe0+qO1J4wAd2e0A==', N'OJUOJHQNCY4Y3366WD5Y5TLJU5BSBLYZ', N'cf2cbd6b-0d63-4a22-88b8-f4569f63d4c2', NULL, 0, 0, NULL, 1, 0, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserCartId]) VALUES (N'3ad5204b-62cb-41f7-bc17-825253ab08e8', N'IdentityUser', N'teet', N'TEET', N'teet@gmail.com', N'TEET@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEEDycwclFcZFt3UUioqylm+MQRGEj3hGw6kCEdEQOGo37pcGbHtP6UwQWyKGdQ4aaw==', N'SMQNV6H3B4QFTIDRI53PPQSCA5M3TW6T', N'3309e151-65d5-4787-91b7-a93021a6bbdd', NULL, 0, 0, NULL, 1, 0, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserCartId]) VALUES (N'48466186-0511-4bb0-8902-993652cc85da', N'IdentityUser', N'user@gmail.com', N'USER@GMAIL.COM', N'user@gmail.com', N'USER@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEH95BYwQoHn5/ZXKMzvN8ovFp1+q808ezIk7y1Jar3eJnJG27HqE8JjeAlEKnWzimg==', N'97f4d1cf-d00b-44c3-9f19-f59b595c4116', N'949d6566-1615-4950-bb56-1498269a24ef', NULL, 0, 0, NULL, 0, 0, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserCartId]) VALUES (N'5b9dda1a-ab2d-46ae-9c50-0c4df41abc89', N'IdentityUser', N'contributor@gmail.com', N'CONTRIBUTOR@GMAIL.COM', N'contributor@gmail.com', N'CONTRIBUTOR@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEK8q7IcMTQJ6gDEtt29PMYgKThoo9KgrT+LAZzz5QMnc0zH/STtGHAUguzAG8xqPfA==', N'c1430cd2-4b48-46fb-ae8e-1cae914f28f7', N'08271381-3bd9-4f88-aa2c-fd60bdec1efe', NULL, 0, 0, NULL, 0, 0, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserCartId]) VALUES (N'88b23fec-89c5-4443-b195-0d1bbcb532f0', N'IdentityUser', N'tesss', N'TESSS', N'tesss@gmail.com', N'TESSS@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJyh/7bbj2dqUwPgghUJ+i/nzBT5eMzc2uKGEK6Jacsgd1cas7wiz+TiXD+42xb9iw==', N'3XRRB7CYSF4JX5JX2ASKDASJO2Y6ZULW', N'1baf984e-ac83-4d07-87e1-300366820ea8', NULL, 0, 0, NULL, 1, 0, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserCartId]) VALUES (N'90739ea8-b958-4f62-827e-723f1510debb', N'IdentityUser', N'admin123@gmail.com', N'ADMIN123@GMAIL.COM', N'admin123@gmail.com', N'ADMIN123@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEJnoU7Fj4zd42k5W0bGXAu2ajIKbffZIwlP8sa79jcfYGWmvqNWazoFg5+SNZVJ0ag==', N'O7JRUNCIKQPCTQNZ4TPJTRC6DEA37NI6', N'b5d3aeec-3cdf-489c-b5ae-b7ff8197797f', NULL, 0, 0, NULL, 1, 0, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserCartId]) VALUES (N'b43268b5-9b4d-4e83-a5f9-2ff490111ff4', N'IdentityUser', N'test123', N'TEST123', N'test123@gmail.com', N'TEST123@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEE2v+n0G8NCapkxWz7UZavR2a9+T9KNSo1T4PzRUFryDEUXbfV6rRRkVYNT6dHjZhQ==', N'ZI3SUKC77D4KIJO7NZLWRQIVGXC34SD7', N'1e778641-40e1-493c-bf80-16026bad920b', NULL, 0, 0, NULL, 1, 0, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserCartId]) VALUES (N'bca91587-99c1-4a24-b0da-3b8e56c83090', N'IdentityUser', N'region@gmail.com', N'REGION@GMAIL.COM', N'region@gmail.com', N'REGION@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEE9H0+lEgYGi/TnGEfPJT6ad5srXqY2stcbLRkLubpVi2a/8b1v02XvflDXwgh6Xhw==', N'VOUYSAQ6KXFVZDCQIFVHQ4HDYQIIGT6P', N'd386d619-2bd2-4b6f-b170-5ab6c3e73f7b', NULL, 0, 0, NULL, 1, 0, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserCartId]) VALUES (N'c35fd022-8118-432f-852f-848087c7b72f', N'IdentityUser', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEG+wWdO+2E0ttyuVrQ6qmTdKe7bRjx9Ejmc3zmOSWF/+JrnETEXCU4JM14BA9q1g5w==', N'19c0ae21-952d-4257-83aa-cf7c27e37779', N'a6a1b23e-a6f1-45a3-8d7a-d6b286351aee', NULL, 0, 0, NULL, 0, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Categorys] ON 
GO
INSERT [dbo].[Categorys] ([CategoryId], [CategoryName], [Description]) VALUES (1012, N'Iphone', N'iPhone là dòng điện thoại thông minh được thiết kế và phát triển bởi Apple Inc.. Nó được ra mắt lần đầu tiên bởi Steve Jobs vào năm 2007.')
GO
INSERT [dbo].[Categorys] ([CategoryId], [CategoryName], [Description]) VALUES (1013, N'Samsung', N'Samsung là một tập đoàn đa quốc gia của Hàn Quốc có trụ sở chính đặt tại Samsung Town, Seocho, Seoul.')
GO
INSERT [dbo].[Categorys] ([CategoryId], [CategoryName], [Description]) VALUES (1014, N'Xiaomi', N'Xiaomi Inc. là một Tập đoàn sản xuất hàng điện tử Trung Quốc có trụ sở tại Thâm Quyến.')
GO
INSERT [dbo].[Categorys] ([CategoryId], [CategoryName], [Description]) VALUES (1015, N'Oppo', N'OPPO Electronics Corp là nhà sản xuất thiết bị điện tử, điện thoại di động Android Trung Quốc, có trụ sở đặt tại Đông Hoản, Quảng Đông, công ty con của tập đoàn điện tử BBK Electronics')
GO
INSERT [dbo].[Categorys] ([CategoryId], [CategoryName], [Description]) VALUES (1016, N'Realme', N'Realme là nhà sản xuất điện thoại thông minh Android Trung Quốc có trụ sở tại Thâm Quyến. Thương hiệu này được chính thức thành lập vào ngày 6 tháng 5 năm 2018')
GO
SET IDENTITY_INSERT [dbo].[Categorys] OFF
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (1, 35, 1, CAST(22000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (2, 35, 1, CAST(22000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (3, 35, 1, CAST(22000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (1002, 35, 1, CAST(22000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (2, 36, 1, CAST(27900000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (3, 36, 1, CAST(27900000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (4, 36, 1, CAST(27900000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (1002, 36, 1, CAST(27900000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (2, 37, 1, CAST(36290000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (3, 37, 1, CAST(36290000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (2, 38, 1, CAST(8390000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (3, 38, 1, CAST(8390000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (4, 38, 1, CAST(8390000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (4, 39, 1, CAST(6990000.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([OrderId], [DateOrder], [OrderStatus], [Notes], [Address], [TotalPrice], [UserId]) VALUES (1, CAST(N'2023-09-06T16:30:30.2443361' AS DateTime2), N'Thành công', NULL, N'Bắc ninh', CAST(22000000.00 AS Decimal(18, 2)), N'01f318dc-aca1-43e5-b7cc-6334bb873c40')
GO
INSERT [dbo].[Orders] ([OrderId], [DateOrder], [OrderStatus], [Notes], [Address], [TotalPrice], [UserId]) VALUES (2, CAST(N'2023-09-06T16:37:30.1034931' AS DateTime2), N'Đang giao hàng', NULL, N'Bắc ninh', CAST(94580000.00 AS Decimal(18, 2)), N'01f318dc-aca1-43e5-b7cc-6334bb873c40')
GO
INSERT [dbo].[Orders] ([OrderId], [DateOrder], [OrderStatus], [Notes], [Address], [TotalPrice], [UserId]) VALUES (3, CAST(N'2023-09-06T16:39:35.2080319' AS DateTime2), N'Đang giao hàng', NULL, N'Bắc ninh', CAST(94580000.00 AS Decimal(18, 2)), N'01f318dc-aca1-43e5-b7cc-6334bb873c40')
GO
INSERT [dbo].[Orders] ([OrderId], [DateOrder], [OrderStatus], [Notes], [Address], [TotalPrice], [UserId]) VALUES (4, CAST(N'2023-09-06T16:40:53.6823254' AS DateTime2), N'Đang giao hàng', NULL, N'Bắc ninh', CAST(43280000.00 AS Decimal(18, 2)), N'01f318dc-aca1-43e5-b7cc-6334bb873c40')
GO
INSERT [dbo].[Orders] ([OrderId], [DateOrder], [OrderStatus], [Notes], [Address], [TotalPrice], [UserId]) VALUES (1002, CAST(N'2023-09-08T11:17:54.5019747' AS DateTime2), N'Đã hủy', NULL, N'Bắc ninh', CAST(49900000.00 AS Decimal(18, 2)), N'48466186-0511-4bb0-8902-993652cc85da')
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (35, N'Iphone 14', CAST(22000000.00 AS Decimal(18, 2)), 99, N'6,1 inches', N'172g', N'Camera góc rộng:12MP;Camera góc siêu rộng:12MP', N'Dung lượng RAM:6GB', N'Bộ nhớ trong:128GB', N'anh1.png', N'iOS', N'3,279mAh', N'2 SIM (nano‑SIM và eSIM)', N'dock sạc,tai nghe,kim chọc sim', N'2 năm', 1012)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (36, N'Iphone 13 Pro Max', CAST(27900000.00 AS Decimal(18, 2)), 100, N'6,7 inches', N'170g', N'Camera góc rộng:12MP;Camera góc siêu rộng:12MP', N'Dung lượng RAM:6GB', N'Bộ nhớ trong:128GB', N'anh2.jpg', N'iOS', N'4,325mAh', N'2 SIM (nano‑SIM và eSIM)', N'dock sạc,tai nghe,kim chọc sim', N'2 năm', 1012)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (37, N'Samsung Galaxy Z Fold4', CAST(36290000.00 AS Decimal(18, 2)), 200, N'7.6 inches', N'263g', N'Camera chính:50MP;Camera góc siêu rộng:12MP,Camera tele: 10MP (3x zoom)', N'Dung lượng RAM:12GB', N'Bộ nhớ trong:256GB', N'anh4.jpg', N'Android 12, One UI 4.1.1', N'4,400 mAh', N'2 SIM (nano‑SIM và eSIM)', N'dock sạc,tai nghe,kim chọc sim', N'2 năm', 1013)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (38, N'OPPO Reno8', CAST(8390000.00 AS Decimal(18, 2)), 150, N'6.4 inches', N'182g', N'Camera chính:64MP,f/1.7;Camera Marco:2MP,f/3.3;Camera tele:10MP(3x zoom);Bokeh:2MP,f/2.4', N'Dung lượng RAM:8GB', N'Bộ nhớ trong:256GB', N'anh3.jpg', N'Android 12', N'4,400 mAh', N'2 SIM (nano‑SIM và eSIM)', N'dock sạc,tai nghe,kim chọc sim', N'2 năm', 1015)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (39, N'Realme 8 Pro N', CAST(6990000.00 AS Decimal(18, 2)), 25, N'6.7 inch', N'231g', N'Chính 108 MP & Phụ 8 MP, 2 MP, 2 MP', N'8GB', N'256GB', N'1671129852_Ảnh chụp màn hình 2022-12-16 014317.png', N'Android 12', N'4500 mAh', N'2 Nano SIM', N'Sạc+cáp sạc', N'2 năm', 1016)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (40, N'Xiaomi 12T 5G 128GB', CAST(11490000.00 AS Decimal(18, 2)), 20, N'6.7 inch', N'180g', N'Chính 108 MP & Phụ 8 MP, 2 MP', N'8GB', N'128GB', N'1671129529_Ảnh chụp màn hình 2022-12-16 013752.png', N'Android 12', N'5000 mAh', N'2 Nano SIM', N'Sạc+cáp sạc', N'2 năm', 1014)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (41, N'OPPO A96', CAST(6390000.00 AS Decimal(18, 2)), 20, N'6.6 inch', N'180g', N'Chính 50 MP & Phụ 2 MP', N'8GB', N'128GB', N'1671373158_Ảnh chụp màn hình 2022-12-18 211822.png', N'Android 11', N'5000 mAh', N'2 Nano SIM', N'Sạc+cáp sạc', N'2 năm', 1015)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (42, N'Samsung Galaxy Z Flip4', CAST(20190000.00 AS Decimal(18, 2)), 15, N'6.7 inch', N'231g', N'2 camera 12 MP', N'8GB', N'128GB', N'1671372484_Ảnh chụp màn hình 2022-12-18 210535.png', N'Android 12', N'3700 mAh', N'1 Nano SIM & 1 eSIM', N'Sạc+cáp sạc', N'1 năm', 1013)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (43, N'iPhone 12 Purple', CAST(15990000.00 AS Decimal(18, 2)), 13, N'6.1 INCH', N'198g', N'2 camera 12 MP', N'4GB', N'64GB', N'1671371910_Ảnh chụp màn hình 2022-12-18 205738.png', N'iOS 15', N'2815 mAh', N'1 Nano SIM & 1 eSIM', N'Dây sạc', N'1 năm', 1012)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (44, N'Xiaomi Redmi Note 11S 5G N', CAST(6090000.00 AS Decimal(18, 2)), 12, N'6.6 inch', N'180g', N'Chính 50 MP & Phụ 8 MP, 2 MP', N'6GB', N'128GB', N'1671127497_Ảnh chụp màn hình 2022-12-16 010446.png', N'Android 11', N'5000 mAh', N'2 Nano SIM (SIM 2 chung khe thẻ nhớ)', N'Sạc+cáp sạc', N'2 năm', 1014)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (45, N'Realme C35 N', CAST(3790000.00 AS Decimal(18, 2)), 10, N'6.43 inch', N'200G', N'Chính 50 MP & Phụ 2 MP, 0.3 MP', N'6GB', N'128GB', N'1671129769_Ảnh chụp màn hình 2022-12-16 014150.png', N'Android 11', N'4500 mAh', N'2 Nano SIM', N'Sạc+cáp sạc', N'2 năm', 1016)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (46, N'Xiaomi 11 Lite 5G NE', CAST(8190000.00 AS Decimal(18, 2)), 25, N'6.55 INCH', N'213g', N'Chính 64 MP & Phụ 8 MP, 5 MP', N'8GB', N'256GB', N'1671372738_Ảnh chụp màn hình 2022-12-18 211105.png', N'Android 12', N'4250 mAh', N'2 Nano SIM (SIM 2 chung khe thẻ nhớ)', N'Sạc+cáp sạc', N'2 năm', 1014)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (47, N'Samsung Galaxy S21 FE 5G', CAST(12490000.00 AS Decimal(18, 2)), 41, N'6.4 inch', N'190g', N'Chính 12 MP & Phụ 12 MP, 8 MP', N'8GB', N'256GB', N'1671129447_Ảnh chụp màn hình 2022-12-16 013620.png', N'Android 12', N'5000 mAh', N'2 Nano SIM', N'Sạc+cáp sạc', N'2 năm', 1013)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (48, N'iPhone 12 mini', CAST(14490000.00 AS Decimal(18, 2)), 16, N'5.4 INCH', N'180g', N'2 camera 12 MP', N'4GB', N'256GB', N'1671372076_Ảnh chụp màn hình 2022-12-18 205948.png', N'iOS 15', N'2227 mAh', N'1 Nano SIM & 1 eSIM', N'Dây sạc', N'1 năm', 1012)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (49, N'Realme 9 Pro+ 5G', CAST(8290000.00 AS Decimal(18, 2)), 20, N'6.7 inch', N'180g', N'Chính 50 MP & Phụ 8 MP, 2 MP', N'8GB', N'128GB', N'1671129627_Ảnh chụp màn hình 2022-12-16 013934.png', N'Android 12', N'5000 mAh', N'2 Nano SIM', N'Sạc+cáp sạc', N'2 năm', 1016)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (50, N'OPPO A55', CAST(4490000.00 AS Decimal(18, 2)), 50, N'6.5 INCH', N'175g', N'Chính 50 MP & Phụ 2 MP, 2 MP', N'4GB', N'64GB', N'1671373038_Ảnh chụp màn hình 2022-12-18 211527.png', N'Android 11', N'5000 mAh', N'2 Nano SIM', N'Sạc+cáp sạc', N'2 năm', 1015)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (51, N'Xiaomi 12 5G', CAST(13390000.00 AS Decimal(18, 2)), 16, N'6.28 INCH', N'231g', N'Chính 50 MP & Phụ 13 MP, 5 MP', N'8GB', N'256GB', N'1671372624_Ảnh chụp màn hình 2022-12-18 210910.png', N'Android 12', N'4500 mAh', N'2 Nano SIM', N'Sạc+cáp sạc', N'2 năm', 1014)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (52, N'Samsung Galaxy S22 Ultra 5G', CAST(23990000.00 AS Decimal(18, 2)), 15, N'6.8 inch', N'250g', N'Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP', N'8GB', N'128GB', N'1671127404_Ảnh chụp màn hình 2022-12-16 010158.png', N'Android 12', N'5000 mAh', N'2 Nano SIM hoặc 1 Nano SIM + 1 eSIM', N'Sạc+cáp sạc', N'2 năm', 1013)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (53, N'iPhone 13 Pro Max', CAST(36990000.00 AS Decimal(18, 2)), 21, N'6.7 inch', N'198g', N'3 camera 12 MP', N'6GB', N'1TB', N'1671127598_Ảnh chụp màn hình 2022-12-16 010519.png', N'iOS 15', N'4352 mAh', N'1 Nano SIM & 1 eSIM', N'Dây sạc', N'1 năm', 1012)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (54, N'IPHONE 14 PRO N', CAST(33400000.00 AS Decimal(18, 2)), 25, N'6.1 INCH', N'200G', N'Sau: Chính 48 MP & Phụ 12 MP, 12 MP; Truoc: 12 MP N', N'6GB', N'128GB', N'1671121674_Ảnh chụp màn hình 2022-12-15 221936.png', N'IOS', N'3200 mAh', N'1 Nano SIM & 1 eSIMHỗ trợ 5G', N'Dây sạc', N'1 năm', 1012)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (55, N'OPPO Find X5 Pro 5G', CAST(29990000.00 AS Decimal(18, 2)), 25, N'6.7 inch', N'231g', N'Chính 50 MP & Phụ 50 MP, 13 MP', N'8GB', N'256GB', N'1671129281_Ảnh chụp màn hình 2022-12-16 013329.png', N'Android 12', N'5000 mAh', N'2 Nano SIM hoặc 1 Nano SIM + 1 eSIM', N'Sạc+cáp sạc', N'2 năm', 1015)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (56, N'Samsung Galaxy A23', CAST(5090000.00 AS Decimal(18, 2)), 21, N'6.6 inch', N'198g', N'Chính 50 MP & Phụ 8 MP, 2 MP', N'6GB', N'128GB', N'1671129090_Ảnh chụp màn hình 2022-12-16 012719.png', N'Android 12', N'5000 mAh', N'2 Nano SIM', N'Sạc+cáp sạc', N'2 năm', 1013)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (57, N'Xiaomi 12  N', CAST(13890000.00 AS Decimal(18, 2)), 32, N'6.28 INCH', N'195g', N'Chính 50 MP & Phụ 13 MP, 5 MP', N'8GB', N'256GB', N'1671372859_Ảnh chụp màn hình 2022-12-18 211306.png', N'Android 12', N'4500 mAh', N'2 Nano SIM', N'Sạc+cáp sạc', N'2 năm', 1014)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (58, N'OPPO A17k', CAST(3090000.00 AS Decimal(18, 2)), 21, N'6.56 inch', N'185g', N'Cam sau: 8 MP', N'3GB', N'64GB', N'1671373387_Ảnh chụp màn hình 2022-12-18 211945.png', N'Android 11', N'5000 mAh', N'2 Nano SIM', N'Sạc+cáp sạc', N'1 năm', 1015)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (59, N'OPPO Reno8 5G N', CAST(13990000.00 AS Decimal(18, 2)), 31, N'6.43 inch', N'210g', N'Chính 50 MP & Phụ 8 MP, 2 MP', N'8GB', N'256GB', N'1671127704_Ảnh chụp màn hình 2022-12-16 010814.png', N'Android 12', N'4500 mAh', N'2 Nano SIM', N'Sạc+cáp sạc', N'2 năm', 1015)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (60, N'Realme C11 (2021) N', CAST(2990000.00 AS Decimal(18, 2)), 20, N'6.5 inch', N'185g', N'cam sau: 8 MP', N'2GB', N'32GB', N'1671373671_Ảnh chụp màn hình 2022-12-18 212604.png', N'Android 11', N'5000 mAh', N'2 Nano SIM', N'Sạc+cáp sạc', N'2 năm', 1016)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (61, N'Realme C25Y', CAST(3190000.00 AS Decimal(18, 2)), 20, N'6.5 inch', N'170g', N'Chính 50 MP & Phụ 2 MP, 2 MP', N'4GB', N'64GB', N'1671373781_Ảnh chụp màn hình 2022-12-18 212812.png', N'Android 11', N'5000 mAh', N'2 Nano SIM', N'Sạc+cáp sạc', N'2 năm', 1016)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (62, N'Xiaomi Redmi Note 11', CAST(4690000.00 AS Decimal(18, 2)), 32, N'6.43 inch', N'180g', N'Chính 50 MP & Phụ 8 MP, 2 MP, 2 MP', N'4GB', N'64GB', N'1671127302_Ảnh chụp màn hình 2022-12-16 005929.png', N'Androi 11', N'5000 mAh', N'2 Nano SIMHỗ trợ 4G', N'Sạc+cáp sạc', N'2 năm', 1014)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (63, N'Realme 9', CAST(5040000.00 AS Decimal(18, 2)), 20, N'6.4 inch', N'190g', N'Chính 108 MP & Phụ 8 MP, 2 MP', N'8GB', N'128GB', N'1671373508_Ảnh chụp màn hình 2022-12-18 212354.png', N'Android 12', N'5000 mAh', N'2 Nano SIM', N'Sạc+cáp sạc', N'2 năm', 1016)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Quantity], [SizeScreen], [Weight], [Camera], [RAM], [Memory], [Image], [OS], [Battery], [Sim], [PhuKien], [BaoHanh], [CategoryId]) VALUES (64, N'Samsung Galaxy Z Fold4', CAST(37990000.00 AS Decimal(18, 2)), 25, N'7.6 inch', N'250g', N'Chính 50 MP & Phụ 12 MP, 10 MP', N'6GB', N'256GB', N'1671129189_Ảnh chụp màn hình 2022-12-16 013155.png', N'Android 12', N'4400 mAh', N'1 Nano SIM & 1 eSIM', N'Sạc+cáp sạc', N'2 năm', 1013)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 9/10/2023 12:43:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 9/10/2023 12:43:01 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 9/10/2023 12:43:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 9/10/2023 12:43:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 9/10/2023 12:43:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 9/10/2023 12:43:01 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_UserCartId]    Script Date: 9/10/2023 12:43:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_UserCartId] ON [dbo].[AspNetUsers]
(
	[UserCartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 9/10/2023 12:43:01 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_OrderId]    Script Date: 9/10/2023 12:43:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_OrderId] ON [dbo].[OrderDetail]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 9/10/2023 12:43:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 9/10/2023 12:43:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserCart] ADD  DEFAULT ((0)) FOR [ProductId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_UserCart_UserCartId] FOREIGN KEY([UserCartId])
REFERENCES [dbo].[UserCart] ([UserCartId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_UserCart_UserCartId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categorys_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categorys] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categorys_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [ShopManagementDB] SET  READ_WRITE 
GO
