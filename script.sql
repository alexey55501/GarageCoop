USE [master]
GO
/****** Object:  Database [GarageDb]    Script Date: 30.11.2017 19:15:47 ******/
CREATE DATABASE [GarageDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GarageDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\GarageDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'GarageDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\GarageDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GarageDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GarageDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GarageDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GarageDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GarageDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GarageDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GarageDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [GarageDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GarageDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GarageDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GarageDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GarageDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GarageDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GarageDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GarageDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GarageDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GarageDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GarageDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GarageDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GarageDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GarageDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GarageDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GarageDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GarageDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GarageDb] SET RECOVERY FULL 
GO
ALTER DATABASE [GarageDb] SET  MULTI_USER 
GO
ALTER DATABASE [GarageDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GarageDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GarageDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GarageDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GarageDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'GarageDb', N'ON'
GO
ALTER DATABASE [GarageDb] SET QUERY_STORE = OFF
GO
USE [GarageDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [GarageDb]
GO
/****** Object:  Table [dbo].[Electricity]    Script Date: 30.11.2017 19:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Electricity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tax] [int] NULL,
	[Description] [nvarchar](50) NULL,
	[Date] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 30.11.2017 19:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Id_Position] [int] NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Garage]    Script Date: 30.11.2017 19:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Garage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NULL,
	[Id_Owner] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Owner]    Script Date: 30.11.2017 19:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Parking]    Script Date: 30.11.2017 19:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlaceNumber] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Positions]    Script Date: 30.11.2017 19:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Salary] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rent]    Script Date: 30.11.2017 19:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tax] [int] NULL,
	[Description] [nvarchar](50) NULL,
	[Date] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RentLog]    Script Date: 30.11.2017 19:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Garage] [int] NULL,
	[Id_Electricity] [int] NULL,
	[Id_Rent] [int] NULL,
	[ElectricityAmount] [int] NULL,
	[RentAmount] [int] NULL,
	[CounterValue] [int] NULL,
	[Date] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SalaryLog]    Script Date: 30.11.2017 19:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [nvarchar](50) NULL,
	[Id_Employee] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Id_Position], [Login], [Password]) VALUES (1, N'vasya', N'petya', NULL, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[Garage] ON 

INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (1, 1, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (2, 2, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (3, 3, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (4, 4, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (5, 5, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (6, 6, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (7, 7, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (8, 8, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (9, 9, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (10, 10, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (11, 11, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (12, 12, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (13, 13, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (14, 14, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (15, 15, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (16, 16, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (17, 17, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (18, 18, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (19, 19, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (20, 20, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (21, 21, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (22, 22, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (23, 23, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (24, 24, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (25, 25, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (26, 26, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (27, 27, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (28, 28, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (29, 29, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (30, 30, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (31, 31, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (32, 32, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (33, 33, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (34, 34, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (35, 35, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (36, 36, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (37, 37, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (38, 38, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (39, 39, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (40, 40, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (41, 41, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (42, 42, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (43, 43, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (44, 44, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (45, 45, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (46, 46, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (47, 47, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (48, 48, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (49, 49, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (50, 50, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (51, 51, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (52, 52, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (53, 53, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (54, 54, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (55, 55, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (56, 56, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (57, 57, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (58, 58, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (59, 59, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (60, 60, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (61, 61, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (62, 62, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (63, 63, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (64, 64, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (65, 65, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (66, 66, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (67, 67, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (68, 68, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (69, 69, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (70, 70, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (71, 71, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (72, 72, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (73, 73, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (74, 74, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (75, 75, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (76, 76, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (77, 77, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (78, 78, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (79, 79, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (80, 80, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (81, 81, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (82, 82, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (83, 83, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (84, 84, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (85, 85, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (86, 86, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (87, 87, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (88, 88, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (89, 89, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (90, 90, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (91, 91, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (92, 92, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (93, 93, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (94, 94, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (95, 95, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (96, 96, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (97, 97, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (98, 98, 1)
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (99, 99, 1)
GO
INSERT [dbo].[Garage] ([Id], [Number], [Id_Owner]) VALUES (100, 100, 1)
SET IDENTITY_INSERT [dbo].[Garage] OFF
SET IDENTITY_INSERT [dbo].[Owner] ON 

INSERT [dbo].[Owner] ([Id], [FirstName], [LastName], [Phone]) VALUES (1, N'Иван', N'Иванов', N'0997674455')
SET IDENTITY_INSERT [dbo].[Owner] OFF
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([Id_Position])
REFERENCES [dbo].[Positions] ([Id])
GO
ALTER TABLE [dbo].[Garage]  WITH CHECK ADD FOREIGN KEY([Id_Owner])
REFERENCES [dbo].[Owner] ([Id])
GO
ALTER TABLE [dbo].[RentLog]  WITH CHECK ADD FOREIGN KEY([Id_Electricity])
REFERENCES [dbo].[Electricity] ([Id])
GO
ALTER TABLE [dbo].[RentLog]  WITH CHECK ADD FOREIGN KEY([Id_Garage])
REFERENCES [dbo].[Garage] ([Id])
GO
ALTER TABLE [dbo].[RentLog]  WITH CHECK ADD FOREIGN KEY([Id_Rent])
REFERENCES [dbo].[Rent] ([Id])
GO
ALTER TABLE [dbo].[SalaryLog]  WITH CHECK ADD FOREIGN KEY([Id_Employee])
REFERENCES [dbo].[Employee] ([Id])
GO
USE [master]
GO
ALTER DATABASE [GarageDb] SET  READ_WRITE 
GO
