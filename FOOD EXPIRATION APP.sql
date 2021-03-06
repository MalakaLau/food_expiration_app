USE [master]
GO
/****** Object:  Database [Laura]    Script Date: 30/05/2021 9:09:37 p. m. ******/
CREATE DATABASE [Laura]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Laura', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Laura.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Laura_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Laura_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Laura] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Laura].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Laura] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Laura] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Laura] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Laura] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Laura] SET ARITHABORT OFF 
GO
ALTER DATABASE [Laura] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Laura] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Laura] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Laura] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Laura] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Laura] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Laura] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Laura] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Laura] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Laura] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Laura] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Laura] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Laura] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Laura] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Laura] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Laura] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Laura] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Laura] SET RECOVERY FULL 
GO
ALTER DATABASE [Laura] SET  MULTI_USER 
GO
ALTER DATABASE [Laura] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Laura] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Laura] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Laura] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Laura] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Laura] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Laura', N'ON'
GO
ALTER DATABASE [Laura] SET QUERY_STORE = OFF
GO
USE [Laura]
GO
/****** Object:  Table [dbo].[Quantitytype]    Script Date: 30/05/2021 9:09:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quantitytype](
	[Type] [char](50) NOT NULL,
	[Product] [char](50) NOT NULL,
	[Quantity] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ranking]    Script Date: 30/05/2021 9:09:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ranking](
	[Ranking_id] [int] NOT NULL,
	[Productid] [char](50) NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_Ranking] PRIMARY KEY CLUSTERED 
(
	[Ranking_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 30/05/2021 9:09:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[Stock_id] [int] NOT NULL,
	[Clasificationid] [int] NOT NULL,
	[Quantity] [float] NOT NULL,
	[Quantitytypeid] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Expiration_date] [date] NOT NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[Stock_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Laura] SET  READ_WRITE 
GO
