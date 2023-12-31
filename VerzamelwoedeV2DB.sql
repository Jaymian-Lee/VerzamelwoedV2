USE [master]
GO
/****** Object:  Database [VerzamelWoedeV2DB]    Script Date: 21-10-2023 13:19:54 ******/
CREATE DATABASE [VerzamelWoedeV2DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VerzamelWoedeV2DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\VerzamelWoedeV2DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VerzamelWoedeV2DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\VerzamelWoedeV2DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VerzamelWoedeV2DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET RECOVERY FULL 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET  MULTI_USER 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'VerzamelWoedeV2DB', N'ON'
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET QUERY_STORE = OFF
GO
USE [VerzamelWoedeV2DB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 21-10-2023 13:19:54 ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 21-10-2023 13:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collections]    Script Date: 21-10-2023 13:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collections](
	[CollectionId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Collections] PRIMARY KEY CLUSTERED 
(
	[CollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 21-10-2023 13:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CollectionId] [int] NOT NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231013100222_AddModelsToDatabase', N'7.0.12')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (1, N'Lee')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (4, N'Muntjes')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (5, N'Vlees van Rund')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Collections] ON 

INSERT [dbo].[Collections] ([CollectionId], [Name], [CategoryId]) VALUES (1, N'Lee''s collection', 1)
INSERT [dbo].[Collections] ([CollectionId], [Name], [CategoryId]) VALUES (4, N'2e Wereld Oorlog Muntejs', 4)
INSERT [dbo].[Collections] ([CollectionId], [Name], [CategoryId]) VALUES (5, N'Rundervlees', 5)
SET IDENTITY_INSERT [dbo].[Collections] OFF
GO
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([ItemId], [Name], [Description], [CollectionId]) VALUES (1, N'Leee''s', N'Sjun', 1)
INSERT [dbo].[Items] ([ItemId], [Name], [Description], [CollectionId]) VALUES (4, N'2002 munt XC2201', N'Munt uit Duitsland eerste maand van 2002', 4)
INSERT [dbo].[Items] ([ItemId], [Name], [Description], [CollectionId]) VALUES (5, N'Varkenshaas', N'Vlees van een varken', 5)
SET IDENTITY_INSERT [dbo].[Items] OFF
GO
/****** Object:  Index [IX_Collections_CategoryId]    Script Date: 21-10-2023 13:19:54 ******/
CREATE NONCLUSTERED INDEX [IX_Collections_CategoryId] ON [dbo].[Collections]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Items_CollectionId]    Script Date: 21-10-2023 13:19:54 ******/
CREATE NONCLUSTERED INDEX [IX_Items_CollectionId] ON [dbo].[Items]
(
	[CollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Collections]  WITH CHECK ADD  CONSTRAINT [FK_Collections_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Collections] CHECK CONSTRAINT [FK_Collections_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Collections_CollectionId] FOREIGN KEY([CollectionId])
REFERENCES [dbo].[Collections] ([CollectionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Collections_CollectionId]
GO
USE [master]
GO
ALTER DATABASE [VerzamelWoedeV2DB] SET  READ_WRITE 
GO
