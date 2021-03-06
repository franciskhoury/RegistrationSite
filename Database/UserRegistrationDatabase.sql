USE [master]
GO
/****** Object:  Database [UserRegistration]    Script Date: 5/31/2020 12:13:59 PM ******/
CREATE DATABASE [UserRegistration]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UserRegistration', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\UserRegistration.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UserRegistration_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\UserRegistration_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [UserRegistration] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UserRegistration].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UserRegistration] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UserRegistration] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UserRegistration] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UserRegistration] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UserRegistration] SET ARITHABORT OFF 
GO
ALTER DATABASE [UserRegistration] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UserRegistration] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UserRegistration] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UserRegistration] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UserRegistration] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UserRegistration] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UserRegistration] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UserRegistration] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UserRegistration] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UserRegistration] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UserRegistration] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UserRegistration] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UserRegistration] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UserRegistration] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UserRegistration] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UserRegistration] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UserRegistration] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UserRegistration] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UserRegistration] SET  MULTI_USER 
GO
ALTER DATABASE [UserRegistration] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UserRegistration] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UserRegistration] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UserRegistration] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UserRegistration] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UserRegistration] SET QUERY_STORE = OFF
GO
USE [UserRegistration]
GO
/****** Object:  Table [dbo].[Credentials]    Script Date: 5/31/2020 12:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credentials](
	[Password] [varchar](25) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Credentials] ([Password]) VALUES (N'SpeakCore2020')
GO
/****** Object:  Table [dbo].[Registrants]    Script Date: 5/31/2020 12:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registrants](
	[EmailAddress] [varchar](100) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[State] [char](2) NULL,
	[IsSubscriber] [bit] NOT NULL,
 CONSTRAINT [PK_Registrants] PRIMARY KEY CLUSTERED 
(
	[EmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States]    Script Date: 5/31/2020 12:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[State] [char](2) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[States] ([State]) VALUES (N'AL')
INSERT [dbo].[States] ([State]) VALUES (N'AR')
INSERT [dbo].[States] ([State]) VALUES (N'AZ')
INSERT [dbo].[States] ([State]) VALUES (N'AK')
INSERT [dbo].[States] ([State]) VALUES (N'CA')
INSERT [dbo].[States] ([State]) VALUES (N'CO')
INSERT [dbo].[States] ([State]) VALUES (N'CT')
INSERT [dbo].[States] ([State]) VALUES (N'DE')
INSERT [dbo].[States] ([State]) VALUES (N'FL')
INSERT [dbo].[States] ([State]) VALUES (N'GA')
INSERT [dbo].[States] ([State]) VALUES (N'HI')
INSERT [dbo].[States] ([State]) VALUES (N'IA')
INSERT [dbo].[States] ([State]) VALUES (N'IL')
INSERT [dbo].[States] ([State]) VALUES (N'IN')
INSERT [dbo].[States] ([State]) VALUES (N'ID')
INSERT [dbo].[States] ([State]) VALUES (N'KA')
INSERT [dbo].[States] ([State]) VALUES (N'KY')
INSERT [dbo].[States] ([State]) VALUES (N'LA')
INSERT [dbo].[States] ([State]) VALUES (N'ME')
INSERT [dbo].[States] ([State]) VALUES (N'MI')
INSERT [dbo].[States] ([State]) VALUES (N'MS')
INSERT [dbo].[States] ([State]) VALUES (N'MN')
INSERT [dbo].[States] ([State]) VALUES (N'MO')
INSERT [dbo].[States] ([State]) VALUES (N'MT')
INSERT [dbo].[States] ([State]) VALUES (N'MA')
INSERT [dbo].[States] ([State]) VALUES (N'NJ')
INSERT [dbo].[States] ([State]) VALUES (N'NY')
INSERT [dbo].[States] ([State]) VALUES (N'ND')
INSERT [dbo].[States] ([State]) VALUES (N'NC')
INSERT [dbo].[States] ([State]) VALUES (N'NM')
INSERT [dbo].[States] ([State]) VALUES (N'NH')
INSERT [dbo].[States] ([State]) VALUES (N'OK')
INSERT [dbo].[States] ([State]) VALUES (N'OH')
INSERT [dbo].[States] ([State]) VALUES (N'OR')
INSERT [dbo].[States] ([State]) VALUES (N'TN')
INSERT [dbo].[States] ([State]) VALUES (N'TX')
INSERT [dbo].[States] ([State]) VALUES (N'PA')
INSERT [dbo].[States] ([State]) VALUES (N'RI')
INSERT [dbo].[States] ([State]) VALUES (N'SC')
INSERT [dbo].[States] ([State]) VALUES (N'SD')
INSERT [dbo].[States] ([State]) VALUES (N'UT')
INSERT [dbo].[States] ([State]) VALUES (N'VA')
INSERT [dbo].[States] ([State]) VALUES (N'WV')
INSERT [dbo].[States] ([State]) VALUES (N'WY')
INSERT [dbo].[States] ([State]) VALUES (N'WA')
INSERT [dbo].[States] ([State]) VALUES (N'NE')
INSERT [dbo].[States] ([State]) VALUES (N'WI')
INSERT [dbo].[States] ([State]) VALUES (N'NV')
INSERT [dbo].[States] ([State]) VALUES (N'MD')
GO
ALTER TABLE [dbo].[Registrants] ADD  CONSTRAINT [DF_Registrants_IsSubscriber]  DEFAULT ((0)) FOR [IsSubscriber]
GO
USE [master]
GO
ALTER DATABASE [UserRegistration] SET  READ_WRITE 
GO
