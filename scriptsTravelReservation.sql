USE [master]
GO
/****** Object:  Database [TravelReservation]    Script Date: 26/07/2024 07:40:24 a. m. ******/
CREATE DATABASE [TravelReservation]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TravelReservation', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TravelReservation.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TravelReservation_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TravelReservation_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TravelReservation] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TravelReservation].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TravelReservation] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TravelReservation] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TravelReservation] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TravelReservation] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TravelReservation] SET ARITHABORT OFF 
GO
ALTER DATABASE [TravelReservation] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TravelReservation] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TravelReservation] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TravelReservation] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TravelReservation] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TravelReservation] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TravelReservation] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TravelReservation] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TravelReservation] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TravelReservation] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TravelReservation] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TravelReservation] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TravelReservation] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TravelReservation] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TravelReservation] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TravelReservation] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TravelReservation] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TravelReservation] SET RECOVERY FULL 
GO
ALTER DATABASE [TravelReservation] SET  MULTI_USER 
GO
ALTER DATABASE [TravelReservation] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TravelReservation] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TravelReservation] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TravelReservation] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TravelReservation] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TravelReservation] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TravelReservation', N'ON'
GO
ALTER DATABASE [TravelReservation] SET QUERY_STORE = OFF
GO
USE [TravelReservation]
GO
/****** Object:  User [user_travelapp]    Script Date: 26/07/2024 07:40:25 a. m. ******/
CREATE USER [user_travelapp] FOR LOGIN [user_travelapp] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [user_travelapp]
GO
ALTER ROLE [db_datareader] ADD MEMBER [user_travelapp]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [user_travelapp]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 26/07/2024 07:40:25 a. m. ******/
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
/****** Object:  Table [dbo].[AirlinePreferences]    Script Date: 26/07/2024 07:40:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AirlinePreferences](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 26/07/2024 07:40:25 a. m. ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 26/07/2024 07:40:25 a. m. ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 26/07/2024 07:40:25 a. m. ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 26/07/2024 07:40:25 a. m. ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 26/07/2024 07:40:25 a. m. ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 26/07/2024 07:40:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 26/07/2024 07:40:25 a. m. ******/
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
/****** Object:  Table [dbo].[Cities]    Script Date: 26/07/2024 07:40:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[id] [int] NULL,
	[airport] [varchar](100) NULL,
	[city] [varchar](100) NULL,
	[country] [varchar](100) NULL,
	[iataCode] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[iataCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flights]    Script Date: 26/07/2024 07:40:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flights](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Origin] [nvarchar](100) NOT NULL,
	[Destination] [nvarchar](100) NOT NULL,
	[DepartureDate] [varchar](100) NULL,
	[ArrivalDate] [varchar](100) NULL,
	[TicketsPurchased] [int] NOT NULL,
	[PurchaseDate] [datetime2](7) NULL,
	[UserId] [nvarchar](450) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flights_respaldo]    Script Date: 26/07/2024 07:40:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flights_respaldo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Origin] [nvarchar](max) NOT NULL,
	[Destination] [nvarchar](max) NOT NULL,
	[DepartureDate] [datetime2](7) NOT NULL,
	[ArrivalDate] [datetime2](7) NOT NULL,
	[userId] [nvarchar](450) NOT NULL,
	[PurchaseDate] [datetime2](7) NOT NULL,
	[TicketsPurchased] [int] NOT NULL,
 CONSTRAINT [PK_Flights] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlightSegments]    Script Date: 26/07/2024 07:40:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightSegments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Origin] [nvarchar](100) NOT NULL,
	[Destination] [nvarchar](100) NOT NULL,
	[DepartureDate] [varchar](100) NULL,
	[ArrivalDate] [varchar](100) NULL,
	[FlightId] [int] NOT NULL,
	[TicketsPurchased] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MealPreferences]    Script Date: 26/07/2024 07:40:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MealPreferences](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 26/07/2024 07:40:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FlightId] [int] NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[ReservationDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Reservations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeatPreferences]    Script Date: 26/07/2024 07:40:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeatPreferences](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TravelPreferences]    Script Date: 26/07/2024 07:40:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelPreferences](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[PreferredSeat] [int] NULL,
	[PreferredMeal] [int] NULL,
	[PreferredAirline] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240715221625_InitialMigration', N'8.0.7')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240716063151_AddFlights', N'8.0.7')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240716234333_AddReservations', N'8.0.7')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240717003811_EnsureIdentityTables', N'8.0.7')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240717011330_AddIdentityTables', N'8.0.7')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240717012657_NewIdentityTables', N'8.0.7')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240721042642_AddNameToApplicationUser', N'8.0.7')
GO
SET IDENTITY_INSERT [dbo].[AirlinePreferences] ON 
GO
INSERT [dbo].[AirlinePreferences] ([Id], [Name]) VALUES (1, N'American Airlines')
GO
INSERT [dbo].[AirlinePreferences] ([Id], [Name]) VALUES (2, N'Avianca')
GO
INSERT [dbo].[AirlinePreferences] ([Id], [Name]) VALUES (3, N'Copa')
GO
INSERT [dbo].[AirlinePreferences] ([Id], [Name]) VALUES (4, N'Singapore Airlines')
GO
INSERT [dbo].[AirlinePreferences] ([Id], [Name]) VALUES (5, N'Qatar Airways')
GO
INSERT [dbo].[AirlinePreferences] ([Id], [Name]) VALUES (6, N'Emirates')
GO
INSERT [dbo].[AirlinePreferences] ([Id], [Name]) VALUES (7, N'Turkish Airlines')
GO
INSERT [dbo].[AirlinePreferences] ([Id], [Name]) VALUES (8, N'Japan Airlines')
GO
INSERT [dbo].[AirlinePreferences] ([Id], [Name]) VALUES (9, N'Air France')
GO
SET IDENTITY_INSERT [dbo].[AirlinePreferences] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'81fe36d2-ce4c-4d1b-862c-ac603998e29a', N'elenaguzman7@gmail.com', N'ELENAGUZMAN7@GMAIL.COM', N'elenaguzman7@gmail.com', N'ELENAGUZMAN7@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJYutyutpxwTv+9hbLkRjD+EYZYzIXMVfDRD8GZ9Yq0LGLb0+aBqtL9nuSJIy/zAHA==', N'V7S2UROGCI3GCLDQISLAKLZQOPILAVFT', N'5fd7fc9c-1536-4caf-af67-f14e8735f3e8', N'60121419', 0, 0, NULL, 1, 0, N'Elena Guzmán Gómez')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'f45ad72a-704e-4344-a20c-1968616e3af4', N'cbermufa@gmail.com', N'CBERMUFA@GMAIL.COM', N'cbermufa@gmail.com', N'CBERMUFA@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJ9dz1CfrCiOBbCQfd3P2CKgYyszQ2BIbCDqpYg7yjkWjn/QZ1l8AQyU4KzNCsycUw==', N'DAY4RL2YH4OFNNU3WWMKJRSY56JYM7QM', N'dc0c2b34-938b-484a-a22a-6156204cc8f2', NULL, 0, 0, NULL, 1, 0, N'Jose Cristian Bermúdez Fallas')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1973, N'Anaa Airport', N'Anaa', N'French Polynesia', N'AAA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5690, N'El Arish International Airport', N'El Arish', N'Egypt', N'AAC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (220, N'Rabah Bitat Airport', N'Annaba', N'Algeria', N'AAE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8252, N'Apalachicola Regional Airport', N'Apalachicola', N'United States', N'AAF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4165, N'Aachen-Merzbr++ck Airport', N'Aachen', N'Germany', N'AAH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7591, N'Buariki Airport', N'Buariki', N'Kiribati', N'AAK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (628, N'Aalborg Airport', N'Aalborg', N'Denmark', N'AAL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5605, N'Malamala Airport', N'Malamala', N'South Africa', N'AAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5937, N'Al Ain International Airport', N'Al Ain', N'United Arab Emirates', N'AAN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2819, N'Anaco Airport', N'Anaco', N'Venezuela', N'AAO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9225, N'Andrau Airpark', N'Houston', N'United States', N'AAP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4353, N'Anapa Vityazevo Airport', N'Anapa', N'Russia', N'AAQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (607, N'Aarhus Airport', N'Aarhus', N'Denmark', N'AAR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6946, N'Altay Air Base', N'Altay', N'China', N'AAT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11926, N'Allah Valley Airport', N'Surallah', N'Philippines', N'AAV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7395, N'Romeu Zema Airport', N'Araxa', N'Brazil', N'AAX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3979, N'Al Ghaidah International Airport', N'Al Ghaidah Intl', N'Yemen', N'AAY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5813, N'Quezaltenango Airport', N'Quezaltenango', N'Guatemala', N'AAZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2955, N'Abakan Airport', N'Abakan', N'Russia', N'ABA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9825, N'Asaba International Airport', N'Asaba', N'Nigeria', N'ABB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1211, N'Albacete-Los Llanos Airport', N'Albacete', N'Spain', N'ABC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2097, N'Abadan Airport', N'Abadan', N'Iran', N'ABD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4355, N'Lehigh Valley International Airport', N'Allentown', N'United States', N'ABE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7320, N'Abaiang Airport', N'Abaiang Atoll', N'Kiribati', N'ABF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12011, N'Alpha Airport', N'Alpha', N'Australia', N'ABH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3718, N'Abilene Regional Airport', N'Abilene', N'United States', N'ABI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (253, N'Port Bouet Airport', N'Abidjan', N'Cote d''Ivoire', N'ABJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5682, N'Kabri Dehar Airport', N'Kabri Dehar', N'Ethiopia', N'ABK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7177, N'Ambler Airport', N'Ambler', N'United States', N'ABL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3318, N'Northern Peninsula Airport', N'Amberley', N'Australia', N'ABM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7325, N'Albina Airport', N'Albina', N'Suriname', N'ABN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4019, N'Albuquerque International Sunport', N'Albuquerque', N'United States', N'ABQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5714, N'Aberdeen Regional Airport', N'Aberdeen', N'United States', N'ABR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1127, N'Abu Simbel Airport', N'Abu Simbel', N'Egypt', N'ABS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2061, N'Al Baha Airport', N'El-baha', N'Saudi Arabia', N'ABT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (260, N'Nnamdi Azikiwe International Airport', N'Abuja', N'Nigeria', N'ABV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3333, N'Albury Airport', N'Albury', N'Australia', N'ABX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5715, N'Southwest Georgia Regional Airport', N'Albany', N'United States', N'ABY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (532, N'Aberdeen Dyce Airport', N'Aberdeen', N'United Kingdom', N'ABZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1783, N'General Juan N Alvarez International Airport', N'Acapulco', N'Mexico', N'ACA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (248, N'Kotoka International Airport', N'Accra', N'Ghana', N'ACC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7354, N'Alcides Fern+índez Airport', N'Acandi', N'Colombia', N'ACD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1055, N'Lanzarote Airport', N'Arrecife', N'Spain', N'ACE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3317, N'Brisbane Archerfield Airport', N'Brisbane', N'Australia', N'ACF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1679, N'St Gallen Altenrhein Airport', N'Altenrhein', N'Switzerland', N'ACH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (497, N'Alderney Airport', N'Alderney', N'Guernsey', N'ACI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3025, N'Anuradhapura Air Force Base', N'Anuradhapura', N'Sri Lanka', N'ACJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3517, N'Nantucket Memorial Airport', N'Nantucket', N'United States', N'ACK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1788, N'Ciudad Acu+¦a New International Airport', N'Ciudad Acuna', N'Mexico', N'ACN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6746, N'Sahand Airport', N'Maragheh', N'Iran', N'ACP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6740, N'Araracuara Airport', N'Araracuara', N'Colombia', N'ACR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11524, N'Achinsk Airport', N'Achinsk', N'Russia', N'ACS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3700, N'Waco Regional Airport', N'Waco', N'United States', N'ACT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4384, N'California Redwood Coast-Humboldt County Airport', N'Arcata CA', N'United States', N'ACV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7506, N'Xingyi Airport', N'Xingyi', N'China', N'ACX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3524, N'Atlantic City International Airport', N'Atlantic City', N'United States', N'ACY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2165, N'Zabol Airport', N'Zabol', N'Iran', N'ACZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1685, N'Adana Airport', N'Adana', N'Turkey', N'ADA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1706, N'Adnan Menderes International Airport', N'Izmir', N'Turkey', N'ADB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1107, N'Addis Ababa Bole International Airport', N'Addis Ababa', N'Ethiopia', N'ADD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3977, N'Aden International Airport', N'Aden', N'Yemen', N'ADE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5800, N'Ad-¦yaman Airport', N'Adiyaman', N'Turkey', N'ADF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9377, N'Aldan Airport', N'Aldan', N'Russia', N'ADH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11808, N'Arandis Airport', N'Arandis', N'Namibia', N'ADI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2171, N'Amman-Marka International Airport', N'Amman', N'Jordan', N'ADJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5959, N'Adak Airport', N'Adak Island', N'United States', N'ADK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3341, N'Adelaide International Airport', N'Adelaide', N'Australia', N'ADL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3654, N'Ardmore Municipal Airport', N'Ardmore', N'United States', N'ADM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3028, N'Ampara Airport', N'Galoya', N'Sri Lanka', N'ADP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3531, N'Kodiak Airport', N'Kodiak', N'United States', N'ADQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7513, N'Addison Airport', N'Addison', N'United States', N'ADS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9787, N'Ada Regional Airport', N'Ada', N'United States', N'ADT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5935, N'Ardabil Airport', N'Ardabil', N'Iran', N'ADU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3552, N'Joint Base Andrews', N'Camp Springs', N'United States', N'ADW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (543, N'RAF Leuchars', N'Leuchars', N'United Kingdom', N'ADX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8702, N'Alldays Airport', N'Alldays', N'South Africa', N'ADY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2749, N'Gustavo Rojas Pinilla International Airport', N'San Andres Island', N'Colombia', N'ADZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7590, N'Abemama Atoll Airport', N'Abemama', N'Kiribati', N'AEA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8082, N'Baise Youjiang Airport', N'Baise', N'China', N'AEB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3277, N'Aek Godang Airport', N'Padang Sidempuan', N'Indonesia', N'AEG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (997, N'Abeche Airport', N'Abeche', N'Chad', N'AEH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13677, N'Algeciras Heliport', N'Algeciras', N'Spain', N'AEI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1089, N'Aioun el Atrouss Airport', N'Aioun El Atrouss', N'Mauritania', N'AEO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2442, N'Jorge Newbery Airpark', N'Buenos Aires', N'Argentina', N'AEP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2965, N'Sochi International Airport', N'Sochi', N'Russia', N'AER')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (630, N'+àlesund Airport', N'Alesund', N'Norway', N'AES')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6839, N'Allakaket Airport', N'Allakaket', N'United States', N'AET')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2105, N'Abu Musa Island Airport', N'Abumusa I.', N'Iran', N'AEU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3852, N'Alexandria International Airport', N'Alexandria', N'United States', N'AEX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11, N'Akureyri Airport', N'Akureyri', N'Iceland', N'AEY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2454, N'Suboficial Ay Santiago Germano Airport', N'San Rafael', N'Argentina', N'AFA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2524, N'Piloto Osvaldo Marques Dias Airport', N'Alta Floresta', N'Brazil', N'AFL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6754, N'Sugraly Airport', N'Zarafshan', N'Uzbekistan', N'AFS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7615, N'Afutara Aerodrome', N'Afutara', N'Solomon Islands', N'AFT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8342, N'Fort Worth Alliance Airport', N'Fort Worth', N'United States', N'AFW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1687, N'Afyon Airport', N'Afyon', N'Turkey', N'AFY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5931, N'Sabzevar National Airport', N'Sabzevar', N'Iran', N'AFZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1064, N'Al Massira Airport', N'Agadir', N'Morocco', N'AGA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (374, N'Augsburg Airport', N'Augsburg', N'Germany', N'AGB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7495, N'Allegheny County Airport', N'Pittsburgh', N'United States', N'AGC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6911, N'Wangerooge Airport', N'Wangerooge', N'Germany', N'AGE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1262, N'Agen-La Garenne Airport', N'Agen', N'France', N'AGF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5597, N'+ängelholm-Helsingborg Airport', N'+ängelholm', N'Sweden', N'AGH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7341, N'Wageningen Airstrip', N'Wageningen', N'Suriname', N'AGI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7552, N'Aguni Airport', N'Aguni', N'Japan', N'AGJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7135, N'Angoon Seaplane Base', N'Angoon', N'United States', N'AGN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1230, N'M+ílaga Airport', N'Malaga', N'Spain', N'AGP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1445, N'Agrinion Air Base', N'Agrinion', N'Greece', N'AGQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3079, N'Agra Airport', N'Agra', N'India', N'AGR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3658, N'Augusta Regional At Bush Field', N'Bush Field', N'United States', N'AGS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4305, N'Guarani International Airport', N'Ciudad del Este', N'Paraguay', N'AGT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1785, N'Jes+¦s Ter+ín Paredo International Airport', N'Aguascalientes', N'Mexico', N'AGU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2818, N'Oswaldo Guevara Mujica Airport', N'Acarigua', N'Venezuela', N'AGV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3130, N'Agatti Airport', N'Agatti Island', N'India', N'AGX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (791, N'Aggeneys Airport', N'Aggeneys', N'South Africa', N'AGZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2059, N'Abha Regional Airport', N'Abha', N'Saudi Arabia', N'AHB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5889, N'Ahe Airport', N'Ahe', N'French Polynesia', N'AHE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10943, N'Hongyuan Airport', N'Ngawa', N'China', N'AHJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5716, N'Athens Ben Epps Airport', N'Athens', N'United States', N'AHN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1517, N'Alghero-Fertilia Airport', N'Alghero', N'Italy', N'AHO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5831, N'Ahuas Airport', N'Ahuas', N'Honduras', N'AHS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1078, N'Cherif Al Idrissi Airport', N'Al Hociema', N'Morocco', N'AHU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7067, N'Alliance Municipal Airport', N'Alliance', N'United States', N'AIA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13077, N'Anderson Municipal Darlington Field', N'ANDERSON', N'United States', N'AID')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8515, N'Aiken Regional Airport', N'Aiken', N'United States', N'AIK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7220, N'Wainwright Airport', N'Wainwright', N'United States', N'AIN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13502, N'Adampur Airport', N'Adampur', N'India', N'AIP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11198, N'Aripuan+ú Airport', N'Aripuana', N'Brazil', N'AIR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7593, N'Arorae Island Airport', N'Arorae', N'Kiribati', N'AIS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1958, N'Aitutaki Airport', N'Aitutaki', N'Cook Islands', N'AIT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5861, N'Enua Airport', N'Atiu Island', N'Cook Islands', N'AIU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7991, N'Lee C Fine Memorial Airport', N'Kaiser Lake Ozark', N'United States', N'AIZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1324, N'Ajaccio-Napol+®on Bonaparte Airport', N'Ajaccio', N'France', N'AJA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5925, N'Al-Jawf Domestic Airport', N'Al-Jawf', N'Saudi Arabia', N'AJF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5799, N'A-ƒr-¦ Airport', N'Agri', N'Turkey', N'AJI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2125, N'Arak Airport', N'Arak', N'Iran', N'AJK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3039, N'Lengpui Airport', N'Aizwal', N'India', N'AJL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (914, N'Ouani Airport', N'Anjouan', N'Comoros', N'AJN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (730, N'Arvidsjaur Airport', N'Arvidsjaur', N'Sweden', N'AJR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2522, N'Santa Maria Airport', N'Aracaju', N'Brazil', N'AJU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (282, N'Mano Dayak International Airport', N'Agadez', N'Niger', N'AJY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6362, N'Ankang Wulipu Airport', N'Ankang', N'China', N'AKA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7195, N'Atka Airport', N'Atka', N'United States', N'AKB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3587, N'Akron Fulton International Airport', N'Akron', N'United States', N'AKC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2995, N'Akola Airport', N'Akola', N'India', N'AKD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1153, N'Kufra Airport', N'Kufra', N'Libya', N'AKF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7037, N'Prince Sultan Air Base', N'Al Kharj', N'Saudi Arabia', N'AKH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7217, N'Akiak Airport', N'Akiak', N'United States', N'AKI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2299, N'Asahikawa Airport', N'Asahikawa', N'Japan', N'AKJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7160, N'Akhiok Airport', N'Akhiok', N'United States', N'AKK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2006, N'Auckland International Airport', N'Auckland', N'New Zealand', N'AKL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3794, N'King Salmon Airport', N'King Salmon', N'United States', N'AKN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9546, N'Colorado Plains Regional Airport', N'Akron', N'United States', N'AKO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6712, N'Anaktuvuk Pass Airport', N'Anaktuvuk Pass', N'United States', N'AKP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (261, N'Akure Airport', N'Akure', N'Nigeria', N'AKR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5405, N'Gwaunaru''u Airport', N'Auki', N'Solomon Islands', N'AKS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1199, N'RAF Akrotiri', N'Akrotiri', N'Cyprus', N'AKT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6404, N'Aksu Airport', N'Aksu', N'China', N'AKU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5506, N'Akulivik Airport', N'Akulivik', N'Canada', N'AKV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2099, N'Aghajari Airport', N'Aghajari', N'Iran', N'AKW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2920, N'Aktobe Airport', N'Aktyubinsk', N'Kazakhstan', N'AKX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3235, N'Sittwe Airport', N'Sittwe', N'Burma', N'AKY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2908, N'Almaty Airport', N'Alma-ata', N'Kazakhstan', N'ALA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3864, N'Albany International Airport', N'Albany', N'United States', N'ALB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1212, N'Alicante International Airport', N'Alicante', N'Spain', N'ALC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10107, N'Alpine Casparis Municipal Airport', N'Alpine', N'United States', N'ALE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (632, N'Alta Airport', N'Alta', N'Norway', N'ALF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (210, N'Houari Boumediene Airport', N'Algier', N'Algeria', N'ALG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6235, N'Albany Airport', N'Albany', N'Australia', N'ALH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3574, N'Alice International Airport', N'Alice', N'United States', N'ALI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (790, N'Alexander Bay Airport', N'Alexander Bay', N'South Africa', N'ALJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1527, N'Villanova D''Albenga International Airport', N'Albenga', N'Italy', N'ALL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5717, N'Alamogordo White Sands Regional Airport', N'Alamogordo', N'United States', N'ALM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11814, N'St Louis Regional Airport', N'Alton/St Louis', N'United States', N'ALN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5718, N'Waterloo Regional Airport', N'Waterloo', N'United States', N'ALO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2235, N'Aleppo International Airport', N'Aleppo', N'Syria', N'ALP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2019, N'Alexandra Airport', N'Alexandra', N'New Zealand', N'ALR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7073, N'San Luis Valley Regional Bergman Field', N'Alamosa', N'United States', N'ALS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5685, N'Alula Airport', N'Alula', N'Somalia', N'ALU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5719, N'Walla Walla Regional Airport', N'Walla Walla', N'United States', N'ALW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11022, N'Thomas C Russell Field', N'Alexander City', N'United States', N'ALX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1126, N'El Nouzha Airport', N'Alexandria', N'Egypt', N'ALY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3840, N'Rick Husband Amarillo International Airport', N'Amarillo', N'United States', N'AMA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (926, N'Ambilobe Airport', N'Ambilobe', N'Madagascar', N'AMB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7413, N'Am Timan Airport', N'Am Timan', N'Chad', N'AMC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2994, N'Sardar Vallabhbhai Patel International Airport', N'Ahmedabad', N'India', N'AMD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1109, N'Arba Minch Airport', N'Arba Minch', N'Ethiopia', N'AMH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3923, N'Selaparang Airport', N'Mataram', N'Indonesia', N'AMI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2170, N'Queen Alia International Airport', N'Amman', N'Jordan', N'AMM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9937, N'Gratiot Community Airport', N'Kamloops', N'Canada', N'AMN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3256, N'Pattimura Airport', N'Ambon Ambon', N'Indonesia', N'AMQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (580, N'Amsterdam Airport Schiphol', N'Amsterdam', N'Netherlands', N'AMS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12958, N'Amata Airport', N'Amata', N'Australia', N'AMT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6112, N'Amderma Airport', N'Amderma', N'Russia', N'AMV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2008, N'Ardmore Airport', N'Ardmore', N'New Zealand', N'AMZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3485, N'Anniston Regional Airport', N'Anniston', N'United States', N'ANB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3774, N'Ted Stevens Anchorage International Airport', N'Anchorage', N'United States', N'ANC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3466, N'Anderson Regional Airport', N'Andersen', N'United States', N'AND')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5783, N'Angers-Loire Airport', N'Angers/Marc+®', N'France', N'ANE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2651, N'Andr+®s Sabella G+ílvez International Airport', N'Antofagasta', N'Chile', N'ANF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1277, N'Angoul+¬me-Brie-Champniers Airport', N'Angouleme', N'France', N'ANG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5967, N'Aniak Airport', N'Aniak', N'United States', N'ANI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1683, N'Etimesgut Air Base', N'Ankara', N'Turkey', N'ANK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (927, N'Antsirabato Airport', N'Antalaha', N'Madagascar', N'ANM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3477, N'Annette Island Airport', N'Annette Island', N'United States', N'ANN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8935, N'Lee Airport', N'Annapolis', N'United States', N'ANP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8553, N'Tri State Steuben County Airport', N'Angola', N'United States', N'ANQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (299, N'Antwerp International Airport (Deurne)', N'Antwerp', N'Belgium', N'ANR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2787, N'Andahuaylas Airport', N'Andahuaylas', N'Peru', N'ANS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2874, N'V.C. Bird International Airport', N'Antigua', N'Antigua and Barbuda', N'ANU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6713, N'Anvik Airport', N'Anvik', N'United States', N'ANV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (631, N'And+©ya Airport', N'Andoya', N'Norway', N'ANX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (318, N'Altenburg-Nobitz Airport', N'Altenburg', N'Germany', N'AOC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6780, N'Anadolu Airport', N'Eskissehir', N'Turkey', N'AOE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9844, N'Anshan Air Base', N'Anshan', N'China', N'AOG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8784, N'Lima Allen County Airport', N'Lima', N'United States', N'AOH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4309, N'Ancona Falconara Airport', N'Ancona', N'Italy', N'AOI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2340, N'Aomori Airport', N'Aomori', N'Japan', N'AOJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1459, N'Karpathos Airport', N'Karpathos', N'Greece', N'AOK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2472, N'Paso De Los Libres Airport', N'Paso De Los Libres', N'Argentina', N'AOL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3694, N'Altoona Blair County Airport', N'Altoona', N'United States', N'AOO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2777, N'Alferez FAP Alfredo Vladimir Sara Bauer Airport', N'Andoas', N'Peru', N'AOP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3296, N'Sultan Abdul Halim Airport', N'Alor Setar', N'Malaysia', N'AOR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5791, N'Aosta Airport', N'Aosta', N'Italy', N'AOT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11291, N'Attopeu Airport', N'Attopeu', N'Laos', N'AOU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4222, N'Centennial Airport', N'Denver', N'United States', N'APA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7658, N'Napa County Airport', N'Napa', N'United States', N'APC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4012, N'Naples Municipal Airport', N'Naples', N'United States', N'APF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3772, N'Phillips Army Air Field', N'Aberdeen', N'United States', N'APG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11938, N'Gomez Nino Apiay Air Base', N'Apiay', N'Colombia', N'API')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5888, N'Apataki Airport', N'Apataki', N'French Polynesia', N'APK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (984, N'Nampula Airport', N'Nampula', N'Mozambique', N'APL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5720, N'Alpena County Regional Airport', N'Alpena', N'United States', N'APN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2726, N'Antonio Roldan Betancourt Airport', N'Carepa', N'Colombia', N'APO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11210, N'Arapiraca Airport', N'Arapiraca', N'Brazil', N'APQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12672, N'Marion County Brown Field', N'Jasper', N'United States', N'APT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1969, N'Faleolo International Airport', N'Faleolo', N'Samoa', N'APW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7221, N'Zapala Airport', N'ZAPALA', N'Argentina', N'APZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2521, N'Araraquara Airport', N'Araracuara', N'Brazil', N'AQA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9393, N'Santa Cruz del Quiche Airport', N'Santa Cruz des Quiche', N'Guatemala', N'AQB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6427, N'Anqing Tianzhushan Airport', N'Anqing', N'China', N'AQG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2076, N'Al Qaisumah/Hafr Al Batin Airport', N'Hafr Al-batin', N'Saudi Arabia', N'AQI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2172, N'Aqaba King Hussein International Airport', N'Aqaba', N'Jordan', N'AQJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2802, N'Rodr+¡guez Ball+¦n International Airport', N'Arequipa', N'Peru', N'AQP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3471, N'Acadiana Regional Airport', N'Louisiana', N'United States', N'ARA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8989, N'Ann Arbor Municipal Airport', N'Ann Arbor', N'United States', N'ARB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6729, N'Arctic Village Airport', N'Arctic Village', N'United States', N'ARC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6213, N'Mali Airport', N'Alor Island', N'Indonesia', N'ARD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6917, N'Antonio Nery Juarbe Pol Airport', N'Arecibo', N'Puerto Rico', N'ARE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4362, N'Talagi Airport', N'Arkhangelsk', N'Russia', N'ARH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2641, N'Chacalluta Airport', N'Arica', N'Chile', N'ARI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1176, N'Arusha Airport', N'Arusha', N'Tanzania', N'ARK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4062, N'Armidale Airport', N'Armidale', N'Australia', N'ARM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (737, N'Stockholm-Arlanda Airport', N'Stockholm', N'Sweden', N'ARN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7311, N'D. Casimiro Szlapelis Airport', N'Alto Rio Senguer', N'Argentina', N'ARR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3838, N'Watertown International Airport', N'Watertown', N'United States', N'ART')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2525, N'Ara+ºatuba Airport', N'Aracatuba', N'Brazil', N'ARU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7020, N'Lakeland-Noble F. Lee Memorial field', N'Minocqua - Woodruff', N'United States', N'ARV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1647, N'Arad International Airport', N'Arad', N'Romania', N'ARW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12012, N'Ararat Airport', NULL, N'Australia', N'ARY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3966, N'Assab International Airport', N'Assab', N'Eritrea', N'ASA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2976, N'Ashgabat International Airport', N'Ashkhabad', N'Turkmenistan', N'ASB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1928, N'Andros Town Airport', N'Andros Town', N'Bahamas', N'ASD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7001, N'Aspen-Pitkin Co/Sardy Field', N'Aspen', N'United States', N'ASE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2966, N'Astrakhan Airport', N'Astrakhan', N'Russia', N'ASF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8287, N'Boire Field', N'Nashua', N'United States', N'ASH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (892, N'RAF Ascension Island', N'Wide Awake', N'Saint Helena', N'ASI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2316, N'Amami Airport', N'Amami', N'Japan', N'ASJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (259, N'Yamoussoukro Airport', N'Yamoussoukro', N'Cote d''Ivoire', N'ASK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3967, N'Asmara International Airport', N'Asmara', N'Eritrea', N'ASM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11004, N'Talladega Municipal Airport', N'Talladega', N'United States', N'ASN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1119, N'Asosa Airport', N'Asosa', N'Ethiopia', N'ASO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3319, N'Alice Springs Airport', N'Alice Springs', N'Australia', N'ASP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1696, N'Kayseri Erkilet Airport', N'Kayseri', N'Turkey', N'ASR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13756, N'Arathusa Safari Lodge Airport', N'Arathusa', N'South Africa', N'ASS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7085, N'Astoria Regional Airport', N'Astoria', N'United States', N'AST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2699, N'Silvio Pettirossi International Airport', N'Asuncion', N'Paraguay', N'ASU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5692, N'Amboseli Airport', N'Amboseli National Park', N'Kenya', N'ASV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1136, N'Aswan International Airport', N'Aswan', N'Egypt', N'ASW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2788, N'Comandante FAP German Arias Graziani Airport', N'Anta', N'Peru', N'ATA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5700, N'Atbara Airport', N'Atbara', N'Sudan', N'ATB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5857, N'Arthur''s Town Airport', N'Arthur''s Town', N'Bahamas', N'ATC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5404, N'Uru Harbour Airport', N'Atoifi', N'Solomon Islands', N'ATD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2668, N'Chacho+ín Airport', N'Ambato', N'Ecuador', N'ATF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11909, N'Minhas Air Base', N'Kamra', N'Pakistan', N'ATG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3941, N'Eleftherios Venizelos International Airport', N'Athens', N'Greece', N'ATH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11270, N'Artigas International Airport', N'Artigas ', N'Uruguay', N'ATI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8721, N'Antsirabe Airport', N'Antsirabe', N'Madagascar', N'ATJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6714, N'Atqasuk Edward Burnell Sr Memorial Airport', N'Atqasuk', N'United States', N'ATK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3682, N'Hartsfield Jackson Atlanta International Airport', N'Atlanta', N'United States', N'ATL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2566, N'Altamira Airport', N'Altamira', N'Brazil', N'ATM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7907, N'Ohio University Snyder Field', N'Athens', N'United States', N'ATO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3081, N'Sri Guru Ram Dass Jee International Airport', N'Amritsar', N'India', N'ATQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1096, N'Atar International Airport', N'Atar', N'Mauritania', N'ATR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4047, N'Appleton International Airport', N'Appleton', N'United States', N'ATW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5721, N'Watertown Regional Airport', N'Watertown', N'United States', N'ATY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5691, N'Assiut International Airport', N'Asyut', N'Egypt', N'ATZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2895, N'Queen Beatrix International Airport', N'Oranjestad', N'Aruba', N'AUA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2752, N'Santiago Perez Airport', N'Arauca', N'Colombia', N'AUC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1328, N'Auxerre-Branches Airport', N'Auxerre', N'France', N'AUF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3701, N'Augusta State Airport', N'Augusta', N'United States', N'AUG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2179, N'Abu Dhabi International Airport', N'Abu Dhabi', N'United Arab Emirates', N'AUH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7199, N'Alakanuk Airport', N'Alakanuk', N'United States', N'AUK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9418, N'Auburn University Regional Airport', N'Auburn', N'United States', N'AUO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5890, N'Hiva Oa-Atuona Airport', N'Hiva-oa', N'French Polynesia', N'AUQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1344, N'Aurillac Airport', N'Aurillac', N'France', N'AUR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3673, N'Austin Bergstrom International Airport', N'Austin', N'United States', N'AUS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6237, N'Aurukun Airport', N'Aurukun', N'Australia', N'AUU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6853, N'Wausau Downtown Airport', N'Wausau', N'United States', N'AUW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7376, N'Aragua+¡na Airport', N'Araguaina', N'Brazil', N'AUX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5914, N'Aneityum Airport', N'Anelghowhat', N'Vanuatu', N'AUY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9849, N'Anshun Huangguoshu Airport', N'Anshun', N'China', N'AVA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1535, N'Aviano Air Base', N'Aviano', N'Italy', N'AVB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1900, N'Maximo Gomez Airport', N'Ciego De Avila', N'Cuba', N'AVI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6369, N'Arvaikheer Airport', N'Arvaikheer', N'Mongolia', N'AVK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4007, N'Asheville Regional Airport', N'Asheville', N'United States', N'AVL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1361, N'Avignon-Caumont Airport', N'Avignon', N'France', N'AVN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8507, N'Avon Park Executive Airport', N'Avon Park', N'United States', N'AVO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4286, N'Wilkes Barre Scranton International Airport', N'Scranton', N'United States', N'AVP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1616, N'Alverca Air Base', N'Alverca', N'Portugal', N'AVR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3332, N'Avalon Airport', N'Avalon', N'Australia', N'AVV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7979, N'Marana Regional Airport', N'Tucson', N'United States', N'AVW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7025, N'Catalina Airport', N'Catalina Island', N'United States', N'AVX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7416, N'Awassa Airport', N'Awasa', N'Ethiopia', N'AWA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5915, N'Aniwa Airport', N'Aniwa', N'Vanuatu', N'AWD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7674, N'Wake Island Airfield', N'Wake island', N'Wake Island', N'AWK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2104, N'Ahwaz Airport', N'Ahwaz', N'Iran', N'AWZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2900, N'Clayton J Lloyd International Airport', N'The Valley', N'Anguilla', N'AXA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1446, N'Dimokritos Airport', N'Alexandroupolis', N'Greece', N'AXD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12921, N'Alxa Left Banner Bayanhot Airport', N'Alxa Left Banner', N'China', N'AXF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7550, N'Amakusa Airport', N'Amakusa', N'Japan', N'AXJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3978, N'Ataq Airport', N'Ataq', N'Yemen', N'AXK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2705, N'El Eden Airport', N'Armenia', N'Colombia', N'AXM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11815, N'Chandler Field', N'Alexandria', N'United States', N'AXN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1932, N'Spring Point Airport', N'Spring Point', N'Bahamas', N'AXP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1984, N'Arutua Airport', N'Arutua', N'French Polynesia', N'AXR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2345, N'Akita Airport', N'Akita', N'Japan', N'AXT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1110, N'Axum Airport', N'Axum', N'Ethiopia', N'AXU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7131, N'Arkalyk North Airport', N'Arkalyk', N'Kazakhstan', N'AYK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2700, N'Juan De Ayolas Airport', N'Ayolas', N'Paraguay', N'AYO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2786, N'Coronel FAP Alfredo Mendivil Duarte Airport', N'Ayacucho', N'Peru', N'AYP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4010, N'Ayers Rock Connellan Airport', N'Uluru', N'Australia', N'AYQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13267, N'Waycross Ware County Airport', N'Waycross', N'United States', N'AYS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1688, N'Antalya International Airport', N'Antalya', N'Turkey', N'AYT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13544, N'Ayawasi Airport', N'Ayawasi', N'Indonesia', N'AYW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6505, N'Phoenix-Mesa-Gateway Airport', N'Mesa', N'United States', N'AZA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2164, N'Shahid Sadooghi Airport', N'Yazd', N'Iran', N'AZD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2180, N'Bateen Airport', N'Abu Dhabi', N'United Arab Emirates', N'AZI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6148, N'Andizhan Airport', N'Andizhan', N'Uzbekistan', N'AZN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4039, N'Kalamazoo Battle Creek International Airport', N'Kalamazoo', N'United States', N'AZO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (234, N'Touat Cheikh Sidi Mohamed Belkebir Airport', N'Adrar', N'Algeria', N'AZR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5810, N'Saman+í El Catey International Airport', N'Samana', N'Dominican Republic', N'AZS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3638, N'Beale Air Force Base', N'Marysville', N'United States', N'BAB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3842, N'Barksdale Air Force Base', N'Shreveport', N'United States', N'BAD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8281, N'Westfield-Barnes Regional Airport', N'Westfield', N'United States', N'BAF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2405, N'Loakan Airport', N'Baguio', N'Philippines', N'BAG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2057, N'Bahrain International Airport', N'Bahrain', N'Bahrain', N'BAH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1872, N'Buenos Aires Airport', N'Buenos Aires', N'Costa Rica', N'BAI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1729, N'Batman Airport', N'Batman', N'Turkey', N'BAL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2710, N'Ernesto Cortissoz International Airport', N'Barranquilla', N'Colombia', N'BAQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13193, N'Qionghai Bo''ao Airport', N'Qionghai', N'China', N'BAR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5406, N'Ballalae Airport', N'Ballalae', N'Solomon Islands', N'BAS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11930, N'Chafei Amsei Airport', N'Barretos', N'Brazil', N'BAT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2532, N'Bauru Airport', N'Bauru', N'Brazil', N'BAU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6346, N'Baotou Airport', N'Baotou', N'China', N'BAV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2956, N'Barnaul Airport', N'Barnaul', N'Russia', N'BAX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1649, N'Tautii Magheraus Airport', N'Baia Mare', N'Romania', N'BAY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7399, N'Barcelos Airport', N'Barcelos', N'Brazil', N'BAZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2642, N'Balmaceda Airport', N'Balmaceda', N'Chile', N'BBA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11094, N'Bay City Municipal Airport', N'Bay City', N'United States', N'BBC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11817, N'Curtis Field', N'Brady', N'United States', N'BBD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7597, N'Butaritari Atoll Airport', N'Butaritari', N'Kiribati', N'BBG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (329, N'Barth Airport', N'Barth', N'Germany', N'BBH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3042, N'Biju Patnaik Airport', N'Bhubaneswar', N'India', N'BBI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8862, N'Bitburg Airport', N'Birburg', N'Germany', N'BBJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (879, N'Kasane Airport', N'Kasane', N'Botswana', N'BBK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7129, N'Ballera Airport', N'Ballera', N'Australia', N'BBL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6171, N'Battambang Airport', N'Battambang', N'Cambodia', N'BBM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6220, N'Bario Airport', N'Bario', N'Malaysia', N'BBN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1122, N'Berbera Airport', N'Berbera', N'Somalia', N'BBO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7805, N'Bembridge Airport', N'Bembridge', N'United Kingdom', N'BBP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6074, N'Codrington Airport', N'Codrington', N'Antigua and Barbuda', N'BBQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6076, N'Baillif Airport', N'Basse Terre', N'Guadeloupe', N'BBR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (506, N'Blackbushe Airport', N'Blackbushe', N'United Kingdom', N'BBS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (889, N'Berb+®rati Airport', N'Berberati', N'Central African Republic', N'BBT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1650, N'B-âneasa International Airport', N'Bucharest', N'Romania', N'BBU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8504, N'Wings Field', N'Philadelphia', N'United States', N'BBX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1898, N'Gustavo Rizo Airport', N'Baracoa Playa', N'Cuba', N'BCA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2423, N'Bacolod-Silay Airport', N'Bacolod', N'Philippines', N'BCD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7857, N'Bryce Canyon Airport', N'Bryce Canyon', N'United States', N'BCE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3311, N'Cakung Airport', N'Baucau', N'East Timor', N'BCH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6238, N'Barcaldine Airport', N'Barcaldine', N'Australia', N'BCI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5843, N'Barra del Colorado Airport', N'Pococi', N'Costa Rica', N'BCL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1648, N'Bac-âu Airport', N'Bacau', N'Romania', N'BCM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1218, N'Barcelona International Airport', N'Barcelona', N'Spain', N'BCN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5676, N'Baco Airport', N'Baco', N'Ethiopia', N'BCO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3831, N'Boca Raton Airport', N'Boca Raton', N'United States', N'BCT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13455, N'Sir Abubakar Tafawa Balewa International Airport', N'Bauchi', N'Nigeria', N'BCU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4069, N'L.F. Wade International International Airport', N'Bermuda', N'Bermuda', N'BDA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4218, N'Bundaberg Airport', N'Bundaberg', N'Australia', N'BDB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6239, N'Badu Island Airport', N'Badu Island', N'Australia', N'BDD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3662, N'Baudette International Airport', N'Baudette', N'United States', N'BDE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2110, N'Bandar Lengeh Airport', N'Bandar Lengeh', N'Iran', N'BDH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7443, N'Bird Island Airport', N'Bird Island', N'Seychelles', N'BDI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3908, N'Syamsudin Noor Airport', N'Banjarmasin', N'Indonesia', N'BDJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3825, N'Bradley International Airport', N'Windsor Locks', N'United States', N'BDL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1703, N'Band-¦rma Airport', N'Bandirma', N'Turkey', N'BDM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2230, N'Talhar Airport', N'Talhar', N'Pakistan', N'BDN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3896, N'Husein Sastranegara International Airport', N'Bandung', N'Indonesia', N'BDO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6180, N'Bhadrapur Airport', N'Chandragarhi', N'Nepal', N'BDP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3001, N'Vadodara Airport', N'Baroda', N'India', N'BDQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3579, N'Igor I Sikorsky Memorial Airport', N'Stratford', N'United States', N'BDR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1506, N'Brindisi ÔÇô Salento Airport', N'Brindisi', N'Italy', N'BDS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1027, N'Gbadolite Airport', N'Gbadolite', N'Congo (Kinshasa)', N'BDT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (640, N'Bardufoss Airport', N'Bardufoss', N'Norway', N'BDU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (538, N'Benbecula Airport', N'Benbecula', N'United Kingdom', N'BEB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8804, N'Beech Factory Airport', N'Wichita', N'United States', N'BEC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3425, N'Laurence G Hanscom Field', N'Bedford', N'United States', N'BED')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1860, N'Bluefields Airport', N'Bluefields', N'Nicaragua', N'BEF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1739, N'Belgrade Nikola Tesla Airport', N'Belgrade', N'Serbia', N'BEG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5677, N'Beica Airport', N'Beica', N'Ethiopia', N'BEI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6209, N'Kalimarau Airport', N'Tanjung Redep-Borneo Island', N'Indonesia', N'BEJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3088, N'Bareilly Air Force Station', N'Bareilly', N'India', N'BEK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2526, N'Val de Cans/J+¦lio Cezar Ribeiro International Airport', N'Belem', N'Brazil', N'BEL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9819, N'Beni Mellal Airport', N'Beni Mellal', N'Morocco', N'BEM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1154, N'Benina International Airport', N'Benghazi', N'Libya', N'BEN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9065, N'Lake Macquarie Airport', N'Lake Macquarie', N'Australia', N'BEO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3132, N'Bellary Airport', N'Bellary', N'India', N'BEP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (569, N'RAF Honington', N'Honington', N'United Kingdom', N'BEQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1403, N'Brest Bretagne Airport', N'Brest', N'France', N'BES')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3599, N'Bethel Airport', N'Bethel', N'United States', N'BET')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6243, N'Bedourie Airport', N'Bedourie', N'Australia', N'BEU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1591, N'Beersheba (Teyman) Airport', N'Beer-sheba', N'Israel', N'BEV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (974, N'Beira Airport', N'Beira', N'Mozambique', N'BEW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (555, N'RAF Benson', N'Benson', N'United Kingdom', N'BEX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2177, N'Beirut Rafic Hariri International Airport', N'Beirut', N'Lebanon', N'BEY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7595, N'Beru Airport', N'Beru Island', N'Kiribati', N'BEZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5722, N'Bradford Regional Airport', N'Bradford', N'United States', N'BFD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (369, N'Bielefeld Airport', N'Bielefeld', N'Germany', N'BFE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5723, N'Western Neb. Rgnl/William B. Heilig Airport', N'Scottsbluff', N'United States', N'BFF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2529, N'Bacacheri Airport', N'Curitiba', N'Brazil', N'BFH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3726, N'Boeing Field King County International Airport', N'Seattle', N'United States', N'BFI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9025, N'Bijie Feixiong Airport', N'Bijie', N'China', N'BFJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3567, N'Buckley Air Force Base', N'Buckley', N'United States', N'BFK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3558, N'Meadows Field', N'Bakersfield', N'United States', N'BFL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3452, N'Mobile Downtown Airport', N'Mobile', N'United States', N'BFM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (794, N'Bram Fischer International Airport', N'Bloemfontein', N'South Africa', N'BFN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1003, N'Buffalo Range Airport', N'Chiredzi', N'Zimbabwe', N'BFO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8790, N'Beaver County Airport', N'Beaver Falls', N'United States', N'BFP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (465, N'Belfast International Airport', N'Belfast', N'United Kingdom', N'BFS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3769, N'Beaufort County Airport', N'Beaufort', N'United States', N'BFT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12052, N'Bengbu Airport', N'Bengbu', N'China', N'BFU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4133, N'Buri Ram Airport', N'Buri Ram', N'Thailand', N'BFV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (232, N'Sidi Bel Abbes Airport', N'Sidi Bel Abbes', N'Algeria', N'BFW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (902, N'Bafoussam Airport', N'Bafoussam', N'Cameroon', N'BFX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2708, N'Palonegro Airport', N'Bucaramanga', N'Colombia', N'BGA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1618, N'Bragan+ºa Airport', N'Braganca', N'Portugal', N'BGC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13158, N'Hutchinson County Airport', N'Borger', N'United States', N'BGD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8215, N'Decatur County Industrial Air Park', N'Bainbridge', N'United States', N'BGE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (888, N'Bangui M''Poko International Airport', N'Bangui', N'Central African Republic', N'BGF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9272, N'Bing+Âl +çeltiksuyu Airport', N'Bingol', N'Turkey', N'BGG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2875, N'Sir Grantley Adams International Airport', N'Bridgetown', N'Barbados', N'BGI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13572, N'Baglung Airport', N'Baglung', N'Nepal', N'BGL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4129, N'Greater Binghamton/Edwin A Link field', N'Binghamton', N'United States', N'BGM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11954, N'Belaya Gora Airport', NULL, N'Russia', N'BGN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (636, N'Bergen Airport Flesland', N'Bergen', N'Norway', N'BGO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3463, N'Bangor International Airport', N'Bangor', N'United States', N'BGR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4130, N'Baghdad International Airport', N'Baghdad', N'Iraq', N'BGW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2527, N'Comandante Gustavo Kraemer Airport', N'Bage', N'Brazil', N'BGX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1525, N'Il Caravaggio International Airport', N'Bergamo', N'Italy', N'BGY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1620, N'Braga Municipal Aerodrome', N'Braga', N'Portugal', N'BGZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4025, N'Hancock County-Bar Harbor Airport', N'Bar Harbor', N'United States', N'BHB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (467, N'George Best Belfast City Airport', N'Belfast', N'United Kingdom', N'BHD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2037, N'Woodbourne Airport', N'Woodbourne', N'New Zealand', N'BHE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6774, N'Brus Laguna Airport', N'Brus Laguna', N'Honduras', N'BHG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2062, N'Bisha Airport', N'Bisha', N'Saudi Arabia', N'BHH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2501, N'Comandante Espora Airport', N'Bahia Blanca', N'Argentina', N'BHI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2999, N'Bhuj Airport', N'Bhuj', N'India', N'BHJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2980, N'Bukhara Airport', N'Bukhara', N'Uzbekistan', N'BHK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3811, N'Birmingham-Shuttlesworth International Airport', N'Birmingham', N'United States', N'BHM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3982, N'Beihan Airport', N'Beihan', N'Yemen', N'BHN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3002, N'Raja Bhoj International Airport', N'Bhopal', N'India', N'BHO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4171, N'Bhojpur Airport', N'Bhojpur', N'Nepal', N'BHP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6241, N'Broken Hill Airport', N'Broken Hill', N'Australia', N'BHQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6179, N'Bharatpur Airport', N'Bharatpur', N'Nepal', N'BHR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6249, N'Bathurst Airport', N'Bathurst', N'Australia', N'BHS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3003, N'Bhavnagar Airport', N'Bhaunagar', N'India', N'BHU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5939, N'Bahawalpur Airport', N'Bahawalpur', N'Pakistan', N'BHV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2197, N'Bhagatanwala Airport', N'Bhagtanwala', N'Pakistan', N'BHW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (469, N'Birmingham International Airport', N'Birmingham', N'United Kingdom', N'BHX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6351, N'Beihai Airport', N'Beihai', N'China', N'BHY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1321, N'Bastia-Poretta Airport', N'Bastia', N'France', N'BIA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12311, N'Baidoa Airport', N'Baidoa', N'Somalia', N'BIB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8195, N'Block Island State Airport', N'Block Island', N'United States', N'BID')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3595, N'Biggs Army Air Field (Fort Bliss)', N'El Paso', N'United States', N'BIF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3475, N'Allen Army Airfield', N'Delta Junction', N'United States', N'BIG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11818, N'Eastern Sierra Regional Airport', N'Bishop', N'United States', N'BIH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3241, N'Frans Kaisiepo Airport', N'Biak', N'Indonesia', N'BIK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4021, N'Billings Logan International Airport', N'Billings', N'United States', N'BIL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1937, N'South Bimini Airport', N'Alice Town', N'Bahamas', N'BIM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8825, N'Bamiyan Airport', N'Bamyan', N'Afghanistan', N'BIN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1216, N'Bilbao Airport', N'Bilbao', N'Spain', N'BIO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1280, N'Biarritz-Anglet-Bayonne Airport', N'Biarritz-bayonne', N'France', N'BIQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3129, N'Biratnagar Airport', N'Biratnagar', N'Nepal', N'BIR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4083, N'Bismarck Municipal Airport', N'Bismarck', N'United States', N'BIS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7464, N'Bildudalur Airport', N'Bildudalur', N'Iceland', N'BIU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3538, N'Keesler Air Force Base', N'Biloxi', N'United States', N'BIX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (793, N'Bisho Airport', N'Bisho', N'South Africa', N'BIY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (209, N'Soummam Airport', N'Bejaja', N'Algeria', N'BJA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5930, N'Bojnord Airport', N'Bojnourd', N'Iran', N'BJB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7822, N'Rocky Mountain Metropolitan Airport', N'Broomfield-CO', N'United States', N'BJC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (637, N'B+Ñtsfjord Airport', N'Batsfjord', N'Norway', N'BJF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4187, N'Bajhang Airport', N'Bajhang', N'Nepal', N'BJH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4287, N'Bemidji Regional Airport', N'Bemidji', N'United States', N'BJI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1050, N'Banjul International Airport', N'Banjul', N'Gambia', N'BJL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1120, N'Bujumbura International Airport', N'Bujumbura', N'Burundi', N'BJM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2758, N'Bermejo Airport', N'Bermejo', N'Bolivia', N'BJO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9089, N'Estadual Arthur Siqueira Airport', N'Braganca Paulista', N'Brazil', N'BJP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1111, N'Bahir Dar Airport', N'Bahar Dar', N'Ethiopia', N'BJR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9132, N'Bajura Airport', N'Bajura', N'Nepal', N'BJU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4315, N'Milas Bodrum International Airport', N'Bodrum', N'Turkey', N'BJV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13243, N'Bajawa Soa Airport', N'Bajawa', N'Indonesia', N'BJW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1815, N'Del Baj+¡o International Airport', N'Del Bajio', N'Mexico', N'BJX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11894, N'Batajnica Air Base', N'Batajnica', N'Serbia', N'BJY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1219, N'Badajoz Airport', N'Badajoz', N'Spain', N'BJZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4360, N'Bykovo Airport', N'Moscow', N'Russia', N'BKA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3082, N'Nal Airport', N'Bikaner', N'India', N'BKB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7178, N'Buckland Airport', N'Buckland', N'United States', N'BKC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4229, N'Stephens County Airport', N'Breckenridge', N'United States', N'BKD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11819, N'Baker City Municipal Airport', N'Baker City', N'United States', N'BKE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6962, N'Branson Airport', N'Branson', N'United States', N'BKG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3785, N'Barking Sands Airport', N'Barking Sands', N'United States', N'BKH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3269, N'Kota Kinabalu International Airport', N'Kota Kinabalu', N'Malaysia', N'BKI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3885, N'Suvarnabhumi Airport', N'Bangkok', N'Thailand', N'BKK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8544, N'Burke Lakefront Airport', N'Cleveland', N'United States', N'BKL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6218, N'Bakalalan Airport', N'Bakalalan', N'Malaysia', N'BKM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1044, N'Modibo Keita International Airport', N'Bamako', N'Mali', N'BKO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4217, N'Blackall Airport', N'Blackall', N'Australia', N'BKQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3288, N'Fatmawati Soekarno Airport', N'Bengkulu', N'Indonesia', N'BKS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5724, N'Raleigh County Memorial Airport', N'Beckley', N'United States', N'BKW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1035, N'Bukavu Kavumu Airport', N'Bukavu/kavumu', N'Congo (Kinshasa)', N'BKY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5703, N'Bukoba Airport', N'Bukoba', N'Tanzania', N'BKZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2821, N'General Jos+® Antonio Anzoategui International Airport', N'Barcelona', N'Venezuela', N'BLA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1868, N'Panama Pacific International Airport', N'Howard', N'Panama', N'BLB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (739, N'Borlange Airport', N'Borlange', N'Sweden', N'BLE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6128, N'Mercer County Airport', N'Bluefield', N'United States', N'BLF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6214, N'Belaga Airport', N'Belaga', N'Malaysia', N'BLG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4136, N'Blythe Airport', N'Blythe', N'United States', N'BLH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3777, N'Bellingham International Airport', N'Bellingham', N'United States', N'BLI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5552, N'Batna Airport', N'Batna', N'Algeria', N'BLJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (514, N'Blackpool International Airport', N'Blackpool', N'United Kingdom', N'BLK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (608, N'Billund Airport', N'Billund', N'Denmark', N'BLL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12013, N'Benalla Airport', NULL, N'Australia', N'BLN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1538, N'Bologna Guglielmo Marconi Airport', N'Bologna', N'Italy', N'BLQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3131, N'Kempegowda International Airport', N'Bangalore', N'India', N'BLR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6250, N'Blackwater Airport', N'Blackwater', N'Australia', N'BLT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3790, N'Scott AFB/Midamerica Airport', N'Belleville', N'United States', N'BLV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1013, N'Chileka International Airport', N'Blantyre', N'Malawi', N'BLZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (738, N'Stockholm-Bromma Airport', N'Stockholm', N'Sweden', N'BMA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11208, N'Bumbar Airport', N'Bumba', N'Congo (Kinshasa)', N'BMB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6999, N'Brigham City Regional Airport', N'Brigham City', N'United States', N'BMC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5617, N'Belo sur Tsiribihina Airport', N'Belo sur Tsiribihina', N'Madagascar', N'BMD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4319, N'Broome International Airport', N'Broome', N'Australia', N'BME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7655, N'Monroe County Airport', N'Bloomington', N'United States', N'BMG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4037, N'Central Illinois Regional Airport at Bloomington-Normal', N'Bloomington', N'United States', N'BMI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (406, N'Borkum Airport', N'Borkum', N'Germany', N'BMK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (966, N'Bitam Airport', N'Bitam', N'Gabon', N'BMM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6196, N'Banmaw Airport', N'Banmaw', N'Burma', N'BMO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9068, N'Brampton Island Airport', N'Brampton Island', N'Australia', N'BMP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12470, N'Baltrum Airport', N'Baltrum', N'Germany', N'BMR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9190, N'Beaumont Municipal Airport', N'Beaumont', N'United States', N'BMT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3924, N'Muhammad Salahuddin Airport', N'Bima', N'Indonesia', N'BMU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6187, N'Buon Ma Thuot Airport', N'Buonmethuot', N'Vietnam', N'BMV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5554, N'Bordj Badji Mokhtar Airport', N'Bordj Badji Mokhtar', N'Algeria', N'BMW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3431, N'Big Mountain Airport', N'Big Mountain', N'United States', N'BMX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5920, N'+Äle Art - Waala Airport', N'Waala', N'New Caledonia', N'BMY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3690, N'Nashville International Airport', N'Nashville', N'United States', N'BNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11230, N'Boende Airport', N'Boende', N'Congo (Kinshasa)', N'BNB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11229, N'Beni Airport', N'Beni', N'Congo (Kinshasa)', N'BNC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2134, N'Bandar Abbas International Airport', N'Bandar Abbas', N'Iran', N'BND')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3320, N'Brisbane International Airport', N'Brisbane', N'Australia', N'BNE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11131, N'Banning Municipal Airport', N'Banning', N'United States', N'BNG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (262, N'Benin Airport', N'Benin', N'Nigeria', N'BNI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13183, N'Bonn-Hangelar Airport', N'Sankt-Augustin', N'Germany', N'BNJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4291, N'Ballina Byron Gateway Airport', N'Ballina Byron Bay', N'Australia', N'BNK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11021, N'Bodinumu Airport', N'Bodinumu', N'Papua New Guinea', N'BNM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (634, N'Br+©nn+©ysund Airport', N'Bronnoysund', N'Norway', N'BNN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8135, N'Burns Municipal Airport', N'Burns', N'United States', N'BNO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5938, N'Bannu Airport', N'Bannu', N'Pakistan', N'BNP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2822, N'Barinas Airport', N'Barinas', N'Venezuela', N'BNS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8152, N'Blumenau Airport', N'BLUMENAU', N'Brazil', N'BNU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5794, N'Banja Luka International Airport', N'Banja Luka', N'Bosnia and Herzegovina', N'BNX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5646, N'Boma Airport', N'Boma', N'Congo (Kinshasa)', N'BOA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1989, N'Bora Bora Airport', N'Bora Bora', N'French Polynesia', N'BOB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1865, N'Bocas Del Toro International Airport', N'Bocas Del Toro', N'Panama', N'BOC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1264, N'Bordeaux-M+®rignac Airport', N'Bordeaux', N'France', N'BOD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2709, N'El Dorado International Airport', N'Bogota', N'Colombia', N'BOG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (494, N'Bournemouth Airport', N'Bournemouth', N'United Kingdom', N'BOH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3495, N'Boise Air Terminal/Gowen Field', N'Boise', N'United States', N'BOI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1191, N'Burgas Airport', N'Bourgas', N'Bulgaria', N'BOJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2997, N'Chhatrapati Shivaji International Airport', N'Mumbai', N'India', N'BOM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2896, N'Flamingo International Airport', N'Kralendijk', N'Netherlands Antilles', N'BON')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (635, N'Bod+© Airport', N'Bodo', N'Norway', N'BOO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9388, N'Fontaine Airport', N'Belfort', N'France', N'BOR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3448, N'General Edward Lawrence Logan International Airport', N'Boston', N'United States', N'BOS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1331, N'Bourges Airport', N'Bourges', N'France', N'BOU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7621, N'Bartow Municipal Airport', N'Bartow', N'United States', N'BOW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10618, N'Borroloola Airport', N'Borroloola', N'Australia', N'BOX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (247, N'Bobo Dioulasso Airport', N'Bobo-dioulasso', N'Burkina Faso', N'BOY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (903, N'Bamenda Airport', N'Bamenda', N'Cameroon', N'BPC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4272, N'Qinhuangdao Beidaihe Airport', N'Bagan', N'Burma', N'BPE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7620, N'Batuna Aerodrome', N'Batuna', N'Solomon Islands', N'BPF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2534, N'Barra do Gar+ºas Airport', N'Barra Do Garcas', N'Brazil', N'BPG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11927, N'Bislig Airport', NULL, N'Philippines', N'BPH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11820, N'Miley Memorial Field', N'Big Piney', N'United States', N'BPI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11498, N'Alashankou Bole (Bortala) airport', N'Bole', N'China', N'BPL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3141, N'Begumpet Airport', N'Hyderabad', N'India', N'BPM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3919, N'Sultan Aji Muhamad Sulaiman Airport', N'Balikpapan', N'Indonesia', N'BPN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4209, N'Porto Seguro Airport', N'Porto Seguro', N'Brazil', N'BPS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3612, N'Southeast Texas Regional Airport', N'Beaumont', N'United States', N'BPT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6396, N'Qamdo Bangda Airport', N'Bangda', N'China', N'BPX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (931, N'Besalampy Airport', N'Besalampy', N'Madagascar', N'BPY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2415, N'Dr.Juan C. Angara Airport', N'Baler', N'Philippines', N'BQA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9090, N'Busselton Regional Airport', N'Brusselton', N'Australia', N'BQB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10110, N'Bubaque Airport', N'Bubaque', N'Guinea-Bissau', N'BQE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12058, N'Bogorodskoye Airport', N'Bogorodskoe', N'Russia', N'BQG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (501, N'London Biggin Hill Airport', N'Biggin Hill', N'United Kingdom', N'BQH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7357, N'Batagay Airport', N'Batagay', N'Russia', N'BQJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5725, N'Brunswick Golden Isles Airport', N'Brunswick', N'United States', N'BQK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6248, N'Boulia Airport', N'Boulia', N'Australia', N'BQL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2885, N'Rafael Hernandez Airport', N'Aguadilla', N'Puerto Rico', N'BQN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2926, N'Ignatyevo Airport', N'Blagoveschensk', N'Russia', N'BQS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6908, N'Brest Airport', N'Brest', N'Belarus', N'BQT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6081, N'J F Mitchell Airport', N'Bequia', N'Saint Vincent and the Grenadines', N'BQU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7373, N'Barreiras Airport', N'Barreiras', N'Brazil', N'BRA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2513, N'San Carlos De Bariloche Airport', N'San Carlos De Bariloche', N'Argentina', N'BRC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6957, N'Brainerd Lakes Regional Airport', N'Brainerd', N'United States', N'BRD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (353, N'Bremen Airport', N'Bremen', N'Germany', N'BRE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1501, N'Bari Karol Wojty+éa Airport', N'Bari', N'Italy', N'BRI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6244, N'Bourke Airport', N'Bourke', N'Australia', N'BRK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5726, N'Southeast Iowa Regional Airport', N'Burlington', N'United States', N'BRL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2824, N'Barquisimeto International Airport', N'Barquisimeto', N'Venezuela', N'BRM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1676, N'Bern Belp Airport', N'Bern', N'Switzerland', N'BRN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3738, N'Brownsville South Padre Island International Airport', N'Brownsville', N'United States', N'BRO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1588, N'Brno-Tu+Öany Airport', N'Brno', N'Czech Republic', N'BRQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5575, N'Barra Airport', N'Barra', N'United Kingdom', N'BRR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (490, N'Bristol Airport', N'Bristol', N'United Kingdom', N'BRS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7571, N'Bathurst Island Airport', N'Bathurst Island', N'Australia', N'BRT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (302, N'Brussels Airport', N'Brussels', N'Belgium', N'BRU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (402, N'Bremerhaven Airport', N'Bremerhaven', N'Germany', N'BRV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3571, N'Wiley Post Will Rogers Memorial Airport', N'Barrow', N'United States', N'BRW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1757, N'Maria Montez International Airport', N'Barahona', N'Dominican Republic', N'BRX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5686, N'Bosaso Airport', N'Bosaso', N'Somalia', N'BSA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2531, N'Presidente Juscelino Kubistschek International Airport', N'Brasilia', N'Brazil', N'BSB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2711, N'Jos+® Celestino Mutis Airport', N'Bahia Solano', N'Colombia', N'BSC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7505, N'Baoshan Yunduan Airport', N'Baoshan', N'China', N'BSD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3787, N'Bradshaw Army Airfield', N'Bradshaw Field', N'United States', N'BSF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (890, N'Bata Airport', N'Bata', N'Equatorial Guinea', N'BSG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9402, N'Bairnsdale Airport', N'Bairnsdale', N'Australia', N'BSJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (235, N'Biskra Airport', N'Biskra', N'Algeria', N'BSK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1423, N'EuroAirport Basel-Mulhouse-Freiburg Airport', N'Mulhouse', N'France', N'BSL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6019, N'Basco Airport', N'Basco', N'Philippines', N'BSO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2234, N'Basrah International Airport', N'Basrah', N'Iraq', N'BSR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8773, N'Bost Airport', N'Lashkar Gah', N'Afghanistan', N'BST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5651, N'Basankusu Airport', N'Basankusu', N'Congo (Kinshasa)', N'BSU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6201, N'Pathein Airport', N'Pathein', N'Burma', N'BSX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3026, N'Batticaloa Airport', N'Batticaloa', N'Sri Lanka', N'BTC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5662, N'Sherbro International Airport', N'Bonthe', N'Sierra Leone', N'BTE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3903, N'Hang Nadim International Airport', N'Batam', N'Indonesia', N'BTH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3411, N'Barter Island LRRS Airport', N'Barter Island', N'United States', N'BTI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3294, N'Sultan Iskandar Muda International Airport', N'Banda Aceh', N'Indonesia', N'BTJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2936, N'Bratsk Airport', N'Bratsk', N'Russia', N'BTK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11822, N'W K Kellogg Airport', N'Battle Creek', N'United States', N'BTL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4022, N'Bert Mooney Airport', N'Butte', N'United States', N'BTM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3846, N'Baton Rouge Metropolitan Airport', N'Baton Rouge', N'United States', N'BTR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1745, N'M. R. +átef+ínik Airport', N'Bratislava', N'Slovakia', N'BTS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3417, N'Bettles Airport', N'Bettles', N'United States', N'BTT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3262, N'Bintulu Airport', N'Bintulu', N'Malaysia', N'BTU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3711, N'Burlington International Airport', N'Burlington', N'United States', N'BTV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3909, N'Batu Licin Airport', N'Batu Licin', N'Indonesia', N'BTW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9395, N'Bursa Airport', N'Bursa', N'Turkey', N'BTZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5419, N'Buka Airport', N'Buka Island', N'Papua New Guinea', N'BUA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6245, N'Burketown Airport', N'Burketown', N'Australia', N'BUC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1489, N'Budapest Liszt Ferenc International Airport', N'Budapest', N'Hungary', N'BUD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3820, N'Buffalo Niagara International Airport', N'Buffalo', N'United States', N'BUF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (945, N'Benguela Airport', N'Benguela', N'Angola', N'BUG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6205, N'Bokondini Airport', N'Bokondini-Papua Island', N'Indonesia', N'BUI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (208, N'Bou Saada Airport', N'Bou Saada', N'Algeria', N'BUJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12946, N'Bulolo Airport', N'Bulolo', N'Papua New Guinea', N'BUL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2712, N'Gerardo Tobar L+¦pez Airport', N'Buenaventura', N'Colombia', N'BUN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5689, N'Burao Airport', N'Burao', N'Somalia', N'BUO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3086, N'Bhatinda Air Force Station', N'Bhatinda', N'India', N'BUP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1001, N'Joshua Mqabuko Nkomo International Airport', N'Bulawayo', N'Zimbabwe', N'BUQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3644, N'Bob Hope Airport', N'Burbank', N'United States', N'BUR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3971, N'Batumi International Airport', N'Batumi', N'Georgia', N'BUS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11389, N'Bathpalathang Airport', N'Jakar', N'Bhutan', N'BUT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9891, N'Muara Bungo Airport', N'Muara Bungo', N'Indonesia', N'BUU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9887, N'Betoambari Airport', N'Bau-Bau', N'Indonesia', N'BUW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1033, N'Bunia Airport', N'Bunia', N'Congo (Kinshasa)', N'BUX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10116, N'Bunbury Airport', N'Bunbury', N'Australia', N'BUY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2106, N'Bushehr Airport', N'Bushehr', N'Iran', N'BUZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1367, N'Paris Beauvais Till+® Airport', N'Beauvais', N'France', N'BVA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2533, N'Atlas Brasil Cantanhede Airport', N'Boa Vista', N'Brazil', N'BVB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1103, N'Rabil Airport', N'Boa Vista', N'Cape Verde', N'BVC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1278, N'Brive Souillac Airport', N'Brive', N'France', N'BVE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4350, N'Berlev+Ñg Airport', N'Berlevag', N'Norway', N'BVG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2637, N'Brigadeiro Camar+úo Airport', N'Vilhena', N'Brazil', N'BVH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6240, N'Birdsville Airport', N'Birdsville', N'Australia', N'BVI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7370, N'Breves Airport', N'Breves', N'Brazil', N'BVS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8658, N'Beverly Municipal Airport', N'Beverly', N'United States', N'BVY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3122, N'Gautam Buddha Airport', N'Bhairawa', N'Nepal', N'BWA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7566, N'Barrow Island Airport', N'Barrow Island', N'Australia', N'BWB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (399, N'Braunschweig-Wolfsburg Airport', N'Braunschweig', N'Germany', N'BWE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (516, N'Barrow Walney Island Airport', N'Barrow Island', N'United Kingdom', N'BWF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7848, N'Bowling Green Warren County Regional Airport', N'Bowling Green', N'United States', N'BWG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3297, N'Butterworth Airport', N'Butterworth', N'Malaysia', N'BWH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3849, N'Baltimore/Washington International Thurgood Marshall Airport', N'Baltimore', N'United States', N'BWI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4160, N'Bol Airport', N'Brac', N'Croatia', N'BWK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3272, N'Brunei International Airport', N'Bandar Seri Begawan', N'Brunei', N'BWN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6167, N'Balakovo Airport', N'Balakovo', N'Russia', N'BWO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12015, N'Brewarrina Airport', NULL, N'Australia', N'BWQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6338, N'Wynyard Airport', N'Burnie', N'Australia', N'BWT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3354, N'Sydney Bankstown Airport', N'Sydney', N'Australia', N'BWU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10171, N'Las Brujas Airport', N'Cayo Santa Maria', N'Cuba', N'BWW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10158, N'Blimbingsari Airport', N'Banyuwangi', N'Indonesia', N'BWX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3259, N'Babo Airport', N'Babo', N'Indonesia', N'BXB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1086, N'Bakel Airport', N'Bakel', N'Senegal', N'BXE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6915, N'Bendigo Airport', N'Bendigo', N'Australia', N'BXG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2909, N'Balkhash Airport', N'Balkhash', N'Kazakhstan', N'BXH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7982, N'Buckeye Municipal Airport', N'Buckeye', N'United States', N'BXK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1718, N'Ims-¦k Airport', N'Bodrum', N'Turkey', N'BXN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8613, N'Buochs Airport', N'Buochs', N'Switzerland', N'BXO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11790, N'Bia+éa Podlaska Airfield', N'Bia+éa Podlaska', N'Poland', N'BXP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5928, N'Bam Airport', N'Bam', N'Iran', N'BXR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4200, N'Bancasi Airport', N'Butuan', N'Philippines', N'BXU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8192, N'Krainiy Airport', N'Baikonur', N'Kazakhstan', N'BXY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2772, N'Yacuiba Airport', N'Yacuiba', N'Bolivia', N'BYC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1258, N'Albert-Bray Airport', N'Albert', N'France', N'BYF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3523, N'Arkansas International Airport', N'Blytheville', N'United States', N'BYH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11823, N'Burley Municipal Airport', N'Burley', N'United States', N'BYI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1619, N'Beja Airport / Airbase', N'Beja (madeira)', N'Portugal', N'BYJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (254, N'Bouak+® Airport', N'Bouake', N'Cote d''Ivoire', N'BYK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1899, N'Carlos Manuel de Cespedes Airport', N'Bayamo', N'Cuba', N'BYM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6371, N'Bayankhongor Airport', N'Bayankhongor', N'Mongolia', N'BYN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8242, N'Bonito Airport', N'Bointo', N'Brazil', N'BYO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13600, N'Barimunya Airport', N'Barimunya', N'Australia', N'BYP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13545, N'Bunyu Airport', N'Bunyu', N'Indonesia', N'BYQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (613, N'L+ªs+© Airport', N'Laeso', N'Denmark', N'BYR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3435, N'Bicycle Lake Army Air Field', N'Fort Irwin', N'United States', N'BYS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8698, N'Bantry Aerodrome', N'Bantry', N'Ireland', N'BYT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (386, N'Bayreuth Airport', N'Bayreuth', N'Germany', N'BYU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7292, N'San Pedro Airport', N'Bonanza', N'Nicaragua', N'BZA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11176, N'Umberto Modiano Airport', N'Buzios', N'Brazil', N'BZC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12014, N'Balranald Airport', NULL, N'Australia', N'BZD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1957, N'Philip S. W. Goldson International Airport', N'Belize City', N'Belize', N'BZE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5591, N'Bydgoszcz Ignacy Jan Paderewski Airport', N'Bydgoszcz', N'Poland', N'BZG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9205, N'Bumi Airport', N'Bumi Hills', N'Zimbabwe', N'BZH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1702, N'Bal-¦kesir Merkez Airport', N'Balikesir', N'Turkey', N'BZI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2984, N'Bryansk Airport', N'Bryansk', N'Russia', N'BZK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6176, N'Barisal Airport', N'Barisal', N'Bangladesh', N'BZL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4020, N'Gallatin Field', N'Bozeman', N'United States', N'BZN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1536, N'Bolzano Airport', N'Bolzano', N'Italy', N'BZO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1360, N'B+®ziers-Vias Airport', N'Beziers', N'France', N'BZR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1034, N'Buta Zega Airport', N'Buta Zega', N'Congo (Kinshasa)', N'BZU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (883, N'Maya-Maya Airport', N'Brazzaville', N'Congo (Brazzaville)', N'BZV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1734, N'B-âl+øi International Airport', N'Saltsy', N'Moldova', N'BZY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (561, N'RAF Brize Norton', N'Brize Norton', N'United Kingdom', N'BZZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (946, N'Cabinda Airport', N'Cabinda', N'Angola', N'CAB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2535, N'Cascavel Airport', N'Cascavel', N'Brazil', N'CAC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3561, N'Columbia Metropolitan Airport', N'Columbia', N'United States', N'CAE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8245, N'Carauari Airport', N'Carauari', N'Brazil', N'CAF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1519, N'Cagliari Elmas Airport', N'Cagliari', N'Italy', N'CAG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4156, N'C+á Mau Airport', N'Ca Mau', N'Vietnam', N'CAH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1128, N'Cairo International Airport', N'Cairo', N'Egypt', N'CAI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2830, N'Canaima Airport', N'Canaima', N'Venezuela', N'CAJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4112, N'Akron Canton Regional Airport', N'Akron', N'United States', N'CAK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5563, N'Campbeltown Airport', N'Campbeltown', N'United Kingdom', N'CAL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3370, N'Guangzhou Baiyun International Airport', N'Guangzhou', N'China', N'CAN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1895, N'Cap Haitien International Airport', N'Cap Haitien', N'Haiti', N'CAP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7361, N'Juan H White Airport', N'Caucasia', N'Colombia', N'CAQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3478, N'Caribou Municipal Airport', N'Caribou', N'United States', N'CAR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1622, N'Cascais Airport', N'Cascais', N'Portugal', N'CAT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7673, N'Caruaru Airport', N'Caruaru', N'Brazil', N'CAU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2543, N'Bartolomeu Lisandro Airport', N'Campos', N'Brazil', N'CAW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (512, N'Carlisle Airport', N'Carlisle', N'United Kingdom', N'CAX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2774, N'Cayenne-Rochambeau Airport', N'Cayenne', N'French Guiana', N'CAY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6252, N'Cobar Airport', N'Cobar', N'Australia', N'CAZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2759, N'Jorge Wilsterman International Airport', N'Cochabamba', N'Bolivia', N'CBB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3139, N'Car Nicobar Air Force Station', N'Carnicobar', N'India', N'CBD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8474, N'Greater Cumberland Regional Airport', N'Cumberland', N'United States', N'CBE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11076, N'Council Bluffs Municipal Airport', N'Council Bluffs', N'United States', N'CBF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (545, N'Cambridge Airport', N'Cambridge', N'United Kingdom', N'CBG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5553, N'B+®char Boudghene Ben Ali Lotfi Airport', N'B+®char', N'Algeria', N'CBH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1758, N'Cabo Rojo Airport', N'Cabo Rojo', N'Dominican Republic', N'CBJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2826, N'Aeropuerto General Tomas de Heres. Ciudad Bolivar', N'Ciudad Bolivar', N'Venezuela', N'CBL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3868, N'Columbus Air Force Base', N'Colombus', N'United States', N'CBM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3897, N'Penggung Airport', N'Cirebon', N'Indonesia', N'CBN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2399, N'Awang Airport', N'Cotabato', N'Philippines', N'CBO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (263, N'Margaret Ekpo International Airport', N'Calabar', N'Nigeria', N'CBQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3355, N'Canberra International Airport', N'Canberra', N'Australia', N'CBR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5630, N'Catumbela Airport', N'Catumbela', N'Angola', N'CBT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (335, N'Cottbus-Drewitz Airport', N'Cottbus', N'Germany', N'CBU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1766, N'Coban Airport', N'Coban', N'Guatemala', N'CBV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2760, N'Chimore Airport', N'Chapacura', N'Bolivia', N'CCA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10117, N'Cable Airport', N'Upland', N'United States', N'CCB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1901, N'Jardines Del Rey Airport', N'Cunagua', N'Cuba', N'CCC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1352, N'Carcassonne Airport', N'Carcassonne', N'France', N'CCF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2644, N'Chile Chico Airport', N'Chile Chico', N'Chile', N'CCH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8248, N'Conc+¦rdia Airport', N'Concordia', N'Brazil', N'CCI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3137, N'Calicut International Airport', N'Calicut', N'India', N'CCJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6315, N'Cocos (Keeling) Islands Airport', N'Cocos Keeling Island', N'Cocos (Keeling) Islands', N'CCK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8980, N'Chinchilla Airport', N'Chinchilla', N'Australia', N'CCL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2541, N'Diom+¡cio Freitas Airport', N'Criciuma', N'Brazil', N'CCM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7501, N'Chakcharan Airport', N'Chaghcharan', N'Afghanistan', N'CCN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2656, N'Carriel Sur Airport', N'Concepcion', N'Chile', N'CCP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7888, N'Buchanan Field', N'Concord', N'United States', N'CCR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2851, N'Sim+¦n Bol+¡var International Airport', N'Caracas', N'Venezuela', N'CCS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3043, N'Netaji Subhash Chandra Bose International Airport', N'Kolkata', N'India', N'CCU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5897, N'Craig Cove Airport', N'Craig Cove', N'Vanuatu', N'CCV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11203, N'C+íceres Airport', N'Caceres', N'Brazil', N'CCX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11824, N'Northeast Iowa Regional Airport', N'Charles City', N'United States', N'CCY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1935, N'Chub Cay Airport', N'Chub Cay', N'Bahamas', N'CCZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7912, N'Cooinda Airport', N'Cooinda', N'Australia', N'CDA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3854, N'Cold Bay Airport', N'Cold Bay', N'United States', N'CDB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3824, N'Cedar City Regional Airport', N'Cedar City', N'United States', N'CDC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13478, N'Chengde Puning Airport', N'Chengde', N'China', N'CDE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1382, N'Charles de Gaulle International Airport', N'Paris', N'France', N'CDG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2518, N'Concei+º+úo do Araguaia Airport', N'Conceicao Do Araguaia', N'Brazil', N'CDJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8516, N'Woodward Field', N'Camden', N'United States', N'CDN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3138, N'Kadapa Airport', N'Cuddapah', N'India', N'CDP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7066, N'Chadron Municipal Airport', N'Chadron', N'United States', N'CDR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3537, N'Childress Municipal Airport', N'Childress', N'United States', N'CDS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11879, N'Castell+¦n-Costa Azahar Airport', N'Castell+¦n de la Plana', N'Spain', N'CDT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3357, N'Camden Airport', N'Camden', N'Australia', N'CDU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3610, N'Merle K (Mudhole) Smith Airport', N'Cordova', N'United States', N'CDV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7990, N'Essex County Airport', N'Caldwell', N'United States', N'CDW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4206, N'Mactan Cebu International Airport', N'Cebu', N'Philippines', N'CEB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5727, N'Jack Mc Namara Field Airport', N'Crescent City', N'United States', N'CEC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6256, N'Ceduna Airport', N'Ceduna', N'Australia', N'CED')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6111, N'Cherepovets Airport', N'Cherepovets', N'Russia', N'CEE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3828, N'Westover ARB/Metropolitan Airport', N'Chicopee Falls', N'United States', N'CEF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (519, N'Hawarden Airport', N'Hawarden', N'United Kingdom', N'CEG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3932, N'Chiang Rai International Airport', N'Chiang Rai', N'Thailand', N'CEI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6906, N'Chernihiv Shestovitsa Airport', N'Chernigov', N'Ukraine', N'CEJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2968, N'Chelyabinsk Balandino Airport', N'Chelyabinsk', N'Russia', N'CEK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7116, N'Central Airport', N'Central', N'United States', N'CEM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1794, N'Ciudad Obreg+¦n International Airport', N'Ciudad Obregon', N'Mexico', N'CEN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1349, N'Cannes-Mandelieu Airport', N'Cannes', N'France', N'CEQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1404, N'Cherbourg-Maupertus Airport', N'Cherbourg', N'France', N'CER')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6806, N'Cessnock Airport', N'Cessnock', N'Australia', N'CES')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1377, N'Cholet Le Pontreau Airport', N'Cholet', N'France', N'CET')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8802, N'Oconee County Regional Airport', N'Clemson', N'United States', N'CEU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3555, N'Bob Sikes Airport', N'Crestview', N'United States', N'CEW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4338, N'Cortez Municipal Airport', N'Cortez', N'United States', N'CEZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7364, N'Cabo Frio Airport', N'Cabo Frio', N'Brazil', N'CFB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8244, N'Ca+ºador Airport', N'Cacador', N'Brazil', N'CFC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3631, N'Coulter Field', N'Bryan', N'United States', N'CFD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1330, N'Clermont-Ferrand Auvergne Airport', N'Clermont-Ferrand', N'France', N'CFE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1902, N'Jaime Gonzalez Airport', N'Cienfuegos', N'Cuba', N'CFG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (228, N'Ech Cheliff Airport', N'Ech-cheliff', N'Algeria', N'CFK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5577, N'Donegal Airport', N'Dongloe', N'Ireland', N'CFN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8250, N'Confresa Airport', N'Confresa', N'Brazil', N'CFO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1412, N'Caen-Carpiquet Airport', N'Caen', N'France', N'CFR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3356, N'Coffs Harbour Airport', N'Coff''s Harbour', N'Australia', N'CFS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1460, N'Ioannis Kapodistrias International Airport', N'Kerkyra/corfu', N'Greece', N'CFU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11096, N'Coffeyville Municipal Airport', N'Coffeyville', N'United States', N'CFV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2548, N'Marechal Rondon Airport', N'Cuiaba', N'Brazil', N'CGB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6352, N'Changde Airport', N'Changde', N'China', N'CGD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4253, N'Cuyahoga County Airport', N'Richmond Heights', N'United States', N'CGF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2618, N'Congonhas Airport', N'Sao Paulo', N'Brazil', N'CGH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5728, N'Cape Girardeau Regional Airport', N'Cape Girardeau', N'United States', N'CGI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (905, N'Kasompe Airport', N'Kasompe', N'Zambia', N'CGJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3275, N'Soekarno-Hatta International Airport', N'Jakarta', N'Indonesia', N'CGK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6012, N'Camiguin Airport', N'Camiguin', N'Philippines', N'CGM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (344, N'Cologne Bonn Airport', N'Cologne', N'Germany', N'CGN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3375, N'Zhengzhou Xinzheng International Airport', N'Zhengzhou', N'China', N'CGO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3069, N'Shah Amanat International Airport', N'Chittagong', N'Bangladesh', N'CGP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4380, N'Longjia Airport', N'Changchun', N'China', N'CGQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2538, N'Campo Grande Airport', N'Campo Grande', N'Brazil', N'CGR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8593, N'Chicago Meigs Airport', N'Chicago', N'United States', N'CGX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (14102, N'Laguindingan Airport', N'Cagayan de Oro City', N'Philippines', N'CGY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7980, N'Casa Grande Municipal Airport', N'Casa Grande', N'United States', N'CGZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3578, N'Lovell Field', N'Chattanooga', N'United States', N'CHA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2009, N'Christchurch International Airport', N'Christchurch', N'New Zealand', N'CHC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2371, N'Jinhae Airbase/Airport (G-813/K-10)', N'Chinhae', N'South Korea', N'CHF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6772, N'Chaoyang Airport', N'Chaoyang', N'China', N'CHG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2800, N'Chachapoyas Airport', N'Chachapoyas', N'Peru', N'CHH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2782, N'Teniente FAP Jaime A De Montreuil Morales Airport', N'Chimbote', N'Peru', N'CHM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2364, N'Jeon Ju Airport (G-703)', N'Jhunju', N'South Korea', N'CHN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4015, N'Charlottesville Albemarle Airport', N'Charlottesville VA', N'United States', N'CHO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1474, N'Chania International Airport', N'Chania', N'Greece', N'CHQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1345, N'Ch+óteauroux-D+®ols Marcel Dassault Airport', N'Chateauroux', N'France', N'CHR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3806, N'Charleston Air Force Base-International Airport', N'Charleston', N'United States', N'CHS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2010, N'Chatham Islands-Tuuta Airport', N'Chatham Island', N'New Zealand', N'CHT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7091, N'Chuathbaluk Airport', N'Chuathbaluk', N'United States', N'CHU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1866, N'Cap Manuel Ni+¦o International Airport', N'Changuinola', N'Panama', N'CHX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7617, N'Choiseul Bay Airport', N'Choiseul Bay', N'Solomon Islands', N'CHY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1553, N'CiampinoÔÇôG. B. Pastine International Airport', N'Rome', N'Italy', N'CIA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3710, N'Chico Municipal Airport', N'Chico', N'United States', N'CIC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4043, N'The Eastern Iowa Airport', N'Cedar Rapids', N'United States', N'CID')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6342, N'Chifeng Airport', N'Chifeng', N'China', N'CIF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6343, N'Changzhi Airport', N'Changzhi', N'China', N'CIH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2761, N'Capit+ín An+¡bal Arab Airport', N'Cobija', N'Bolivia', N'CIJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7105, N'Chalkyitsik Airport', N'Chalkyitsik', N'United States', N'CIK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2701, N'Teniente Col Carmelo Peralta Airport', N'Conception', N'Paraguay', N'CIO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5612, N'Chipata Airport', N'Chipata', N'Zambia', N'CIP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2242, N'Canton Island Airport', N'Canton Island', N'Kiribati', N'CIS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2914, N'Shymkent Airport', N'Chimkent', N'Kazakhstan', N'CIT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5729, N'Chippewa County International Airport', N'Sault Ste Marie', N'United States', N'CIU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2905, N'Canouan Airport', N'Canouan Island', N'Saint Vincent and the Grenadines', N'CIW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2785, N'Capitan FAP Jose A Quinones Gonzales International Airport', N'Chiclayo', N'Peru', N'CIX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9327, N'Comiso Airport', N'Comiso', N'Italy', N'CIY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7398, N'Coari Airport', N'Coari', N'Brazil', N'CIZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6066, N'Mayor General FAP Armando Revoredo Iglesias Airport', N'Cajamarca', N'Peru', N'CJA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3135, N'Coimbatore International Airport', N'Coimbatore', N'India', N'CJB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2645, N'El Loa Airport', N'Calama', N'Chile', N'CJC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10378, N'Coondewanna Airport', N'Coondewanna', N'Australia', N'CJF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6008, N'Cheongju International Airport/Cheongju Air Base (K-59/G-513)', N'Chongju', N'South Korea', N'CJJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5940, N'Chitral Airport', N'Chitral', N'Pakistan', N'CJL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4300, N'Chumphon Airport', N'Chumphon', N'Thailand', N'CJM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8752, N'Nusawiru Airport', N'Nusawiru', N'Indonesia', N'CJN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1796, N'Abraham Gonz+ílez International Airport', N'Ciudad Juarez', N'Mexico', N'CJS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2370, N'Jeju International Airport', N'Cheju', N'South Korea', N'CJU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5730, N'North Central West Virginia Airport', N'Clarksburg', N'United States', N'CKB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6986, N'Cherkasy International Airport', N'Cherkassy', N'Ukraine', N'CKC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3393, N'Chongqing Jiangbei International Airport', N'Chongqing', N'China', N'CKG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6093, N'Chokurdakh Airport', N'Chokurdah', N'Russia', N'CKH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13598, N'Croker Island Airport', N'Croker Island', N'Australia', N'CKI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7861, N'Chkalovskiy Air Base', N'Shchyolkovo', N'Russia', N'CKL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7532, N'Caraj+ís Airport', N'Parauapebas', N'Brazil', N'CKS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2143, N'Sarakhs Airport', N'Sarakhs', N'Iran', N'CKT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8763, N'ClarksvilleÔÇôMontgomery County Regional Airport', N'Clarksville', N'United States', N'CKV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4162, N'Conakry International Airport', N'Conakry', N'Guinea', N'CKY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6781, N'+çanakkale Airport', N'Canakkale', N'Turkey', N'CKZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4088, N'Mc Clellan-Palomar Airport', N'Carlsbad', N'United States', N'CLD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3486, N'Cleveland Hopkins International Airport', N'Cleveland', N'United States', N'CLE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1652, N'Cluj-Napoca International Airport', N'Cluj-napoca', N'Romania', N'CLJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3715, N'Easterwood Field', N'College Station', N'United States', N'CLL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5731, N'William R Fairchild International Airport', N'Port Angeles', N'United States', N'CLM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2540, N'Brig. Lysias Augusto Rodrigues Airport', N'Carolina', N'Brazil', N'CLN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2715, N'Alfonso Bonilla Aragon International Airport', N'Cali', N'Colombia', N'CLO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13336, N'Clarks Point Airport', N'Clarks Point', N'United States', N'CLP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1808, N'Licenciado Miguel de la Madrid Airport', N'Colima', N'Mexico', N'CLQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9408, N'Chehalis Centralia Airport', N'Chehalis', N'United States', N'CLS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3876, N'Charlotte Douglas International Airport', N'Charlotte', N'United States', N'CLT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11816, N'Columbus Municipal Airport', N'Columbus', N'United States', N'CLU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4215, N'Nelson Ribeiro Guimar+úes Airport', N'Caldas Novas', N'Brazil', N'CLV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8565, N'Clearwater Air Park', N'Clearwater', N'United States', N'CLW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1322, N'Calvi-Sainte-Catherine Airport', N'Calvi', N'France', N'CLY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2829, N'Calabozo Airport', N'Calabozo', N'Venezuela', N'CLZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6258, N'Cunnamulla Airport', N'Cunnamulla', N'Australia', N'CMA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3024, N'Bandaranaike International Colombo Airport', N'Colombo', N'Sri Lanka', N'CMB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12019, N'Cootamundra Airport', NULL, N'Australia', N'CMD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1789, N'Ciudad del Carmen International Airport', N'Ciudad Del Carmen', N'Mexico', N'CME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1329, N'Chamb+®ry-Savoie Airport', N'Chambery', N'France', N'CMF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2544, N'Corumb+í International Airport', N'Corumba', N'Brazil', N'CMG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3759, N'John Glenn Columbus International Airport', N'Columbus', N'United States', N'CMH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4049, N'University of Illinois Willard Airport', N'Champaign', N'United States', N'CMI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7564, N'Chi Mei Airport', N'Cimei', N'Taiwan', N'CMJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5640, N'Club Makokola Airport', N'Club Makokola', N'Malawi', N'CMK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1074, N'Mohammed V International Airport', N'Casablanca', N'Morocco', N'CMN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7369, N'Santana do Araguaia Airport', N'Santana do Araguaia', N'Brazil', N'CMP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9901, N'Clermont Airport', N'Clermont', N'Australia', N'CMQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1307, N'Colmar-Houssen Airport', N'Colmar', N'France', N'CMR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5420, N'Chimbu Airport', N'Kundiawa', N'Papua New Guinea', N'CMU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1904, N'Ignacio Agramonte International Airport', N'Camaguey', N'Cuba', N'CMW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5732, N'Houghton County Memorial Airport', N'Hancock', N'United States', N'CMX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6259, N'Coonamble Airport', N'Coonamble', N'Australia', N'CNB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6254, N'Coconut Island Airport', N'Coconut Island', N'Australia', N'CNC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1651, N'Mihail Kog-âlniceanu International Airport', N'Constanta', N'Romania', N'CND')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2537, N'Tancredo Neves International Airport', N'Belo Horizonte', N'Brazil', N'CNF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1267, N'Cognac-Ch+óteaubernard (BA 709) Air Base', N'Cognac', N'France', N'CNG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8974, N'Changhai Airport', N'Changhai', N'China', N'CNI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6255, N'Cloncurry Airport', N'Cloncurry', N'Australia', N'CNJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5579, N'Sindal Airport', N'Sindal', N'Denmark', N'CNL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3597, N'Cavern City Air Terminal', N'Carlsbad', N'United States', N'CNM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13725, N'Kannur International Airport', N'Kannur', N'India', N'CNN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10162, N'Chino Airport', N'Chino', N'United States', N'CNO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5439, N'Neerlerit Inaat Airport', N'Neerlerit Inaat', N'Greenland', N'CNP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2468, N'Corrientes Airport', N'Corrientes', N'Argentina', N'CNQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11934, N'Cha+¦aral Airport', N'Cha+¦aral', N'Chile', N'CNR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3322, N'Cairns International Airport', N'Cairns', N'Australia', N'CNS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11825, N'Chanute Martin Johnson Airport', N'Chanute', N'United States', N'CNU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3476, N'TSTC Waco Airport', N'Waco', N'United States', N'CNW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3931, N'Chiang Mai International Airport', N'Chiang Mai', N'Thailand', N'CNX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7074, N'Canyonlands Field', N'Moab', N'United States', N'CNY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2436, N'Comodoro Pierrestegui Airport', N'Concordia', N'Argentina', N'COC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4344, N'Yellowstone Regional Airport', N'Cody', N'United States', N'COD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9189, N'Coeur D''Alene - Pappy Boyington Field', N'Coeur d''Alene', N'United States', N'COE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3623, N'Patrick Air Force Base', N'Coco Beach', N'United States', N'COF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7362, N'Mandinga Airport', N'Condoto', N'Colombia', N'COG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3044, N'Cooch Behar Airport', N'Cooch-behar', N'India', N'COH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9193, N'Coonabarabran Airport', N'Coonabarabran', N'Australia', N'COJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3136, N'Cochin International Airport', N'Kochi', N'India', N'COK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4268, N'Concord Municipal Airport', N'Concord NH', N'United States', N'CON')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (245, N'Cadjehoun Airport', N'Cotonou', N'Benin', N'COO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6795, N'Choibalsan Airport', N'Choibalsan', N'Mongolia', N'COQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2443, N'Ingeniero Ambrosio Taravella Airport', N'Cordoba', N'Argentina', N'COR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3819, N'City of Colorado Springs Municipal Airport', N'Colorado Springs', N'United States', N'COS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3844, N'Cotulla-La Salle County Airport', N'Cotulla', N'United States', N'COT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3719, N'Columbia Regional Airport', N'Columbia', N'United States', N'COU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5856, N'Congo Town Airport', N'Andros', N'Bahamas', N'COX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7301, N'Constanza - Expedici+¦n 14 de Junio National Airport', N'Constanza', N'Dominican Republic', N'COZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7429, N'Cape Palmas Airport', N'Greenville', N'Liberia', N'CPA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8234, N'Capurgan+í Airport', N'Capurgana', N'Colombia', N'CPB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2517, N'Aviador C. Campos Airport', N'San Martin Des Andes', N'Argentina', N'CPC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6253, N'Coober Pedy Airport', N'Coober Pedy', N'Australia', N'CPD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1795, N'Ingeniero Alberto Acu+¦a Ongay International Airport', N'Campeche', N'Mexico', N'CPE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (609, N'Copenhagen Kastrup Airport', N'Copenhagen', N'Denmark', N'CPH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (14109, N'Desierto de Atacama Airport', N'Copiapo', N'Chile', N'CPO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7125, N'Amarais Airport', N'Campinas', N'Brazil', N'CPQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3872, N'Casper-Natrona County International Airport', N'Casper', N'United States', N'CPR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (797, N'Cape Town International Airport', N'Cape Town', N'South Africa', N'CPT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2577, N'Presidente Jo+úo Suassuna Airport', N'Campina Grande', N'Brazil', N'CPV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6814, N'Benjamin Rivera Noriega Airport', N'Culebra Island', N'Puerto Rico', N'CPX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11206, N'Canarana Airport', N'Canarana', N'Brazil', N'CQA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6759, N'Shahrekord Airport', N'Shahre Kord', N'Iran', N'CQD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1254, N'Calais-Dunkerque Airport', N'Calais', N'France', N'CQF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7489, N'Ciudad Real Central Airport', N'Ciudad Real', N'Spain', N'CQM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13881, N'Costa Marques Airport', N'COSTA MARQUES', N'Brazil', N'CQS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1654, N'Craiova Airport', N'Craiova', N'Romania', N'CRA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6049, N'Santa Ana Airport', N'Cartago', N'Colombia', N'CRC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2487, N'General E. Mosconi Airport', N'Comodoro Rivadavia', N'Argentina', N'CRD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8604, N'Grand Strand Airport', N'North Myrtle Beach', N'United States', N'CRE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11826, N'Jacksonville Executive at Craig Airport', N'Jacksonville', N'United States', N'CRG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5859, N'Colonel Hill Airport', N'Colonel Hill', N'Bahamas', N'CRI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4140, N'Diosdado Macapagal International Airport', N'Angeles City', N'Philippines', N'CRK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (304, N'Brussels South Charleroi Airport', N'Charleroi', N'Belgium', N'CRL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6024, N'Catarman National Airport', N'Catarman', N'Philippines', N'CRM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3744, N'Corpus Christi International Airport', N'Corpus Christi', N'United States', N'CRP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2546, N'Caravelas Airport', N'Caravelas', N'Brazil', N'CRQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1500, N'Crotone Airport', N'Crotone', N'Italy', N'CRV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4285, N'Yeager Airport', N'Charleston', N'United States', N'CRW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2978, N'Turkmenabat Airport', N'Chardzhou', N'Turkmenistan', N'CRZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7492, N'Colonsay Airstrip', N'Colonsay', N'United Kingdom', N'CSA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1653, N'Caransebe+ƒ Airport', N'Caransebes', N'Romania', N'CSB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1381, N'Creil Air Base', N'Creil', N'France', N'CSF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4255, N'Columbus Metropolitan Airport', N'Columbus', N'United States', N'CSG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6110, N'Solovki Airport', N'Solovetsky Islands', N'Russia', N'CSH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1082, N'Cap Skirring Airport', N'Cap Skiring', N'Senegal', N'CSK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9779, N'Clinton Sherman Airport', N'Clinton', N'United States', N'CSM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7933, N'Cochstedt Airport', N'Cochstedt', N'Germany', N'CSO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11827, N'Crossville Memorial Whitson Field', N'Crossville', N'United States', N'CSV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3371, N'Changsha Huanghua International Airport', N'Changcha', N'China', N'CSX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6162, N'Cheboksary Airport', N'Cheboksary', N'Russia', N'CSY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2502, N'Brigadier D.H.E. Ruiz Airport', N'Colonel Suarez', N'Argentina', N'CSZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1509, N'Catania-Fontanarossa Airport', N'Catania', N'Italy', N'CTA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3470, N'Cut Bank International Airport', N'Cutbank', N'United States', N'CTB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2455, N'Catamarca Airport', N'Catamarca', N'Argentina', N'CTC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5838, N'Alonso Valderrama Airport', N'Chitr+®', N'Panama', N'CTD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2714, N'Rafael Nu+¦ez International Airport', N'Cartagena', N'Colombia', N'CTG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8772, N'Chester County G O Carlson Airport', N'Coatesville', N'United States', N'CTH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3323, N'Charleville Airport', N'Charlieville', N'Australia', N'CTL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1793, N'Chetumal International Airport', N'Chetumal', N'Mexico', N'CTM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6257, N'Cooktown Airport', N'Cooktown', N'Australia', N'CTN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2287, N'New Chitose Airport', N'Sapporo', N'Japan', N'CTS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1357, N'Le Castellet Airport', N'Le Castellet', N'France', N'CTT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3395, N'Chengdu Shuangliu International Airport', N'Chengdu', N'China', N'CTU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8801, N'Cross City Airport', N'Cross City', N'United States', N'CTY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5835, N'Ciudad Constituci+¦n Airport', N'Ciudad Constituci+¦n', N'Mexico', N'CUA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10128, N'Jim Hamilton L.B. Owens Airport', N'Columbia', N'United States', N'CUB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2713, N'Camilo Daza International Airport', N'Cucuta', N'Colombia', N'CUC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13335, N'Caloundra Airport', N'Caloundra', N'Australia', N'CUD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2671, N'Mariscal Lamar Airport', N'Cuenca', N'Ecuador', N'CUE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1534, N'Cuneo International Airport', N'Cuneo', N'Italy', N'CUF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9778, N'Cushing Municipal Airport', N'Cushing', N'United States', N'CUH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1792, N'Bachigualato Federal International Airport', N'Culiacan', N'Mexico', N'CUL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2835, N'Cuman+í (Antonio Jos+® de Sucre) Airport', N'Cumana', N'Venezuela', N'CUM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1852, N'Canc+¦n International Airport', N'Cancun', N'Mexico', N'CUN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2832, N'General Francisco Berm+¦dez Airport', N'Carupano', N'Venezuela', N'CUP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6260, N'Coen Airport', N'Coen', N'Australia', N'CUQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2897, N'Hato International Airport', N'Willemstad', N'Netherlands Antilles', N'CUR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2516, N'Cutral-Co Airport', N'Cutralco', N'Argentina', N'CUT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1797, N'General Roberto Fierro Villalobos International Airport', N'Chihuahua', N'Mexico', N'CUU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2812, N'Alejandro Velasco Astete International Airport', N'Cuzco', N'Peru', N'CUZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12016, N'Cleve Airport', NULL, N'Australia', N'CVC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11939, N'Cove+¦as Airport', N'Cove+¦as', N'Colombia', N'CVE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6479, N'Courchevel Airport', N'Courcheval', N'France', N'CVF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3488, N'Cincinnati Northern Kentucky International Airport', N'Cincinnati', N'United States', N'CVG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1787, N'General Mariano Matamoros Airport', N'Cuernavaca', N'Mexico', N'CVJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1798, N'General Pedro Jose Mendez International Airport', N'Ciudad Victoria', N'Mexico', N'CVM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4223, N'Clovis Municipal Airport', N'Clovis', N'United States', N'CVN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9488, N'Corvallis Municipal Airport', N'Corvallis', N'United States', N'CVO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6251, N'Carnarvon Airport', N'Carnarvon', N'Australia', N'CVQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3834, N'Cannon Air Force Base', N'Clovis', N'United States', N'CVS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (470, N'Coventry Airport', N'Coventry', N'United Kingdom', N'CVT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5793, N'Corvo Airport', N'Corvo', N'Portugal', N'CVU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4045, N'Central Wisconsin Airport', N'Wassau', N'United States', N'CWA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2545, N'Afonso Pena Airport', N'Curitiba', N'Brazil', N'CWB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6107, N'Chernivtsi International Airport', N'Chernovtsk', N'Ukraine', N'CWC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1129, N'Cairo West Airport', N'Cairo', N'Egypt', N'CWE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8655, N'Clinton Municipal Airport', N'Clinton', N'United States', N'CWI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13488, N'Cangyuan Washan Airport', N'Cangyuan', N'China', N'CWJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (488, N'Cardiff International Airport', N'Cardiff', N'United Kingdom', N'CWL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9533, N'Cowra Airport', N'Chatsworth', N'Australia', N'CWT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12017, N'Corowa Airport', NULL, N'Australia', N'CWW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2827, N'Caicara del Orinoco Airport', N'Caicara De Orinoco', N'Venezuela', N'CXA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3068, N'Cox''s Bazar Airport', N'Cox''s Bazar', N'Bangladesh', N'CXB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5500, N'Vancouver Harbour Water Aerodrome', N'Vancouver', N'Canada', N'CXH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2252, N'Cassidy International Airport', N'Kiritimati', N'Kiribati', N'CXI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2547, N'Hugo Cantergiani Regional Airport', N'Caxias Do Sul', N'Brazil', N'CXJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3709, N'Calexico International Airport', N'Calexico', N'United States', N'CXL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3619, N'Conroe-North Houston Regional Airport', N'Conroe', N'United States', N'CXO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3899, N'Tunggul Wulung Airport', N'Cilacap', N'Indonesia', N'CXP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6189, N'Cam Ranh Airport', N'Nha Trang', N'Vietnam', N'CXR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1894, N'Les Cayes Airport', N'Cayes', N'Haiti', N'CYA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1925, N'Gerrard Smith International Airport', N'Cayman Brac', N'Cayman Islands', N'CYB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6960, N'Chefornak Airport', N'Chefornak', N'United States', N'CYF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12018, N'Corryong Airport', NULL, N'Australia', N'CYG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2265, N'Chiayi Airport', N'Chiayi', N'Taiwan', N'CYI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1903, N'Vilo Acu+¦a International Airport', N'Cayo Largo del Sur', N'Cuba', N'CYO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6023, N'Calbayog Airport', N'Calbayog City', N'Philippines', N'CYP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7123, N'Laguna de Los Patos International Airport', N'Colonia', N'Uruguay', N'CYR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3804, N'Cheyenne Regional Jerry Olson Field', N'Cheyenne', N'United States', N'CYS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7198, N'Yakataga Airport', N'Yakataga', N'United States', N'CYT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6010, N'Cuyo Airport', N'Cuyo', N'Philippines', N'CYU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5834, N'Captain Rogelio Castillo National Airport', N'Celaya', N'Mexico', N'CYW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6094, N'Cherskiy Airport', N'Cherskiy', N'Russia', N'CYX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6733, N'Cauayan Airport', N'Cauayan', N'Philippines', N'CYZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10114, N'Chichen Itza International Airport', N'Chichen Itza', N'Mexico', N'CZA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2833, N'Jos+® Leonardo Chirinos Airport', N'Coro', N'Venezuela', N'CZE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3424, N'Cape Romanzof LRRS Airport', N'Cape Romanzof', N'United States', N'CZF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (221, N'Mohamed Boudiaf International Airport', N'Constantine', N'Algeria', N'CZL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1800, N'Cozumel International Airport', N'Cozumel', N'Mexico', N'CZM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2549, N'Cruzeiro do Sul Airport', N'Cruzeiro do Sul', N'Brazil', N'CZS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2717, N'Las Brujas Airport', N'Corozal', N'Colombia', N'CZU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4109, N'Changzhou Benniu Airport', N'Changzhou', N'China', N'CZX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11828, N'Davison Army Air Field', N'Fort Belvoir', N'United States', N'DAA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3950, N'Daytona Beach International Airport', N'Daytona Beach', N'United States', N'DAB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3076, N'Hazrat Shahjalal International Airport', N'Dhaka', N'Bangladesh', N'DAC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3196, N'Da Nang International Airport', N'Danang', N'Vietnam', N'DAD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11829, N'Barstow Daggett Airport', N'Daggett', N'United States', N'DAG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3502, N'Dallas Love Field', N'Dallas', N'United States', N'DAL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2236, N'Damascus International Airport', N'Damascus', N'Syria', N'DAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9799, N'Danville Regional Airport', N'Danville', N'United States', N'DAN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1177, N'Julius Nyerere International Airport', N'Dar Es Salaam', N'Tanzania', N'DAR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6344, N'Datong Airport', N'Datong', N'China', N'DAT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5421, N'Daru Airport', N'Daru', N'Papua New Guinea', N'DAU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1867, N'Enrique Malek International Airport', N'David', N'Panama', N'DAV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6397, N'Dachuan Airport', N'Dazhou', N'China', N'DAX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3627, N'James M Cox Dayton International Airport', N'Dayton', N'United States', N'DAY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5941, N'Dalbandin Airport', N'Dalbandin', N'Pakistan', N'DBA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7856, N'El Alamein International Airport', N'Dabaa City', N'Egypt', N'DBB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13470, N'Baicheng Chang''an Airport', N'Baicheng', N'China', N'DBC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3045, N'Dhanbad Airport', N'Dhanbad', N'India', N'DBD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7419, N'Debra Marcos Airport', N'Debre Marqos', N'Ethiopia', N'DBM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9450, N'W H ''Bud'' Barron Airport', N'Dublin', N'United States', N'DBN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3358, N'Dubbo City Regional Airport', N'Dubbo', N'Australia', N'DBO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4388, N'Dubuque Regional Airport', N'Dubuque IA', N'United States', N'DBQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7420, N'Debre Tabor Airport', N'Debre Tabor', N'Ethiopia', N'DBT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1200, N'Dubrovnik Airport', N'Dubrovnik', N'Croatia', N'DBV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3520, N'Ronald Reagan Washington National Airport', N'Washington', N'United States', N'DCA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2876, N'Canefield Airport', N'Canefield', N'Dominica', N'DCF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1518, N'Decimomannu Air Base', N'Decimomannu', N'Italy', N'DCI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1285, N'Castres-Mazamet Airport', N'Castres', N'France', N'DCM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9905, N'RAAF Base Curtin', N'Derby', N'Australia', N'DCN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1954, N'Duncan Town Airport', N'Duncan Town', N'Bahamas', N'DCT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12675, N'Pryor Field Regional Airport', N'Decatur', N'United States', N'DCU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9310, N'Daocheng Yading Airport', N'Daocheng', N'China', N'DCY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5733, N'Dodge City Regional Airport', N'Dodge City', N'United States', N'DDC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6433, N'Dandong Airport', N'Dandong', N'China', N'DDG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5942, N'Dera Ghazi Khan Airport', N'Dera Ghazi Khan', N'Pakistan', N'DEA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1490, N'Debrecen International Airport', N'Debrecen', N'Hungary', N'DEB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4042, N'Decatur Airport', N'Decatur', N'United States', N'DEC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3092, N'Dehradun Airport', N'Dehra Dun', N'India', N'DED')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13429, N'Mendeleyevo Airport', N'Yuzhno-Kurilsk', N'Russia', N'DEE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2098, N'Dezful Airport', N'Dezful', N'Iran', N'DEF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3093, N'Indira Gandhi International Airport', N'Delhi', N'India', N'DEL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5679, N'Dembidollo Airport', N'Dembidollo', N'Ethiopia', N'DEM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3751, N'Denver International Airport', N'Denver', N'United States', N'DEN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (992, N'Desroches Airport', N'Desroches', N'Seychelles', N'DES')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3737, N'Coleman A. Young Municipal Airport', N'Detroit', N'United States', N'DET')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13622, N'Nop Goliat Airport', N'Dekai', N'Indonesia', N'DEX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2237, N'Deir ez-Zor Air Base', N'Deire Zor', N'Syria', N'DEZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3670, N'Dallas Fort Worth International Airport', N'Dallas-Fort Worth', N'United States', N'DFW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6808, N'Mudgee Airport', N'Mudgee', N'Australia', N'DGE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7588, N'Douglas Municipal Airport', N'Douglas', N'United States', N'DGL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1801, N'General Guadalupe Victoria International Airport', N'Durango', N'Mexico', N'DGO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11799, N'Daugavpils Intrenational Airport', N'Daugavpils', N'Latvia', N'DGP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2425, N'Sibulan Airport', N'Dumaguete', N'Philippines', N'DGT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2065, N'King Abdulaziz Air Base', N'Dhahran', N'Saudi Arabia', N'DHA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2184, N'Al Dhafra Air Base', N'Abu Dhabi', N'United Arab Emirates', N'DHF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4188, N'Dhangarhi Airport', N'Dhangarhi', N'Nepal', N'DHI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6760, N'Kangra Airport', N'Kangra', N'India', N'DHM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3739, N'Dothan Regional Airport', N'Dothan', N'United States', N'DHN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (588, N'De Kooy Airport', N'De Kooy', N'Netherlands', N'DHR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3482, N'Dalhart Municipal Airport', N'Dalhart', N'United States', N'DHT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2241, N'Doha International Airport', N'Doha', N'Qatar', N'DIA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3057, N'Dibrugarh Airport', N'Mohanbari', N'India', N'DIB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (923, N'Arrachart Airport', N'Antsiranana', N'Madagascar', N'DIE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6375, N'Diqing Airport', N'Shangri-La', N'China', N'DIG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1425, N'Dijon-Bourgogne Airport', N'Dijon', N'France', N'DIJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7064, N'Dickinson Theodore Roosevelt Regional Airport', N'Dickinson', N'United States', N'DIK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3310, N'Presidente Nicolau Lobato International Airport', N'Dili', N'East Timor', N'DIL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6192, N'Dien Bien Phu Airport', N'Dienbienphu', N'Vietnam', N'DIN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10155, N'Brigadeiro Cabral Airport', N'Divinopolis', N'Brazil', N'DIQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1112, N'Aba Tenna Dejazmach Yilma International Airport', N'Dire Dawa', N'Ethiopia', N'DIR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5611, N'Ngot Nzoungou Airport', N'Loubomo', N'Congo (Brazzaville)', N'DIS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5711, N'Diu Airport', N'Diu', N'India', N'DIU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1722, N'Diyarbakir Airport', N'Diyabakir', N'Turkey', N'DIY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3287, N'Sultan Thaha Airport', N'Jambi', N'Indonesia', N'DJB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (293, N'Djerba Zarzis International Airport', N'Djerba', N'Tunisia', N'DJE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (211, N'Djanet Inedbirene Airport', N'Djanet', N'Algeria', N'DJG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3244, N'Sentani International Airport', N'Jayapura', N'Indonesia', N'DJJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (255, N'Daloa Airport', N'Daloa', N'Cote d''Ivoire', N'DJO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7572, N'Dunk Island Airport', N'Dunk Island', N'Australia', N'DKI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8545, N'Chautauqua County-Dunkirk Airport', N'Dunkirk', N'United States', N'DKK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1084, N'L+®opold S+®dar Senghor International Airport', N'Dakar', N'Senegal', N'DKR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8695, N'Dikson Airport', N'Dikson', N'Russia', N'DKS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12844, N'Docker River Airport', N'Docker River', N'Australia', N'DKV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (897, N'Douala International Airport', N'Douala', N'Cameroon', N'DLA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3404, N'Zhoushuizi Airport', N'Dalian', N'China', N'DLC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (639, N'Geilo Airport Dagali', N'Geilo', N'Norway', N'DLD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1309, N'Dole-Tavaux Airport', N'Dole', N'France', N'DLE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3483, N'DLF Airport', N'Del Rio', N'United States', N'DLF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3460, N'Dillingham Airport', N'Dillingham', N'United States', N'DLG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3598, N'Duluth International Airport', N'Duluth', N'United States', N'DLH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4153, N'Lien Khuong Airport', N'Dalat', N'Vietnam', N'DLI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11658, N'Dulkaninna Airport', N'Dulkaninna', N'Australia', N'DLK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1715, N'Dalaman International Airport', N'Dalaman', N'Turkey', N'DLM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8142, N'Columbia Gorge Regional the Dalles Municipal Airport', N'The Dalles', N'United States', N'DLS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4054, N'Dali Airport', N'Dali', N'China', N'DLU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5916, N'Dillon''s Bay Airport', N'Dillon''s Bay', N'Vanuatu', N'DLY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6372, N'Dalanzadgad Airport', N'Dalanzadgad', N'Mongolia', N'DLZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3562, N'Davis Monthan Air Force Base', N'Tucson', N'United States', N'DMA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2911, N'Taraz Airport', N'Dzhambul', N'Kazakhstan', N'DMB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6262, N'Doomadgee Airport', N'Doomadgee', N'Australia', N'DMD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4029, N'Domodedovo International Airport', N'Moscow', N'Russia', N'DME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3157, N'Don Mueang International Airport', N'Bangkok', N'Thailand', N'DMK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2064, N'King Fahd International Airport', N'Dammam', N'Saudi Arabia', N'DMM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11830, N'Deming Municipal Airport', N'Deming', N'United States', N'DMN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7406, N'Diamantino Airport', N'Diamantino', N'Brazil', N'DMT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6174, N'Dimapur Airport', N'Dimapur', N'India', N'DMU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2386, N'Kadena Air Base', N'Kadena', N'Japan', N'DNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (540, N'Dundee Airport', N'Dundee', N'United Kingdom', N'DND')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4308, N'Dunhuang Airport', N'Dunhuang', N'China', N'DNH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2941, N'Dnipropetrovsk International Airport', N'Dnepropetrovsk', N'Ukraine', N'DNK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8318, N'Daniel Field', N'Augusta', N'United States', N'DNL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8299, N'Dalton Municipal Airport', N'Dalton', N'United States', N'DNN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4178, N'Tulsipur Airport', N'Dang', N'Nepal', N'DNP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12021, N'Deniliquin Airport', N'Deniliquin', N'Australia', N'DNQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1405, N'Dinard-Pleurtuit-Saint-Malo Airport', N'Dinard', N'France', N'DNR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9191, N'Vermilion Regional Airport', N'Danville', N'United States', N'DNV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1699, N'+çardak Airport', N'Denizli', N'Turkey', N'DNZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13540, N'Rar Gwamar Airport', N'Dobo', N'Indonesia', N'DOB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1178, N'Dodoma Airport', N'Dodoma', N'Tanzania', N'DOD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1167, N'Dongola Airport', N'Dongola', N'Sudan', N'DOG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11051, N'Hamad International Airport', N'Doha', N'Qatar', N'DOH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2940, N'Donetsk International Airport', N'Donetsk', N'Ukraine', N'DOK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1408, N'Deauville-Saint-Gatien Airport', N'Deauville', N'France', N'DOL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2877, N'Douglas-Charles Airport', N'Dominica', N'Dominica', N'DOM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4186, N'Dolpa Airport', N'Dolpa', N'Nepal', N'DOP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7380, N'Dourados Airport', N'Dourados', N'Brazil', N'DOU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3487, N'Dover Air Force Base', N'Dover', N'United States', N'DOV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4145, N'Dongying Shengli Airport', N'Dongying', N'China', N'DOY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3699, N'Dupage Airport', N'West Chicago', N'United States', N'DPA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4201, N'Dipolog Airport', N'Dipolog', N'Philippines', N'DPL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6264, N'Devonport Airport', N'Devonport', N'Australia', N'DPO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3940, N'Ngurah Rai (Bali) International Airport', N'Denpasar', N'Indonesia', N'DPS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9845, N'Saertu Airport', N'Daqing', N'China', N'DQA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13575, N'Duqm International Airport', N'Duqm', N'Oman', N'DQM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11831, N'Desert Rock Airport', N'Mercury', N'United States', N'DRA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7569, N'Derby Airport', N'Derby', N'Australia', N'DRB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8644, N'Drummond Island Airport', N'Drummond Island', N'United States', N'DRE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6755, N'Deering Airport', N'Deering', N'United States', N'DRG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3786, N'Beauregard Regional Airport', N'Deridder', N'United States', N'DRI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7330, N'Drietabbetje Airport', N'Drietabbetje', N'Suriname', N'DRJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6945, N'Drake Bay Airport', N'Puntarenas', N'Costa Rica', N'DRK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12020, N'Dirranbandi Airport', NULL, N'Australia', N'DRN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3713, N'Durango La Plata County Airport', N'Durango', N'United States', N'DRO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (338, N'Dresden Airport', N'Dresden', N'Germany', N'DRS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3792, N'Del Rio International Airport', N'Del Rio', N'United States', N'DRT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11257, N'Dharavandhoo Airport', N'DHARAVANDHOO', N'Maldives', N'DRV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3999, N'Darwin International Airport', N'Darwin', N'Australia', N'DRW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5562, N'Robin Hood Doncaster Sheffield Airport', N'Doncaster Sheffield', N'United Kingdom', N'DSA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6075, N'La D+®sirade Airport', N'Grande Anse', N'Guadeloupe', N'DSD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5678, N'Combolcha Airport', N'Dessie', N'Ethiopia', N'DSE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7514, N'Destin Executive Airport', N'Destin', N'United States', N'DSI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5943, N'Dera Ismael Khan Airport', N'Dera Ismael Khan', N'Pakistan', N'DSK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3729, N'Des Moines International Airport', N'Des Moines', N'United States', N'DSM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6434, N'Ordos Ejin Horo Airport', N'Dongsheng', N'China', N'DSN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8785, N'Sondok Airport', N'Hamhung', N'North Korea', N'DSO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13268, N'Blaise Diagne International Airport', N'Diass', N'Senegal', N'DSS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7581, N'Delta Municipal Airport', N'Delta', N'United States', N'DTA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9874, N'Silangit Airport', N'Siborong-Borong', N'Indonesia', N'DTB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6208, N'Datadawai Airport', N'Datadawai-Borneo Island', N'Indonesia', N'DTD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2406, N'Daet Airport', N'Daet', N'Philippines', N'DTE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8254, N'Diamantina Airport', N'Diamantina', N'Brazil', N'DTI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (373, N'Dortmund Airport', N'Dortmund', N'Germany', N'DTM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9782, N'Shreveport Downtown Airport', N'Shreveport', N'United States', N'DTN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13479, N'Wudalianchi Dedu Airport', N'Wudalianchi', N'China', N'DTU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3645, N'Detroit Metropolitan Wayne County Airport', N'Detroit', N'United States', N'DTW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10137, N'Dunnville Airport', N'Dunnville', N'Canada', N'DU9')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (599, N'Dublin Airport', N'Dublin', N'Ireland', N'DUB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7880, N'Halliburton Field', N'Duncan', N'United States', N'DUC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2011, N'Dunedin Airport', N'Dunedin', N'New Zealand', N'DUD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5631, N'Dundo Airport', N'Dundo', N'Angola', N'DUE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3474, N'Bisbee Douglas International Airport', N'Douglas', N'United States', N'DUG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5734, N'DuBois Regional Airport', N'Du Bois', N'United States', N'DUJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3274, N'Pinang Kampai Airport', N'Dumai', N'Indonesia', N'DUM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (799, N'King Shaka International Airport', N'Durban', N'South Africa', N'DUR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (345, N'D++sseldorf Airport', N'Duesseldorf', N'Germany', N'DUS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3860, N'Unalaska Airport', N'Unalaska', N'United States', N'DUT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7063, N'Devils Lake Regional Airport', N'Devils Lake', N'United States', N'DVL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4090, N'Francisco Bangoy International Airport', N'Davao', N'Philippines', N'DVO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8030, N'Phoenix Deer Valley Airport', N'Phoenix ', N'United States', N'DVT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13713, N'Dwangwa Airport', N'Dwangwa', N'Malawi', N'DWA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5625, N'Soalala Airport', N'Soalala', N'Madagascar', N'DWB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8076, N'Al Maktoum International Airport', N'Dubai', N'United Arab Emirates', N'DWC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11900, N'King Salman Abdulaziz Airport', NULL, N'Saudi Arabia', N'DWD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4065, N'David Wayne Hooks Memorial Airport', N'Houston', N'United States', N'DWH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2188, N'Dubai International Airport', N'Dubai', N'United Arab Emirates', N'DXB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8286, N'Danbury Municipal Airport', N'Danbury', N'United States', N'DXR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12022, N'Dysart Airport', NULL, N'Australia', N'DYA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6353, N'Dayong Airport', N'Dayong', N'China', N'DYG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9763, N'Doylestown Airport', N'Doylestown', N'United States', N'DYL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6098, N'Ugolny Airport', N'Anadyr', N'Russia', N'DYR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3695, N'Dyess Air Force Base', N'Abilene', N'United States', N'DYS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2979, N'Dushanbe Airport', N'Dushanbe', N'Tajikistan', N'DYU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (915, N'Dzaoudzi Pamandzi International Airport', N'Dzaoudzi', N'Mayotte', N'DZA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6085, N'Zhezkazgan Airport', N'Zhezkazgan', N'Kazakhstan', N'DZN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2814, N'Santa Bernardina International Airport', N'Durazno', N'Uruguay', N'DZO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7106, N'Eagle Airport', N'Eagle', N'United States', N'EAA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5896, N'Siwo Airport', N'Sangafa', N'Vanuatu', N'EAE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2075, N'Nejran Airport', N'Nejran', N'Saudi Arabia', N'EAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1242, N'San Sebastian Airport', N'San Sebastian', N'Spain', N'EAS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6916, N'Pangborn Memorial Airport', N'Wenatchee', N'United States', N'EAT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5735, N'Chippewa Valley Regional Airport', N'Eau Claire', N'United States', N'EAU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1558, N'Marina Di Campo Airport', N'Marina Di Campo', N'Italy', N'EBA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1187, N'Entebbe International Airport', N'Entebbe', N'Uganda', N'EBB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1172, N'El Obeid Airport', N'El Obeid', N'Sudan', N'EBD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7360, N'El Bagre Airport', N'El Bagre', N'Colombia', N'EBG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13448, N'El Bayadh Airport', N'El Bayadh', N'Algeria', N'EBH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (610, N'Esbjerg Airport', N'Esbjerg', N'Denmark', N'EBJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3989, N'Erbil International Airport', N'Erbil', N'Iraq', N'EBL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (294, N'El Borma Airport', N'El Borma', N'Tunisia', N'EBM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1350, N'Saint-+ëtienne-Bouth+®on Airport', N'St-Etienne', N'France', N'EBU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8833, N'Iosco County Airport', N'East Tawas', N'United States', N'ECA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3526, N'Elizabeth City Regional Airport & Coast Guard Air Station', N'Elizabeth City', N'United States', N'ECG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12023, N'Echuca Airport', NULL, N'Australia', N'ECH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13344, N'Costa Esmeralda Airport', N'Tola', N'Nicaragua', N'ECI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5780, N'Ercan International Airport', N'Nicosia', N'Cyprus', N'ECN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7669, N'Northwest Florida Beaches International Airport', N'Panama City', N'United States', N'ECP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11878, N'Cuatro Vientos Airport', N'Madrid', N'Spain', N'ECV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12979, N'Erldunda Airport', N'Erldunda', N'Australia', N'EDD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3692, N'Elmendorf Air Force Base', N'Anchorage', N'United States', N'EDF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (535, N'Edinburgh Airport', N'Edinburgh', N'United Kingdom', N'EDI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1138, N'Eldoret International Airport', N'Eldoret', N'Kenya', N'EDL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1410, N'La Roche-sur-Yon Airport', N'La Roche-sur-yon', N'France', N'EDM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5802, N'Bal-¦kesir K+Ârfez Airport', N'Balikesir Korfez', N'Turkey', N'EDO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6319, N'Pormpuraaw Airport', N'Pormpuraaw', N'Australia', N'EDR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3512, N'Edwards Air Force Base', N'Edwards Afb', N'United States', N'EDW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11832, N'Needles Airport', N'Needles', N'United States', N'EED')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7093, N'Eek Airport', N'Eek', N'United States', N'EEK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8888, N'Dillant Hopkins Airport', N'Keene', N'United States', N'EEN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3572, N'Ellington Airport', N'Houston', N'United States', N'EFD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11018, N'Efogi Airport', N'Efogi', N'Papua New Guinea', N'EFG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1455, N'Kefallinia Airport', N'Keffallinia', N'Greece', N'EFL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1265, N'Bergerac-Roumani+¿re Airport', N'Bergerac', N'France', N'EGC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4250, N'Eagle County Regional Airport', N'Vail', N'United States', N'EGE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1131, N'El Gora Airport', N'El Gorah', N'Egypt', N'EGH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11833, N'Duke Field', N'Crestview', N'United States', N'EGI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6758, N'Sege Airport', N'Sege', N'Solomon Islands', N'EGM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6768, N'Geneina Airport', N'Geneina', N'Sudan', N'EGN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6156, N'Belgorod International Airport', N'Belgorod', N'Russia', N'EGO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12, N'Egilssta+¦ir Airport', N'Egilsstadir', N'Iceland', N'EGS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7019, N'Eagle River Union Airport', N'Eagle River', N'United States', N'EGV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7154, N'Egegik Airport', N'Egegik', N'United States', N'EGX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2486, N'El Bolson Airport', N'El Bolson', N'Argentina', N'EHL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3427, N'Cape Newenham LRRS Airport', N'Cape Newenham', N'United States', N'EHM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (360, N'Eisenach-Kindel Airport', N'Eisenach', N'Germany', N'EIB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6117, N'Yeniseysk Airport', N'Yeniseysk', N'Russia', N'EIE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10156, N'Yeysk Airport', N'Eysk', N'Russia', N'EIK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3649, N'Eielson Air Force Base', N'Fairbanks', N'United States', N'EIL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (585, N'Eindhoven Airport', N'Eindhoven', N'Netherlands', N'EIN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2903, N'Terrance B. Lettsome International Airport', N'Tortola', N'British Virgin Islands', N'EIS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1595, N'Ein Yahav Airfield', N'Eyn-yahav', N'Israel', N'EIY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2718, N'Yarigu+¡es Airport', N'Barrancabermeja', N'Colombia', N'EJA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2095, N'Al Wajh Domestic Airport', N'Wejh', N'Saudi Arabia', N'EJH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13480, N'Ejin Banner-Taolai Airport', N'Ejin Banner', N'China', N'EJN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11834, N'Murray Field', N'Eureka', N'United States', N'EKA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9156, N'Ekibastuz Airport', N'Ekibastuz', N'Kazakhstan', N'EKB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10122, N'Elkhart Municipal Airport', N'Elkhart', N'United States', N'EKI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3779, N'Elkins-Randolph Co-Jennings Randolph Field', N'Elkins', N'United States', N'EKN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5736, N'Elko Regional Airport', N'Elko', N'United States', N'EKO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13431, N'Shakhtyorsk Airport', N'Shakhtyorsk', N'Russia', N'EKS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (745, N'Eskilstuna Airport', N'Eskilstuna', N'Sweden', N'EKT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2707, N'Las Flores Airport', N'El Banco', N'Colombia', N'ELB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6265, N'Elcho Island Airport', N'Elcho Island', N'Australia', N'ELC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3696, N'South Arkansas Regional At Goodwin Field', N'El Dorado', N'United States', N'ELD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1169, N'El Fasher Airport', N'El Fasher', N'Sudan', N'ELF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (236, N'El Golea Airport', N'El Golea', N'Algeria', N'ELG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1943, N'North Eleuthera Airport', N'North Eleuthera', N'Bahamas', N'ELH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7184, N'Elim Airport', N'Elim', N'United States', N'ELI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3946, N'Elmira Corning Regional Airport', N'Elmira', N'United States', N'ELM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2481, N'El Dorado Airport', N'El Dorado', N'Argentina', N'ELO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3559, N'El Paso International Airport', N'El Paso', N'United States', N'ELP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2067, N'Gassim Airport', N'Gassim', N'Saudi Arabia', N'ELQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (800, N'Ben Schoeman Airport', N'East London', N'South Africa', N'ELS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1137, N'El Tor Airport', N'El-tor', N'Egypt', N'ELT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5555, N'Guemar Airport', N'Guemar', N'Algeria', N'ELU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7136, N'Elfin Cove Seaplane Base', N'Elfin Cove', N'United States', N'ELV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7075, N'Ely Airport Yelland Field', N'Ely', N'United States', N'ELY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (523, N'East Midlands Airport', N'East Midlands', N'United Kingdom', N'EMA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3990, N'Emerald Airport', N'Emerald', N'Australia', N'EMD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (403, N'Emden Airport', N'Emden', N'Germany', N'EME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7087, N'Emmonak Airport', N'Emmonak', N'United States', N'EMK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1670, N'Emmen Air Base', N'Emmen', N'Switzerland', N'EML')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1092, N'N+®ma Airport', N'Nema', N'Mauritania', N'EMN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7792, N'Emporia Municipal Airport', N'Kempten', N'Germany', N'EMP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10017, N'San Gabriel Valley Airport', N'El Monte', N'United States', N'EMT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3628, N'Kenai Municipal Airport', N'Kenai', N'United States', N'ENA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1431, N'Nancy-Essey Airport', N'Nancy', N'France', N'ENC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3510, N'Vance Air Force Base', N'Enid', N'United States', N'END')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3914, N'Ende (H Hasan Aroeboesman) Airport', N'Ende', N'Indonesia', N'ENE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (417, N'Enontekio Airport', N'Enontekio', N'Finland', N'ENF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6358, N'Enshi Airport', N'Enshi', N'China', N'ENH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (466, N'St Angelo Airport', N'Enniskillen', N'United Kingdom', N'ENK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11918, N'Nenana Municipal Airport', N'Nenana', N'United States', N'ENN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13401, N'Encarnaci+¦n Airport', N'Encarnacion', N'Paraguay', N'ENO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (593, N'Twente Airport', N'Enschede', N'Netherlands', N'ENS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5990, N'Eniwetok Airport', N'Eniwetok Atoll', N'Marshall Islands', N'ENT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (264, N'Akanu Ibiam International Airport', N'Enugu', N'Nigeria', N'ENU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3451, N'Wendover Airport', N'Wendover', N'United States', N'ENV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6878, N'Kenosha Regional Airport', N'Kenosha', N'United States', N'ENW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6367, N'Yan''an Ershilipu Airport', N'Yan''an', N'China', N'ENY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2729, N'Enrique Olaya Herrera Airport', N'Medellin', N'Colombia', N'EOH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5564, N'Eday Airport', N'Eday', N'United Kingdom', N'EOI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8667, N'Keokuk Municipal Airport', N'Keokuk', N'United States', N'EOK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2837, N'El Dorado Airport', N'El Dorado', N'Venezuela', N'EOR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2838, N'Elorza Airport', N'Elorza', N'Venezuela', N'EOZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2449, N'El Palomar Airport', N'El Palomar', N'Argentina', N'EPA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1427, N'+ëpinal-Mirecourt Airport', N'Epinal', N'France', N'EPL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6266, N'Esperance Airport', N'Esperance', N'Australia', N'EPR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (414, N'P+ñrnu Airport', N'Parnu', N'Estonia', N'EPU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2488, N'Brigadier Antonio Parodi Airport', N'Esquel', N'Argentina', N'EQS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1723, N'Erzincan Airport', N'Erzincan', N'Turkey', N'ERC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10157, N'Berdyansk Airport', N'Berdyansk', N'Ukraine', N'ERD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (339, N'Erfurt Airport', N'Erfurt', N'Germany', N'ERF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9805, N'Yerbogachen Airport', N'Yerbogachen', N'Russia', N'ERG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1068, N'Moulay Ali Cherif Airport', N'Er-rachidia', N'Morocco', N'ERH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4276, N'Erie International Tom Ridge Field', N'Erie', N'United States', N'ERI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10160, N'Erenhot Saiwusu International Airport', N'Erenhot', N'China', N'ERL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6477, N'Erechim Airport', N'Erechim', N'Brazil', N'ERM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8247, N'Eirunep+® Airport', N'Eirunepe', N'Brazil', N'ERN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5645, N'Eros Airport', N'Windhoek', N'Namibia', N'ERS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7009, N'Kerrville Municipal Louis Schreiner Field', N'Kerrville', N'United States', N'ERV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1724, N'Erzurum International Airport', N'Erzurum', N'Turkey', N'ERZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1682, N'Esenbo-ƒa International Airport', N'Ankara', N'Turkey', N'ESB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6800, N'Delta County Airport', N'Escanaba', N'United States', N'ESC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7083, N'Orcas Island Airport', N'Eastsound', N'United States', N'ESD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1803, N'Ensenada International Airport', N'Ensenada', N'Mexico', N'ESE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3634, N'Esler Regional Airport', N'Alexandria', N'United States', N'ESF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2703, N'Dr. Luis Maria Arga+¦a International Airport', N'Mariscal Estigarribia', N'Paraguay', N'ESG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (500, N'Shoreham Airport', N'Shoreham By Sea', N'United Kingdom', N'ESH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1705, N'Eski+ƒehir Air Base', N'Eskisehir', N'Turkey', N'ESK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6125, N'Elista Airport', N'Elista', N'Russia', N'ESL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6047, N'General Rivadeneira Airport', N'Esmeraldas', N'Ecuador', N'ESM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7870, N'Easton Newnam Field', N'Easton', N'United States', N'ESN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6042, N'Ricardo Garc+¡a Posada Airport', N'El Salvador', N'Chile', N'ESR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (368, N'Essen Mulheim Airport', N'Essen', N'Germany', N'ESS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5671, N'Mogador Airport', N'Essadouira', N'Morocco', N'ESU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13074, N'West Bend Municipal Airport', N'WEST BEND', N'United States', N'ETB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1594, N'Eilat Airport', N'Elat', N'Israel', N'ETH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (14100, N'Ramon Airport', N'Eilat', N'Israel', N'ETM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2690, N'Santa Rosa International Airport', N'Santa Rosa', N'Ecuador', N'ETR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11012, N'Enterprise Municipal Airport', N'Enterprise', N'United States', N'ETS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1320, N'Metz-Nancy-Lorraine Airport', N'Metz', N'France', N'ETZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5879, N'Kaufana Airport', N'Eua Island', N'Tonga', N'EUA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9415, N'Weedon Field', N'Eufala', N'United States', N'EUF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4099, N'Mahlon Sweet Field', N'Eugene', N'United States', N'EUG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9232, N'Neum++nster Airport', N'Neumuenster', N'Germany', N'EUM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5672, N'Hassan I Airport', N'El Aai+¦n', N'Western Sahara', N'EUN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2435, N'Evelio Javier Airport', N'San Jose', N'Philippines', N'EUQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2898, N'F. D. Roosevelt Airport', N'Oranjestad', N'Netherlands Antilles', N'EUX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (641, N'Harstad/Narvik Airport', N'Evenes Harstad/Narvik', N'Norway', N'EVE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (714, N'Sveg Airport', N'Sveg', N'Sweden', N'EVG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3964, N'Zvartnots International Airport', N'Yerevan', N'Armenia', N'EVN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4018, N'Evansville Regional Airport', N'Evansville', N'United States', N'EVV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9411, N'Evanston-Uinta County Airport-Burns Field', N'Evanston', N'United States', N'EVW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1370, N'+ëvreux-Fauville (BA 105) Air Base', N'Evreux', N'France', N'EVX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5737, N'New Bedford Regional Airport', N'New Bedford', N'United States', N'EWB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9399, N'Newton City-County Airport', N'Newton', N'United States', N'EWK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3730, N'Coastal Carolina Regional Airport', N'New Bern', N'United States', N'EWN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3494, N'Newark Liberty International Airport', N'Newark', N'United States', N'EWR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (552, N'Exeter International Airport', N'Exeter', N'United Kingdom', N'EXT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8428, N'Beloyarskiy Airport', N'Beloyarsky', N'Russia', N'EYK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6055, N'El Yopal Airport', N'Yopal', N'Colombia', N'EYP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3875, N'Key West International Airport', N'Key West', N'United States', N'EYW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3988, N'Ministro Pistarini International Airport', N'Buenos Aires', N'Argentina', N'EZE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1721, N'Elaz-¦-ƒ Airport', N'Elazig', N'Turkey', N'EZS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6424, N'Berezovo Airport', N'Berezovo', N'Russia', N'EZV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1100, N'Faranah Airport', N'Faranah', N'Guinea', N'FAA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (504, N'Farnborough Airport', N'Farnborough', N'United Kingdom', N'FAB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13624, N'Faaite Airport', N'Faaite', N'French Polynesia', N'FAC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (625, N'Vagar Airport', N'Vagar', N'Faroe Islands', N'FAE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3518, N'Felker Army Air Field', N'Fort Eustis', N'United States', N'FAF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10057, N'Farah Airport', N'Farah', N'Afghanistan', N'FAH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3832, N'Fairbanks International Airport', N'Fairbanks', N'United States', N'FAI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2886, N'Diego Jimenez Torres Airport', N'Fajardo', N'Puerto Rico', N'FAJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (650, N'Lista Airport', N'Farsund', N'Norway', N'FAN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1626, N'Faro Airport', N'Faro', N'Portugal', N'FAO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4292, N'Hector International Airport', N'Fargo', N'United States', N'FAR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3687, N'Fresno Yosemite International Airport', N'Fresno', N'United States', N'FAT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1977, N'Fakarava Airport', N'Fakarava', N'French Polynesia', N'FAV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5738, N'Fayetteville Regional Grannis Field', N'Fayetteville', N'United States', N'FAY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2153, N'Fasa Airport', N'Fasa', N'Iran', N'FAZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8255, N'Fonte Boa Airport', N'Fonte Boa', N'Brazil', N'FBA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5922, N'Fayzabad Airport', N'Faizabad', N'Afghanistan', N'FBD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8249, N'Francisco Beltr+úo Airport', N'Francisco Beltrao', N'Brazil', N'FBE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8412, N'Simmons Army Air Field', N'Fredericksburg', N'United States', N'FBG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3882, N'Ladd AAF Airfield', N'Fort Wainwright', N'United States', N'FBK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1038, N'Lubumbashi International Airport', N'Lubumashi', N'Congo (Kinshasa)', N'FBM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9406, N'Fort Bridger Airport', N'Fort Bridger', N'United States', N'FBR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4127, N'Glacier Park International Airport', N'Kalispell', N'United States', N'FCA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (802, N'Ficksburg Sentraoes Airport', N'Ficksburg', N'South Africa', N'FCB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9226, N'Flying Cloud Airport', N'Eden Prairie', N'United States', N'FCM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (767, N'Nordholz Naval Airbase', N'Nordholz', N'Germany', N'FCN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1555, N'Leonardo da VinciÔÇôFiumicino Airport', N'Rome', N'Italy', N'FCO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3503, N'Butts AAF (Fort Carson) Air Field', N'Fort Carson', N'United States', N'FCS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2878, N'Martinique Aim+® C+®saire International Airport', N'Fort-de-france', N'Martinique', N'FDF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (382, N'Friedrichshafen Airport', N'Friedrichshafen', N'Germany', N'FDH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2445, N'San Fernando Airport', N'San Fernando', N'Argentina', N'FDO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1024, N'Bandundu Airport', N'Bandoundu', N'Congo (Kinshasa)', N'FDU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7778, N'Findlay Airport', N'Findley', N'United States', N'FDY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6149, N'Fergana International Airport', N'Fergana', N'Uzbekistan', N'FEG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (784, N'F++rstenfeldbruck Air Base', N'Fuerstenfeldbruck', N'Germany', N'FEL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2556, N'Fernando de Noronha Airport', N'Fernando Do Noronha', N'Brazil', N'FEN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11101, N'Fremont Municipal Airport', N'Fremont', N'United States', N'FET')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1066, N'Sa+»ss Airport', N'Fes', N'Morocco', N'FEZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7523, N'First Flight Airport', N'Kill Devil Hills', N'United States', N'FFA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (560, N'RAF Fairford', N'Fairford', N'United Kingdom', N'FFD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3763, N'Wright-Patterson Air Force Base', N'Dayton', N'United States', N'FFO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8631, N'Capital City Airport', N'Frankfort', N'United States', N'FFT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2653, N'Futaleuf+¦ Airport', N'Futaleufu', N'Chile', N'FFU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4290, N'Fagali''i Airport', N'Apia', N'Samoa', N'FGI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1974, N'Fangatau Airport', N'Fangatau', N'French Polynesia', N'FGU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3601, N'Sierra Vista Municipal Libby Army Air Field', N'Fort Huachuca', N'United States', N'FHU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5565, N'Fair Isle Airport', N'Fair Isle', N'United Kingdom', N'FIE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1099, N'Fria Airport', N'Fira', N'Guinea', N'FIG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1020, N'Ndjili International Airport', N'Kinshasa', N'Congo (Kinshasa)', N'FIH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12984, N'Finke Airport', N'Finke', N'Australia', N'FIK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7576, N'Fitzroy Crossing Airport', N'Fitzroy Crossing', N'Australia', N'FIZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2189, N'Fujairah International Airport', N'Fujeirah', N'United Arab Emirates', N'FJR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4166, N'Karlsruhe Baden-Baden Airport', N'Karlsruhe/Baden-Baden', N'Germany', N'FKB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1031, N'Bangoka International Airport', N'Kisangani', N'Congo (Kinshasa)', N'FKI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2319, N'Fukui Airport', N'Fukui', N'Japan', N'FKJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4058, N'Venango Regional Airport', N'Franklin', N'United States', N'FKL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3257, N'Fakfak Airport', N'Fak Fak', N'Indonesia', N'FKQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5999, N'Fukushima Airport', N'Fukushima', N'Japan', N'FKS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2719, N'Gustavo Artunduaga Paredes Airport', N'Florencia', N'Colombia', N'FLA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11211, N'Cangapara Airport', N'Floriano', N'Brazil', N'FLB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8742, N'Fond du Lac County Airport', N'Fond du Lac', N'United States', N'FLD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (408, N'Flensburg-Sch+ñferhaus Airport', N'Flensburg', N'Germany', N'FLF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4261, N'Flagstaff Pulliam Airport', N'Flagstaff', N'United States', N'FLG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3533, N'Fort Lauderdale Hollywood International Airport', N'Fort Lauderdale', N'United States', N'FLL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2555, N'Herc+¡lio Luz International Airport', N'Florianopolis', N'Brazil', N'FLN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3879, N'Florence Regional Airport', N'Florence', N'United States', N'FLO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13156, N'Marion County Regional Airport', N'Flippin', N'United States', N'FLP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1563, N'Peretola Airport', N'Florence', N'Italy', N'FLR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6267, N'Flinders Island Airport', N'Flinders Island', N'Australia', N'FLS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3800, N'Sherman Army Air Field', N'Fort Leavenworth', N'United States', N'FLV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1625, N'Flores Airport', N'Flores', N'Portugal', N'FLW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3280, N'Dr Ferdinand Lumban Tobing Airport', N'Sibolga', N'Indonesia', N'FLZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2470, N'Formosa Airport', N'Formosa', N'Argentina', N'FMA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3489, N'Tipton Airport', N'Fort Meade', N'United States', N'FME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3725, N'Cape Cod Coast Guard Air Station', N'Falmouth', N'United States', N'FMH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1040, N'Kalemie Airport', N'Kalemie', N'Congo (Kinshasa)', N'FMI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3986, N'Memmingen Allgau Airport', N'Memmingen', N'Germany', N'FMM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3743, N'Four Corners Regional Airport', N'Farmington', N'United States', N'FMN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (341, N'M++nster Osnabr++ck Airport', N'Munster', N'Germany', N'FMO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3549, N'Page Field', N'Fort Myers', N'United States', N'FMY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1059, N'Lungi International Airport', N'Freetown', N'Sierra Leone', N'FNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11785, N'Neubrandenburg Airport', N'Neubrandenburg', N'Germany', N'FNB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4091, N'Madeira Airport', N'Funchal', N'Portugal', N'FNC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1439, N'N+«mes-Arles-Camargue Airport', N'Nimes', N'France', N'FNI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3377, N'Pyongyang Sunan International Airport', N'Pyongyang', N'North Korea', N'FNJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4257, N'Northern Colorado Regional Airport', N'Fort Collins', N'United States', N'FNL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7140, N'Funter Bay Seaplane Base', N'Funter Bay', N'United States', N'FNR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4089, N'Bishop International Airport', N'Flint', N'United States', N'FNT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7772, N'Oristano-Fenosu Airport', N'Oristano', N'Italy', N'FNU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3385, N'Fuzhou Changle International Airport', N'Fuzhou', N'China', N'FOC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3841, N'Fort Dodge Regional Airport', N'Fort Dodge', N'United States', N'FOD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3843, N'Topeka Regional Airport - Forbes Field', N'Topeka', N'United States', N'FOE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1502, N'Foggia Gino Lisa Airport', N'Foggia', N'Italy', N'FOG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3590, N'Francis S Gabreski Airport', N'West Hampton Beach', N'United States', N'FOK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (899, N'Foumban Nkounja Airport', N'Foumban', N'Cameroon', N'FOM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6731, N'Arenal Airport', N'La Fortuna/San Carlos', N'Costa Rica', N'FON')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2559, N'Pinto Martins International Airport', N'Fortaleza', N'Brazil', N'FOR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8353, N'Forrest Airport', N'Forrest', N'Australia', N'FOS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1948, N'Grand Bahama International Airport', N'Freeport', N'Bahamas', N'FPO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8274, N'St Lucie County International Airport', N'Fort Pierce', N'United States', N'FPR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (340, N'Frankfurt am Main Airport', N'Frankfurt', N'Germany', N'FRA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12024, N'Forbes Airport', N'Forbes', N'Australia', N'FRB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7379, N'Tenente Lund Pressoto Airport', N'Franca', N'Brazil', N'FRC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7082, N'Friday Harbor Airport', N'Friday Harbor', N'United States', N'FRD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5407, N'Fera/Maringe Airport', N'Fera Island', N'Solomon Islands', N'FRE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8034, N'Republic Airport', N'Farmingdale', N'United States', N'FRG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3541, N'Marshall Army Air Field', N'Fort Riley', N'United States', N'FRI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7703, N'Fr+®jus Airport', N'Frejus', N'France', N'FRJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1541, N'Forl+¼ Airport', N'Forli', N'Italy', N'FRL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3422, N'Bryant Army Heliport', N'Fort Richardson', N'United States', N'FRN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (643, N'Flor+© Airport', N'Floro', N'Norway', N'FRO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4024, N'Mundo Maya International Airport', N'Flores', N'Guatemala', N'FRS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2912, N'Manas International Airport', N'Bishkek', N'Kyrgyzstan', N'FRU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (877, N'Francistown Airport', N'Francistown', N'Botswana', N'FRW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9186, N'Eastern Slopes Regional Airport', N'Fryeburg', N'United States', N'FRY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (757, N'Fritzlar Airport', N'Fritzlar', N'Germany', N'FRZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1323, N'Figari Sud-Corse Airport', N'Figari', N'France', N'FSC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4009, N'Joe Foss Field Airport', N'Sioux Falls', N'United States', N'FSD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3761, N'Henry Post Army Air Field (Fort Sill)', N'Fort Sill', N'United States', N'FSI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3437, N'Fort Smith Regional Airport', N'Fort Smith', N'United States', N'FSM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1441, N'St Pierre Airport', N'St.-pierre', N'Saint Pierre and Miquelon', N'FSP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11789, N'RAF Kinloss', N'Kinloss', N'United Kingdom', N'FSS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4224, N'Fort Stockton Pecos County Airport', N'Fort Stockton', N'United States', N'FST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5917, N'Futuna Airport', N'Futuna Island', N'Vanuatu', N'FTA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4061, N'El Calafate Airport', N'El Calafate', N'Argentina', N'FTE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7627, N'Fitiuta Airport', N'Fiti\''uta', N'American Samoa', N'FTI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3706, N'Godman Army Air Field', N'Fort Knox', N'United States', N'FTK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (937, N'T+¦lanaro Airport', N'Tolagnaro', N'Madagascar', N'FTU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3723, N'Fort Worth Meacham International Airport', N'Fort Worth', N'United States', N'FTW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (884, N'Owando Airport', N'Owando', N'Congo (Kinshasa)', N'FTX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7497, N'Fulton County Airport Brown Field', N'Atlanta', N'United States', N'FTY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1051, N'Fuerteventura Airport', N'Fuerteventura', N'Spain', N'FUE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7503, N'Fuyang Xiguan Airport', N'Fuyang', N'China', N'FUG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2304, N'Fukue Airport', N'Fukue', N'Japan', N'FUJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2305, N'Fukuoka Airport', N'Fukuoka', N'Japan', N'FUK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6481, N'Fullerton Municipal Airport', N'Fullerton', N'United States', N'FUL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4077, N'Funafuti International Airport', N'Funafuti', N'Tuvalu', N'FUN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7457, N'Foshan Shadi Airport', N'Foshan', N'China', N'FUO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5885, N'Pointe Vele Airport', N'Futuna Island', N'Wallis and Futuna', N'FUT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4041, N'Fort Wayne International Airport', N'Fort Wayne', N'United States', N'FWA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6948, N'NAS Fort Worth JRB/Carswell Field', N'Dallas', N'United States', N'FWH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3464, N'Fort Lauderdale Executive Airport', N'Fort Lauderdale', N'United States', N'FXE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8943, N'Cuamba Airport', N'Cuamba', N'Mozambique', N'FXO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10800, N'Dongji Aiport', N'Fuyuan', N'China', N'FYJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11499, N'Fuyun Koktokay Airport', N'Fuyun', N'China', N'FYN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1000, N'Faya Largeau Airport', N'Faya-largeau', N'Chad', N'FYT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3420, N'Fort Yukon Airport', N'Fort Yukon', N'United States', N'FYU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3760, N'Drake Field', N'Fayetteville', N'United States', N'FYV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (553, N'Bristol Filton Airport', N'Bristol', N'United Kingdom', N'FZO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8295, N'Northeast Alabama Regional Airport', N'Gadsden', N'United States', N'GAD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (291, N'Gab+¿s Matmata International Airport', N'Gabes', N'Tunisia', N'GAE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (290, N'Gafsa Ksar International Airport', N'Gafsa', N'Tunisia', N'GAF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8996, N'Gayndah Airport', N'Gayndah', N'Australia', N'GAH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8143, N'Montgomery County Airpark', N'Gaithersburg', N'United States', N'GAI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2341, N'Yamagata Airport', N'Yamagata', N'Japan', N'GAJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3764, N'Edward G. Pitka Sr Airport', N'Galena', N'United States', N'GAL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6715, N'Gambell Airport', N'Gambell', N'United States', N'GAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6183, N'Gan International Airport', N'Gan Island', N'Maldives', N'GAN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1908, N'Mariana Grajales Airport', N'Guantanamo', N'Cuba', N'GAO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1045, N'Gao Airport', N'Gao', N'Mali', N'GAQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8712, N'Garissa Airport', N'Garissa', N'Kenya', N'GAS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6173, N'Lokpriya Gopinath Bordoloi International Airport', N'Guwahati', N'India', N'GAU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3048, N'Gaya Airport', N'Gaya', N'India', N'GAY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (475, N'Cotswold Airport', N'Pailton', N'United Kingdom', N'GBA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8775, N'Gabala International Airport', N'Qabala', N'Azerbaijan', N'GBB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7013, N'Great Bend Municipal Airport', N'Great Bend', N'United States', N'GBD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (881, N'Sir Seretse Khama International Airport', N'Gaberone', N'Botswana', N'GBE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11082, N'Galesburg Municipal Airport', N'Galesburg', N'United States', N'GBG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6078, N'Les Bases Airport', N'Grand Bourg', N'Guadeloupe', N'GBJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8337, N'Gbangbatok Airport', N'Gbangbatok', N'Sierra Leone', N'GBK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6747, N'Gorgan Airport', N'Gorgan', N'Iran', N'GBT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6834, N'Great Barrier Aerodrome', N'Claris', N'New Zealand', N'GBZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4296, N'Gillette Campbell County Airport', N'Gillette', N'United States', N'GCC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2100, N'Gachsaran Airport', N'Gachsaran', N'Iran', N'GCH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (498, N'Guernsey Airport', N'Guernsey', N'Guernsey', N'GCI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (803, N'Grand Central Airport', N'Johannesburg', N'South Africa', N'GCJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3497, N'Garden City Regional Airport', N'Garden City', N'United States', N'GCK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1926, N'Owen Roberts International Airport', N'Georgetown', N'Cayman Islands', N'GCM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4219, N'Grand Canyon National Park Airport', N'Grand Canyon', N'United States', N'GCN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10131, N'Donaldson Field Airport', N'Greenville', N'United States', N'GDC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5680, N'Gode Airport', N'Gode', N'Ethiopia', N'GDE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1804, N'Don Miguel Hidalgo Y Costilla International Airport', N'Guadalajara', N'Mexico', N'GDL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (668, N'Gda+äsk Lech Wa+é-Ösa Airport', N'Gdansk', N'Poland', N'GDN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2839, N'Guasdalito Airport', N'Guasdualito', N'Venezuela', N'GDO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1114, N'Gonder Airport', N'Gondar', N'Ethiopia', N'GDQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5807, N'JAGS McCartney International Airport', N'Cockburn Town', N'Turks and Caicos Islands', N'GDT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7070, N'Dawson Community Airport', N'Glendive', N'United States', N'GDV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8646, N'Gladwin Zettel Memorial Airport', N'Gladwin', N'United States', N'GDW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2930, N'Sokol Airport', N'Magadan', N'Russia', N'GDX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6933, N'Gelendzhik Airport', N'Gelendzhik', N'Russia', N'GDZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2001, N'Noum+®a Magenta Airport', N'Noumea', N'New Caledonia', N'GEA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (14093, N'Lefkoniko Airport', N'Ge+ºitkale', N'Cyprus', N'GEC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7011, N'Sussex County Airport', N'Georgetown', N'United States', N'GED')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3467, N'Spokane International Airport', N'Spokane', N'United States', N'GEG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2596, N'Santo +éngelo Airport', N'Santo Angelo', N'Brazil', N'GEL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4304, N'Cheddi Jagan International Airport', N'Georgetown', N'Guyana', N'GEO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1914, N'Rafael Cabrera Airport', N'Nueva Gerona', N'Cuba', N'GER')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2402, N'General Santos International Airport', N'Romblon', N'Philippines', N'GES')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6268, N'Geraldton Airport', N'Geraldton', N'Australia', N'GET')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (715, N'G+ñllivare Airport', N'Gallivare', N'Sweden', N'GEV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7704, N'Geelong Airport', N'Geelong', N'Australia', N'GEX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6271, N'Griffith Airport', N'Griffith', N'Australia', N'GFF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3442, N'Grand Forks International Airport', N'Grand Forks', N'United States', N'GFK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9178, N'Floyd Bennett Memorial Airport', N'Queensbury', N'United States', N'GFL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6792, N'Grafton Airport', N'Grafton', N'Australia', N'GFN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9761, N'Bartica A Airport', N'Bartica', N'Guyana', N'GFO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1407, N'Granville Airport', N'Granville', N'France', N'GFR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7633, N'Grootfontein Airport', N'Grootfontein', N'Namibia', N'GFY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8792, N'Georgetown County Airport', N'Georgetown', N'United States', N'GGE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3465, N'East Texas Regional Airport', N'Longview', N'United States', N'GGG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1139, N'Kakamega Airport', N'Kakamega', N'Kenya', N'GGM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6031, N'Gobernador Gregores Airport', N'Gobernador Gregores', N'Argentina', N'GGS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1941, N'Exuma International Airport', N'Great Exuma', N'Bahamas', N'GGT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5739, N'Wokal Field Glasgow International Airport', N'Glasgow', N'United States', N'GGW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (237, N'Noum+®rat - Moufdi Zakaria Airport', N'Ghardaia', N'Algeria', N'GHA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1944, N'Governor''s Harbour Airport', N'Governor''s Harbor', N'Bahamas', N'GHB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1936, N'Great Harbour Cay Airport', N'Bullocks Harbour', N'Bahamas', N'GHC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (753, N'[Duplicate] Giebelstadt Army Air Field', N'Giebelstadt', N'Germany', N'GHF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1152, N'Ghat Airport', N'Ghat', N'Libya', N'GHT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2437, N'Gualeguaychu Airport', N'Gualeguaychu', N'Argentina', N'GHU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1738, N'Gibraltar Airport', N'Gibraltar', N'Gibraltar', N'GIB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6246, N'Boigu Airport', N'Boigu', N'Australia', N'GIC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13821, N'Gitega Airport', N'Gitega', N'Burundi', N'GID')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8508, N'Winter Haven Regional Airport - Gilbert Field', N'Winter Haven', N'United States', N'GIF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2560, N'Rio Gale+úo ÔÇô Tom Jobim International Airport', N'Rio De Janeiro', N'Brazil', N'GIG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13214, N'Siguiri Airport', N'Siguiri', N'Guinea', N'GII')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2204, N'Gilgit Airport', N'Gilgit', N'Pakistan', N'GIL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2720, N'Santiago Vila Airport', N'Girardot', N'Colombia', N'GIR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2012, N'Gisborne Airport', N'Gisborne', N'New Zealand', N'GIS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13808, N'Mchauru Airport', N'Geita', N'Tanzania', N'GIT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9229, N'Sigiriya Air Force Base', N'Sigiriya', N'Sri Lanka', N'GIU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2066, N'Jizan Regional Airport', N'Gizan', N'Saudi Arabia', N'GIZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1773, N'La Laguna Airport', N'Guanaja', N'Honduras', N'GJA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (217, N'Jijel Ferhat Abbas Airport', N'Jijel', N'Algeria', N'GJL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2561, N'Guajar+í-Mirim Airport', N'Guajara-mirim', N'Brazil', N'GJM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7465, N'Gj+Âgur Airport', N'Gjogur', N'Iceland', N'GJR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4063, N'Grand Junction Regional Airport', N'Grand Junction', N'United States', N'GJT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1, N'Goroka Airport', N'Goroka', N'Papua New Guinea', N'GKA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (769, N'Geilenkirchen Air Base', N'Geilenkirchen', N'Germany', N'GKE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8892, N'Kooddoo Airport', N'Kooddoo', N'Maldives', N'GKK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8820, N'Great Keppel Is Airport', N'Great Keppel Island', N'Australia', N'GKL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3837, N'Gulkana Airport', N'Gulkana', N'United States', N'GKN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (534, N'Glasgow International Airport', N'Glasgow', N'United Kingdom', N'GLA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4343, N'Renner Field-Goodland Municipal Airport', N'Goodland', N'United States', N'GLD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1879, N'Golfito Airport', N'Golfito', N'Costa Rica', N'GLF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6130, N'Mid Delta Regional Airport', N'Greenville', N'United States', N'GLH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9096, N'Glen Innes Airport', N'Glen Innes', N'Australia', N'GLI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5688, N'Galcaio Airport', N'Galcaio', N'Somalia', N'GLK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (472, N'Gloucestershire Airport', N'Golouchestershire', N'United Kingdom', N'GLO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13075, N'Gaylord Regional Airport', N'GAYLORD', N'United States', N'GLR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3581, N'Scholes International At Galveston Airport', N'Galveston', N'United States', N'GLS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6269, N'Gladstone Airport', N'Gladstone', N'Australia', N'GLT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11644, N'Gelephu Airport', N'Gelephu', N'Bhutan', N'GLU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7185, N'Golovin Airport', N'Golovin', N'United States', N'GLV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12676, N'Glasgow Municipal Airport', N'Glasgow', N'United States', N'GLW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (587, N'Gilze Rijen Air Base', N'Gilze-rijen', N'Netherlands', N'GLZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1028, N'Gemena Airport', N'Gemena', N'Congo (Kinshasa)', N'GMA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1113, N'Gambella Airport', N'Gambella', N'Ethiopia', N'GMB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1071, N'Ben Slimane Airport', N'Ben Slimane', N'Morocco', N'GMD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2950, N'Gomel Airport', N'Gomel', N'Belarus', N'GME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8000, N'Gostomel Airport', N'Kiev', N'Ukraine', N'GML')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13456, N'Gombe Lawanti International Airport', N'Gombe', N'Nigeria', N'GMO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2378, N'Gimpo International Airport', N'Seoul', N'South Korea', N'GMP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13483, N'Golog Maqin Airport', N'Golog', N'China', N'GMQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1979, N'Totegegie Airport', N'Totegegie', N'French Polynesia', N'GMR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11005, N'Greenville Downtown Airport', N'Greenville', N'United States', N'GMU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7727, N'Monument Valley Airport', N'Monument Valley', N'United States', N'GMV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5659, N'La Gomera Airport', N'La Gomera', N'Spain', N'GMZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6115, N'Hrodna Airport', N'Hrodna', N'Belarus', N'GNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1340, N'Grenoble-Is+¿re Airport', N'Grenoble', N'France', N'GNB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2882, N'Point Salines International Airport', N'Point Salines', N'Grenada', N'GND')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2263, N'Lyudao Airport', N'Green Island', N'Taiwan', N'GNI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7407, N'Guanambi Airport', N'Guanambi', N'Brazil', N'GNM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2451, N'Dr. Arturo H. Illia Airport', N'Fuerte Gral Roca', N'Argentina', N'GNR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3276, N'Binaka Airport', N'Gunung Sitoli', N'Indonesia', N'GNS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3439, N'Grants-Milan Municipal Airport', N'Grants', N'United States', N'GNT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3472, N'Gainesville Regional Airport', N'Gainesville', N'United States', N'GNV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9044, N'+×anl-¦urfa GAP Airport', N'Sanliurfa', N'Turkey', N'GNY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5607, N'Ghanzi Airport', N'Ghanzi', N'Botswana', N'GNZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1528, N'Genoa Cristoforo Colombo Airport', N'Genoa', N'Italy', N'GOA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7422, N'Robe Airport', N'Goba', N'Ethiopia', N'GOB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8, N'Godthaab / Nuuk Airport', N'Godthaab', N'Greenland', N'GOH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3007, N'Dabolim Airport', N'Goa', N'India', N'GOI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4274, N'Nizhny Novgorod Strigino International Airport', N'Nizhniy Novgorod', N'Russia', N'GOJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1036, N'Goma International Airport', N'Goma', N'Congo (Kinshasa)', N'GOM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4270, N'Groton New London Airport', N'Groton CT', N'United States', N'GON')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12618, N'Goondiwindi Airport', N'Goondiwindi', N'Australia', N'GOO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6741, N'Gorakhpur Airport', N'Gorakhpur', N'India', N'GOP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6363, N'Golmud Airport', N'Golmud', N'China', N'GOQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5681, N'Gore Airport', N'Gore', N'Ethiopia', N'GOR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (687, N'Gothenburg-Landvetter Airport', N'Gothenborg', N'Sweden', N'GOT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (901, N'Garoua International Airport', N'Garoua', N'Cameroon', N'GOU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6316, N'Gove Airport', N'Gove', N'Australia', N'GOV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1192, N'Gorna Oryahovitsa Airport', N'Gorna Orechovica', N'Bulgaria', N'GOZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1473, N'Araxos Airport', N'Patras', N'Greece', N'GPA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7383, N'Tancredo Thomas de Faria Airport', N'Guarapuava', N'Brazil', N'GPB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2722, N'Juan Casiano Airport', N'Guapi', N'Colombia', N'GPI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1880, N'Guapiles Airport', N'Guapiles', N'Costa Rica', N'GPL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11031, N'Garden Point Airport', N'Pirlangimpi', N'Australia', N'GPN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2504, N'General Pico Airport', N'General Pico', N'Argentina', N'GPO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2672, N'Seymour Airport', N'Galapagos', N'Ecuador', N'GPS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4038, N'Gulfport Biloxi International Airport', N'Gulfport', N'United States', N'GPT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7017, N'Grand Rapids Itasca Co-Gordon Newstrom field', N'Grand Rapids MN', N'United States', N'GPZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8759, N'Galion Municipal Airport', N'Galion', N'United States', N'GQQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3653, N'Austin Straubel International Airport', N'Green Bay', N'United States', N'GRB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3530, N'Gray Army Air Field', N'Fort Lewis', N'United States', N'GRF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5740, N'Central Nebraska Regional Airport', N'Grand Island', N'United States', N'GRI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (804, N'George Airport', N'George', N'South Africa', N'GRJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3775, N'Robert Gray  Army Air Field Airport', N'Killeen', N'United States', N'GRK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6849, N'Grand Marais Cook County Airport', N'Grand Marais', N'United States', N'GRM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1222, N'Girona Airport', N'Gerona', N'Spain', N'GRO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7368, N'Gurupi Airport', N'Gurupi', N'Brazil', N'GRP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (586, N'Eelde Airport', N'Groningen', N'Netherlands', N'GRQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3685, N'Gerald R. Ford International Airport', N'Grand Rapids', N'United States', N'GRR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1564, N'Grosseto Air Base', N'Grosseto', N'Italy', N'GRS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2564, N'Guarulhos - Governador Andr+® Franco Montoro International Airport', N'Sao Paulo', N'Brazil', N'GRU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1627, N'Graciosa Airport', N'Graciosa Island', N'Portugal', N'GRW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1223, N'Federico Garcia Lorca Airport', N'Granada', N'Spain', N'GRX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5450, N'Gr+¡msey Airport', N'Gr+¡msey', N'Iceland', N'GRY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1609, N'Graz Airport', N'Graz', N'Austria', N'GRZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3640, N'Seymour Johnson Air Force Base', N'Goldsboro', N'United States', N'GSB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (691, N'Gothenburg City Airport', N'Gothenborg', N'Sweden', N'GSE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8228, N'Grand-Santi Airport', N'Grand-Santi', N'French Guiana', N'GSI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1770, N'San Jos+® Airport', N'San Jose', N'Guatemala', N'GSJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4008, N'Piedmont Triad International Airport', N'Greensboro', N'United States', N'GSO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4034, N'Greenville Spartanburg International Airport', N'Greenville', N'United States', N'GSP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7414, N'Shark El Oweinat International Airport', N'Sharq Al-Owainat', N'Egypt', N'GSQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5960, N'Gustavus Airport', N'Gustavus', N'United States', N'GST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6270, N'Groote Eylandt Airport', N'Groote Eylandt', N'Australia', N'GTE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3880, N'Great Falls International Airport', N'Great Falls', N'United States', N'GTF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6423, N'R++gen Airport', N'Ruegen', N'Germany', N'GTI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2013, N'Glentanner Airport', N'Glentanner', N'New Zealand', N'GTN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3247, N'Jalaluddin Airport', N'Gorontalo', N'Indonesia', N'GTO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4273, N'Golden Triangle Regional Airport', N'Columbus Mississippi', N'United States', N'GTR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1767, N'La Aurora Airport', N'Guatemala City', N'Guatemala', N'GUA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5836, N'Guerrero Negro Airport', N'Guerrero Negro', N'Mexico', N'GUB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7051, N'Gunnison Crested Butte Regional Airport', N'Gunnison', N'United States', N'GUC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8460, N'Jack Edwards Airport', N'Gulf Shores', N'United States', N'GUF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12025, N'Gunnedah Airport', NULL, N'Australia', N'GUH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2840, N'Guiria Airport', N'Guiria', N'Venezuela', N'GUI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2565, N'Guaratinguet+í Airport', N'Guaratingueta', N'Brazil', N'GUJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6805, N'Goulburn Airport', N'Goulburn', N'Australia', N'GUL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2246, N'Antonio B. Won Pat International Airport', N'Agana', N'Guam', N'GUM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4340, N'Gallup Municipal Airport', N'Gallup', N'United States', N'GUP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2841, N'Guanare Airport', N'Guanare', N'Venezuela', N'GUQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5422, N'Gurney Airport', N'Gurney', N'Papua New Guinea', N'GUR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3871, N'Grissom Air Reserve Base', N'Peru', N'United States', N'GUS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (789, N'G++tersloh Air Base', N'Guetersloh', N'Germany', N'GUT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13079, N'Grundarfj+Âr+¦ur Airport', N'Grundarfjordur', N'Iceland', N'GUU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4357, N'Atyrau Airport', N'Atyrau', N'Kazakhstan', N'GUW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3006, N'Guna Airport', N'Guna', N'India', N'GUX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11084, N'Guymon Municipal Airport', N'Guymon', N'United States', N'GUY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10544, N'Guarapari Airport', N'Guarapari', N'Brazil', N'GUZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1665, N'Geneva Cointrin International Airport', N'Geneva', N'Switzerland', N'GVA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8308, N'Lee Gilmer Memorial Airport', N'Gainesville', N'United States', N'GVL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11957, N'Maygatka Airport.', N'Sovetskaya Gavan', N'Russia', N'GVN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6735, N'Coronel Altino Machado de Oliveira Airport', N'Governador Valadares', N'Brazil', N'GVR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3735, N'Majors Airport', N'Greenvile', N'United States', N'GVT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (741, N'G+ñvle Sandviken Airport', N'Gavle', N'Sweden', N'GVX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2203, N'Gwadar International Airport', N'Gwadar', N'Pakistan', N'GWD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1011, N'Thornhill Air Base', N'Gwert', N'Zimbabwe', N'GWE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3094, N'Gwalior Airport', N'Gwalior', N'India', N'GWL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3588, N'GreenwoodÔÇôLeflore Airport', N'Greenwood', N'United States', N'GWO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (410, N'Westerland Sylt Airport', N'Westerland', N'Germany', N'GWT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (597, N'Galway Airport', N'Galway', N'Ireland', N'GWY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5954, N'Sayun International Airport', N'Sayun Intl', N'Yemen', N'GXF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (955, N'Negage Airport', N'Negage', N'Angola', N'GXG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9311, N'Gannan Xiahe Airport', N'Xiahe city', N'China', N'GXH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2648, N'Teniente Vidal Airport', N'Coyhaique', N'Chile', N'GXQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11098, N'GreeleyÔÇôWeld County Airport', N'Greeley', N'United States', N'GXY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6056, N'Capit+ín de Av. Emilio Beltr+ín Airport', N'Guayaramer+¡n', N'Bolivia', N'GYA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2922, N'Heydar Aliyev International Airport', N'Baku', N'Azerbaijan', N'GYD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2673, N'Jos+® Joaqu+¡n de Olmedo International Airport', N'Guayaquil', N'Ecuador', N'GYE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8780, N'Magan Airport', N'Yakutsk', N'Russia', N'GYG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1164, N'Gisenyi Airport', N'Gisenyi', N'Rwanda', N'GYI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6236, N'Argyle Airport', N'Argyle', N'Australia', N'GYL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1805, N'General Jos+® Mar+¡a Y+í+¦ez International Airport', N'Guaymas', N'Mexico', N'GYM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2562, N'Santa Genoveva Airport', N'Goiania', N'Brazil', N'GYN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7126, N'Phoenix Goodyear Airport', N'Goodyear', N'United States', N'GYR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6398, N'Guangyuan Airport', N'Guangyuan', N'China', N'GYS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8971, N'Guyuan Liupanshan Airport', N'Guyuan', N'China', N'GYU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6956, N'Gary Chicago International Airport', N'Gary', N'United States', N'GYY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3969, N'Yasser Arafat International Airport', N'Gaza', N'Palestine', N'GZA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13469, N'Ghazni Airport', N'Ghazni', N'Afghanistan', N'GZI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4005, N'Xewkija Heliport', N'Gozo', N'Malta', N'GZM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5412, N'Nusatupe Airport', N'Gizo', N'Solomon Islands', N'GZO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8266, N'Gazipa+ƒa Airport', N'Alanya', N'Turkey', N'GZP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1689, N'Gaziantep International Airport', N'Gaziantep', N'Turkey', N'GZT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2132, N'Qazvin Airport', N'Ghazvin', N'Iran', N'GZW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (646, N'Hasvik Airport', N'Hasvik', N'Norway', N'HAA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2352, N'Hachijojima Airport', N'Hachijojima', N'Japan', N'HAC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (709, N'Halmstad Airport', N'Halmstad', N'Sweden', N'HAD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10360, N'Half Moon Bay Airport', N'Half Moon Bay', N'United States', N'HAF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (912, N'Prince Said Ibrahim International Airport', N'Moroni', N'Comoros', N'HAH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (352, N'Hannover Airport', N'Hannover', N'Germany', N'HAJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4120, N'Haikou Meilan International Airport', N'Haikou', N'China', N'HAK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (342, N'Hamburg Airport', N'Hamburg', N'Germany', N'HAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3199, N'Noi Bai International Airport', N'Hanoi', N'Vietnam', N'HAN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8706, N'Butler Co Regional Airport - Hogan Field', N'Hamilton', N'United States', N'HAO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6184, N'Hanimaadhoo Airport', N'Haa Dhaalu Atoll', N'Maldives', N'HAQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8284, N'Capital City Airport', N'Harrisburg', N'United States', N'HAR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2069, N'Ha''il Airport', N'Hail', N'Saudi Arabia', N'HAS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (645, N'Haugesund Airport', N'Haugesund', N'Norway', N'HAU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1909, N'Jos+® Mart+¡ International Airport', N'Havana', N'Cuba', N'HAV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (487, N'Haverfordwest Airport', N'Haverfordwest', N'United Kingdom', N'HAW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3336, N'Hobart International Airport', N'Hobart', N'Australia', N'HBA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3410, N'Borg El Arab International Airport', N'Alexandria', N'Egypt', N'HBE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8951, N'Hattiesburg Bobby L Chain Municipal Airport', N'Hattiesburg', N'United States', N'HBG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3850, N'Hobart Regional Airport', N'Hobart', N'United States', N'HBR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6168, N'Hubli Airport', N'Hubli', N'India', N'HBX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10363, N'Hechi Jinchengjiang Airport', N'Hechi', N'China', N'HCJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5992, N'Hengchun Airport', N'Hengchun', N'Taiwan', N'HCN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7575, N'Halls Creek Airport', N'Halls Creek', N'Australia', N'HCQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5962, N'Holy Cross Airport', N'Holy Cross', N'United States', N'HCR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9806, N'Cheraw Municipal Airport/Lynch Bellinger Field', N'Cheraw', N'United States', N'HCW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5945, N'Hyderabad Airport', N'Hyderabad', N'Pakistan', N'HDD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11070, N'Brewster Field', N'Holdredge', N'United States', N'HDE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5557, N'Heringsdorf Airport', N'Heringsdorf', N'Germany', N'HDF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8407, N'Handan Airport', N'Handan', N'China', N'HDG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3583, N'Dillingham Airfield', N'Dillingham', N'United States', N'HDH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8793, N'Hardwick Field', N'Cleveland', N'United States', N'HDI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6790, N'Hamadan Airport', N'Hamadan', N'Iran', N'HDM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4339, N'Yampa Valley Airport', N'Hayden', N'United States', N'HDN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2138, N'Havadarya Airport', N'Bandar Abbas', N'Iran', N'HDR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (811, N'Hoedspruit Air Force Base Airport', N'Hoedspruit', N'South Africa', N'HDS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3181, N'Hat Yai International Airport', N'Hat Yai', N'Thailand', N'HDY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2048, N'Herat Airport', N'Herat', N'Afghanistan', N'HEA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3213, N'Heho Airport', N'Heho', N'Burma', N'HEH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5558, N'Heide-B++sum Airport', N'B++sum', N'Germany', N'HEI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6410, N'Heihe Airport', N'Heihe', N'China', N'HEK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (421, N'Helsinki Vantaa Airport', N'Helsinki', N'Finland', N'HEL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (420, N'Helsinki Malmi Airport', N'Helsinki', N'Finland', N'HEM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1452, N'Heraklion International Nikos Kazantzakis Airport', N'Heraklion', N'Greece', N'HER')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6345, N'Baita International Airport', N'Hohhot', N'China', N'HET')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3991, N'Athen Helenikon Airport', N'Athens', N'Greece', N'HEW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7911, N'Herrera Airport', N'Santo Domingo', N'Dominican Republic', N'HEX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1596, N'Haifa International Airport', N'Haifa', N'Israel', N'HFA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3780, N'Hartford Brainard Airport', N'Hartford', N'United States', N'HFD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3389, N'Hefei Luogang International Airport', N'Hefei', N'China', N'HFE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13, N'Hornafj+Âr+¦ur Airport', N'Hofn', N'Iceland', N'HFN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5594, N'Hagfors Airport', N'Hagfors', N'Sweden', N'HFS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4325, N'Hammerfest Airport', N'Hammerfest', N'Norway', N'HFT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1121, N'Egal International Airport', N'Hargeisa', N'Somalia', N'HGA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6275, N'Hughenden Airport', N'Hughenden', N'Australia', N'HGD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2842, N'Higuerote Airport', N'Higuerote', N'Venezuela', N'HGE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3386, N'Hangzhou Xiaoshan International Airport', N'Hangzhou', N'China', N'HGH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13714, N'Paloich Airport', N'Heliport Higleig', N'South Sudan', N'HGI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5559, N'Helgoland-D++ne Airport', N'Helgoland', N'Germany', N'HGL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4086, N'Mae Hong Son Airport', N'Mae Hong Son', N'Thailand', N'HGN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (256, N'Korhogo Airport', N'Korhogo', N'Cote d''Ivoire', N'HGO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6739, N'Hagerstown Regional Richard A Henson Field', N'Hagerstown', N'United States', N'HGR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7924, N'Hastings Airport', N'Freetown', N'Sierra Leone', N'HGS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3, N'Mount Hagen Kagamuga Airport', N'Mount Hagen', N'Papua New Guinea', N'HGU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2343, N'Hachinohe Airport', N'Hachinoe', N'Japan', N'HHE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8314, N'Hilton Head Airport', N'Hilton Head Island', N'United States', N'HHH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3499, N'Wheeler Army Airfield', N'Wahiawa', N'United States', N'HHI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (355, N'Frankfurt-Hahn Airport', N'Hahn', N'Germany', N'HHN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4390, N'Shun Tak Heliport', N'Hong Kong', N'Hong Kong', N'HHP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3165, N'Hua Hin Airport', N'Prachuap Khiri Khan', N'Thailand', N'HHQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3508, N'Jack Northrop Field Hawthorne Municipal Airport', N'Hawthorne', N'United States', N'HHR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13627, N'Hikueru Atoll Airport', N'Hikueru', N'French Polynesia', N'HHZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7898, N'Lianshui Airport', N'Huai An', N'China', N'HIA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3650, N'Range Regional Airport', N'Hibbing', N'United States', N'HIB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6272, N'Horn Island Airport', N'Horn Island', N'Australia', N'HID')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3614, N'Hill Air Force Base', N'Ogden', N'United States', N'HIF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7586, N'Lake Havasu City Airport', N'Lake Havasu City', N'United States', N'HII')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2326, N'Hiroshima Airport', N'Hiroshima', N'Japan', N'HIJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11997, N'Hingurakgoda Air Force Base', N'Polonnaruwa Town', N'Sri Lanka', N'HIM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6007, N'Sacheon Air Base/Airport', N'Sacheon', N'South Korea', N'HIN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8122, N'Portland Hillsboro Airport', N'Hillsboro', N'United States', N'HIO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4074, N'Honiara International Airport', N'Honiara', N'Solomon Islands', N'HIR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8469, N'Hiroshimanishi Airport', N'Hiroshima', N'Japan', N'HIW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7519, N'Zhijiang Airport', N'Zhijiang', N'China', N'HJJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3012, N'Khajuraho Airport', N'Khajuraho', N'India', N'HJR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2288, N'Hakodate Airport', N'Hakodate', N'Japan', N'HKD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3077, N'Hong Kong International Airport', N'Hong Kong', N'Hong Kong', N'HKG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2014, N'Hokitika Airfield', N'Hokitika', N'New Zealand', N'HKK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5424, N'Kimbe Airport', N'Hoskins', N'Papua New Guinea', N'HKN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3179, N'Phuket International Airport', N'Phuket', N'Thailand', N'HKT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3547, N'Hickory Regional Airport', N'Hickory', N'United States', N'HKY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (820, N'Lanseria Airport', N'Johannesburg', N'South Africa', N'HLA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3366, N'Dongshan Airport', N'Hailar', N'China', N'HLD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13180, N'St. Helena Airport', N'Longwood', N'United Kingdom', N'HLE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (740, N'Hultsfred Airport', N'Hultsfred', N'Sweden', N'HLF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8062, N'Wheeling Ohio County Airport', N'Wheeling', N'United States', N'HLG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6349, N'Ulanhot Airport', N'Ulanhot', N'China', N'HLH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11648, N'Hollister Municipal Airport', N'Hollister', N'United States', N'HLI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3955, N'Barysiai Airport', N'Barysiai', N'Lithuania', N'HLJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3504, N'Helena Regional Airport', N'Helena', N'United States', N'HLN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6224, N'Halim Perdanakusuma International Airport', N'Jakarta', N'Indonesia', N'HLP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3677, N'Hood Army Air Field', N'Fort Hood', N'United States', N'HLR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7574, N'Hamilton Airport', N'Hamilton', N'Australia', N'HLT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2015, N'Hamilton International Airport', N'Hamilton', N'New Zealand', N'HLZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6138, N'Khanty Mansiysk Airport', N'Khanty-Mansiysk', N'Russia', N'HMA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8235, N'Sohag International Airport', N'Sohag', N'Egypt', N'HMB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (238, N'Oued Irara Airport', N'Hassi Messaoud', N'Algeria', N'HME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12172, N'Hermannsburg Airport', N'Hermannsburg', N'Australia', N'HMG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6743, N'Hami Airport', N'Hami', N'China', N'HMI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8468, N'Khmelnytskyi Airport', N'Khmeinitskiy', N'Ukraine', N'HMJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3802, N'Holloman Air Force Base', N'Alamogordo', N'United States', N'HMN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1807, N'General Ignacio P. Garcia International Airport', N'Hermosillo', N'Mexico', N'HMO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7871, N'Stafsberg Airport', N'Hamar', N'Norway', N'HMR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5599, N'Hemavan Airport', N'Hemavan', N'Sweden', N'HMV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9939, N'Seosan Air Base', N'Seosan', N'South Korea', N'HMY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2344, N'Hanamaki Airport', N'Hanamaki', N'Japan', N'HNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2359, N'Tokyo Haneda International Airport', N'Tokyo', N'Japan', N'HND')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7142, N'Hoonah Airport', N'Hoonah', N'United States', N'HNH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3728, N'Daniel K Inouye International Airport', N'Honolulu', N'United States', N'HNL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3445, N'Hana Airport', N'Hana', N'United States', N'HNM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5963, N'Haines Airport', N'Haines', N'United States', N'HNS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10942, N'Hengyang Nanyue Airport', N'Hengyang', N'China', N'HNY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8713, N'Hola Airport', N'Hola', N'Kenya', N'HOA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3749, N'Lea County Regional Airport', N'Hobbs', N'United States', N'HOB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3976, N'Hodeidah International Airport', N'Hodeidah', N'Yemen', N'HOD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6177, N'Ban Huoeisay Airport', N'Huay Xai', N'Laos', N'HOE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2060, N'Al Ahsa Airport', N'Al-ahsa', N'Saudi Arabia', N'HOF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1910, N'Frank Pais International Airport', N'Holguin', N'Cuba', N'HOG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6797, N'Hohenems-Dornbirn Airport', N'Hohenems', N'Austria', N'HOH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1993, N'Hao Airport', N'Hao Island', N'French Polynesia', N'HOI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6273, N'Hooker Creek Airport', N'Hooker Creek', N'Australia', N'HOK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3664, N'Homer Airport', N'Homer', N'United States', N'HOM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3491, N'Huron Regional Airport', N'Huron', N'United States', N'HON')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3519, N'Campbell AAF (Fort Campbell) Air Field', N'Hopkinsville', N'United States', N'HOP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (388, N'Hof-Plauen Airport', N'Hof', N'Germany', N'HOQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1628, N'Horta Airport', N'Horta', N'Portugal', N'HOR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2450, N'Chos Malal Airport', N'Chosmadal', N'Argentina', N'HOS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5741, N'Memorial Field', N'Hot Springs', N'United States', N'HOT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3566, N'William P Hobby Airport', N'Houston', N'United States', N'HOU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4345, N'+ÿrsta-Volda Airport', N'Hovden Orsta-Volda', N'Norway', N'HOV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3214, N'Hommalinn Airport', N'Hommalin', N'Burma', N'HOX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5880, N'Lifuka Island Airport', N'Lifuka', N'Tonga', N'HPA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6716, N'Hooper Bay Airport', N'Hooper Bay', N'United States', N'HPB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10939, N'Shennongjia Hongping Airport', N'Shennongjia', N'China', N'HPG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6188, N'Cat Bi International Airport', N'Haiphong', N'Vietnam', N'HPH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3589, N'Westchester County Airport', N'White Plains', N'United States', N'HPN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4275, N'Bowerman Airport', N'Hoquiam', N'United States', N'HQM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3400, N'Taiping Airport', N'Harbin', N'China', N'HRB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1005, N'Robert Gabriel Mugabe International Airport', N'Harare', N'Zimbabwe', N'HRE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1130, N'Hurghada International Airport', N'Hurghada', N'Egypt', N'HRG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8949, N'Mattala Rajapaksa International Airport', N'Mattala', N'Sri Lanka', N'HRI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6105, N'Kharkiv International Airport', N'Kharkov', N'Ukraine', N'HRK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3560, N'Valley International Airport', N'Harlingen', N'United States', N'HRL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (224, N'Hassi R''Mel Airport', N'Tilrempt', N'Algeria', N'HRM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3461, N'Boone County Airport', N'Harrison', N'United States', N'HRO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (810, N'Harrismith Airport', N'Harrismith', N'South Africa', N'HRS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (573, N'RAF Linton-On-Ouse', N'Linton-on-ouse', N'United Kingdom', N'HRT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5996, N'Saga Airport', N'Saga', N'Japan', N'HSG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7999, N'Henderson Executive Airport', N'Henderson', N'United States', N'HSH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7488, N'Huesca/Pirineos Airport', N'Huesca', N'Spain', N'HSK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7108, N'Huslia Airport', N'Huslia', N'United States', N'HSL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11273, N'Horsham Airport', N'Horsham', N'Australia', N'HSM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6395, N'Zhoushan Airport', N'Zhoushan', N'China', N'HSN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3095, N'Hissar Airport', N'Hissar', N'India', N'HSS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3798, N'Homestead ARB Airport', N'Homestead', N'United States', N'HST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4113, N'Huntsville International Carl T Jones Field', N'Huntsville', N'United States', N'HSV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2271, N'Hsinchu Air Base', N'Hsinchu', N'Taiwan', N'HSZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2935, N'Chita-Kadala Airport', N'Chita', N'Russia', N'HTA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6120, N'Khatanga Airport', N'Khatanga', N'Russia', N'HTG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6242, N'Hamilton Island Airport', N'Hamilton Island', N'Australia', N'HTI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3668, N'Roscommon County - Blodgett Memorial Airport', N'Houghton Lake', N'United States', N'HTL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3398, N'Hotan Airport', N'Hotan', N'China', N'HTN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10166, N'Hateruma Airport', N'Taketomi', N'Japan', N'HTR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5742, N'Tri-State/Milton J. Ferguson Field', N'Huntington', N'United States', N'HTS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12050, N'Huatugou Airport', N'Mengnai', N'China', N'HTT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12027, N'Hopetoun Airport', NULL, N'Australia', N'HTU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11862, N'Huntsville Regional Airport', N'Huntsville', N'United States', N'HTV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7453, N'Hatay Airport', N'Hatay', N'Turkey', N'HTY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3480, N'Redstone Army Air Field', N'Redstone', N'United States', N'HUA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8333, N'Humera Airport', N'Humera', N'Ethiopia', N'HUE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1991, N'Huahine-Fare Airport', N'Huahine Island', N'French Polynesia', N'HUH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3201, N'Phu Bai Airport', N'Hue', N'Vietnam', N'HUI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3509, N'Houlton International Airport', N'Houlton', N'United States', N'HUL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2278, N'Hualien Airport', N'Hualien', N'Taiwan', N'HUN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13482, N'Holingol Huolinhe Airport', N'Holingol', N'China', N'HUO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1160, N'Hon Airport', N'Hon', N'Libya', N'HUQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7107, N'Hughes Airport', N'Hughes', N'United States', N'HUS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7035, N'Hutchinson Municipal Airport', N'Hutchinson', N'United States', N'HUT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6067, N'Alferez Fap David Figueroa Fernandini Airport', N'Hu+ínuco', N'Peru', N'HUU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (716, N'Hudiksvall Airport', N'Hudiksvall', N'Sweden', N'HUV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8257, N'Humait+í Airport', N'Humaita', N'Brazil', N'HUW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1786, N'Bah+¡as de Huatulco International Airport', N'Huatulco', N'Mexico', N'HUX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (515, N'Humberside Airport', N'Humberside', N'United Kingdom', N'HUY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7458, N'Huizhou Airport', N'Huizhou', N'China', N'HUZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (928, N'Analalava Airport', N'Analalava', N'Madagascar', N'HVA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4052, N'Hervey Bay Airport', N'Hervey Bay', N'Australia', N'HVB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6373, N'Khovd Airport', N'Khovd', N'Mongolia', N'HVD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4326, N'Valan Airport', N'Honningsvag', N'Norway', N'HVG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4006, N'Tweed New Haven Airport', N'New Haven', N'United States', N'HVN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3604, N'Havre City County Airport', N'Havre', N'United States', N'HVR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10133, N'Hartsville Regional Airport', N'Hartsville', N'United States', N'HVS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8982, N'Hayward Executive Airport', N'Hayward', N'United States', N'HWD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1012, N'Hwange National Park Airport', N'Hwange National Park', N'Zimbabwe', N'HWN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3468, N'North Perry Airport', N'Hollywood', N'United States', N'HWO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13192, N'Delingha Airport', N'Haixi', N'China', N'HXD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12026, N'Hay Airport', NULL, N'Australia', N'HXX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4278, N'Barnstable Municipal Boardman Polando Field', N'Barnstable', N'United States', N'HYA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7804, N'Wycombe Air Park', N'Wycombe', N'United Kingdom', N'HYC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12087, N'Rajiv Gandhi International Airport', N'Hyderabad', N'India', N'HYD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7148, N'Hydaburg Seaplane Base', N'Hydaburg', N'United States', N'HYG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6384, N'Huangyan Luqiao Airport', N'Huangyan', N'China', N'HYN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11836, N'Sawyer County Airport', N'Hayward', N'United States', N'HYR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7014, N'Hays Regional Airport', N'Hays', N'United States', N'HYS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (424, N'Hyvink+ñ+ñ Airfield', N'Hyvinkaa', N'Finland', N'HYV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1400, N'Merville-Calonne Airport', N'Merville', N'France', N'HZB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6364, N'Hanzhong Chenggu Airport', N'Hanzhong', N'China', N'HZG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7508, N'Liping Airport', N'Liping', N'China', N'HZH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (14, N'H+¦sav+¡k Airport', N'Husavik', N'Iceland', N'HZK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8473, N'Hazleton Municipal Airport', N'Hazleton', N'United States', N'HZL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11053, N'Fort Mackay / Horizon Airport', N'Wood Buffalo', N'Canada', N'HZP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6121, N'Igarka Airport', N'Igarka', N'Russia', N'IAA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3767, N'Mc Connell Air Force Base', N'Wichita', N'United States', N'IAB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3714, N'Washington Dulles International Airport', N'Washington', N'United States', N'IAD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3630, N'Niagara Falls International Airport', N'Niagara Falls', N'United States', N'IAG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3550, N'George Bush Intercontinental Houston Airport', N'Houston', N'United States', N'IAH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (244, N'In Am+®nas Airport', N'Zarzaitine', N'Algeria', N'IAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7179, N'Bob Baker Memorial Airport', N'Kiana', N'United States', N'IAN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6974, N'Siargao Airport', N'Siargao', N'Philippines', N'IAO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6940, N'Tunoshna Airport', N'Yaroslavl', N'Russia', N'IAR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1655, N'Ia+ƒi Airport', N'Iasi', N'Romania', N'IAS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (266, N'Ibadan Airport', N'Ibadan', N'Nigeria', N'IBA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8461, N'General Villamil Airport', N'Isabela', N'Ecuador', N'IBB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2724, N'Perales Airport', N'Ibague', N'Colombia', N'IBE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2780, N'Iberia Airport', N'Iberia', N'Peru', N'IBP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2281, N'Hyakuri Airport', N'Ibaraki', N'Japan', N'IBR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1225, N'Ibiza Airport', N'Ibiza', N'Spain', N'IBZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2843, N'Andr+®s Miguel Salazar Marcano Airport', N'Isla De Coche', N'Venezuela', N'ICC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5867, N'Cicia Airport', N'Cicia', N'Fiji', N'ICI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7335, N'Nieuw Nickerie Airport', N'Nieuw Nickerie', N'Suriname', N'ICK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3930, N'Incheon International Airport', N'Seoul', N'South Korea', N'ICN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3457, N'Wichita Eisenhower National Airport', N'Wichita', N'United States', N'ICT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4100, N'Idaho Falls Regional Airport', N'Idaho Falls', N'United States', N'IDA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11090, N'Independence Municipal Airport', N'Independence', N'United States', N'IDP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3008, N'Devi Ahilyabai Holkar Airport', N'Indore', N'India', N'IDR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5782, N'+Äle d''Yeu Airport', N'+Äle d''Yeu', N'France', N'IDY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (681, N'Zielona G+¦ra-Babimost Airport', N'Zielona Gora', N'Poland', N'IEG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11925, N'Ie Jima Airport', N'Ie', N'Japan', N'IEJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (325, N'Riesa-G+Âhlis Airport', N'Riesa', N'Germany', N'IES')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2944, N'Kiev Zhuliany International Airport', N'Kiev', N'Ukraine', N'IEV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2118, N'Hesa Airport', N'Daran', N'Iran', N'IFH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (15, N'+ìsafj+Âr+¦ur Airport', N'Isafjordur', N'Iceland', N'IFJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8823, N'Innisfail Airport', N'Innisfail', N'Australia', N'IFL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2121, N'Esfahan Shahid Beheshti International Airport', N'Esfahan', N'Iran', N'IFN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6106, N'Ivano-Frankivsk International Airport', N'Ivano-Frankivsk', N'Ukraine', N'IFO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11354, N'Ifuru Airport', N'Ifuru', N'Maldives', N'IFU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1949, N'Inagua Airport', N'Matthew Town', N'Bahamas', N'IGA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7230, N'Cabo F.A.A. H. R. Bord+¦n Airport', N'Ingeniero Jacobacci', N'Argentina', N'IGB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9043, N'I-ƒd-¦r Airport', N'Igdir', N'Turkey', N'IGD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6763, N'Igiugig Airport', N'Igiugig', N'United States', N'IGG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1708, N'+çi-ƒli Airport', N'Izmir', N'Turkey', N'IGL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2471, N'Cataratas Del Iguaz+¦ International Airport', N'Iguazu Falls', N'Argentina', N'IGR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (786, N'Ingolstadt Manching Airport', N'Ingolstadt', N'Germany', N'IGS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10952, N'Magas Airport', N'Magas', N'Russia', N'IGT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2554, N'Cataratas International Airport', N'Foz Do Iguacu', N'Brazil', N'IGU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7437, N'Inhaca Airport', N'Inhaca', N'Mozambique', N'IHC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2168, N'Iran Shahr Airport', N'Iran Shahr', N'Iran', N'IHR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7468, N'Inishmaan Aerodrome', N'Inishmaan', N'Ireland', N'IIA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6748, N'Ilam Airport', N'Ilam', N'Iran', N'IIL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6141, N'Izhevsk Airport', N'Izhevsk', N'Russia', N'IJK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4330, N'Imam Khomeini International Airport', N'Tehran', N'Iran', N'IKA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9797, N'Wilkes County Airport', N'North Wilkesboro', N'United States', N'IKB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2295, N'Iki Airport', N'Iki', N'Japan', N'IKI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3639, N'Greater Kankakee Airport', N'Kankakee', N'United States', N'IKK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11195, N'Ikela Airport', N'Ikela', N'Congo (Kinshasa)', N'IKL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7196, N'Nikolski Air Station', N'Nikolski', N'United States', N'IKO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6095, N'Tiksi Airport', N'Tiksi', N'Russia', N'IKS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2937, N'Irkutsk Airport', N'Irkutsk', N'Russia', N'IKT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11948, N'Issyk-Kul International Airport', N'Tamchy', N'Kyrgyzstan', N'IKU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9897, N'Illaga Airport', N'Illaga', N'Indonesia', N'ILA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7459, N'Lleida-Alguaire Airport', N'Lleida', N'Spain', N'ILD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5537, N'Ilford Airport', N'Ilford', N'Canada', N'ILF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3859, N'New Castle Airport', N'Wilmington', N'United States', N'ILG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3429, N'Iliamna Airport', N'Iliamna', N'United States', N'ILI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3845, N'Wilmington International Airport', N'Wilmington', N'United States', N'ILM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7978, N'Wilmington Airpark', N'Wilmington', N'United States', N'ILN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2429, N'Iloilo International Airport', N'Iloilo', N'Philippines', N'ILO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5921, N'+Äle des Pins Airport', N'+Äle des Pins', N'New Caledonia', N'ILP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2794, N'Ilo Airport', N'Ilo', N'Peru', N'ILQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (267, N'Ilorin International Airport', N'Ilorin', N'Nigeria', N'ILR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8718, N'Kilaguni Airport', N'Kilaguni', N'Kenya', N'ILU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (536, N'Islay Airport', N'Islay', N'United Kingdom', N'ILY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5806, N'+¢ilina Airport', N'+¢ilina', N'Slovakia', N'ILZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7349, N'Imbaimadai Airport', N'Imbaimadai', N'Guyana', N'IMB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3050, N'Imphal Airport', N'Imphal', N'India', N'IMF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4185, N'Simikot Airport', N'Simikot', N'Nepal', N'IMK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9102, N'Immokalee Regional Airport', N'Immokalee ', N'United States', N'IMM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2572, N'Prefeito Renato Moreira Airport', N'Imperatriz', N'Brazil', N'IMP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6837, N'Ford Airport', N'Iron Mountain', N'United States', N'IMT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11989, N'Inta Airport', N'Inta', N'Russia', N'INA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3585, N'Indianapolis International Airport', N'Indianapolis', N'United States', N'IND')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6030, N'Lago Argentino Airport', N'El Calafate', N'Argentina', N'ING')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (976, N'Inhambane Airport', N'Inhambane', N'Mozambique', N'INH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1740, N'Nis Airport', N'Nis', N'Serbia', N'INI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3686, N'Winkler County Airport', N'Wink', N'United States', N'INK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3535, N'Falls International Airport', N'International Falls', N'United States', N'INL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1610, N'Innsbruck Airport', N'Innsbruck', N'Austria', N'INN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5648, N'Inongo Airport', N'Inongo', N'Congo (Kinshasa)', N'INO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7030, N'Inisheer Aerodrome', N'Inisheer', N'Ireland', N'INQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3496, N'Creech Air Force Base', N'Indian Springs', N'United States', N'INS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3553, N'Smith Reynolds Airport', N'Winston-salem', N'United States', N'INT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4076, N'Nauru International Airport', N'Nauru', N'Nauru', N'INU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (533, N'Inverness Airport', N'Inverness', N'United Kingdom', N'INV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7587, N'Winslow Lindbergh Regional Airport', N'Winslow', N'United States', N'INW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (239, N'In Salah Airport', N'In Salah', N'Algeria', N'INZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1451, N'Ioannina Airport', N'Ioannina', N'Greece', N'IOA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (520, N'Isle of Man Airport', N'Isle Of Man', N'Isle of Man', N'IOM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13447, N'Impfondo Airport', N'Impfondo', N'Congo (Brazzaville)', N'ION')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6421, N'Inishmore Aerodrome', N'Inis Mor', N'Ireland', N'IOR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2569, N'Bahia - Jorge Amado Airport', N'Ilheus', N'Brazil', N'IOS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8925, N'Iowa City Municipal Airport', N'Iowa City', N'United States', N'IOW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5918, N'Ipota Airport', N'Ipota', N'Vanuatu', N'IPA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2657, N'Mataveri Airport', N'Easter Island', N'Chile', N'IPC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3302, N'Sultan Azlan Shah Airport', N'Ipoh', N'Malaysia', N'IPH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2725, N'San Luis Airport', N'Ipiales', N'Colombia', N'IPI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3689, N'Imperial County Airport', N'Imperial', N'United States', N'IPL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2570, N'Usiminas Airport', N'Ipatinga', N'Brazil', N'IPN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3584, N'Williamsport Regional Airport', N'Williamsport', N'United States', N'IPT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4137, N'Al Asad Air Base', N'Al Asad', N'Iraq', N'IQA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6405, N'Qiemo Yudu Airport', N'Qiemo', N'China', N'IQM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6365, N'Qingyang Airport', N'Qingyang', N'China', N'IQN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2649, N'Diego Aracena Airport', N'Iquique', N'Chile', N'IQQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2801, N'Coronel FAP Francisco Secada Vignetta International Airport', N'Iquitos', N'Peru', N'IQT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5409, N'Ngorangora Airport', N'Kirakira', N'Solomon Islands', N'IRA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9794, N'Iraan Municipal Airport', N'Iraan', N'United States', N'IRB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7236, N'Circle City /New/ Airport', N'Circle', N'United States', N'IRC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3070, N'Ishurdi Airport', N'Ishurdi', N'Bangladesh', N'IRD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6286, N'Lockhart River Airport', N'Lockhart River', N'Australia', N'IRG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1179, N'Iringa Airport', N'Iringa', N'Tanzania', N'IRI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2458, N'Capitan V A Almonacid Airport', N'La Rioja', N'Argentina', N'IRJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5744, N'Kirksville Regional Airport', N'Kirksville', N'United States', N'IRK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1032, N'Matari Airport', N'Isiro', N'Congo (Kinshasa)', N'IRP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8258, N'Tapuruquara Airport', N'Santa Isabel do Rio Negro', N'Brazil', N'IRZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3324, N'Mount Isa Airport', N'Mount Isa', N'Australia', N'ISA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13760, N'New Islamabad International Airport', N'Islamabad', N'Pakistan', N'ISB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4347, N'St. Mary''s Airport', N'ST MARY\''S', N'United Kingdom', N'ISC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5801, N'S++leyman Demirel International Airport', N'Isparta', N'Turkey', N'ISE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2387, N'New Ishigaki Airport', N'Ishigaki', N'Japan', N'ISG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1809, N'Isla Mujeres Airport', N'Isla Mujeres', N'Mexico', N'ISJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3016, N'Nashik Airport', N'Nasik Road', N'India', N'ISK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1701, N'Atat++rk International Airport', N'Istanbul', N'Turkey', N'ISL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6993, N'Kissimmee Gateway Airport', N'Kissimmee', N'United States', N'ISM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3659, N'Sloulin Field International Airport', N'Williston', N'United States', N'ISN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7522, N'Kinston Regional Jetport At Stallings Field', N'Kinston', N'United States', N'ISO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3857, N'Long Island Mac Arthur Airport', N'Islip', N'United States', N'ISP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13696, N'Istanbul Airport', N'Istanbul', N'Turkey', N'IST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5952, N'Sulaymaniyah International Airport', N'Sulaymaniyah', N'Iraq', N'ISU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8654, N'Alexander Field South Wood County Airport', N'Wisconsin Rapids', N'United States', N'ISW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2567, N'Itacoatiara Airport', N'Itaituba', N'Brazil', N'ITA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2568, N'Itaituba Airport', N'Itaituba', N'Brazil', N'ITB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3947, N'Ithaca Tompkins Regional Airport', N'Ithaca', N'United States', N'ITH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2334, N'Osaka International Airport', N'Osaka', N'Japan', N'ITM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3415, N'Hilo International Airport', N'Hilo', N'United States', N'ITO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11178, N'Itaperuna Airport', N'Itaperuna', N'Brazil', N'ITP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2571, N'Francisco Vilela do Amaral Airport', N'Itumbiara', N'Brazil', N'ITR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5884, N'Niue International Airport', N'Alofi', N'Niue', N'IUE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (936, N'Ampampamena Airport', N'Ampampamena', N'Madagascar', N'IVA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2025, N'Invercargill Airport', N'Invercargill', N'New Zealand', N'IVC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (428, N'Ivalo Airport', N'Ivalo', N'Finland', N'IVL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9095, N'Inverell Airport', N'Inverell', N'Australia', N'IVR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4379, N'Ivanovo South Airport', N'Ivanovo', N'Russia', N'IWA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5998, N'Iwami Airport', N'Iwami', N'Japan', N'IWJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11922, N'Iwakuni Marine Corps Air Station', N'Iwakuni', N'Japan', N'IWK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2283, N'Iwo Jima Airport', N'Iwojima', N'Japan', N'IWO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4226, N'West Houston Airport', N'Houston', N'United States', N'IWS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3038, N'Agartala Airport', N'Agartala', N'India', N'IXA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3040, N'Bagdogra Airport', N'Baghdogra', N'India', N'IXB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3089, N'Chandigarh Airport', N'Chandigarh', N'India', N'IXC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3080, N'Allahabad Airport', N'Allahabad', N'India', N'IXD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3143, N'Mangalore International Airport', N'Mangalore', N'India', N'IXE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3000, N'Belgaum Airport', N'Belgaum', N'India', N'IXG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3054, N'Kailashahar Airport', N'Kailashahar', N'India', N'IXH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3056, N'North Lakhimpur Airport', N'Lilabari', N'India', N'IXI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3100, N'Jammu Airport', N'Jammu', N'India', N'IXJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3014, N'Keshod Airport', N'Keshod', N'India', N'IXK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3104, N'Leh Kushok Bakula Rimpochee Airport', N'Leh', N'India', N'IXL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3142, N'Madurai Airport', N'Madurai', N'India', N'IXM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3106, N'Pathankot Airport', N'Pathankot', N'India', N'IXP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3063, N'Birsa Munda Airport', N'Ranchi', N'India', N'IXR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3055, N'Silchar Airport', N'Silchar', N'India', N'IXS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10061, N'Pasighat Airport', N'Pasighat', N'India', N'IXT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2996, N'Aurangabad Airport', N'Aurangabad', N'India', N'IXU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3037, N'Along Airport', N'Along', N'India', N'IXV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3052, N'Sonari Airport', N'Jamshedpur', N'India', N'IXW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3011, N'Kandla Airport', N'Kandla', N'India', N'IXY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3146, N'Vir Savarkar International Airport', N'Port Blair', N'India', N'IXZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7120, N'Inyokern Airport', N'Inyokern', N'United States', N'IYK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8180, N'Zona da Mata Regional Airport', N'Juiz de Fora', N'Brazil', N'IZA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2328, N'Izumo Airport', N'Izumo', N'Japan', N'IZO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1811, N'Ixtepec Airport', N'Iztepec', N'Mexico', N'IZT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2049, N'Jalalabad Airport', N'Jalalabad', N'Afghanistan', N'JAA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7913, N'Jabiru Airport', N'Jabiru', N'Australia', N'JAB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4027, N'Jackson Hole Airport', N'Jacksn Hole', N'United States', N'JAC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3344, N'Perth Jandakot Airport', N'Perth', N'Australia', N'JAD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11946, N'Shumba Airport', N'Ja+®n', N'Peru', N'JAE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3029, N'Kankesanturai Airport', N'Jaffna', N'Sri Lanka', N'JAF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2205, N'Shahbaz Air Base', N'Jacobsbad', N'Pakistan', N'JAG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3098, N'Jaipur International Airport', N'Jaipur', N'India', N'JAI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1896, N'Jacmel Airport', N'Jacmel', N'Haiti', N'JAK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5837, N'El Lencero Airport', N'Jalapa', N'Mexico', N'JAL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (14088, N'Bezmer Air Base', N'Yambol', N'Bulgaria', N'JAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3580, N'Jackson-Medgar Wiley Evers International Airport', N'Jackson', N'United States', N'JAN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1875, N'Chacarita Airport', N'Chacarita', N'Costa Rica', N'JAP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2154, N'Jahrom Airport', N'Jahrom', N'Iran', N'JAR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10104, N'Jasper County Airport-Bell Field', N'Jasper', N'United States', N'JAS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2791, N'Francisco Carle Airport', N'Jauja', N'Peru', N'JAU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3995, N'Ilulissat Airport', N'Ilulissat', N'Greenland', N'JAV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3712, N'Jacksonville International Airport', N'Jacksonville', N'United States', N'JAX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5811, N'La Isabela International Airport', N'La Isabela', N'Dominican Republic', N'JBQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3591, N'Jonesboro Municipal Airport', N'Jonesboro', N'United States', N'JBR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7384, N'Santa Terezinha Airport', N'Joacaba', N'Brazil', N'JCB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3996, N'Qasigiannguit Heliport', N'Qasigiannguit', N'Greenland', N'JCH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7869, N'New Century Aircenter Airport', N'Olathe', N'United States', N'JCI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6276, N'Julia Creek Airport', N'Julia Creek', N'Australia', N'JCK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2552, N'Jacareacanga Airport', N'Jacare-acanga', N'Brazil', N'JCR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11837, N'Kimble County Airport', N'Junction', N'United States', N'JCT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2574, N'Francisco de Assis Airport', N'Juiz De Fora', N'Brazil', N'JDF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8419, N'Jeongseok Airport', N'Seogwipo', N'South Korea', N'JDG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3097, N'Jodhpur Airport', N'Jodhpur', N'India', N'JDH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6034, N'Orlando Bezerra de Menezes Airport', N'Juazeiro Do Norte', N'Brazil', N'JDO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6380, N'Jingdezhen Airport', N'Jingdezhen', N'China', N'JDZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2072, N'King Abdulaziz International Airport', N'Jeddah', N'Saudi Arabia', N'JED')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5850, N'J+®r+®mie Airport', N'Jeremie', N'Haiti', N'JEE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6447, N'Jefferson City Memorial Airport', N'Jefferson City', N'United States', N'JEF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3997, N'Aasiaat Airport', N'Aasiaat', N'Greenland', N'JEG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (499, N'Jersey Airport', N'Jersey', N'Jersey', N'JER')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3797, N'John F Kennedy International Airport', N'New York', N'United States', N'JFK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5440, N'Paamiut Heliport', N'Paamiut', N'Greenland', N'JFR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3010, N'Jamnagar Airport', N'Jamnagar', N'India', N'JGA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8979, N'Jiagedaqi Airport', N'Jiagedaqi District', N'China', N'JGD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6432, N'Jiayuguan Airport', N'Jiayuguan', N'China', N'JGN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5441, N'Qeqertarsuaq Heliport', N'Qeqertarsuaq Airport', N'Greenland', N'JGO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6964, N'Jinggangshan Airport', N'Jian', N'China', N'JGS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3303, N'Senai International Airport', N'Johor Bahru', N'Malaysia', N'JHB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3381, N'Xishuangbanna Gasa Airport', N'Jinghonggasa', N'China', N'JHG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3796, N'Kapalua Airport', N'Lahania-kapalua', N'United States', N'JHM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8984, N'Shute Harbour Airport', N'Shute Harbour', N'Australia', N'JHQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5447, N'Sisimiut Airport', N'Sisimiut', N'Greenland', N'JHS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7059, N'Chautauqua County-Jamestown Airport', N'Jamestown', N'United States', N'JHW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11200, N'Ju+¡na Airport', N'Juina', N'Brazil', N'JIA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4119, N'Djibouti-Ambouli Airport', N'Djibouti', N'Djibouti', N'JIB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11473, N'Jinchuan Airport', N'Jinchuan', N'China', N'JIC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7417, N'Wilwal International Airport', N'Jijiga', N'Ethiopia', N'JIJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4191, N'Ikaria Airport', N'Ikaria', N'Greece', N'JIK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1116, N'Jimma Airport', N'Jimma', N'Ethiopia', N'JIM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8781, N'Qianjiang Wulingshan Airport', N'Qianjiang', N'China', N'JIQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6381, N'Jiujiang Lushan Airport', N'Jiujiang', N'China', N'JIU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5944, N'Jiwani Airport', N'Jiwani', N'Pakistan', N'JIW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12987, N'Humberto Ghizzo Bortoluzzi Regional Airport', N'Jaguaruna', N'Brazil', N'JJG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2790, N'Juanjui Airport', N'Juanjui', N'Peru', N'JJI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7426, N'Mulika Lodge Airport', N'Meru National Park', N'Kenya', N'JJM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6386, N'Quanzhou Jinjiang International Airport', N'Quanzhou', N'China', N'JJN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5442, N'Qaqortoq Heliport', N'Qaqortoq', N'Greenland', N'JJU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (688, N'J+Ânk+Âping Airport', N'Joenkoeping', N'Sweden', N'JKG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1450, N'Chios Island National Airport', N'Chios', N'Greece', N'JKH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4192, N'Kalymnos Airport', N'Kalymnos', N'Greece', N'JKL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3124, N'Janakpur Airport', N'Janakpur', N'Nepal', N'JKR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4354, N'Joplin Regional Airport', N'Joplin', N'United States', N'JLN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3009, N'Jabalpur Airport', N'Jabalpur', N'India', N'JLR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13489, N'Lancang Jingmai Airport', N'Lancang Lahu', N'China', N'JMJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1468, N'Mikonos Airport', N'Mykonos', N'Greece', N'JMK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4173, N'Jomsom Airport', N'Jomsom', N'Nepal', N'JMO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5745, N'Jamestown Regional Airport', N'Jamestown', N'United States', N'JMS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6411, N'Jiamusi Airport', N'Jiamusi', N'China', N'JMU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (813, N'OR Tambo International Airport', N'Johannesburg', N'South Africa', N'JNB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6944, N'Jining Qufu Airport', N'Jining', N'China', N'JNG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2438, N'Junin Airport', N'Junin', N'Argentina', N'JNI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5444, N'Nanortalik Heliport', N'Nanortalik', N'Greenland', N'JNN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5445, N'Narsaq Heliport', N'Narsaq', N'Greenland', N'JNS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3492, N'Juneau International Airport', N'Juneau', N'United States', N'JNU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4194, N'Naxos Airport', N'Cyclades Islands', N'Greece', N'JNX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6412, N'Jinzhou Airport', N'Jinzhou', N'China', N'JNZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (429, N'Joensuu Airport', N'Joensuu', N'Finland', N'JOE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3898, N'Adi Sutjipto International Airport', N'Yogyakarta', N'Indonesia', N'JOG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (842, N'Port St Johns Airport', N'Port Saint Johns', N'South Africa', N'JOH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2576, N'Lauro Carneiro de Loyola Airport', N'Joinville', N'Brazil', N'JOI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13342, N'Doris Lake', N'Doris Lake', N'Canada', N'JOJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6161, N'Yoshkar-Ola Airport', N'Yoshkar-Ola', N'Russia', N'JOK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6013, N'Jolo Airport', N'Jolo', N'Philippines', N'JOL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4382, N'Johnston Atoll Airport', N'Johnston Island', N'Johnston Atoll', N'JON')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (268, N'Yakubu Gowon Airport', N'Jos', N'Nigeria', N'JOS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8496, N'Joliet Regional Airport', N'Joliet', N'United States', N'JOT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2575, N'Presidente Castro Pinto International Airport', N'Joao Pessoa', N'Brazil', N'JPA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6073, N'Ji-Paran+í Airport', N'Ji-Paran+í', N'Brazil', N'JPR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5449, N'Qaarsut Airport', N'Uummannaq', N'Greenland', N'JQA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5840, N'Jaqu+® Airport', N'Jaqu+®', N'Panama', N'JQE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7729, N'West 30th St. Heliport', N'New York', N'United States', N'JRA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3993, N'Downtown-Manhattan/Wall St Heliport', N'New York', N'United States', N'JRB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8824, N'Kalaeloa Airport', N'Kapolei', N'United States', N'JRF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3053, N'Jorhat Airport', N'Jorhat', N'India', N'JRH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11199, N'Juruena Airport', N'Juruena', N'Brazil', N'JRN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1180, N'Kilimanjaro International Airport', N'Kilimanjaro', N'Tanzania', N'JRO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3099, N'Jaisalmer Airport', N'Jaisalmer', N'India', N'JSA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1480, N'Sitia Airport', N'Sitia', N'Greece', N'JSH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1475, N'Skiathos Island National Airport', N'Skiathos', N'Greece', N'JSI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13474, N'Jiansanjiang Airport', N'Jiansanjiang', N'China', N'JSJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13550, N'Jask Airport', N'Jask', N'Iran', N'JSK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7312, N'Jose De San Martin Airport', N'Jose de San Martin', N'Argentina', N'JSM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3071, N'Jessore Airport', N'Jessore', N'Bangladesh', N'JSR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4169, N'John Murtha Johnstown Cambria County Airport', N'Johnstown', N'United States', N'JST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5443, N'Maniitsoq Airport', N'Maniitsoq', N'Greenland', N'JSU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5787, N'Syros Airport', N'Syros Island', N'Greece', N'JSY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8238, N'Bauru - Arealva Airport', N'Bauru', N'Brazil', N'JTC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1479, N'Santorini Airport', N'Thira', N'Greece', N'JTR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4190, N'Astypalaia Airport', N'Astypalaia', N'Greece', N'JTY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11202, N'In+ício Lu+¡s do Nascimento Airport', N'Juara', N'Brazil', N'JUA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1173, N'Juba International Airport', N'Juba', N'South Sudan', N'JUB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9843, N'Jiuhuashan Airport', N'Chizhou', N'China', N'JUH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4208, N'Juist Airport', N'Juist', N'Germany', N'JUI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2477, N'Gobernador Horacio Guzman International Airport', N'Jujuy', N'Argentina', N'JUJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2792, N'Inca Manco Capac International Airport', N'Juliaca', N'Peru', N'JUL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4180, N'Jumla Airport', N'Jumla', N'Nepal', N'JUM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5448, N'Upernavik Airport', N'Upernavik', N'Greenland', N'JUV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6382, N'Quzhou Airport', N'Quzhou', N'China', N'JUZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5616, N'Ankavandra Airport', N'Ankavandra', N'Madagascar', N'JVA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7840, N'Southern Wisconsin Regional Airport', N'Janesville', N'United States', N'JVL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (878, N'Jwaneng Airport', N'Jwaneng', N'Botswana', N'JWA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2163, N'Zanjan Airport', N'Zanjan', N'Iran', N'JWN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8417, N'Jixi Xingkaihu Airport', N'Jixi', N'China', N'JXA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8499, N'Jackson County Reynolds Field', N'Jackson', N'United States', N'JXN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2135, N'Jiroft Airport', N'Jiroft', N'Iran', N'JYR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (430, N'Jyvaskyla Airport', N'Jyvaskyla', N'Finland', N'JYV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4301, N'Jiuzhai Huanglong Airport', N'Jiuzhaigou', N'China', N'JZH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9828, N'Kasama Airport', N'Kasama', N'Zambia', N'KAA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1006, N'Kariba International Airport', N'Kariba', N'Zimbabwe', N'KAB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5953, N'Kamishly Airport', N'Kamishly', N'Syria', N'KAC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (269, N'Kaduna Airport', N'Kaduna', N'Nigeria', N'KAD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2367, N'Gangneung Airport (K-18)', N'Kangnung', N'South Korea', N'KAG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4307, N'Kaieteur International Airport', N'Kaieteur', N'Guyana', N'KAI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (433, N'Kajaani Airport', N'Kajaani', N'Finland', N'KAJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6717, N'Kaltag Airport', N'Kaltag', N'United States', N'KAL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (270, N'Mallam Aminu International Airport', N'Kano', N'Nigeria', N'KAN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (437, N'Kuusamo Airport', N'Kuusamo', N'Finland', N'KAO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7350, N'Kamarang Airport', N'Kamarang', N'Guyana', N'KAR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2018, N'Kaitaia Airport', N'Kaitaia', N'New Zealand', N'KAT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (431, N'Kauhava Airport', N'Kauhava', N'Finland', N'KAU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6198, N'Kawthoung Airport', N'Kawthoung', N'Burma', N'KAW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6277, N'Kalbarri Airport', N'Kalbarri', N'Australia', N'KAX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9888, N'Kao Airport', N'Kao', N'Indonesia', N'KAZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2050, N'Hamid Karzai International Airport', N'Kabul', N'Afghanistan', N'KBL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11194, N'Tunta Airport', N'Kabinda', N'Congo (Kinshasa)', N'KBN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2939, N'Boryspil International Airport', N'Kiev', N'Ukraine', N'KBP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1015, N'Kasungu Airport', N'Kasungu', N'Malawi', N'KBQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3298, N'Sultan Ismail Petra Airport', N'Kota Bahru', N'Malaysia', N'KBR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5663, N'Bo Airport', N'Bo', N'Sierra Leone', N'KBS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3174, N'Krabi Airport', N'Krabi', N'Thailand', N'KBV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4102, N'Kaikoura Airport', N'Kaikoura', N'New Zealand', N'KBZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6406, N'Kuqa Airport', N'Kuqa', N'China', N'KCA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11331, N'Kadanwari Airport', N'Kadanwari', N'Pakistan', N'KCF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3263, N'Kuching International Airport', N'Kuching', N'Malaysia', N'KCH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6922, N'Kirensk Airport', N'Kirensk', N'Russia', N'KCK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5798, N'Kahramanmara+ƒ Airport', N'Kahramanmaras', N'Turkey', N'KCM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1713, N'Cengiz Topel Airport', N'Topel', N'Turkey', N'KCO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12360, N'Kings Creek Airport', N'Petermann', N'Australia', N'KCS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6169, N'Koggala Airport', N'Koggala', N'Sri Lanka', N'KCT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2332, N'K+ìchi Ry+ìma Airport', N'Kochi', N'Japan', N'KCZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13460, N'Kolda North Airport', N'Kolda', N'Senegal', N'KDA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12106, N'Kandi Airport', N'Kandi', N'Benin', N'KDC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5946, N'Khuzdar Airport', N'Khuzdar', N'Pakistan', N'KDD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2051, N'Kandahar Airport', N'Kandahar', N'Afghanistan', N'KDH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3890, N'Wolter Monginsidi Airport', N'Kendari', N'Indonesia', N'KDI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (412, N'K+ñrdla Airport', N'Kardla', N'Estonia', N'KDL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4235, N'Kaadedhdhoo Airport', N'Kaadedhdhoo', N'Maldives', N'KDM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6185, N'Kadhdhoo Airport', N'Laamu Atoll', N'Maldives', N'KDO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3158, N'Kamphaeng Saen Airport', N'Nakhon Pathom', N'Thailand', N'KDT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5949, N'Skardu Airport', N'Skardu', N'Pakistan', N'KDU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5869, N'Vunisea Airport', N'Vunisea', N'Fiji', N'KDV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1171, N'Kadugli Airport', N'Kadugli', N'Sudan', N'KDX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8779, N'Typliy Klyuch Airport', N'Khandyga', N'Russia', N'KDY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1093, N'Ka+®di Airport', N'Kaedi', N'Mauritania', N'KED')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (16, N'Keflavik International Airport', N'Keflavik', N'Iceland', N'KEF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2957, N'Kemerovo Airport', N'Kemorovo', N'Russia', N'KEJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (363, N'Kiel-Holtenau Airport', N'Kiel', N'Germany', N'KEL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (432, N'Kemi-Tornio Airport', N'Kemi', N'Finland', N'KEM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5664, N'Kenema Airport', N'Kenema', N'Sierra Leone', N'KEN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13212, N'Odienne Airport', N'Odienne', N'Cote d''Ivoire', N'KEO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6182, N'Nepalgunj Airport', N'Nepalgunj', N'Nepal', N'KEP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2136, N'Kerman Airport', N'Kerman', N'Iran', N'KER')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11775, N'Kelsey Airport', N'Kelsey', N'Canada', N'KES')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3215, N'Kengtung Airport', N'Kengtung', N'Burma', N'KET')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (419, N'Halli Airport', N'Halli', N'Finland', N'KEV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8355, N'Keewaywin Airport', N'Keewaywin', N'Canada', N'KEW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8717, N'Kericho Airport', N'Kericho', N'Kenya', N'KEY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1091, N'Kiffa Airport', N'Kiffa', N'Mauritania', N'KFA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9127, N'Fortescue - Dave Forrest Aerodrome', N'Cloudbreak', N'Australia', N'KFE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6279, N'Kalkgurung Airport', N'Kalkgurung', N'Australia', N'KFG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7202, N'False Pass Airport', N'False Pass', N'United States', N'KFP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9273, N'Kastamonu Airport', N'Kastamonu', N'Turkey', N'KFS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1042, N'Kananga Airport', N'Kananga', N'Congo (Kinshasa)', N'KGA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4051, N'Kingscote Airport', N'Kingscote', N'Australia', N'KGC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2952, N'Khrabrovo Airport', N'Kaliningrad', N'Russia', N'KGD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5417, N'Kaghau Airport', N'Kagau Island', N'Solomon Islands', N'KGE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4375, N'Sary-Arka Airport', N'Karaganda', N'Kazakhstan', N'KGF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1087, N'K+®dougou Airport', N'Kedougou', N'Senegal', N'KGG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3346, N'Kalgoorlie Boulder Airport', N'Kalgoorlie', N'Australia', N'KGI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1014, N'Karonga Airport', N'Karonga', N'Malawi', N'KGJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7101, N'Koliganek Airport', N'Koliganek', N'United States', N'KGK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1165, N'Kigali International Airport', N'Kigali', N'Rwanda', N'KGL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7854, N'Kirovograd Airport', N'Kirovograd', N'Ukraine', N'KGO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4373, N'Kogalym International Airport', N'Kogalym', N'Russia', N'KGP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1458, N'Kos Airport', N'Kos', N'Greece', N'KGS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8921, N'Kangding Airport', N'Kangding', N'China', N'KGT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11019, N'Kagi Airport', N'Kagi', N'Papua New Guinea', N'KGW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12030, N'Kingaroy Airport', NULL, N'Australia', N'KGY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7963, N'Kerch Airport', N'Kerch', N'Ukraine', N'KHC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5927, N'Khoram Abad Airport', N'Khorram Abad', N'Iran', N'KHD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7516, N'Kherson International Airport', N'Kherson', N'Ukraine', N'KHE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3397, N'Kashgar Airport', N'Kashi', N'China', N'KHG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2264, N'Kaohsiung International Airport', N'Kaohsiung', N'Taiwan', N'KHH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2206, N'Jinnah International Airport', N'Karachi', N'Pakistan', N'KHI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (434, N'Kauhajoki Airport', N'Kauhajoki', N'Finland', N'KHJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2111, N'Khark Island Airport', N'Khark Island', N'Iran', N'KHK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4152, N'Kanti Airport', N'Khamti', N'Burma', N'KHM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3384, N'Nanchang Changbei International Airport', N'Nanchang', N'China', N'KHN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2192, N'Khasab Air Base', N'Khasab', N'Oman', N'KHS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8127, N'Khost Airport', N'Khost', N'Afghanistan', N'KHT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2927, N'Khabarovsk-Novy Airport', N'Khabarovsk', N'Russia', N'KHV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8053, N'Khwai River Lodge Airport', N'Khwai River', N'Botswana', N'KHW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2158, N'Khoy Airport', N'Khoy', N'Iran', N'KHY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13629, N'Kauehi Airport', N'Kauehi', N'French Polynesia', N'KHZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (703, N'Kristianstad Airport', N'Kristianstad', N'Sweden', N'KID')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5469, N'Kingfisher Lake Airport', N'Kingfisher Lake', N'Canada', N'KIF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2109, N'Kish International Airport', N'Kish Island', N'Iran', N'KIH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4381, N'Niigata Airport', N'Niigata', N'Japan', N'KIJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6832, N'Kirkuk Air Base', N'Kirkuk', N'Iraq', N'KIK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (815, N'Kimberley Airport', N'Kimberley', N'South Africa', N'KIM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1779, N'Norman Manley International Airport', N'Kingston', N'Jamaica', N'KIN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5743, N'Kili Airport', N'Kili Island', N'Marshall Islands', N'KIO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (601, N'Kerry Airport', N'Kerry', N'Ireland', N'KIR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1140, N'Kisumu Airport', N'Kisumu', N'Kenya', N'KIS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1454, N'Kithira Airport', N'Kithira', N'Greece', N'KIT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1735, N'Chi+ƒin-âu International Airport', N'Chisinau', N'Moldova', N'KIV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (911, N'Southdowns Airport', N'Southdowns', N'Zambia', N'KIW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3992, N'Kansai International Airport', N'Osaka', N'Japan', N'KIX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13465, N'Kilwa Masoko Airport', N'Kilwa Masoko', N'Tanzania', N'KIY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4374, N'Yemelyanovo Airport', N'Krasnoyarsk', N'Russia', N'KJA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10938, N'Kaili Airport', N'Kaili', N'China', N'KJH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8233, N'Kanas Airport', N'Burqin', N'China', N'KJI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (308, N'Wevelgem Airport', N'Kortrijk-vevelgem', N'Belgium', N'KJK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9148, N'Kerama Airport', N'Kerama', N'Japan', N'KJP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7190, N'Koyuk Alfred Adams Airport', N'Koyuk', N'United States', N'KKA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3938, N'Khon Kaen Airport', N'Khon Kaen', N'Thailand', N'KKC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2017, N'Kerikeri Airport', N'Kerikeri', N'New Zealand', N'KKE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7213, N'Kongiganak Airport', N'Kongiganak', N'United States', N'KKH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2311, N'Kitaky+½sh+½ Airport', N'Kitakyushu', N'Japan', N'KKJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (649, N'Kirkenes Airport (H+©ybuktmoen)', N'Kirkenes', N'Norway', N'KKN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1980, N'Kaukura Airport', N'Kaukura Atoll', N'French Polynesia', N'KKR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2120, N'Kashan Airport', N'Kashan', N'Iran', N'KKS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1025, N'Kikwit Airport', N'Kikwit', N'Congo (Kinshasa)', N'KKW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7551, N'Kikai Airport', N'Kikai', N'Japan', N'KKX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1083, N'Kaolack Airport', N'Kaolack', N'Senegal', N'KLC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2986, N'Migalovo Air Base', N'Tver', N'Russia', N'KLD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8482, N'Grabtsevo Airport', N'Kaluga', N'Russia', N'KLF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5964, N'Kalskag Airport', N'Kalskag', N'United States', N'KLG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3013, N'Kolhapur Airport', N'Kolhapur', N'India', N'KLH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1029, N'Kotakoli Airport', N'Kotakoli', N'Congo (Kinshasa)', N'KLI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13069, N'Klaip-ùda Airport', N'Klaipeda', N'Lithuania', N'KLJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2148, N'Kalaleh Airport', N'Kalaleh', N'Iran', N'KLM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7162, N'Larsen Bay Airport', N'Larsen Bay', N'United States', N'KLN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2430, N'Kalibo International Airport', N'Kalibo', N'Philippines', N'KLO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (707, N'Kalmar Airport', N'Kalkmar', N'Sweden', N'KLR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7938, N'Southwest Washington Regional Airport', N'Kelso', N'United States', N'KLS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4322, N'Klagenfurt Airport', N'Klagenfurt', N'Austria', N'KLU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1579, N'Karlovy Vary International Airport', N'Karlovy Vary', N'Czech Republic', N'KLV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7205, N'Klawock Airport', N'Klawock', N'United States', N'KLW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1456, N'Kalamata Airport', N'Kalamata', N'Greece', N'KLX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (819, N'Kleinsee Airport', N'Kleinsee', N'South Africa', N'KLZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5427, N'Kerema Airport', N'Kerema', N'Papua New Guinea', N'KMA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2073, N'King Khaled Military City Airport', N'King Khalid Mil.city', N'Saudi Arabia', N'KMC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1166, N'Kamembe Airport', N'Kamembe', N'Rwanda', N'KME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3382, N'Kunming Changshui International Airport', N'Kunming', N'China', N'KMG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (818, N'Johan Pienaar Airport', N'Kuruman', N'South Africa', N'KMH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2308, N'Miyazaki Airport', N'Miyazaki', N'Japan', N'KMI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2312, N'Kumamoto Airport', N'Kumamoto', N'Japan', N'KMJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1041, N'Kamina Base Airport', N'Kamina Base', N'Congo (Kinshasa)', N'KMN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7103, N'Manokotak Airport', N'Manokotak', N'United States', N'KMO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8918, N'Keetmanshoop Airport', N'Keetmanshoop', N'Namibia', N'KMP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2322, N'Komatsu Airport', N'Kanazawa', N'Japan', N'KMQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5556, N'Kumasi Airport', N'Kumasi', N'Ghana', N'KMS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1123, N'Kisimayu Airport', N'Kismayu', N'Somalia', N'KMU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6787, N'Kalay Airport', N'Kalemyo', N'Myanmar', N'KMV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6464, N'Kostroma Sokerkino Airport', N'Kostroma', N'Russia', N'KMW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11901, N'King Khaled Air Base', NULL, N'Saudi Arabia', N'KMX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7818, N'Vi+¦a del mar Airport', N'Vina del Mar', N'Chile', N'KNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1037, N'Kindu Airport', N'Kindu', N'Congo (Kinshasa)', N'KND')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (578, N'RAF Marham', N'Marham', N'United Kingdom', N'KNF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3258, N'Kaimana Airport', N'Kaimana', N'Indonesia', N'KNG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2259, N'Kinmen Airport', N'Kinmen', N'Taiwan', N'KNH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9935, N'Kualanamu International Airport', N'Medan', N'Indonesia', N'KNO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7412, N'Capanda Airport', N'Kapanda', N'Angola', N'KNP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1998, N'Kon+® Airport', N'Kone', N'New Caledonia', N'KNQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11903, N'Jam Airport', N'Kangan', N'Iran', N'KNR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6278, N'King Island Airport', N'King Island', N'Australia', N'KNS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3090, N'Kanpur Airport', N'Kanpur', N'India', N'KNU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6764, N'New Stuyahok Airport', N'New Stuyahok', N'United States', N'KNW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3347, N'Kununurra Airport', N'Kununurra', N'Australia', N'KNX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3514, N'Ellison Onizuka Kona International At Keahole Airport', N'Kona', N'United States', N'KOA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1999, N'Koumac Airport', N'Koumac', N'New Caledonia', N'KOC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3916, N'El Tari Airport', N'Kupang', N'Indonesia', N'KOE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (529, N'Kirkwall Airport', N'Kirkwall', N'United Kingdom', N'KOI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2307, N'Kagoshima Airport', N'Kagoshima', N'Japan', N'KOJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (435, N'Kokkola-Pietarsaari Airport', N'Kruunupyy', N'Finland', N'KOK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11290, N'Kongolo Airport', N'Kongolo', N'Congo (Kinshasa)', N'KOO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3936, N'Nakhon Phanom Airport', N'Nakhon Phanom', N'Thailand', N'KOP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8106, N'K+Âthen Airport', N'Koethen', N'Germany', N'KOQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4093, N'Sihanoukville International Airport', N'Sihanoukville', N'Cambodia', N'KOS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7207, N'Kotlik Airport', N'Kotlik', N'United States', N'KOT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5634, N'Koulamoutou Mabimbi Airport', N'Koulamoutou', N'Gabon', N'KOU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6083, N'Kokshetau Airport', N'Kokshetau', N'Kazakhstan', N'KOV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6379, N'Ganzhou Airport', N'Ganzhou', N'China', N'KOW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9899, N'Kokonau Airport', N'Kokonau', N'Indonesia', N'KOX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6736, N'Port Clarence Coast Guard Station', N'Port Clarence', N'United States', N'KPC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7201, N'Kipnuk Airport', N'Kipnuk', N'United States', N'KPN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2380, N'Pohang Airport (G-815/K-3)', N'Pohang', N'South Korea', N'KPO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12029, N'Kempsey Airport', NULL, N'Australia', N'KPS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7157, N'Perryville Airport', N'Perryville', N'United States', N'KPV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6134, N'Akutan Seaplane Base', N'Akutan', N'United States', N'KQA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13724, N'Kishangarh Airport', N'Ajmer', N'India', N'KQH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7472, N'Qurghonteppa International Airport', N'Kurgan Tyube', N'Tajikistan', N'KQT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12028, N'Kerang Airport', NULL, N'Australia', N'KRA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6280, N'Karumba Airport', N'Karumba', N'Australia', N'KRB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13532, N'Departi Parbo Airport', N'Kerinci Regency', N'Indonesia', N'KRC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (718, N'Kramfors Sollefte+Ñ Airport', N'Kramfors', N'Sweden', N'KRF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8975, N'Redhill Aerodrome', N'Redhill', N'United Kingdom', N'KRH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5426, N'Kikori Airport', N'Kikori', N'Papua New Guinea', N'KRI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (669, N'Krak+¦w John Paul II International Airport', N'Krakow', N'Poland', N'KRK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6407, N'Korla Airport', N'Korla', N'China', N'KRL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (724, N'Kiruna Airport', N'Kiruna', N'Sweden', N'KRN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6146, N'Kurgan Airport', N'Kurgan', N'Russia', N'KRO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (612, N'Karup Airport', N'Karup', N'Denmark', N'KRP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10069, N'Kramatorsk Airport', N'Kramatorsk', N'Ukraine', N'KRQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2960, N'Krasnodar Pashkovsky International Airport', N'Krasnodar', N'Russia', N'KRR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (638, N'Kristiansand Airport', N'Kristiansand', N'Norway', N'KRS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1175, N'Khartoum International Airport', N'Khartoum', N'Sudan', N'KRT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2977, N'Turkmenbashi Airport', N'Krasnovodsk', N'Turkmenistan', N'KRW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6408, N'Karamay Airport', N'Karamay', N'China', N'KRY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5650, N'Basango Mboliasa Airport', N'Kiri', N'Congo (Kinshasa)', N'KRZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2257, N'Kosrae International Airport', N'Kosrae', N'Micronesia', N'KSA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1746, N'Ko+íice Airport', N'Kosice', N'Slovakia', N'KSC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5595, N'Karlstad Airport', N'Karlstad', N'Sweden', N'KSD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13687, N'Kasese Airport', N'Kasese', N'Uganda', N'KSE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (400, N'Kassel-Calden Airport', N'Kassel', N'Germany', N'KSF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2114, N'Shahid Ashrafi Esfahani Airport', N'Bakhtaran', N'Iran', N'KSH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8880, N'Kissidougou Airport', N'Kissidougou', N'Guinea', N'KSI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1461, N'Kasos Airport', N'Kasos', N'Greece', N'KSJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (697, N'Karlskoga Airport', N'Karlskoga', N'Sweden', N'KSK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1170, N'Kassala Airport', N'Kassala', N'Sudan', N'KSL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6718, N'St Mary''s Airport', N'St Mary''s', N'United States', N'KSM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6088, N'Kostanay West Airport', N'Kostanay', N'Kazakhstan', N'KSN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1453, N'Kastoria National Airport', N'Kastoria', N'Greece', N'KSO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6153, N'Karshi Khanabad Airport', N'Khanabad', N'Uzbekistan', N'KSQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9850, N'Sikasso Airport', N'Sikasso', N'Mali', N'KSS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (647, N'Kristiansund Airport (Kvernberget)', N'Kristiansund', N'Norway', N'KSU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5796, N'Kars Airport', N'Kars', N'Turkey', N'KSY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6113, N'Kotlas Airport', N'Kotlas', N'Russia', N'KSZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3345, N'Karratha Airport', N'Karratha', N'Australia', N'KTA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2391, N'Kitadaito Airport', N'Kitadaito', N'Japan', N'KTD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3300, N'Kerteh Airport', N'Kerteh', N'Malaysia', N'KTE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7611, N'Takaka Airport', N'Takaka', N'New Zealand', N'KTF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3282, N'Ketapang(Rahadi Usman) Airport', N'Ketapang', N'Indonesia', N'KTG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8966, N'Kratie Airport', N'Kratie', N'Cambodia', N'KTI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1141, N'Kitale Airport', N'Kitale', N'Kenya', N'KTL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3125, N'Tribhuvan International Airport', N'Kathmandu', N'Nepal', N'KTM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3808, N'Ketchikan International Airport', N'Ketchikan', N'United States', N'KTN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1782, N'Tinson Pen Airport', N'Kingston', N'Jamaica', N'KTP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (427, N'Kitee Airport', N'Kitee', N'Finland', N'KTQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6897, N'Tindal Airport', N'Katherine', N'Australia', N'KTR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7183, N'Brevig Mission Airport', N'Brevig Mission', N'United States', N'KTS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (438, N'Kittil+ñ Airport', N'Kittila', N'Finland', N'KTT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3102, N'Kota Airport', N'Kota', N'India', N'KTU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (671, N'Katowice International Airport', N'Katowice', N'Poland', N'KTW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3299, N'Kuantan Airport', N'Kuantan', N'Malaysia', N'KUA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7592, N'Kuria Airport', N'Kuria', N'Kiribati', N'KUC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6222, N'Kudat Airport', N'Kudat', N'Malaysia', N'KUD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2993, N'Kurumoch International Airport', N'Samara', N'Russia', N'KUF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6282, N'Kubin Airport', N'Kubin', N'Australia', N'KUG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5994, N'Kushiro Airport', N'Kushiro', N'Japan', N'KUH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7094, N'Kasigluk Airport', N'Kasigluk', N'United States', N'KUK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3304, N'Kuala Lumpur International Airport', N'Kuala Lumpur', N'Malaysia', N'KUL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2303, N'Yakushima Airport', N'Yakushima', N'Japan', N'KUM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3956, N'Kaunas International Airport', N'Kaunas', N'Lithuania', N'KUN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (439, N'Kuopio Airport', N'Kuopio', N'Finland', N'KUO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3972, N'Kopitnari Airport', N'Kutaisi', N'Georgia', N'KUT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3085, N'Kullu Manali Airport', N'Kulu', N'India', N'KUU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6003, N'Kunsan Air Base', N'Kunsan', N'South Korea', N'KUV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1462, N'Alexander the Great International Airport', N'Kavala', N'Greece', N'KVA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (692, N'Sk+Âvde Airport', N'Skovde', N'Sweden', N'KVB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6765, N'King Cove Airport', N'King Cove', N'United States', N'KVC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6089, N'Ganja Airport', N'Ganja', N'Azerbaijan', N'KVD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5428, N'Kavieng Airport', N'Kavieng', N'Papua New Guinea', N'KVG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6734, N'Kirovsk-Apatity Airport', N'Apatity', N'Russia', N'KVK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6719, N'Kivalina Airport', N'Kivalina', N'United States', N'KVL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9371, N'Markovo Airport', N'Markovo', N'Russia', N'KVM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9042, N'Kavalerovo Airport', N'Kavalerovo', N'Russia', N'KVR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6142, N'Pobedilovo Airport', N'Kirov', N'Russia', N'KVX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2251, N'Bucholz Army Air Field', N'Kwajalein', N'Marshall Islands', N'KWA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11288, N'Dewadaru - Kemujan Island', N'Karimunjawa', N'Indonesia', N'KWB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3394, N'Longdongbao Airport', N'Guiyang', N'China', N'KWE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6104, N'Kryvyi Rih International Airport', N'Krivoy Rog', N'Ukraine', N'KWG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2176, N'Kuwait International Airport', N'Kuwait', N'Kuwait', N'KWI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2361, N'Gwangju Airport', N'Kwangju', N'South Korea', N'KWJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7096, N'Kwigillingok Airport', N'Kwigillingok', N'United States', N'KWK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3372, N'Guilin Liangjiang International Airport', N'Guilin', N'China', N'KWL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6281, N'Kowanyama Airport', N'Kowanyama', N'Australia', N'KWM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7206, N'Quinhagak Airport', N'Quinhagak', N'United States', N'KWN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7095, N'Kwethluk Airport', N'Kwethluk', N'United States', N'KWT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1039, N'Kolwezi Airport', N'Kolwezi', N'Congo (Kinshasa)', N'KWZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (814, N'P C Pelser Airport', N'Klerksdorp', N'South Africa', N'KXE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5876, N'Koro Island Airport', N'Koro Island', N'Fiji', N'KXF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6097, N'Komsomolsk-on-Amur Airport', N'Komsomolsk-on-Amur', N'Russia', N'KXK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1691, N'Konya Airport', N'Konya', N'Turkey', N'KYA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2267, N'Lanyu Airport', N'Lanyu', N'Taiwan', N'KYD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2178, N'Rene Mouawad Air Base', N'Kleiat', N'Lebanon', N'KYE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8472, N'Yalata Mission Airport', N'Yalata', N'Australia', N'KYI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7161, N'Karluk Airport', N'Karluk', N'United States', N'KYK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3217, N'Kyaukpyu Airport', N'Kyaukpyu', N'Burma', N'KYP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1046, N'Kayes Dag Dag Airport', N'Kayes', N'Mali', N'KYS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7208, N'Koyukuk Airport', N'Koyukuk', N'United States', N'KYU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6118, N'Kyzyl Airport', N'Kyzyl', N'Russia', N'KYZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3033, N'Kampong Chhnang Airport', N'Kompong Chnang', N'Cambodia', N'KZC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11355, N'Kaintiba Airport', N'Kieta', N'Papua New Guinea', N'KZF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (766, N'Flugplatz Kitzingen', N'Kitzingen', N'Germany', N'KZG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1463, N'Filippos Airport', N'Kozani', N'Greece', N'KZI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2990, N'Kazan International Airport', N'Kazan', N'Russia', N'KZN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4358, N'Kzyl-Orda Southwest Airport', N'Kzyl-Orda', N'Kazakhstan', N'KZO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9045, N'Zafer Airport', N'Kutahya', N'Turkey', N'KZR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4196, N'Kastelorizo Airport', N'Kastelorizo', N'Greece', N'KZS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4342, N'Lamar Municipal Airport', N'Lamar', N'United States', N'LAA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (951, N'Quatro de Fevereiro Airport', N'Luanda', N'Angola', N'LAD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4, N'Nadzab Airport', N'Nadzab', N'Papua New Guinea', N'LAE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6873, N'Purdue University Airport', N'Lafayette', N'United States', N'LAF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1416, N'Lannion-C+¦te de Granit Airport', N'Lannion', N'France', N'LAI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2579, N'Lages Airport', N'Lajes', N'Brazil', N'LAJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4236, N'Aklavik/Freddie Carmichael Airport', N'Aklavik', N'Canada', N'LAK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7732, N'Lakeland Linder International Airport', N'Lakeland', N'United States', N'LAL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7584, N'Los Alamos Airport', N'Los Alamos', N'United States', N'LAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3544, N'Capital City Airport', N'Lansing', N'United States', N'LAN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4202, N'Laoag International Airport', N'Laoag', N'Philippines', N'LAO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1816, N'Manuel M+írquez de Le+¦n International Airport', N'La Paz', N'Mexico', N'LAP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5699, N'La Abraq Airport', N'Al Bayda''', N'Libya', N'LAQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5746, N'Laramie Regional Airport', N'Laramie', N'United States', N'LAR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3877, N'McCarran International Airport', N'Las Vegas', N'United States', N'LAS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1144, N'Manda Airstrip', N'Lamu', N'Kenya', N'LAU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4256, N'Lawton Fort Sill Regional Airport', N'Lawton', N'United States', N'LAW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3484, N'Los Angeles International Airport', N'Los Angeles', N'United States', N'LAX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (824, N'Ladysmith Airport', N'Ladysmith', N'South Africa', N'LAY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2582, N'Bom Jesus da Lapa Airport', N'Bom Jesus Da Lapa', N'Brazil', N'LAZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (517, N'Leeds Bradford Airport', N'Leeds', N'United Kingdom', N'LBA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3829, N'Lubbock Preston Smith International Airport', N'Lubbock', N'United States', N'LBB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (364, N'L++beck Blankensee Airport', N'Luebeck', N'Germany', N'LBC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6147, N'Khudzhand Airport', N'Khudzhand', N'Tajikistan', N'LBD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5747, N'Arnold Palmer Regional Airport', N'Latrobe', N'United States', N'LBE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5748, N'North Platte Regional Airport Lee Bird Field', N'North Platte', N'United States', N'LBF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1380, N'Paris-Le Bourget Airport', N'Paris', N'France', N'LBG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1284, N'Albi-Le S+®questre Airport', N'Albi', N'France', N'LBI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3917, N'Komodo Airport', N'Labuhan Bajo', N'Indonesia', N'LBJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4341, N'Liberal Mid-America Regional Airport', N'Liberal', N'United States', N'LBL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (965, N'Lambarene Airport', N'Lambarene', N'Gabon', N'LBQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7381, N'L+íbrea Airport', N'Labrea', N'Brazil', N'LBR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5874, N'Labasa Airport', N'Lambasa', N'Fiji', N'LBS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8517, N'Lumberton Regional Airport', N'Lumberton', N'United States', N'LBT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3270, N'Labuan Airport', N'Labuan', N'Malaysia', N'LBU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (970, N'Libreville Leon M''ba International Airport', N'Libreville', N'Gabon', N'LBV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6232, N'Long Bawan Airport', N'Long Bawan-Borneo Island', N'Indonesia', N'LBW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7560, N'Lubang Airport', N'Lubang', N'Philippines', N'LBX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1406, N'La Baule-Escoublac Airport', N'La Baule', N'France', N'LBY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7411, N'Lucapa Airport', N'Lucapa', N'Angola', N'LBZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1197, N'Larnaca International Airport', N'Larnaca', N'Cyprus', N'LCA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1504, N'Lecce Galatina Air Base', N'Lecce', N'Italy', N'LCC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1771, N'Goloson International Airport', N'La Ceiba', N'Honduras', N'LCE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1220, N'A Coru+¦a Airport', N'La Coruna', N'Spain', N'LCG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3513, N'Lake Charles Regional Airport', N'Lake Charles', N'United States', N'LCH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5592, N'+ü+¦d+¦ W+éadys+éaw Reymont Airport', N'Lodz', N'Poland', N'LCJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3674, N'Rickenbacker International Airport', N'Columbus', N'United States', N'LCK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1911, N'La Coloma Airport', N'La Coloma', N'Cuba', N'LCL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6994, N'Lake City Gateway Airport', N'Lake City', N'United States', N'LCQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7504, N'Longyan Guanzhishan Airport', N'Longyan', N'China', N'LCX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (503, N'London City Airport', N'London', N'United Kingdom', N'LCY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2581, N'Governador Jos+® Richa Airport', N'Londrina', N'Brazil', N'LDB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1276, N'Tarbes-Lourdes-Pyr+®n+®es Airport', N'Tarbes', N'France', N'LDE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7480, N'Leshukonskoye Airport', N'Arkhangelsk', N'Russia', N'LDG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6285, N'Lord Howe Island Airport', N'Lord Howe Island', N'Australia', N'LDH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5705, N'Lindi Airport', N'Lindi', N'Tanzania', N'LDI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8550, N'Linden Airport', N'Linden', N'United States', N'LDJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (690, N'Lidk+Âping-Hovby Airport', N'Lidkoping', N'Sweden', N'LDK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11299, N'Mason County Airport', N'Ludington', N'United States', N'LDM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4172, N'Lamidanda Airport', N'Lamidanda', N'Nepal', N'LDN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9848, N'Lindu Airport', N'Yinchun', N'China', N'LDS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3268, N'Lahad Datu Airport', N'Lahad Datu', N'Malaysia', N'LDU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1411, N'Landivisiau Air Base', N'Landivisiau', N'France', N'LDV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8230, N'Saint-Laurent-du-Maroni Airport', N'Saint-Laurent-du-Maroni', N'French Guiana', N'LDX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (468, N'City of Derry Airport', N'Londonderry', N'United Kingdom', N'LDY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3348, N'Learmonth Airport', N'Learmonth', N'Australia', N'LEA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5749, N'Lebanon Municipal Airport', N'Lebanon', N'United States', N'LEB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6036, N'Coronel Hor+ício de Mattos Airport', N'Len+º+¦is', N'Brazil', N'LEC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2948, N'Pulkovo Airport', N'St. Petersburg', N'Russia', N'LED')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10145, N'Leesburg International Airport', N'Leesburg', N'United States', N'LEE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1371, N'Le Havre Octeville Airport', N'Le Havre', N'France', N'LEH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1213, N'Almer+¡a International Airport', N'Almeria', N'Spain', N'LEI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (348, N'Leipzig/Halle Airport', N'Leipzig', N'Germany', N'LEJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1101, N'Tata Airport', N'Labe', N'Guinea', N'LEK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6284, N'Lake Evella Airport', N'Lake Evella', N'Australia', N'LEL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6756, N'Leon Airport', N'Leon', N'Spain', N'LEN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5572, N'Land''s End Airport', N'Land''s End', N'United Kingdom', N'LEQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6290, N'Leinster Airport', N'Leinster', N'Australia', N'LER')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2728, N'Alfredo V+ísquez Cobo International Airport', N'Leticia', N'Colombia', N'LET')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1244, N'Pirineus - la Seu d''Urgel Airport', N'Seo De Urgel', N'Spain', N'LEU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4096, N'Levuka Airfield', N'Levuka', N'Fiji', N'LEV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8632, N'Auburn Lewiston Municipal Airport', N'Lewiston', N'United States', N'LEW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4017, N'Blue Grass Airport', N'Lexington KY', N'United States', N'LEX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (589, N'Lelystad Airport', N'Lelystad', N'Netherlands', N'LEY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (978, N'Lumbo Airport', N'Lumbo', N'Mozambique', N'LFB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3866, N'Langley Air Force Base', N'Hampton', N'United States', N'LFI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3651, N'Angelina County Airport', N'Lufkin', N'United States', N'LFK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2156, N'Lamerd Airport', N'Lamerd', N'Iran', N'LFM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11545, N'Linfen Qiaoli Airport', N'LINFEN', N'China', N'LFQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2846, N'La Fria Airport', N'La Fria', N'Venezuela', N'LFR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3493, N'Lafayette Regional Airport', N'Lafayette', N'United States', N'LFT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (298, N'Lom+®-Tokoin Airport', N'Lome', N'Togo', N'LFW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3697, N'La Guardia Airport', N'New York', N'United States', N'LGA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3582, N'Long Beach /Daugherty Field/ Airport', N'Long Beach', N'United States', N'LGB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8302, N'LaGrange Callaway Airport', N'LaGrange', N'United States', N'LGC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11102, N'La Grande/Union County Airport', N'La Grande', N'United States', N'LGD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (309, N'Li+¿ge Airport', N'Liege', N'Belgium', N'LGG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8349, N'Leigh Creek Airport', N'Leigh Creek', N'Australia', N'LGH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1950, N'Deadman''s Cay Airport', N'Dead Man''s Cay', N'Bahamas', N'LGI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3305, N'Langkawi International Airport', N'Langkawi', N'Malaysia', N'LGK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6215, N'Long Lellang Airport', N'Long Datih', N'Malaysia', N'LGL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6975, N'Langeoog Airport', N'Langeoog', N'Germany', N'LGO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4203, N'Legazpi City International Airport', N'Legazpi', N'Philippines', N'LGP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2453, N'Comodoro D.R. Salom+¦n Airport', N'Malargue', N'Argentina', N'LGS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6998, N'Logan-Cache Airport', N'Logan', N'United States', N'LGU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (502, N'London Gatwick Airport', N'London', N'United Kingdom', N'LGW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7905, N'Lahr Airport', N'Lahr', N'Germany', N'LHA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2207, N'Alama Iqbal International Airport', N'Lahore', N'Pakistan', N'LHE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6288, N'Lightning Ridge Airport', N'Lightning Ridge', N'Australia', N'LHG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12047, N'Guangzhou MR Air Base', N'Guanghua', N'China', N'LHK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (507, N'London Heathrow Airport', N'London', N'United Kingdom', N'LHR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6028, N'Las Heras Airport', N'Las Heras', N'Argentina', N'LHS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8532, N'William T. Piper Memorial Airport', N'Lock Haven', N'United States', N'LHV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3378, N'Lanzhou Zhongchuan Airport', N'Lanzhou', N'China', N'LHW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (594, N'Valkenburg Naval Air Base', N'Valkenburg', N'Netherlands', N'LID')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2000, N'Lifou Airport', N'Lifou', N'New Caledonia', N'LIF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1270, N'Limoges Airport', N'Limoges', N'France', N'LIG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3602, N'Lihue Airport', N'Lihue', N'United States', N'LIH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9868, N'Mulia Airport', N'Mulia', N'Indonesia', N'LII')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1399, N'Lille-Lesquin Airport', N'Lille', N'France', N'LIL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2789, N'Jorge Ch+ívez International Airport', N'Lima', N'Peru', N'LIM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1529, N'Milano Linate Airport', N'Milan', N'Italy', N'LIN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1883, N'Limon International Airport', N'Limon', N'Costa Rica', N'LIO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2580, N'Lins Airport', N'Lins', N'Brazil', N'LIP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1030, N'Lisala Airport', N'Lisala', N'Congo (Kinshasa)', N'LIQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1881, N'Daniel Oduber Quiros International Airport', N'Liberia', N'Costa Rica', N'LIR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1638, N'Humberto Delgado Airport (Lisbon Portela Airport)', N'Lisbon', N'Portugal', N'LIS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3660, N'Bill & Hillary Clinton National Airport/Adams Field', N'Little Rock', N'United States', N'LIT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6199, N'Loikaw Airport', N'Loikaw', N'Burma', N'LIW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9227, N'Likoma Island Airport', N'Likoma Island', N'Malawi', N'LIX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3632, N'Wright AAF (Fort Stewart)/Midcoast Regional Airport', N'Wright', N'United States', N'LIY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5653, N'Lodja Airport', N'Lodja', N'Congo (Kinshasa)', N'LJA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4033, N'Lijiang Airport', N'Lijiang', N'China', N'LJG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9252, N'Texas Gulf Coast Regional Airport', N'Angleton', N'United States', N'LJN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1569, N'Ljubljana Jo+¥e Pu-ìnik Airport', N'Ljubljana', N'Slovenia', N'LJU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5873, N'Lakeba Island Airport', N'Lakeba Island', N'Fiji', N'LKB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5693, N'Lokichoggio Airport', N'Lokichoggio', N'Kenya', N'LKG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6769, N'Long Akah Airport', N'Long Akah', N'Malaysia', N'LKH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (653, N'Banak Airport', N'Lakselv', N'Norway', N'LKL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5580, N'Leknes Airport', N'Leknes', N'Norway', N'LKN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3105, N'Chaudhary Charan Singh International Airport', N'Lucknow', N'India', N'LKO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8777, N'Lake Placid Airport', N'Lake Placid', N'United States', N'LKP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8139, N'Lake County Airport', N'Lakeview', N'United States', N'LKV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1181, N'Lake Manyara Airport', N'Lake Manyara', N'Tanzania', N'LKY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (556, N'RAF Lakenheath', N'Lakenheath', N'United Kingdom', N'LKZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (734, N'Lule+Ñ Airport', N'Lulea', N'Sweden', N'LLA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13477, N'Libo Airport', N'Libo', N'China', N'LLB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (831, N'Riverside Airport', N'Malalane', N'South Africa', N'LLE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8845, N'Lingling Airport', N'Yongzhou', N'China', N'LLF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1117, N'Lalibella Airport', N'Lalibella', N'Ethiopia', N'LLI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8774, N'Lankaran International Airport', N'Lankaran', N'Azerbaijan', N'LLK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5438, N'Alluitsup Paa Heliport', N'Alluitsup Paa', N'Greenland', N'LLU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9308, N'L++liang Airport', N'Lvliang', N'China', N'LLV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1016, N'Lilongwe International Airport', N'Lilongwe', N'Malawi', N'LLW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8548, N'South Jersey Regional Airport', N'Mount Holly', N'United States', N'LLY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7245, N'Minchumina Airport', N'Lake Minchumina', N'United States', N'LMA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1414, N'Le Mans-Arnage Airport', N'Le Mans', N'France', N'LME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1814, N'Valle del Fuerte International Airport', N'Los Mochis', N'Mexico', N'LMM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3264, N'Limbang Airport', N'Limbang', N'Malaysia', N'LMN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (544, N'RAF Lossiemouth', N'Lossiemouth', N'United Kingdom', N'LMO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1510, N'Lampedusa Airport', N'Lampedusa', N'Italy', N'LMP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1158, N'Marsa Brega Airport', N'Marsa Brega', N'Libya', N'LMQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11803, N'Lime Acres Finsch Mine Airport', N'Lime Acres', N'South Africa', N'LMR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5750, N'Crater Lake-Klamath Regional Airport', N'Klamath Falls', N'United States', N'LMT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3593, N'Palm Beach County Park Airport', N'West Palm Beach', N'United States', N'LNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5902, N'Lamen Bay Airport', N'Lamen Bay', N'Vanuatu', N'LNB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7831, N'Hunt Field', N'Lindau', N'Germany', N'LND')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5904, N'Lonorore Airport', N'Lonorore', N'Vanuatu', N'LNE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7527, N'Lintsang Airfield', N'Lincang', N'China', N'LNJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3543, N'Lincoln Airport', N'Lincoln', N'United States', N'LNK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13471, N'Longnan Chengzhou Airport', N'Longnan', N'China', N'LNL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8626, N'Willoughby Lost Nation Municipal Airport', N'Willoughby', N'United States', N'LNN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6283, N'Leonora Airport', N'Leonora', N'Australia', N'LNO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8493, N'Tri-County Regional Airport', N'Lone Rock', N'United States', N'LNR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5751, N'Lancaster Airport', N'Lancaster', N'United States', N'LNS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12009, N'Smolensk North Airport', N'Smolensk', N'Russia', N'LNX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3851, N'Lanai Airport', N'Lanai', N'United States', N'LNY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1611, N'Linz H+Ârsching Airport', N'Linz', N'Austria', N'LNZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5898, N'Longana Airport', N'Longana', N'Vanuatu', N'LOD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3186, N'Loei Airport', N'Loei', N'Thailand', N'LOE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6046, N'Camilo Ponce Enriquez Airport', N'La Toma (Catamayo)', N'Ecuador', N'LOH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1143, N'Lodwar Airport', N'Lodwar', N'Kenya', N'LOK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11839, N'Derby Field', N'Lovelock', N'United States', N'LOL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (241, N'Laghouat Airport', N'Laghouat', N'Algeria', N'LOO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8401, N'Lombok International Airport', N'Praya', N'Indonesia', N'LOP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (273, N'Murtala Muhammed International Airport', N'Lagos', N'Nigeria', N'LOS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7886, N'Lewis University Airport', N'Lockport', N'United States', N'LOT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3600, N'Bowman Field', N'Louisville', N'United States', N'LOU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1823, N'Monclova International Airport', N'Monclova', N'Mexico', N'LOV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8410, N'London-Corbin Airport/Magee Field', N'London', N'United States', N'LOZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1054, N'Gran Canaria Airport', N'Gran Canaria', N'Spain', N'LPA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2762, N'El Alto International Airport', N'La Paz', N'Bolivia', N'LPB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8771, N'Lompoc Airport', N'Lompoc', N'United States', N'LPC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6052, N'La Pedrera Airport', N'La Pedrera', N'Colombia', N'LPD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10937, N'Liupanshui Yuezhao Airport', N'Liupanshui', N'China', N'LPF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2447, N'La Plata Airport', N'La Plata', N'Argentina', N'LPG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (742, N'Link+Âping City Airport', N'Linkoeping', N'Sweden', N'LPI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6158, N'Lipetsk Airport', N'Lipetsk', N'Russia', N'LPK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (491, N'Liverpool John Lennon Airport', N'Liverpool', N'United Kingdom', N'LPL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5901, N'Lamap Airport', N'Lamap', N'Vanuatu', N'LPM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (441, N'Lappeenranta Airport', N'Lappeenranta', N'Finland', N'LPP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3115, N'Luang Phabang International Airport', N'Luang Prabang', N'Laos', N'LPQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6136, N'Lopez Island Airport', N'Lopez', N'United States', N'LPS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3163, N'Lampang Airport', N'Lampang', N'Thailand', N'LPT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6234, N'Long Apung Airport', N'Long Apung-Borneo Island', N'Indonesia', N'LPU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3952, N'Liep-üja International Airport', N'Liepaja', N'Latvia', N'LPX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1313, N'Le Puy-Loudes Airport', N'Le Puy', N'France', N'LPY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6051, N'Caucaya Airport', N'Puerto Legu+¡zamo', N'Colombia', N'LQM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1466, N'Larisa Airport', N'Larissa', N'Greece', N'LRA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3691, N'Laredo International Airport', N'Laredo', N'United States', N'LRD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6289, N'Longreach Airport', N'Longreach', N'Australia', N'LRE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3479, N'Little Rock Air Force Base', N'Jacksonville', N'United States', N'LRF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6493, N'La Rochelle-+Äle de R+® Airport', N'La Rochelle', N'France', N'LRH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (297, N'Niamtougou International Airport', N'Niatougou', N'Togo', N'LRL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1759, N'Casa De Campo International Airport', N'La Romana', N'Dominican Republic', N'LRM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5934, N'Lar Airport', N'Lar', N'Iran', N'LRR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1464, N'Leros Airport', N'Leros', N'Greece', N'LRS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1409, N'Lorient South Brittany (Bretagne Sud) Airport', N'Lorient', N'France', N'LRT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4228, N'Las Cruces International Airport', N'Las Cruces', N'United States', N'LRU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6420, N'Los Roques Airport', N'Los Roques', N'Venezuela', N'LRV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2662, N'La Florida Airport', N'La Serena', N'Chile', N'LSC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4044, N'La Crosse Municipal Airport', N'La Crosse', N'United States', N'LSE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3539, N'Lawson Army Air Field (Fort Benning)', N'Fort Benning', N'United States', N'LSF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3220, N'Lashio Airport', N'Lashio', N'Burma', N'LSH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (530, N'Sumburgh Airport', N'Sumburgh', N'United Kingdom', N'LSI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1882, N'Los Chiles Airport', N'Los Chiles', N'Costa Rica', N'LSL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2844, N'Josefa Camejo International Airport', N'Paraguana', N'Venezuela', N'LSP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2654, N'Mar+¡a Dolores Airport', N'Los Angeles', N'Chile', N'LSQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6786, N'Terre-de-Haut Airport', N'Les Saintes', N'Guadeloupe', N'LSS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3337, N'Launceston Airport', N'Launceston', N'Australia', N'LST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3814, N'Nellis Air Force Base', N'Las Vegas', N'United States', N'LSV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6229, N'Malikus Saleh Airport', N'Lhok Seumawe-Sumatra Island', N'Indonesia', N'LSW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3292, N'Lhok Sukon Airport', N'Lhok Sukon', N'Indonesia', N'LSX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6287, N'Lismore Airport', N'Lismore', N'Australia', N'LSY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8846, N'Lo+íinj Island Airport', N'Mali Losinj', N'Croatia', N'LSZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (863, N'Tzaneen Airport', N'Tzaneen', N'South Africa', N'LTA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1162, N'Ghadames East Airport', N'Ghadames', N'Libya', N'LTD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6370, N'Altai Airport', N'Altai', N'Mongolia', N'LTI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2239, N'Bassel Al-Assad International Airport', N'Latakia', N'Syria', N'LTK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2873, N'Lethem Airport', N'Lethem', N'Guyana', N'LTM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (492, N'London Luton Airport', N'London', N'United Kingdom', N'LTN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1817, N'Loreto International Airport', N'Loreto', N'Mexico', N'LTO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1259, N'Le Touquet-C+¦te d''Opale Airport', N'Le Tourquet', N'France', N'LTQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3635, N'Altus Air Force Base', N'Altus', N'United States', N'LTS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5786, N'La M+¦le Airport', N'La M+¦le', N'France', N'LTT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2678, N'Cotopaxi International Airport', N'Latacunga', N'Ecuador', N'LTX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4170, N'Lukla Airport', N'Lukla', N'Nepal', N'LUA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13601, N'Laucala Island Airport', N'Laucala', N'Fiji', N'LUC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5641, N'Luderitz Airport', N'Luderitz', N'Namibia', N'LUD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3506, N'Luke Air Force Base', N'Phoenix', N'United States', N'LUF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1675, N'Lugano Airport', N'Lugano', N'Switzerland', N'LUG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3103, N'Ludhiana Airport', N'Ludhiaha', N'India', N'LUH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3681, N'Cincinnati Municipal Airport Lunken Field', N'Cincinnati', N'United States', N'LUK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6376, N'Mangshi Airport', N'Luxi', N'China', N'LUM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (907, N'Kenneth Kaunda International Airport Lusaka', N'Lusaka', N'Zambia', N'LUN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (960, N'Luena Airport', N'Luena', N'Angola', N'LUO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5989, N'Kalaupapa Airport', N'Molokai', N'United States', N'LUP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2467, N'Brigadier Mayor D Cesar Raul Ojeda Airport', N'San Luis', N'Argentina', N'LUQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3413, N'Cape Lisburne LRRS Airport', N'Cape Lisburne', N'United States', N'LUR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6212, N'Dumatumbun Airport', N'Langgur-Kei Islands', N'Indonesia', N'LUV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3254, N'Syukuran Aminuddin Amir Airport', N'Luwuk', N'Indonesia', N'LUW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (629, N'Luxembourg-Findel International Airport', N'Luxemburg', N'Luxembourg', N'LUX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8832, N'Lublin Airport', N'Lublin', N'Poland', N'LUZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1378, N'Laval-Entrammes Airport', N'Laval', N'France', N'LVA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (906, N'Livingstone Airport', N'Livingstone', N'Zambia', N'LVI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7629, N'Livermore Municipal Airport', N'Livermore', N'United States', N'LVK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7717, N'Mission Field', N'Livingston-Montana', N'United States', N'LVM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6291, N'Laverton Airport', N'Laverton', N'Australia', N'LVO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2113, N'Lavan Island Airport', N'Lavan Island', N'Iran', N'LVP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4225, N'Las Vegas Municipal Airport', N'Las Vegas', N'United States', N'LVS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6958, N'Greenbrier Valley Airport', N'Lewisburg', N'United States', N'LWB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8366, N'Lawrence Municipal Airport', N'Lawrence', N'United States', N'LWC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5570, N'Lerwick / Tingwall Airport', N'Lerwick', N'United Kingdom', N'LWK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8288, N'Lawrence Municipal Airport', N'Lawrence', N'United States', N'LWM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3965, N'Gyumri Shirak Airport', N'Gyumri', N'Armenia', N'LWN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2945, N'Lviv International Airport', N'Lvov', N'Ukraine', N'LWO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (590, N'Leeuwarden Air Base', N'Leeuwarden', N'Netherlands', N'LWR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3945, N'Lewiston Nez Perce County Airport', N'Lewiston', N'United States', N'LWS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5752, N'Lewistown Municipal Airport', N'Lewistown', N'United States', N'LWT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6219, N'Lawas Airport', N'Lawas', N'Malaysia', N'LWY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4097, N'Lhasa Gonggar Airport', N'Lhasa', N'China', N'LXA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4142, N'Luang Namtha Airport', N'Luang Namtha', N'Laos', N'LXG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11074, N'Jim Kelly Field', N'Lexington', N'United States', N'LXN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1132, N'Luxor International Airport', N'Luxor', N'Egypt', N'LXR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1465, N'Limnos Airport', N'Limnos', N'Greece', N'LXS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4148, N'Luoyang Airport', N'Luoyang', N'China', N'LYA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4314, N'Edward Bodden Airfield', N'Little Cayman', N'Cayman Islands', N'LYB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (719, N'Lycksele Airport', N'Lycksele', N'Sweden', N'LYC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (482, N'RAF Lyneham', N'Lyneham', N'United Kingdom', N'LYE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6383, N'Lianyungang Airport', N'Lianyungang', N'China', N'LYG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5753, N'Lynchburg Regional Preston Glenn Field', N'Lynchburg', N'United States', N'LYH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6385, N'Shubuling Airport', N'Linyi', N'China', N'LYI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6886, N'Lympne Airport', N'Lympne', N'United Kingdom', N'LYM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1346, N'Lyon-Bron Airport', N'Lyon', N'France', N'LYN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2202, N'Faisalabad International Airport', N'Faisalabad', N'Pakistan', N'LYP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (658, N'Svalbard Airport', N'Longyear Svalbard', N'Norway', N'LYR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1335, N'Lyon Saint-Exup+®ry Airport', N'Lyon', N'France', N'LYS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7016, N'Ely Municipal Airport', N'Ely', N'United States', N'LYU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (509, N'Lydd Airport', N'Lydd', N'United Kingdom', N'LYX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1813, N'L+ízaro C+írdenas Airport', N'Lazard Cardenas', N'Mexico', N'LZC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6356, N'Liuzhou Bailian Airport', N'Liuzhou', N'China', N'LZH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5991, N'Matsu Nangan Airport', N'Matsu Islands', N'Taiwan', N'LZN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6399, N'Luzhou Airport', N'Luzhou', N'China', N'LZO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7573, N'Lizard Island Airport', N'Lizard Island', N'Australia', N'LZR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7847, N'Gwinnett County Briscoe Field', N'Lawrenceville', N'United States', N'LZU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6402, N'Nyingchi Airport', N'Nyingchi', N'China', N'LZY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3144, N'Chennai International Airport', N'Madras', N'India', N'MAA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2584, N'Jo+úo Correa da Rocha Airport', N'Maraba', N'Brazil', N'MAB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1229, N'Adolfo Su+írez MadridÔÇôBarajas Airport', N'Madrid', N'Spain', N'MAD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8221, N'Madera Municipal Airport', N'Madera', N'United States', N'MAE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3652, N'Midland International Airport', N'Midland', N'United States', N'MAF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2, N'Madang Airport', N'Madang', N'Papua New Guinea', N'MAG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1231, N'Menorca Airport', N'Menorca', N'Spain', N'MAH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11807, N'Mangochi Airport', N'Mangochi', N'Malawi', N'MAI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2249, N'Marshall Islands International Airport', N'Majuro', N'Marshall Islands', N'MAJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1174, N'Malakal Airport', N'Malakal', N'Sudan', N'MAK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1818, N'General Servando Canales International Airport', N'Matamoros', N'Mexico', N'MAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (478, N'Manchester Airport', N'Manchester', N'United Kingdom', N'MAN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2551, N'Eduardo Gomes International Airport', N'Manaus', N'Brazil', N'MAO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6186, N'Mae Sot Airport', N'Tak', N'Thailand', N'MAQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2848, N'La Chinita International Airport', N'Maracaibo', N'Venezuela', N'MAR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5430, N'Momote Airport', N'Momote', N'Papua New Guinea', N'MAS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5647, N'Tshimpi Airport', N'Matadi', N'Congo (Kinshasa)', N'MAT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1994, N'Maupiti Airport', N'Maupiti', N'French Polynesia', N'MAU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7442, N'Ouro Sogui Airport', N'Matam', N'Senegal', N'MAX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1927, N'Clarence A. Bain Airport', N'Clarence Bain', N'Bahamas', N'MAY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2888, N'Eugenio Maria De Hostos Airport', N'Mayaguez', N'Puerto Rico', N'MAZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1145, N'Mombasa Moi International Airport', N'Mombasa', N'Kenya', N'MBA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5606, N'Mmabatho International Airport', N'Mafeking', N'South Africa', N'MBD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2298, N'Monbetsu Airport', N'Monbetsu', N'Japan', N'MBE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11840, N'Mobridge Municipal Airport', N'Mobridge', N'United States', N'MBG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6306, N'Maryborough Airport', N'Maryborough', N'Australia', N'MBH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (14095, N'Songwe Airport', N'Mbeya', N'Tanzania', N'MBI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1780, N'Sangster International Airport', N'Montego Bay', N'Jamaica', N'MBJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7054, N'Manistee Co Blacker Airport', N'Manistee', N'United States', N'MBL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2411, N'Mamburao Airport', N'Mamburao', N'Philippines', N'MBO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4128, N'MBS International Airport', N'Saginaw', N'United States', N'MBS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6025, N'Moises R. Espinosa Airport', N'Masbate', N'Philippines', N'MBT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5408, N'Babanakira Airport', N'Mbambanakira', N'Solomon Islands', N'MBU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3338, N'Melbourne Moorabbin Airport', N'Melbourne', N'Australia', N'MBW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1570, N'Maribor Airport', N'Maribor', N'Slovenia', N'MBX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7396, N'Mau+®s Airport', N'Maues', N'Brazil', N'MBZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11841, N'Mc Comb/Pike County Airport/John E Lewis Field', N'Mc Comb', N'United States', N'MCB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3684, N'Mc Clellan Airfield', N'Sacramento', N'United States', N'MCC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7122, N'Merced Regional Macready Field', N'Merced', N'United States', N'MCE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3789, N'Mac Dill Air Force Base', N'Tampa', N'United States', N'MCF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5965, N'McGrath Airport', N'Mcgrath', N'United States', N'MCG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2681, N'General Manuel Serrano Airport', N'Machala', N'Ecuador', N'MCH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3458, N'Kansas City International Airport', N'Kansas City', N'United States', N'MCI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2727, N'Jorge Isaac Airport', N'La Mina', N'Colombia', N'MCJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7068, N'Mc Cook Ben Nelson Regional Airport', N'McCook', N'United States', N'MCK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8050, N'McKinley National Park Airport', N'McKinley Park', N'United States', N'MCL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3754, N'Middle Georgia Regional Airport', N'Macon', N'United States', N'MCN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3878, N'Orlando International Airport', N'Orlando', N'United States', N'MCO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2591, N'Alberto Alcolumbre Airport', N'Macapa', N'Brazil', N'MCP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2473, N'Monte Caseros Airport', N'Monte Caseros', N'Argentina', N'MCS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2194, N'Muscat International Airport', N'Muscat', N'Oman', N'MCT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1269, N'Montlu+ºon-Gu+®ret Airport', N'Montlucon-gueret', N'France', N'MCU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6297, N'McArthur River Mine Airport', N'McArthur River Mine', N'Australia', N'MCV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6500, N'Mason City Municipal Airport', N'Mason City', N'United States', N'MCW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2961, N'Uytash Airport', N'Makhachkala', N'Russia', N'MCX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3325, N'Sunshine Coast Airport', N'Maroochydore', N'Australia', N'MCY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2590, N'Zumbi dos Palmares Airport', N'Maceio', N'Brazil', N'MCZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3250, N'Sam Ratulangi Airport', N'Manado', N'Indonesia', N'MDC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2745, N'Jose Maria C+¦rdova International Airport', N'Rio Negro', N'Colombia', N'MDE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3402, N'Mudanjiang Hailang International Airport', N'Mudanjiang', N'China', N'MDG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11842, N'Southern Illinois Airport', N'Carbondale/Murphysboro', N'United States', N'MDH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (272, N'Makurdi Airport', N'Makurdi', N'Nigeria', N'MDI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1026, N'Mbandaka Airport', N'Mbandaka', N'Congo (Kinshasa)', N'MDK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3222, N'Mandalay International Airport', N'Mandalay', N'Burma', N'MDL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2508, N'+üstor Piazzola International Airport', N'Mar Del Plata', N'Argentina', N'MDQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5808, N'Middle Caicos Airport', N'Middle Caicos', N'Turks and Caicos Islands', N'MDS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3542, N'Harrisburg International Airport', N'Harrisburg', N'United States', N'MDT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5429, N'Mendi Airport', N'Mendi', N'Papua New Guinea', N'MDU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3747, N'Chicago Midway International Airport', N'Chicago', N'United States', N'MDW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2253, N'Henderson Field', N'Midway', N'Midway Islands', N'MDY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2452, N'El Plumerillo Airport', N'Mendoza', N'Argentina', N'MDZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6037, N'Maca+® Airport', N'Maca+®', N'Brazil', N'MEA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3334, N'Melbourne Essendon Airport', N'Melbourne', N'Australia', N'MEB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2683, N'Eloy Alfaro International Airport', N'Manta', N'Ecuador', N'MEC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2074, N'Prince Mohammad Bin Abdulaziz Airport', N'Madinah', N'Saudi Arabia', N'MED')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2002, N'Mar+® Airport', N'Mare', N'New Caledonia', N'MEE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (952, N'Malanje Airport', N'Malanje', N'Angola', N'MEG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4327, N'Mehamn Airport', N'Mehamn', N'Norway', N'MEH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4335, N'Key Field', N'Meridian', N'United States', N'MEI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1069, N'Bassatine Airport', N'Meknes', N'Morocco', N'MEK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3339, N'Melbourne International Airport', N'Melbourne', N'Australia', N'MEL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3473, N'Memphis International Airport', N'Memphis', N'United States', N'MEM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1364, N'Mende-Brenoux Airfield', N'Mende', N'France', N'MEN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9417, N'Dare County Regional Airport', N'Manteo', N'United States', N'MEO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9886, N'Seunagan Airport', N'Nagan Raya', N'Indonesia', N'MEQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3683, N'Castle Airport', N'Merced', N'United States', N'MER')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3279, N'Soewondo Air Force Base', N'Medan', N'Indonesia', N'MES')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2585, N'Monte Dourado Airport', N'Almeirim', N'Brazil', N'MEU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1824, N'Licenciado Benito Juarez International Airport', N'Mexico City', N'Mexico', N'MEX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6181, N'Meghauli Airport', N'Meghauli', N'Nepal', N'MEY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4121, N'Mafia Island Airport', N'Mafia Island', N'Tanzania', N'MFA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4254, N'Mansfield Lahm Regional Airport', N'Mansfield', N'United States', N'MFD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3826, N'Mc Allen Miller International Airport', N'Mcallen', N'United States', N'MFE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2210, N'Muzaffarabad Airport', N'Muzaffarabad', N'Pakistan', N'MFG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8653, N'Marshfield Municipal Airport', N'Marshfield', N'United States', N'MFI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5871, N'Moala Airport', N'Moala', N'Fiji', N'MFJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5993, N'Matsu Beigan Airport', N'Matsu Islands', N'Taiwan', N'MFK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3121, N'Macau International Airport', N'Macau', N'Macau', N'MFM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4031, N'Milford Sound Airport', N'Milford Sound', N'New Zealand', N'MFN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (279, N'Maradi Airport', N'Maradi', N'Niger', N'MFQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4101, N'Rogue Valley International Medford Airport', N'Medford', N'United States', N'MFR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (908, N'Mfuwe Airport', N'Mfuwe', N'Zambia', N'MFU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8080, N'M+®ribel Altiport', N'Ajaccio', N'France', N'MFX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1863, N'Augusto C. Sandino (Managua) International Airport', N'Managua', N'Nicaragua', N'MGA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6303, N'Mount Gambier Airport', N'Mount Gambier', N'Australia', N'MGB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6844, N'Michigan City Municipal Airport', N'Michigan City', N'United States', N'MGC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3666, N'Dobbins Air Reserve Base', N'Marietta', N'United States', N'MGE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2586, N'Regional de Maring+í - S+¡lvio Nane Junior Airport', N'Maringa', N'Brazil', N'MGF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (827, N'Margate Airport', N'Margate', N'South Africa', N'MGH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8283, N'Orange County Airport', N'Montgomery', N'United States', N'MGJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (370, N'M+Ânchengladbach Airport', N'Moenchengladbach', N'Germany', N'MGL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4115, N'Montgomery Regional (Dannelly Field) Airport', N'MONTGOMERY', N'United States', N'MGM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2730, N'Baracoa Airport', N'Magangue', N'Colombia', N'MGN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5687, N'Aden Adde International Airport', N'Mogadishu', N'Somalia', N'MGQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5862, N'Mangaia Island Airport', N'Mangaia Island', N'Cook Islands', N'MGS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6295, N'Milingimbi Airport', N'Milingimbi', N'Australia', N'MGT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4284, N'Morgantown Municipal Walter L. Bill Hart Field', N'Morgantown', N'United States', N'MGW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7776, N'Dayton-Wright Brothers Airport', N'Dayton', N'United States', N'MGY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3223, N'Myeik Airport', N'Myeik', N'Burma', N'MGZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7352, N'Mahdia Airport', N'Mahdia', N'Guyana', N'MHA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9774, N'Mocopulli Airport', N'Castro', N'Chile', N'MHC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4331, N'Mashhad International Airport', N'Mashhad', N'Iran', N'MHD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13803, N'Mitchell Municipal Airport', N'Mitchell', N'United States', N'MHE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (356, N'Mannheim-City Airport', N'Mannheim', N'Germany', N'MHG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1930, N'Leonard M Thompson International Airport', N'Marsh Harbor', N'Bahamas', N'MHH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4050, N'Manhattan Regional Airport', N'Manhattan', N'United States', N'MHK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2953, N'Minsk 1 Airport', N'Minsk', N'Belarus', N'MHP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (442, N'Mariehamn Airport', N'Mariehamn', N'Finland', N'MHQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3434, N'Sacramento Mather Airport', N'Sacramento', N'United States', N'MHR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4011, N'Manchester-Boston Regional Airport', N'Manchester NH', N'United States', N'MHT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6274, N'Mount Hotham Airport', N'Mount Hotham', N'Australia', N'MHU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7026, N'Mojave Airport', N'Mojave', N'United States', N'MHV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5863, N'Manihiki Island Airport', N'Manihiki Island', N'Cook Islands', N'MHX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (557, N'RAF Mildenhall', N'Mildenhall', N'United Kingdom', N'MHZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3576, N'Miami International Airport', N'Miami', N'United States', N'MIA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3637, N'Minot Air Force Base', N'Minot', N'United States', N'MIB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1819, N'Licenciado Manuel Crescencio Rejon Int Airport', N'Merida', N'Mexico', N'MID')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6871, N'Delaware County Johnson Field', N'Muncie', N'United States', N'MIE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6400, N'Mianyang Airport', N'Mianyang', N'China', N'MIG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6038, N'Frank Miloye MilenkowichiÔÇôMar+¡lia State Airport', N'Mar+¡lia', N'Brazil', N'MII')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5833, N'Mili Island Airport', N'Mili Island', N'Marshall Islands', N'MIJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (444, N'Mikkeli Airport', N'Mikkeli', N'Finland', N'MIK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6294, N'Merimbula Airport', N'Merimbula', N'Australia', N'MIM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1604, N'Ramon Air Base', N'Ramon', N'Israel', N'MIP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (286, N'Monastir Habib Bourguiba International Airport', N'Monastir', N'Tunisia', N'MIR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5432, N'Misima Island Airport', N'Misima Island', N'Papua New Guinea', N'MIS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (271, N'Maiduguri International Airport', N'Maiduguri', N'Nigeria', N'MIU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3679, N'Millville Municipal Airport', N'Millville', N'United States', N'MIV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5629, N'Manja Airport', N'Manja', N'Madagascar', N'MJA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (257, N'Man Airport', N'Man', N'Cote d''Ivoire', N'MJC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2212, N'Moenjodaro Airport', N'Moenjodaro', N'Pakistan', N'MJD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (652, N'Mosj+©en Airport (Kj+ªrstad)', N'Mosjoen', N'Norway', N'MJF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5698, N'Mitiga Airport', N'Tripoli', N'Libya', N'MJI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6326, N'Shark Bay Airport', N'Shark Bay', N'Australia', N'MJK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5635, N'Mouilla Ville Airport', N'Mouila', N'Gabon', N'MJL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1043, N'Mbuji Mayi Airport', N'Mbuji-mayi', N'Congo (Kinshasa)', N'MJM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (929, N'Amborovy Airport', N'Mahajanga', N'Madagascar', N'MJN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1469, N'Mytilene International Airport', N'Mytilini', N'Greece', N'MJT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1227, N'San Javier Airport', N'Murcia', N'Spain', N'MJV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2925, N'Mirny Airport', N'Mirnyj', N'Russia', N'MJZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4293, N'Charles B. Wheeler Downtown Airport', N'Kansas City', N'United States', N'MKC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3717, N'General Mitchell International Airport', N'Milwaukee', N'United States', N'MKE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5754, N'Muskegon County Airport', N'Muskegon', N'United States', N'MKG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3705, N'Molokai Airport', N'Molokai', N'United States', N'MKK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3704, N'McKellar-Sipes Regional Airport', N'Jackson', N'United States', N'MKL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6217, N'Mukah Airport', N'Mukah', N'Malaysia', N'MKM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1981, N'Makemo Airport', N'Makemo', N'French Polynesia', N'MKP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3246, N'Mopah Airport', N'Merauke', N'Indonesia', N'MKQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6293, N'Meekatharra Airport', N'Meekatharra', N'Australia', N'MKR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7418, N'Mekane Selam Airport', N'Mekane Selam', N'Ethiopia', N'MKS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (969, N'Makokou Airport', N'Makokou', N'Gabon', N'MKU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3260, N'Rendani Airport', N'Manokwari', N'Indonesia', N'MKW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3326, N'Mackay Airport', N'Mackay', N'Australia', N'MKY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3306, N'Malacca Airport', N'Malacca', N'Malaysia', N'MKZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1606, N'Malta International Airport', N'Malta', N'Malta', N'MLA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3671, N'Melbourne International Airport', N'Melbourne', N'United States', N'MLB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3629, N'Mc Alester Regional Airport', N'Mcalester', N'United States', N'MLC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3156, N'Mal+® International Airport', N'Male', N'Maldives', N'MLE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3894, N'Abdul Rachman Saleh Airport', N'Malang', N'Indonesia', N'MLG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4072, N'Quad City International Airport', N'Moline', N'United States', N'MLI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7097, N'Marshall Don Hunter Sr Airport', N'Marshall', N'United States', N'MLL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1821, N'General Francisco J. Mujica International Airport', N'Morelia', N'Mexico', N'MLM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1058, N'Melilla Airport', N'Melilla', N'Spain', N'MLN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4193, N'Milos Airport', N'Milos', N'Greece', N'MLO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5755, N'Frank Wiley Field', N'Miles City', N'United States', N'MLS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3732, N'Monroe Regional Airport', N'Monroe', N'United States', N'MLU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1062, N'Spriggs Payne Airport', N'Monrovia', N'Liberia', N'MLW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1695, N'Malatya Erha+º Airport', N'Malatya', N'Turkey', N'MLX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7246, N'Manley Hot Springs Airport', N'Manley Hot Springs', N'United States', N'MLY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11268, N'Cerro Largo International Airport', N'Melo', N'Uruguay', N'MLZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2290, N'Memanbetsu Airport', N'Memanbetsu', N'Japan', N'MMB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2389, N'Minami-Daito Airport', N'Minami Daito', N'Japan', N'MMD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (522, N'Durham Tees Valley Airport', N'Teesside', N'United Kingdom', N'MME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6299, N'Mount Magnet Airport', N'Mount Magnet', N'Australia', N'MMG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7081, N'Mammoth Yosemite Airport', N'Mammoth Lakes', N'United States', N'MMH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7984, N'McMinn County Airport', N'Athens', N'United States', N'MMI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2280, N'Matsumoto Airport', N'Matsumoto', N'Japan', N'MMJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2949, N'Murmansk Airport', N'Murmansk', N'Russia', N'MMK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1104, N'Maio Airport', N'Maio', N'Cape Verde', N'MMO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11843, N'Mc Entire Joint National Guard Base', N'Eastover', N'United States', N'MMT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7657, N'Morristown Municipal Airport', N'Morristown', N'United States', N'MMU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (708, N'Malm+Â Sturup Airport', N'Malmoe', N'Sweden', N'MMX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2390, N'Miyako Airport', N'Miyako', N'Japan', N'MMY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2052, N'Maimana Airport', N'Maimama', N'Afghanistan', N'MMZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9889, N'Melangguane Airport', N'Melonguane', N'Indonesia', N'MNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1022, N'Muanda Airport', N'Muanda', N'Congo (Kinshasa)', N'MNB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (983, N'Nacala Airport', N'Nacala', N'Mozambique', N'MNC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5870, N'Mana Island Airport', N'Mana Island', N'Fiji', N'MNF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6296, N'Maningrida Airport', N'Maningrida', N'Australia', N'MNG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (14101, N'Rustaq Airport', N'Al Masna''ah', N'Oman', N'MNH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4146, N'John A. Osborne Airport', N'Geralds', N'Montserrat', N'MNI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (941, N'Mananjary Airport', N'Mananjary', N'Madagascar', N'MNJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7599, N'Maiana Airport', N'Maiana', N'Kiribati', N'MNK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2397, N'Ninoy Aquino International Airport', N'Manila', N'Philippines', N'MNL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3618, N'Menominee Regional Airport', N'Macon', N'United States', N'MNM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (909, N'Mongu Airport', N'Mongu', N'Zambia', N'MNR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13468, N'Mansa Airport', N'Mansa', N'Zambia', N'MNS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6200, N'Mawlamyine Airport', N'Mawlamyine', N'Burma', N'MNU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2594, N'Manicor+® Airport', N'Manicore', N'Brazil', N'MNX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5413, N'Mono Airport', N'Stirling Island', N'Solomon Islands', N'MNY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9251, N'Manassas Regional Airport/Harry P. Davis Field', N'Manassas', N'United States', N'MNZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1912, N'Orestes Acosta Airport', N'Moa', N'Cuba', N'MOA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3782, N'Mobile Regional Airport', N'Mobile', N'United States', N'MOB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2587, N'M+írio Ribeiro Airport', N'Montes Claros', N'Brazil', N'MOC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3816, N'Modesto City Co-Harry Sham Field', N'Modesto', N'United States', N'MOD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3226, N'Momeik Airport', N'Momeik', N'Burma', N'MOE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3913, N'Maumere(Wai Oti) Airport', N'Maumere', N'Indonesia', N'MOF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3227, N'Mong Hsat Airport', N'Mong Hsat', N'Burma', N'MOG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5865, N'Mitiaro Island Airport', N'Mitiaro Island', N'Cook Islands', N'MOI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7334, N'Moengo Airstrip', N'Moengo', N'Suriname', N'MOJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (651, N'Molde Airport', N'Molde', N'Norway', N'MOL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2020, N'Mount Cook Airport', N'Mount Cook', N'New Zealand', N'MON')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8831, N'Moomba Airport', N'Moomba', N'Australia', N'MOO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (922, N'Morondava Airport', N'Morondava', N'Madagascar', N'MOQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3498, N'Minot International Airport', N'Minot', N'United States', N'MOT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5966, N'Mountain Village Airport', N'Mountain Village', N'United States', N'MOU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6301, N'Moranbah Airport', N'Moranbah', N'Australia', N'MOV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1992, N'Moorea Airport', N'Moorea', N'French Polynesia', N'MOZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6779, N'Katima Mulilo Airport', N'Mpacha', N'Namibia', N'MPA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2426, N'Godofredo P. Ramos Airport', N'Caticlan', N'Philippines', N'MPH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6004, N'Mokpo Heliport', N'Mokpo', N'South Korea', N'MPK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1359, N'Montpellier-M+®diterran+®e Airport', N'Montpellier', N'France', N'MPL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (979, N'Maputo Airport', N'Maputo', N'Mozambique', N'MPM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (579, N'Mount Pleasant Airport', N'Mount Pleasant', N'Falkland Islands', N'MPN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11110, N'Pocono Mountains Municipal Airport', N'Mount Pocono', N'United States', N'MPO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3606, N'Edward F Knapp State Airport', N'Montpelier', N'United States', N'MPV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6101, N'Mariupol International Airport', N'Mariupol International', N'Ukraine', N'MPW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8229, N'Maripasoula Airport', N'Maripasoula', N'French Guiana', N'MPY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1440, N'Miquelon Airport', N'Miquelon', N'Saint Pierre and Miquelon', N'MQC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2969, N'Magnitogorsk International Airport', N'Magnetiogorsk', N'Russia', N'MQF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7375, N'Mina+ºu Airport', N'Minacu', N'Brazil', N'MQH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8746, N'Moma Airport', N'Honuu', N'Russia', N'MQJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6298, N'Mildura Airport', N'Mildura', N'Australia', N'MQL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6753, N'Mardin Airport', N'Mardin', N'Turkey', N'MQM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5604, N'Kruger Mpumalanga International Airport', N'Mpumalanga', N'South Africa', N'MQP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (998, N'Moundou Airport', N'Moundou', N'Chad', N'MQQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2906, N'Mustique Airport', N'Mustique', N'Saint Vincent and the Grenadines', N'MQS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3675, N'Sawyer International Airport', N'Gwinn', N'United States', N'MQT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2744, N'Mariquita Airport', N'Mariquita', N'Colombia', N'MQU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1118, N'Mekele Airport', N'Makale', N'Ethiopia', N'MQX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7930, N'Smyrna Airport', N'Smyrna', N'United States', N'MQY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7415, N'Eastern WV Regional Airport/Shepherd Field', N'Martinsburg', N'United States', N'MRB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2849, N'Alberto Carnevalli Airport', N'Merida', N'Venezuela', N'MRD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7424, N'Mara Serena Lodge Airstrip', N'Masai Mara', N'Kenya', N'MRE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10106, N'Marfa Municipal Airport', N'Marfa', N'United States', N'MRF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12032, N'Mareeba Airport', NULL, N'Australia', N'MRG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3438, N'Merrill Field', N'Anchorage', N'United States', N'MRI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8641, N'Marco Island Executive Airport', N'Marco Island Airport', N'United States', N'MRK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8319, N'Foothills Regional Airport', N'Morganton', N'United States', N'MRN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2022, N'Hood Airport', N'Masterton', N'New Zealand', N'MRO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6791, N'Marinduque Airport', N'Gasan', N'Philippines', N'MRQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2679, N'Jose Maria Velasco Ibarra Airport', N'Macara', N'Ecuador', N'MRR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1353, N'Marseille Provence Airport', N'Marseille', N'France', N'MRS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (893, N'Sir Seewoosagur Ramgoolam International Airport', N'Plaisance', N'Mauritius', N'MRU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2962, N'Mineralnyye Vody Airport', N'Mineralnye Vody', N'Russia', N'MRV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (614, N'Lolland Falster Maribo Airport', N'Maribo', N'Denmark', N'MRW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2103, N'Mahshahr Airport', N'Bandar Mahshahr', N'Iran', N'MRX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3948, N'Monterey Peninsula Airport', N'Monterey', N'United States', N'MRY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6300, N'Moree Airport', N'Moree', N'Australia', N'MRZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5544, N'Muskrat Dam Airport', N'Muskrat Dam', N'Canada', N'MSA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8869, N'Falcon Field', N'Mesa', N'United States', N'MSC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (510, N'Kent International Airport', N'Manston', N'United Kingdom', N'MSE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2193, N'Masirah Air Base', N'Masirah', N'Oman', N'MSH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2346, N'Misawa Air Base', N'Misawa', N'Japan', N'MSJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5756, N'Northwest Alabama Regional Airport', N'Muscle Shoals', N'United States', N'MSL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3459, N'Dane County Regional Truax Field', N'Madison', N'United States', N'MSN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4216, N'Missoula International Airport', N'Missoula', N'United States', N'MSO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3858, N'Minneapolis-St Paul International/Wold-Chamberlain Airport', N'Minneapolis', N'United States', N'MSP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2954, N'Minsk National Airport', N'Minsk 2', N'Belarus', N'MSQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6782, N'Mu+ƒ Airport', N'Mus', N'Turkey', N'MSR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3546, N'Massena International Richards Field', N'Massena', N'United States', N'MSS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (582, N'Maastricht Aachen Airport', N'Maastricht', N'Netherlands', N'MST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1018, N'Moshoeshoe I International Airport', N'Maseru', N'Lesotho', N'MSU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3968, N'Massawa International Airport', N'Massawa', N'Eritrea', N'MSW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3861, N'Louis Armstrong New Orleans International Airport', N'New Orleans', N'United States', N'MSY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5633, N'Namibe Airport', N'Mocamedes', N'Angola', N'MSZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3742, N'Selfridge Air National Guard Base Airport', N'Mount Clemens', N'United States', N'MTC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5683, N'Mizan Teferi Airport', N'Mizan Teferi', N'Ethiopia', N'MTF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11207, N'Vila Bela da Sant+¡ssima Trindade Airport', N'Vila Bela da Santissima Trindade ', N'Brazil', N'MTG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7069, N'The Florida Keys Marathon Airport', N'Marathon', N'United States', N'MTH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6880, N'Montrose Regional Airport', N'Montrose CO', N'United States', N'MTJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7598, N'Makin Island Airport', N'Makin', N'Kiribati', N'MTK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6809, N'Maitland Airport', N'Maitland', N'Australia', N'MTL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7146, N'Metlakatla Seaplane Base', N'Metakatla', N'United States', N'MTM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9183, N'Martin State Airport', N'Baltimore', N'United States', N'MTN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11243, N'Montauk Airport', N'Montauk', N'United States', N'MTP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2731, N'Los Garzones Airport', N'Monteria', N'Colombia', N'MTR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (887, N'Matsapha Airport', N'Manzini', N'Swaziland', N'MTS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1822, N'Minatitl+ín/Coatzacoalcos National Airport', N'Minatitlan', N'Mexico', N'MTT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5893, N'Mota Lava Airport', N'Ablow', N'Vanuatu', N'MTV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1825, N'General Mariano Escobedo International Airport', N'Monterrey', N'Mexico', N'MTY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1600, N'Bar Yehuda Airfield', N'Metzada', N'Israel', N'MTZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5411, N'Munda Airport', N'Munda', N'Solomon Islands', N'MUA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (880, N'Maun Airport', N'Maun', N'Botswana', N'MUB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (346, N'Munich Airport', N'Munich', N'Germany', N'MUC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (980, N'Mueda Airport', N'Mueda', N'Mozambique', N'MUD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3545, N'Waimea Kohala Airport', N'Kamuela', N'United States', N'MUE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1133, N'Mersa Matruh Airport', N'Mersa-matruh', N'Egypt', N'MUH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3795, N'Muir Army Air Field (Fort Indiantown Gap) Airport', N'Muir', N'United States', N'MUI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5864, N'Mauke Airport', N'Mauke Island', N'Cook Islands', N'MUK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2852, N'Matur+¡n Airport', N'Maturin', N'Venezuela', N'MUN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3823, N'Mountain Home Air Force Base', N'Mountain Home', N'United States', N'MUO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3265, N'Marudi Airport', N'Marudi', N'Malaysia', N'MUR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2282, N'Minami Torishima Airport', N'Minami Tori Shima', N'Japan', N'MUS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (233, N'Ghriss Airport', N'Ghriss', N'Algeria', N'MUW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2214, N'Multan International Airport', N'Multan', N'Pakistan', N'MUX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5706, N'Musoma Airport', N'Musoma', N'Tanzania', N'MUZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6867, N'Reykjahl+¡+¦ Airport', N'Myvatn', N'Iceland', N'MVA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (971, N'M''Vengue El Hadj Omar Bongo Ondimba International Airport', N'Franceville', N'Gabon', N'MVB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2816, N'Carrasco International /General C L Berisso Airport', N'Montevideo', N'Uruguay', N'MVD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2592, N'Dix-Sept Rosado Airport', N'Mocord', N'Brazil', N'MVF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8187, N'Morrisville Stowe State Airport', N'Morrisville', N'United States', N'MVL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2732, N'Fabio Alberto Leon Bentley Airport', N'Mitu', N'Colombia', N'MVP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6116, N'Mogilev Airport', N'Mogilev', N'Belarus', N'MVQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (898, N'Salak Airport', N'Maroua', N'Cameroon', N'MVR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6062, N'Mucuri Airport', N'Mucuri', N'Brazil', N'MVS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1985, N'Mataiva Airport', N'Mataiva', N'French Polynesia', N'MVT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8079, N'Meg+¿ve Airport', N'Verdun', N'France', N'MVV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12528, N'Skagit Regional Airport', N'Skagit', N'United States', N'MVW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4265, N'Martha''s Vineyard Airport', N'Vineyard Haven MA', N'United States', N'MVY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1009, N'Masvingo International Airport', N'Masvingo', N'Zimbabwe', N'MVZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6825, N'Williamson County Regional Airport', N'Marion', N'United States', N'MWA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7839, N'Lawrence J Timmerman Airport', N'Milwaukee', N'United States', N'MWC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2211, N'Mianwali Air Base', N'Mianwali', N'Pakistan', N'MWD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11813, N'Merowe New Airport', N'Merowe', N'Sudan', N'MWE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5903, N'Maewo-Naone Airport', N'Maewo Island', N'Vanuatu', N'MWF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3605, N'Grant County International Airport', N'Grant County Airport', N'United States', N'MWH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7536, N'Tarempa Airport', N'Anambas Islands', N'Indonesia', N'MWK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3766, N'Mineral Wells Airport', N'Mineral Wells', N'United States', N'MWL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4151, N'Magway Airport', N'Magwe', N'Burma', N'MWQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4189, N'Muan International Airport', N'Muan', N'South Korea', N'MWX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1183, N'Mwanza Airport', N'Mwanza', N'Tanzania', N'MWZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3887, N'Andi Jemma Airport', N'Masamba', N'Indonesia', N'MXB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3500, N'Maxwell Air Force Base', N'Montgomery', N'United States', N'MXF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5431, N'Moro Airport', N'Moro', N'Papua New Guinea', N'MXH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11928, N'Mati National Airport', NULL, N'Philippines', N'MXI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (274, N'Minna Airport', N'Minna', N'Nigeria', N'MXJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1820, N'General Rodolfo S+ínchez Taboada International Airport', N'Mexicali', N'Mexico', N'MXL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (942, N'Morombe Airport', N'Morombe', N'Madagascar', N'MXM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1420, N'Morlaix-Ploujean Airport', N'Morlaix', N'France', N'MXN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1524, N'Malpensa International Airport', N'Milano', N'Italy', N'MXP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5887, N'Maota Airport', N'Savaii Island', N'Samoa', N'MXS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5618, N'Maintirano Airport', N'Maintirano', N'Madagascar', N'MXT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6374, N'M+Âr+Ân Airport', N'Muren', N'Mongolia', N'MXV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (698, N'Mora Airport', N'Mora', N'Sweden', N'MXX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6354, N'Meixian Airport', N'Meixian', N'China', N'MXZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6302, N'Moruya Airport', N'Moruya', N'Australia', N'MYA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7423, N'Mayumba Airport', N'Mayumba', N'Gabon', N'MYB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6071, N'Escuela Mariscal Sucre Airport', N'Maracay', N'Venezuela', N'MYC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5694, N'Malindi Airport', N'Malindi', N'Kenya', N'MYD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6002, N'Miyakejima Airport', N'Miyakejima', N'Japan', N'MYE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1952, N'Mayaguana Airport', N'Mayaguana', N'Bahamas', N'MYG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6305, N'Murray Island Airport', N'Murray Island', N'Australia', N'MYI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2333, N'Matsuyama Airport', N'Matsuyama', N'Japan', N'MYJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7079, N'McCall Municipal Airport', N'McCall', N'United States', N'MYL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6859, N'Mary Airport', N'Mary', N'Turkmenistan', N'MYP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7774, N'Mysore Airport', N'Mysore', N'India', N'MYQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3515, N'Myrtle Beach International Airport', N'Myrtle Beach', N'United States', N'MYR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3224, N'Myitkyina Airport', N'Myitkyina', N'Burma', N'MYT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6720, N'Mekoryuk Airport', N'Mekoryuk', N'United States', N'MYU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7875, N'Yuba County Airport', N'Yuba City', N'United States', N'MYV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1182, N'Mtwara Airport', N'Mtwara', N'Tanzania', N'MYW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3266, N'Miri Airport', N'Miri', N'Malaysia', N'MYY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13452, N'Monkey Bay Airport', N'Monkey Bay', N'Malawi', N'MYZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (981, N'Moc+¡mboa da Praia Airport', N'Mocimboa Da Praia', N'Mozambique', N'MZB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2272, N'Makung Airport', N'Makung', N'Taiwan', N'MZG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1693, N'Amasya Merzifon Airport', N'Merzifon', N'Turkey', N'MZH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1047, N'Mopti Airport', N'Mopti', N'Mali', N'MZI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9138, N'Pinal Airpark', N'Marana', N'United States', N'MZJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7589, N'Marakei Airport', N'Marakei', N'Kiribati', N'MZK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2733, N'La Nubia Airport', N'Manizales', N'Colombia', N'MZL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1426, N'Metz-Frescaty (BA 128) Air Base', N'Metz', N'France', N'MZM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1913, N'Sierra Maestra Airport', N'Manzanillo', N'Cuba', N'MZO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8983, N'Motueka Airport', N'Motueka', N'New Zealand', N'MZP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (833, N'Mkuze Airport', N'Mkuze', N'South Africa', N'MZQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2053, N'Mazar I Sharif Airport', N'Mazar-i-sharif', N'Afghanistan', N'MZR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1826, N'General Rafael Buelna International Airport', N'Mazatlan', N'Mexico', N'MZT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3058, N'Muzaffarpur Airport', N'Mazuffarpur', N'India', N'MZU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4056, N'Mulu Airport', N'Mulu', N'Malaysia', N'MZV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (218, N'Mecheria Airport', N'Mecheria', N'Algeria', N'MZW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6308, N'Narrabri Airport', N'Narrabri', N'Australia', N'NAA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13307, N'Naracoorte Airport', N'Naracoorte', N'Australia', N'NAC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3015, N'Dr. Babasaheb Ambedkar International Airport', N'Nagpur', N'India', N'NAG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3886, N'Naha Airport', N'Naha', N'Indonesia', N'NAH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7347, N'Annai Airport', N'Annai', N'Guyana', N'NAI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6090, N'Nakhchivan Airport', N'Nakhchivan', N'Azerbaijan', N'NAJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3935, N'Nakhon Ratchasima Airport', N'Nakhon Ratchasima', N'Thailand', N'NAK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6123, N'Nalchik Airport', N'Nalchik', N'Russia', N'NAL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13538, N'Namlea Airport', N'Namlea', N'Indonesia', N'NAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1960, N'Nadi International Airport', N'Nandi', N'Fiji', N'NAN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6401, N'Nanchong Airport', N'Nanchong', N'China', N'NAO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1561, N'Naples International Airport', N'Naples', N'Italy', N'NAP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5446, N'Qaanaaq Airport', N'Qaanaaq', N'Greenland', N'NAQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1953, N'Lynden Pindling International Airport', N'Nassau', N'Bahamas', N'NAS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2597, N'Governador Alu+¡zio Alves International Airport', N'Natal', N'Brazil', N'NAT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13623, N'Napuka Island Airport', N'Napuka', N'French Polynesia', N'NAU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3987, N'Nev+ƒehir Kapadokya Airport', N'Nevsehir', N'Turkey', N'NAV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3173, N'Narathiwat Airport', N'Narathiwat', N'Thailand', N'NAW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6341, N'Beijing Nanyuan Airport', N'Beijing', N'China', N'NAY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6969, N'Begishevo Airport', N'Nizhnekamsk', N'Russia', N'NBC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7447, N'Enfidha - Hammamet International Airport', N'Enfidha', N'Tunisia', N'NBE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3768, N'New Orleans NAS JRB/Alvin Callender Field', N'New Orleans', N'United States', N'NBG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13249, N'Annob+¦n Airport', N'San Antonio de Pale', N'Equatorial Guinea', N'NBN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4059, N'Jomo Kenyatta International Airport', N'Nairobi', N'Kenya', N'NBO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8826, N'Changbaishan Airport', N'Baishan', N'China', N'NBS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1907, N'Leeward Point Field', N'Guantanamo', N'Cuba', N'NBW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3242, N'Nabire Airport', N'Nabire', N'Indonesia', N'NBX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1753, N'North Caicos Airport', N'North Caicos', N'Turks and Caicos Islands', N'NCA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1354, N'Nice-C+¦te d''Azur Airport', N'Nice', N'France', N'NCE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1790, N'Nuevo Casas Grandes Airport', N'Nuevo Casas Grandes', N'Mexico', N'NCG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13695, N'Sunchales Aeroclub Airport', N'Sunchales', N'Argentina', N'NCJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (521, N'Newcastle Airport', N'Newcastle', N'United Kingdom', N'NCL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7233, N'Chenega Bay Airport', N'Chenega', N'United States', N'NCN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8278, N'Quonset State Airport', N'North Kingstown', N'United States', N'NCO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7296, N'San Carlos', N'San Carlos', N'Nicaragua', N'NCR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (834, N'Newcastle Airport', N'Newcastle', N'South Africa', N'NCS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6151, N'Nukus Airport', N'Nukus', N'Uzbekistan', N'NCU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1339, N'Annecy-Haute-Savoie-Mont Blanc Airport', N'Annecy', N'France', N'NCY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1097, N'Nouadhibou International Airport', N'Nouadhibou', N'Mauritania', N'NDB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6761, N'Nanded Airport', N'Nanded', N'India', N'NDC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11806, N'Sumbe Airport', N'Sumbe', N'Angola', N'NDD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6413, N'Qiqihar Sanjiazi Airport', N'Qiqihar', N'China', N'NDG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (999, N'N''Djamena International Airport', N'N''djamena', N'Chad', N'NDJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11020, N'Nadunumu Airport', N'Nadunumu', N'Papua New Guinea', N'NDN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5673, N'Nador International Airport', N'El Aroui', N'Morocco', N'NDR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7634, N'Rundu Airport', N'Rundu', N'Namibia', N'NDU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5569, N'Sanday Airport', N'Sanday', N'United Kingdom', N'NDY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6033, N'Necochea Airport', N'Necochea', N'Argentina', N'NEC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7302, N'Negril Airport', N'Negril', N'Jamaica', N'NEG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3812, N'Lakehurst Maxfield Field Airport', N'Lakehurst', N'United States', N'NEL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6091, N'Chulman Airport', N'Neryungri', N'Russia', N'NER')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3119, N'Sam Neua Airport', N'Sam Neua', N'Laos', N'NEU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6079, N'Vance W. Amory International Airport', N'Charlestown', N'Saint Kitts and Nevis', N'NEV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9188, N'Lakefront Airport', N'New Orleans', N'United States', N'NEW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6145, N'Nefteyugansk Airport', N'Nefteyugansk', N'Russia', N'NFG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3741, N'Fallon Naval Air Station', N'Fallon', N'United States', N'NFL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12046, N'Young Airport', NULL, N'Australia', N'NGA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3387, N'Ningbo Lishe International Airport', N'Ninbo', N'China', N'NGB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11009, N'Captain Auguste George Airport', N'Anegada', N'British Virgin Islands', N'NGD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (900, N'N''Gaound+®r+® Airport', N'N''gaoundere', N'Cameroon', N'NGE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3835, N'Kaneohe Bay MCAS (Marion E. Carl Field) Airport', N'Kaneohe Bay', N'United States', N'NGF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5872, N'Ngau Airport', N'Ngau', N'Fiji', N'NGI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13188, N'Nogliki Airport', N'Nogliki', N'Russia', N'NGK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3942, N'Chubu Centrair International Airport', N'Nagoya', N'Japan', N'NGO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7932, N'Ngari Gunsa Airport', N'Shiquanhe', N'China', N'NGQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2313, N'Nagasaki Airport', N'Nagasaki', N'Japan', N'NGS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3827, N'Norfolk Naval Station (Chambers Field)', N'Norfolk', N'United States', N'NGU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4174, N'Manang Airport', N'Manang', N'Nepal', N'NGX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9071, N'Alameda Naval Air Station', N'Alameda', N'United States', N'NGZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3200, N'Nha Trang Air Base', N'Nhatrang', N'Vietnam', N'NHA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7853, N'Al Minhad Air Base', N'Minhad AB', N'United Arab Emirates', N'NHD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3521, N'Patuxent River Naval Air Station (Trapnell Field)', N'Patuxent River', N'United States', N'NHK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (564, N'RAF Northolt', N'Northolt', N'United Kingdom', N'NHT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1987, N'Nuku Hiva Airport', N'Nuku Hiva', N'French Polynesia', N'NHV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11844, N'Brunswick Executive Airport', N'Brunswick', N'United States', N'NHZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7214, N'Nikolai Airport', N'Nikolai', N'United States', N'NIB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7596, N'Nikunau Airport', N'Nikunau', N'Kiribati', N'NIG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (280, N'Diori Hamani International Airport', N'Niamey', N'Niger', N'NIM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5649, N'Nioki Airport', N'Nioki', N'Congo (Kinshasa)', N'NIO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3703, N'Jacksonville Naval Air Station (Towers Field)', N'Jacksonville', N'United States', N'NIP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12945, N'Simberi Airport', N'Simberi Island', N'Papua New Guinea', N'NIS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1272, N'Niort-Souch+® Airport', N'Niort', N'France', N'NIT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6967, N'Naiu Airport', N'Niau', N'French Polynesia', N'NIU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2350, N'Atsugi Naval Air Facility', N'Atsugi', N'Japan', N'NJA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2972, N'Nizhnevartovsk Airport', N'Nizhnevartovsk', N'Russia', N'NJC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7490, N'Al Najaf International Airport', N'Najaf', N'Iraq', N'NJF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3758, N'El Centro NAF Airport (Vraciu Field)', N'El Centro', N'United States', N'NJK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13671, N'Noonkanbah Airport', N'Noonkanbah', N'Australia', N'NKB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1094, N'NouakchottÔÇôOumtounsy International Airport', N'Nouakschott', N'Mauritania', N'NKC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3388, N'Nanjing Lukou Airport', N'Nanjing', N'China', N'NKG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5997, N'Nagoya Airport', N'Nagoya', N'Japan', N'NKM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9820, N'+×-¦rnak +×erafettin El+ºi Airport', N'Cizre', N'Turkey', N'NKT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (895, N'Diego Garcia Naval Support Facility', N'Diego Garcia Island', N'British Indian Ocean Territory', N'NKW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3505, N'Miramar Marine Corps Air Station - Mitscher Field', N'Miramar', N'United States', N'NKX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (910, N'Simon Mwansa Kapwepwe International Airport', N'Ndola', N'Zambia', N'NLA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3516, N'Lemoore Naval Air Station (Reeves Field) Airport', N'Lemoore', N'United States', N'NLC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1828, N'Quetzalc+¦atl International Airport', N'Nuevo Laredo', N'Mexico', N'NLD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6263, N'Darnley Island Airport', N'Darnley Island', N'Australia', N'NLF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7203, N'Nelson Lagoon Airport', N'Nelson Lagoon', N'United States', N'NLG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13490, N'Ninglang Luguhu Airport', N'Ninglang', N'China', N'NLH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11962, N'Nikolayevsk-na-Amure Airport', N'Nikolayevsk-na-Amure Airport', N'Russia', N'NLI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3359, N'Norfolk Island International Airport', N'Norfolk Island', N'Norfolk Island', N'NLK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1021, N'Ndolo Airport', N'Kinshasa', N'Congo (Kinshasa)', N'NLO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6985, N'Nelspruit Airport', N'Nelspruit', N'South Africa', N'NLP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9386, N'Xinyuan Nalati Airport', N'Xinyuan', N'China', N'NLT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6990, N'Mykolaiv International Airport', N'Nikolayev', N'Ukraine', N'NLV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6150, N'Namangan Airport', N'Namangan', N'Uzbekistan', N'NMA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3004, N'Daman Airport', N'Daman', N'India', N'NMB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1945, N'Normans Cay Airport', N'Norman''s Cay', N'Bahamas', N'NMC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8199, N'Nightmute Airport', N'Nightmute', N'United States', N'NME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3229, N'Namsang Airport', N'Namsang', N'Burma', N'NMS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8130, N'Namtu Airport', N'Naypyidaw', N'Burma', N'NMT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1076, N'Kenitra Airport', N'Kentira', N'Morocco', N'NNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7618, N'Santa Ana Airport', N'Santa Ana', N'Solomon Islands', N'NNB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3373, N'Nanning Wuxu Airport', N'Nanning', N'China', N'NNG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7210, N'Nondalton Airport', N'Nondalton', N'United States', N'NNL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4371, N'Naryan Mar Airport', N'Naryan-Mar', N'Russia', N'NNM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6422, N'Connemara Regional Airport', N'Indreabhan', N'Ireland', N'NNR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4131, N'Nan Airport', N'Nan', N'Thailand', N'NNT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6233, N'Nunukan Airport', N'Nunukan-Nunukan Island', N'Indonesia', N'NNX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6359, N'Nanyang Jiangying Airport', N'Nanyang', N'China', N'NNY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6899, N'Nowra Airport', N'Nowra', N'Australia', N'NOA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1884, N'Nosara Airport', N'Nosara Beach', N'Costa Rica', N'NOB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (600, N'Ireland West Knock Airport', N'Connaught', N'Ireland', N'NOC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4207, N'Norden-Norddeich Airport', N'Norden', N'Germany', N'NOD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1827, N'Nogales International Airport', N'Nogales', N'Mexico', N'NOG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4365, N'Noyabrsk Airport', N'Noyabrsk', N'Russia', N'NOJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7600, N'Nonouti Airport', N'Nonouti', N'Kiribati', N'NON')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6783, N'Sinop Airport', N'Sinop', N'Turkey', N'NOP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9394, N'Nor+¦fj+Âr+¦ur Airport', N'Nordfjordur', N'Iceland', N'NOR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (657, N'Moss Airport', N' Rygge', N'Rygge', N'Norway')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (930, N'Fascene Airport', N'Nosy-be', N'Madagascar', N'NOS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8138, N'Marin County Airport - Gnoss Field', N'Novato', N'United States', N'NOT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2005, N'La Tontouta International Airport', N'Noumea', N'New Caledonia', N'NOU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (948, N'Nova Lisboa Airport', N'Huambo', N'Angola', N'NOV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6119, N'Spichenkovo Airport', N'Novokuznetsk', N'Russia', N'NOZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3563, N'Pensacola Naval Air Station/Forrest Sherman Field', N'Pensacola', N'United States', N'NPA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4095, N'Hawke''s Bay Airport', N'NAPIER', N'New Zealand', N'NPE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2023, N'New Plymouth Airport', N'New Plymouth', N'New Zealand', N'NPL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3281, N'Nanga Pinoh Airport', N'Nangapinoh', N'Indonesia', N'NPO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13398, N'Novo Progresso Airport', N'Novo Progresso', N'Brazil', N'NPR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3778, N'Millington-Memphis Airport', N'Millington', N'United States', N'NQA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3540, N'Kingsville Naval Air Station', N'Kingsville', N'United States', N'NQI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2509, N'Presidente Peron Airport', N'Neuquen', N'Argentina', N'NQN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5561, N'Nottingham Airport', N'Nottingham', N'United Kingdom', N'NQT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6053, N'Reyes Murillo Airport', N'Nuqu+¡', N'Colombia', N'NQU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3746, N'Naval Air Station Key West/Boca Chica Field', N'Key West', N'United States', N'NQX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (481, N'Newquay Cornwall Airport', N'Newquai', N'United Kingdom', N'NQY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6307, N'Narrandera Airport', N'Narrandera', N'Australia', N'NRA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11845, N'Naval Station Mayport (Admiral David L. Mcdonald Field)', N'Mayport', N'United States', N'NRB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (407, N'Norderney Airport', N'Norderney', N'Germany', N'NRD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13535, N'Namrole Airport', N'Buru Island', N'Indonesia', N'NRE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (743, N'Norrk+Âping Airport', N'Norrkoeping', N'Sweden', N'NRK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5566, N'North Ronaldsay Airport', N'North Ronaldsay', N'United Kingdom', N'NRL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4198, N'Weeze Airport', N'Weeze', N'Germany', N'NRN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7307, N'Jos+® Aponte de la Torre Airport', N'Ceiba', N'Puerto Rico', N'NRR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2279, N'Narita International Airport', N'Tokyo', N'Japan', N'NRT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3444, N'Whiting Field Naval Air Station - North', N'Milton', N'United States', N'NSE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5932, N'Noshahr Airport', N'Noshahr', N'Iran', N'NSH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4161, N'Yaound+® Nsimalen International Airport', N'Yaounde', N'Cameroon', N'NSI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2024, N'Nelson Airport', N'Nelson', N'New Zealand', N'NSN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6807, N'Scone Airport', N'Scone', N'Australia', N'NSO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3933, N'Nakhon Si Thammarat Airport', N'Nakhon Si Thammarat', N'Thailand', N'NST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1516, N'Sigonella Navy Air Base', N'Sigonella', N'Italy', N'NSY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (654, N'Notodden Airport', N'Notodden', N'Norway', N'NTB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3511, N'Point Mugu Naval Air Station (Naval Base Ventura Co)', N'Point Mugu', N'United States', N'NTD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1418, N'Nantes Atlantique Airport', N'Nantes', N'France', N'NTE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9872, N'Stenkol Airport', N'Bintuni', N'Indonesia', N'NTI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4320, N'Newcastle Airport', N'Newcastle', N'Australia', N'NTL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6309, N'Normanton Airport', N'Normanton', N'Australia', N'NTN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3409, N'Noto Airport', N'Wajima', N'Japan', N'NTQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1784, N'Del Norte International Airport', N'Monterrey', N'Mexico', N'NTR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5882, N'Kuini Lavenia Airport', N'Niuatoputapu', N'Tonga', N'NTT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3870, N'Oceana Naval Air Station', N'Oceana', N'United States', N'NTU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6225, N'Ranai Airport', N'Ranai-Natuna Besar Island', N'Indonesia', N'NTX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (844, N'Pilanesberg International Airport', N'Pilanesberg', N'South Africa', N'NTY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (347, N'Nuremberg Airport', N'Nuernberg', N'Germany', N'NUE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7092, N'Nuiqsut Airport', N'Nuiqsut', N'United States', N'NUI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13625, N'Nukutavake Airport', N'Nukutavake', N'French Polynesia', N'NUK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7111, N'Nulato Airport', N'Nulato', N'United States', N'NUL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3783, N'Moffett Federal Airfield', N'Mountain View', N'United States', N'NUQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5905, N'Norsup Airport', N'Norsup', N'Vanuatu', N'NUS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3573, N'Whidbey Island Naval Air Station (Ault Field)', N'Whidbey Island', N'United States', N'NUW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4364, N'Novy Urengoy Airport', N'Novy Urengoy', N'Russia', N'NUX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2734, N'Benito Salas Airport', N'Neiva', N'Colombia', N'NVA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6485, N'Navoi Airport', N'Navoi', N'Uzbekistan', N'NVI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4349, N'Narvik Framnes Airport', N'Narvik', N'Norway', N'NVK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7377, N'Novo Aripuan+ú Airport', N'Novo Aripuana', N'Brazil', N'NVP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1394, N'Nevers-Fourchambault Airport', N'Nevers', N'France', N'NVS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2595, N'Ministro Victor Konder International Airport', N'Navegantes', N'Brazil', N'NVT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (913, N'Moh+®li Bandar Es Eslam Airport', N'Moheli', N'Comoros', N'NWA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (547, N'Norwich International Airport', N'Norwich', N'United Kingdom', N'NWI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3803, N'Willow Grove Naval Air Station/Joint Reserve Base', N'Willow Grove', N'United States', N'NXX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6139, N'Nyagan Airport', N'Nyagan', N'Russia', N'NYA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9218, N'Nyeri Airport', N'NYERI', N'Kenya', N'NYE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (251, N'Sunyani Airport', N'Sunyani', N'Ghana', N'NYI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5695, N'Nanyuki Airport', N'Nanyuki', N'Kenya', N'NYK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6143, N'Nadym Airport', N'Nadym', N'Russia', N'NYM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (699, N'Stockholm Skavsta Airport', N'Stockholm', N'Sweden', N'NYO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13425, N'Nyurba Airport', N'Nyurba', N'Russia', N'NYR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6949, N'Naypyidaw Airport', N'Naypyidaw', N'Burma', N'NYT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3209, N'Bagan Airport', N'Bagan', N'Burma', N'NYU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7906, N'Monywar Airport', N'Monywa', N'Burma', N'NYW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7409, N'Nzagi Airport', N'Nzagi', N'Angola', N'NZA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6068, N'Maria Reiche Neuman Airport', N'Nazca', N'Peru', N'NZC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13215, N'Nz+®r+®kor+® Airport', N'Nzerekore', N'Guinea', N'NZE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6954, N'Manzhouli Xijiao Airport', N'Manzhouli', N'China', N'NZH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4298, N'El Toro Marine Corps Air Station', N'Santa Ana', N'United States', N'NZJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13496, N'Chengjisihan Airport', N'Zhalantun', N'China', N'NZL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3594, N'North Island Naval Air Station-Halsey Field', N'San Diego', N'United States', N'NZY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8267, N'Shank Air Base', N'Shank', N'Afghanistan', N'OAA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6793, N'Orange Airport', N'Orange', N'Australia', N'OAG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2054, N'Shindand Airport', N'Shindand', N'Afghanistan', N'OAH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7036, N'Bagram Air Base', N'Kabul', N'Afghanistan', N'OAI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4386, N'Albert J Ellis Airport', N'Jacksonville NC', N'United States', N'OAJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3453, N'Metropolitan Oakland International Airport', N'Oakland', N'United States', N'OAK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9771, N'Cacoal Airport', N'Cacoal', N'Brazil', N'OAL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2027, N'Oamaru Airport', N'Oamaru', N'New Zealand', N'OAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3433, N'Marina Municipal Airport', N'Fort Ord', N'United States', N'OAR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8146, N'Sharana Airstrip', N'Sharona', N'Afghanistan', N'OAS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1829, N'Xoxocotl+ín International Airport', N'Oaxaca', N'Mexico', N'OAX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7868, N'Camp Bastion Airport', N'Camp Bastion', N'Afghanistan', N'OAZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9391, N'Obock Airport', N'Obock', N'Djibouti', N'OBC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8505, N'Okeechobee County Airport', N'Okeechobee', N'United States', N'OBE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (378, N'Oberpfaffenhofen Airport', N'Oberpfaffenhofen', N'Germany', N'OBF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (316, N'Zoersel (Oostmalle) Airfield', N'Zoersel', N'Belgium', N'OBL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6467, N'Oban Airport', N'North Connel', N'United Kingdom', N'OBN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2286, N'Tokachi-Obihiro Airport', N'Obihiro', N'Japan', N'OBO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1312, N'Aubenas-Ard+¿che M+®ridional Airport', N'Aubenas-vals-lanas', N'France', N'OBS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7180, N'Kobuk Airport', N'Kobuk', N'United States', N'OBU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8208, N'Ittoqqortoormiit Heliport', N'Ittoqqortoormiit', N'Greenland', N'OBY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7889, N'Ocean Reef Club Airport', N'Ocean Reef Club Airport', N'United States', N'OCA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2670, N'Francisco De Orellana Airport', N'Coca', N'Ecuador', N'OCC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8510, N'Ocala International Airport - Jim Taylor Field', N'Ocala', N'United States', N'OCF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1778, N'Boscobel Aerodrome', N'Ocho Rios', N'Jamaica', N'OCJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13227, N'Boolgeeda', N'Brockman', N'Australia', N'OCM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6829, N'Oceanside Municipal Airport', N'Fraser Island', N'Australia', N'OCN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2735, N'Aguas Claras Airport', N'Ocana', N'Colombia', N'OCV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9772, N'Warren Field', N'Washington', N'United States', N'OCW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1215, N'C+¦rdoba Airport', N'Cordoba', N'Spain', N'ODB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (615, N'Odense Airport', N'Odense', N'Denmark', N'ODE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (562, N'RAF Odiham', N'Odiham', N'United Kingdom', N'ODH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6216, N'Long Seridan Airport', N'Long Seridan', N'Malaysia', N'ODN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8944, N'Bodaybo Airport', N'Bodaibo', N'Russia', N'ODO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2947, N'Odessa International Airport', N'Odessa', N'Ukraine', N'ODS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4143, N'Oudomsay Airport', N'Muang Xay', N'Laos', N'ODY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11100, N'Oryol Yuzhny Airport', N'Oakley', N'United States', N'OEL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7336, N'Vincent Fayks Airport', N'Paloemeu', N'Suriname', N'OEM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (722, N'+ûrnsk+Âldsvik Airport', N'Ornskoldsvik', N'Sweden', N'OER')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6029, N'Antoine de Saint Exup+®ry Airport', N'San Antonio Oeste', N'Argentina', N'OES')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3836, N'Offutt Air Force Base', N'Omaha', N'United States', N'OFF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11134, N'Karl Stefan Memorial Airport', N'Norfolk  Nebraska', N'United States', N'OFK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11846, N'Orangeburg Municipal Airport', N'Orangeburg', N'United States', N'OGB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9543, N'Ogden Hinckley Airport', N'Ogden', N'United States', N'OGD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3456, N'Kahului Airport', N'Kahului', N'United States', N'OGG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4306, N'Eugene F. Correira International Airport', N'Georgetown', N'Guyana', N'OGL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2396, N'Yonaguni Airport', N'Yonaguni Jima', N'Japan', N'OGN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3724, N'Ogdensburg International Airport', N'Ogdensburg', N'United States', N'OGS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11356, N'Ordu Giresun Airport', N'Ordu-Giresun', N'Turkey', N'OGU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (243, N'Ain el Beida Airport', N'Ouargla', N'Algeria', N'OGX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6124, N'Beslan Airport', N'Beslan', N'Russia', N'OGZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2026, N'RNZAF Base Ohakea', N'Ohakea', N'New Zealand', N'OHA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1736, N'Ohrid St. Paul the Apostle Airport', N'Ohrid', N'Macedonia', N'OHD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6943, N'Gu-Lian Airport', N'Mohe County', N'China', N'OHE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6099, N'Okhotsk Airport', N'Okhotsk', N'Russia', N'OHO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11328, N'Sohar Airport', N'Sohar', N'Oman', N'OHS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8239, N'Ouril+óndia do Norte Airport', N'Ourilandia do Norte', N'Brazil', N'OIA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2356, N'Oshima Airport', N'Oshima', N'Japan', N'OIM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2300, N'Okushiri Airport', N'Okushiri', N'Japan', N'OIR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2310, N'Oita Airport', N'Oita', N'Japan', N'OIT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9228, N'Johnson County Executive Airport', N'Olathe', N'United States', N'OJC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2384, N'Naha Airport', N'Okinawa', N'Japan', N'OKA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3863, N'Will Rogers World Airport', N'Oklahoma City', N'United States', N'OKC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5995, N'Okadama Airport', N'Sapporo', N'Japan', N'OKD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2317, N'Okierabu Airport', N'Okierabu', N'Japan', N'OKE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8083, N'Okaukuejo Airport', N'Okaukuejo', N'Namibia', N'OKF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2323, N'Oki Airport', N'Oki Island', N'Japan', N'OKI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2327, N'Okayama Airport', N'Okayama', N'Japan', N'OKJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11077, N'Kokomo Municipal Airport', N'Kokomo', N'United States', N'OKK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9898, N'Oksibil Airport', N'Oksibil', N'Indonesia', N'OKL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9777, N'Okmulgee Regional Airport', N'Okmulgee', N'United States', N'OKM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (964, N'Okondja Airport', N'Okondja', N'Gabon', N'OKN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2360, N'Yokota Air Base', N'Yokota', N'Japan', N'OKO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6339, N'Yorke Island Airport', N'Yorke Island', N'Australia', N'OKR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8084, N'Mokuti Lodge Airport', N'Mokuti Lodge', N'Namibia', N'OKU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6247, N'Oakey Airport', N'Oakey', N'Australia', N'OKY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (655, N'+ÿrland Airport', N'Orland', N'Norway', N'OLA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1520, N'Olbia Costa Smeralda Airport', N'Olbia', N'Italy', N'OLB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8256, N'Senadora Eunice Micheles Airport', N'Sao Paulo de Olivenca', N'Brazil', N'OLC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7071, N'L M Clayton Airport', N'Wolf Point', N'United States', N'OLF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5913, N'North West Santo Airport', N'Olpoi', N'Vanuatu', N'OLJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13260, N'Oyo Ollombo Airport', N'Oyo', N'Congo (Brazzaville)', N'OLL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7650, N'Olympia Regional Airport', N'Olympia', N'United States', N'OLM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6311, N'Olympic Dam Airport', N'Olympic Dam', N'Australia', N'OLP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3788, N'Nogales International Airport', N'Nogales', N'United States', N'OLS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7817, N'Olive Branch Airport', N'Olive Branch', N'United States', N'OLV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9378, N'Olyokminsk Airport', N'Olekminsk', N'Russia', N'OLZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3454, N'Eppley Airfield', N'Omaha', N'United States', N'OMA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (968, N'Omboue Hopital Airport', N'Omboue Hospial', N'Gabon', N'OMB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6726, N'Ormoc Airport', N'Ormoc City', N'Philippines', N'OMC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5643, N'Oranjemund Airport', N'Oranjemund', N'Namibia', N'OMD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3615, N'Nome Airport', N'Nome', N'United States', N'OME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2175, N'King Hussein Air College', N'Mafraq', N'Jordan', N'OMF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5936, N'Urmia Airport', N'Uromiyeh', N'Iran', N'OMH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2102, N'Omidiyeh Airport', N'Omidyeh', N'Iran', N'OMI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1645, N'Mostar International Airport', N'Mostar', N'Bosnia and Herzegovina', N'OMO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1656, N'Oradea International Airport', N'Oradea', N'Romania', N'OMR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2958, N'Omsk Central Airport', N'Omsk', N'Russia', N'OMS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5642, N'Ondangwa Airport', N'Ondangwa', N'Namibia', N'OND')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6304, N'Mornington Island Airport', N'Mornington Island', N'Australia', N'ONG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6000, N'Odate Noshiro Airport', N'Odate Noshiro', N'Japan', N'ONJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7475, N'Olenyok Airport', N'Olenyok', N'Russia', N'ONK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8141, N'Ontario Municipal Airport', N'Ontario', N'United States', N'ONO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7086, N'Newport Municipal Airport', N'Newport', N'United States', N'ONP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7821, N'Zonguldak Airport', N'Zonguldak', N'Turkey', N'ONQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8847, N'Onslow Airport', N'Onslow', N'Australia', N'ONS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3734, N'Ontario International Airport', N'Ontario', N'United States', N'ONT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5839, N'Enrique Adolfo Jimenez Airport', N'Col+¦n', N'Panama', N'ONX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8200, N'Toksook Bay Airport', N'Toksook Bay', N'United States', N'OOK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3321, N'Gold Coast Airport', N'Coolangatta', N'Australia', N'OOL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6261, N'Cooma Snowy Mountains Airport', N'Cooma', N'Australia', N'OOM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3791, N'Opa-locka Executive Airport', N'Miami', N'United States', N'OPF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1636, N'Francisco de S+í Carneiro Airport', N'Porto', N'Portugal', N'OPO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7367, N'Presidente Jo+úo Batista Figueiredo Airport', N'Sinop', N'Brazil', N'OPS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5982, N'Balimo Airport', N'Balimo', N'Papua New Guinea', N'OPU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2478, N'Or+ín Airport', N'Oran', N'Argentina', N'ORA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (731, N'+ûrebro Airport', N'Orebro', N'Sweden', N'ORB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3830, N'Chicago O''Hare International Airport', N'Chicago', N'United States', N'ORD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1373, N'Orl+®ans-Bricy (BA 123) Air Base', N'Orleans', N'France', N'ORE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3611, N'Norfolk International Airport', N'Norfolk', N'United States', N'ORF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6061, N'Zorg en Hoop Airport', N'Paramaribo', N'Suriname', N'ORG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6426, N'Worcester Regional Airport', N'Worcester', N'United States', N'ORH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7346, N'Orinduik Airport', N'Orinduik', N'Guyana', N'ORJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (596, N'Cork Airport', N'Cork', N'Ireland', N'ORK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3416, N'Orlando Executive Airport', N'Orlando', N'United States', N'ORL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (231, N'Es Senia Airport', N'Oran', N'Algeria', N'ORN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5608, N'Orapa Airport', N'Orapa', N'Botswana', N'ORP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3568, N'Northway Airport', N'Northway', N'United States', N'ORT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2763, N'Juan Mendoza Airport', N'Oruro', N'Bolivia', N'ORU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7181, N'Robert (Bob) Curtis Memorial Airport', N'Noorvik', N'United States', N'ORV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5947, N'Ormara Airport', N'Ormara Raik', N'Pakistan', N'ORW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8259, N'Oriximin+í Airport', N'Oriximina', N'Brazil', N'ORX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1386, N'Paris-Orly Airport', N'Paris', N'France', N'ORY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3432, N'Oscoda Wurtsmith Airport', N'Oscoda', N'United States', N'OSC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5593, N'+àre +ûstersund Airport', N'+ûstersund', N'Sweden', N'OSD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8661, N'Ostafyevo International Airport', N'Moscow', N'Russia', N'OSF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6909, N'Wittman Regional Airport', N'Oshkosh', N'United States', N'OSH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1202, N'Osijek Airport', N'Osijek', N'Croatia', N'OSI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (705, N'Oskarshamn Airport', N'Oskarshamn', N'Sweden', N'OSK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (644, N'Oslo Lufthavn', N'Oslo', N'Norway', N'OSL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7548, N'Mosul International Airport', N'Mosul', N'Iraq', N'OSM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2377, N'Osan Air Base', N'Osan', N'South Korea', N'OSN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (677, N'Redzikowo Air Base', N'Slupsk', N'Poland', N'OSP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1582, N'Ostrava Leos Jan+í-ìek Airport', N'Ostrava', N'Czech Republic', N'OSR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2913, N'Osh Airport', N'Osh', N'Kyrgyzstan', N'OSS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (310, N'Ostend-Bruges International Airport', N'Ostend', N'Belgium', N'OST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7511, N'The Ohio State University Airport - Don Scott Field', N'Columbus', N'United States', N'OSU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6164, N'Orsk Airport', N'Orsk', N'Russia', N'OSW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5581, N'Namsos H+©knes+©ra Airport', N'Namsos', N'Norway', N'OSY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5757, N'Southwest Oregon Regional Airport', N'North Bend', N'United States', N'OTH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3252, N'Pitu Airport', N'Morotai Island', N'Indonesia', N'OTI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13112, N'Otjiwarongo Airport', N'Otjiwarongo', N'Namibia', N'OTJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8140, N'Tillamook Airport', N'Tillamook', N'United States', N'OTK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11848, N'Ottumwa Regional Airport', N'Ottumwa', N'United States', N'OTM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1657, N'Henri Coand-â International Airport', N'Bucharest', N'Romania', N'OTP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1874, N'Coto 47 Airport', N'Coto 47', N'Costa Rica', N'OTR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2736, N'Otu Airport', N'Otu', N'Colombia', N'OTU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3693, N'Ralph Wien Memorial Airport', N'Kotzebue', N'United States', N'OTZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (246, N'Ouagadougou Airport', N'Ouagadougou', N'Burkina Faso', N'OUA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1070, N'Angads Airport', N'Oujda', N'Morocco', N'OUD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (885, N'Ouesso Airport', N'Ouesso', N'Congo (Kinshasa)', N'OUE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (837, N'Oudtshoorn Airport', N'Oudtshoorn', N'South Africa', N'OUH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5657, N'Outer Skerries Airport', N'Outer Skerries', N'United Kingdom', N'OUK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (446, N'Oulu Airport', N'Oulu', N'Finland', N'OUL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9824, N'Tazadit Airport', N'Zouerat', N'Mauritania', N'OUZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8722, N'Bekily Airport', N'Bekily', N'Madagascar', N'OVA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4078, N'Tolmachevo Airport', N'Novosibirsk', N'Russia', N'OVB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1214, N'Asturias Airport', N'Aviles', N'Spain', N'OVD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (836, N'Overberg Airport', N'Overberg', N'South Africa', N'OVG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2503, N'Olavarria Airport', N'Olavarria', N'Argentina', N'OVR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6140, N'Sovetskiy Airport', N'Sovetskiy', N'Russia', N'OVS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5758, N'Owensboro Daviess County Airport', N'Owensboro', N'United States', N'OWB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8280, N'Norwood Memorial Airport', N'Norwood', N'United States', N'OWD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5665, N'Osvaldo Vieira International Airport', N'Bissau', N'Guinea-Bissau', N'OXB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8289, N'Waterbury Oxford Airport', N'Oxford', N'United States', N'OXC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (554, N'Oxford (Kidlington) Airport', N'Oxford', N'United Kingdom', N'OXF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6961, N'Oxnard Airport', N'Oxnard', N'United States', N'OXR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2482, N'Goya Airport', N'Goya', N'Argentina', N'OYA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (963, N'Oyem Airport', N'Oyem', N'Gabon', N'OYE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2598, N'Oiapoque Airport', N'Oioiapoque', N'Brazil', N'OYK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8334, N'Moyale Airport', N'Moyale', N'Kenya', N'OYL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2505, N'Tres Arroyos Airport', N'Tres Arroyos', N'Argentina', N'OYO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2775, N'Saint-Georges-de-l''Oyapock Airport', N'St.-georges Oyapock', N'French Guiana', N'OYP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4231, N'Ozona Municipal Airport', N'Ozona', N'United States', N'OZA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4204, N'Labo Airport', N'Ozamis', N'Philippines', N'OZC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8335, N'Zagora Airport', N'Zagora', N'Morocco', N'OZG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6103, N'Zaporizhzhia International Airport', N'Zaporozhye', N'Ukraine', N'OZH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1232, N'Moron Air Base', N'Sevilla', N'Spain', N'OZP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11849, N'Cairns AAF (Fort Rucker) Air Field', N'Fort Rucker/Ozark', N'United States', N'OZR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1077, N'Ouarzazate Airport', N'Ouarzazate', N'Morocco', N'OZZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3230, N'Hpa-N Airport', N'Hpa-an', N'Burma', N'PAA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2998, N'Bilaspur Airport', N'Bilaspur', N'India', N'PAB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1869, N'Marcos A. Gelabert International Airport', N'Panama', N'Panama', N'PAC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (371, N'Paderborn Lippstadt Airport', N'Paderborn', N'Germany', N'PAD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3822, N'Snohomish County (Paine Field) Airport', N'Everett', N'United States', N'PAE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2401, N'Pagadian Airport', N'Pagadian', N'Philippines', N'PAG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4117, N'Barkley Regional Airport', N'PADUCAH', N'United States', N'PAH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5948, N'Parachinar Airport', N'Parachinar', N'Pakistan', N'PAJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11940, N'German Olano Air Base', N'La Dorada', N'Colombia', N'PAL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3669, N'Tyndall Air Force Base', N'Panama City', N'United States', N'PAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3176, N'Pattani Airport', N'Pattani', N'Thailand', N'PAN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8864, N'Palo Alto Airport of Santa Clara County', N'Palo Alto', N'United States', N'PAO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1897, N'Toussaint Louverture International Airport', N'Port-au-prince', N'Haiti', N'PAP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3569, N'Warren Bud Woods Palmer Municipal Airport', N'Palmer', N'United States', N'PAQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4195, N'Paros National Airport', N'Paros', N'Greece', N'PAS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3061, N'Lok Nayak Jayaprakash Airport', N'Patina', N'India', N'PAT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2631, N'Paulo Afonso Airport', N'Paulo Alfonso', N'Brazil', N'PAV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5851, N'Port-de-Paix Airport', N'Port-de-Paix', N'Haiti', N'PAX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1830, N'El Taj+¡n National Airport', N'Poza Rico', N'Mexico', N'PAZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1831, N'Hermanos Serd+ín International Airport', N'Puebla', N'Mexico', N'PBC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3018, N'Porbandar Airport', N'Porbandar', N'India', N'PBD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3443, N'Pine Bluff Regional Airport', N'Grider Field Pine Bluff', N'United States', N'PBF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3771, N'Plattsburgh International Airport', N'Plattsburgh', N'United States', N'PBG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3155, N'Paro Airport', N'Thimphu', N'Bhutan', N'PBH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3722, N'Palm Beach International Airport', N'West Palm Beach', N'United States', N'PBI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5900, N'Tavie Airport', N'Paama Island', N'Vanuatu', N'PBJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2854, N'General Bartolome Salom International Airport', N'Puerto Cabello', N'Venezuela', N'PBL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2773, N'Johan Adolf Pengel International Airport', N'Zandery', N'Suriname', N'PBM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (956, N'Porto Amboim Airport', N'Porto Amboim', N'Angola', N'PBN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6314, N'Paraburdoo Airport', N'Paraburdoo', N'Australia', N'PBO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5845, N'Islita Airport', N'Nandayure', N'Costa Rica', N'PBP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13491, N'Pimenta Bueno Airport', N'Pimenta Bueno', N'Brazil', N'PBQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5812, N'Puerto Barrios Airport', N'Puerto Barrios', N'Guatemala', N'PBR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3232, N'Putao Airport', N'Putao', N'Burma', N'PBU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (839, N'Plettenberg Bay Airport', N'Plettenberg Bay', N'South Africa', N'PBZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3900, N'Pondok Cabe Air Base', N'Jakarta', N'Indonesia', N'PCB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13080, N'Prairie Du Chien Municipal Airport', N'Prairie du Chien', N'United States', N'PCD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (846, N'Potchefstroom Airport', N'Potchefstroom', N'South Africa', N'PCF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2781, N'Cap FAP David Abenzur Rengifo International Airport', N'Pucallpa', N'Peru', N'PCL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4104, N'Picton Aerodrome', N'Picton', N'New Zealand', N'PCN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (972, N'Principe Airport', N'Principe', N'Sao Tome and Principe', N'PCP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13266, N'Boun Neau Airport', N'Phongsaly', N'Laos', N'PCQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2738, N'German Olano Airport', N'Puerto Carreno', N'Colombia', N'PCR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11212, N'Picos Airport', N'Picos', N'Brazil', N'PCS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6054, N'Obando Airport', N'Puerto In+¡rida', N'Colombia', N'PDA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3278, N'Minangkabau International Airport', N'Padang', N'Indonesia', N'PDG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7654, N'DeKalb Peachtree Airport', N'Atlanta', N'United States', N'PDK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1633, N'Jo+úo Paulo II Airport', N'Ponta Delgada', N'Portugal', N'PDL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6228, N'Pendopo Airport', N'Talang Gudang-Sumatra Island', N'Indonesia', N'PDO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6777, N'Capitan Corbeta CA Curbelo International Airport', N'Punta del Este', N'Uruguay', N'PDP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1834, N'Piedras Negras International Airport', N'Piedras Negras', N'Mexico', N'PDS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6883, N'Eastern Oregon Regional At Pendleton Airport', N'Pendleton', N'United States', N'PDT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11269, N'Tydeo Larre Borges Airport', N'Paysandu', N'Uruguay', N'PDU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1193, N'Plovdiv International Airport', N'Plovdiv', N'Bulgaria', N'PDV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3720, N'Portland International Airport', N'Portland', N'United States', N'PDX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7782, N'Penneshaw Airport', N'Penneshaw', N'Australia', N'PEA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1584, N'Pardubice Airport', N'Pardubice', N'Czech Republic', N'PED')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2973, N'Bolshoye Savino Airport', N'Perm', N'Russia', N'PEE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8750, N'Peenem++nde Airport', N'Peenemunde', N'Germany', N'PEF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1567, N'Perugia San Francesco d''Assisi ÔÇô Umbria International Airport', N'Perugia', N'Italy', N'PEG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2511, N'Comodoro Pedro Zanni Airport', N'Pehuajo', N'Argentina', N'PEH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2739, N'Mateca+¦a International Airport', N'Pereira', N'Colombia', N'PEI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3364, N'Beijing Capital International Airport', N'Beijing', N'China', N'PEK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2808, N'Padre Aldamiz International Airport', N'Puerto Maldonado', N'Peru', N'PEM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3308, N'Penang International Airport', N'Penang', N'Malaysia', N'PEN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8950, N'Pecos Municipal Airport', N'Pecos', N'United States', N'PEQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3351, N'Perth International Airport', N'Perth', N'Australia', N'PER')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6114, N'Petrozavodsk Airport', N'Petrozavodsk', N'Russia', N'PES')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2603, N'Jo+úo Sim+Áes Lopes Neto International Airport', N'Pelotas', N'Brazil', N'PET')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5832, N'Puerto Lempira Airport', N'Puerto Lempira', N'Honduras', N'PEU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5788, N'P+®cs-Pog+íny Airport', N'P+®cs-Pog+íny', N'Hungary', N'PEV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2219, N'Peshawar International Airport', N'Peshawar', N'Pakistan', N'PEW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4370, N'Pechora Airport', N'Pechora', N'Russia', N'PEX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6165, N'Penza Airport', N'Penza', N'Russia', N'PEZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2602, N'Lauro Kurtz Airport', N'Passo Fundo', N'Brazil', N'PFB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (17, N'Patreksfj+Âr+¦ur Airport', N'Patreksfjordur', N'Iceland', N'PFJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4073, N'Panama City-Bay Co International Airport', N'Panama City', N'United States', N'PFN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1198, N'Paphos International Airport', N'Paphos', N'Cyprus', N'PFO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6749, N'Parsabade Moghan Airport', N'Parsabad', N'Iran', N'PFQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5654, N'Ilebo Airport', N'Ilebo', N'Congo (Kinshasa)', N'PFR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4124, N'Page Municipal Airport', N'Page', N'United States', N'PGA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7056, N'Charlotte County Airport', N'Punta Gorda', N'United States', N'PGD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1356, N'Perpignan-Rivesaltes (Llaban+¿re) Airport', N'Perpignan', N'France', N'PGF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3108, N'Pantnagar Airport', N'Nainital', N'India', N'PGH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3905, N'Pangkal Pinang (Depati Amir) Airport', N'Pangkal Pinang', N'Indonesia', N'PGK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7546, N'Persian Gulf International Airport', N'Khalije Fars', N'Iran', N'PGU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6959, N'Pitt Greenville Airport', N'Greenville', N'United States', N'PGV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1279, N'P+®rigueux-Bassillac Airport', N'Perigueux', N'France', N'PGX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13315, N'Ponta Grossa Airport - Comandante Antonio Amilton Beraldo', N'Ponta Grossa', N'Brazil', N'PGZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7700, N'Phan Rang Airport', N'Phan Rang', N'Vietnam', N'PHA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2600, N'Prefeito Doutor Jo+úo Silva Filho Airport', N'Parnaiba', N'Brazil', N'PHB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (275, N'Port Harcourt International Airport', N'Port Hartcourt', N'Nigeria', N'PHC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8312, N'Harry Clever Field', N'New Philadelpha', N'United States', N'PHD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3349, N'Port Hedland International Airport', N'Port Hedland', N'Australia', N'PHE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3633, N'Newport News Williamsburg International Airport', N'Newport News', N'United States', N'PHF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7663, N'Palm Beach County Glades Airport', N'Pahokee', N'United States', N'PHK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3752, N'Philadelphia International Airport', N'Philadelphia', N'United States', N'PHL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3557, N'St Clair County International Airport', N'Port Huron', N'United States', N'PHN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3170, N'Phitsanulok Airport', N'Phitsanulok', N'Thailand', N'PHS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (840, N'Hendrik Van Eck Airport', N'Phalaborwa', N'South Africa', N'PHW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3462, N'Phoenix Sky Harbor International Airport', N'Phoenix', N'United States', N'PHX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4299, N'Phetchabun Airport', N'Phetchabun', N'Thailand', N'PHY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4046, N'General Wayne A. Downing Peoria International Airport', N'Peoria', N'United States', N'PIA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5759, N'Hattiesburg Laurel Regional Airport', N'Hattiesburg/Laurel', N'United States', N'PIB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5860, N'Nassau Paradise Island Airport', N'Nassau', N'Bahamas', N'PID')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3617, N'St Petersburg Clearwater International Airport', N'St. Petersburg', N'United States', N'PIE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2274, N'Pingtung North Airport', N'Pingtung', N'Taiwan', N'PIF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5760, N'Pocatello Regional Airport', N'Pocatello', N'United States', N'PIH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (537, N'Glasgow Prestwick Airport', N'Prestwick', N'United Kingdom', N'PIK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2704, N'Carlos Miguel Gimenez Airport', N'Pilar', N'Paraguay', N'PIL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8305, N'Harris County Airport', N'Pine Mountain', N'United States', N'PIM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7372, N'Parintins Airport', N'Parintins', N'Brazil', N'PIN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2805, N'Capit+ín FAP Ren+ín El+¡as Olivera International Airport', N'Pisco', N'Peru', N'PIO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7158, N'Pilot Point Airport', N'Pilot Point', N'United States', N'PIP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5761, N'Pierre Regional Airport', N'Pierre', N'United States', N'PIR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1268, N'Poitiers-Biard Airport', N'Poitiers', N'France', N'PIS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3570, N'Pittsburgh International Airport', N'Pittsburgh', N'United States', N'PIT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2809, N'Capit+ín FAP Guillermo Concha Iberico International Airport', N'Piura', N'Peru', N'PIU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11780, N'Pikwitonei Airport', N'Pikwitonei', N'Canada', N'PIW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1634, N'Pico Airport', N'Pico', N'Portugal', N'PIX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3414, N'Point Lay LRRS Airport', N'Point Lay', N'United States', N'PIZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6737, N'Pajala Airport', N'Pajala', N'Sweden', N'PJA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7353, N'Dr Augusto Roberto Fuster International Airport', N'Pedro Juan Caballero', N'Paraguay', N'PJC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2217, N'Panjgur Airport', N'Panjgur', N'Pakistan', N'PJG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5847, N'Puerto Jimenez Airport', N'Puerto Jimenez', N'Costa Rica', N'PJM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9744, N'Napaskiak Airport', N'Napaskiak', N'United States', N'PKA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4114, N'Mid Ohio Valley Regional Airport', N'PARKERSBURG', N'United States', N'PKB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2932, N'Yelizovo Airport', N'Petropavlovsk', N'Russia', N'PKC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6317, N'Parkes Airport', N'Parkes', N'Australia', N'PKE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6230, N'Pulau Pangkor Airport', N'Pangkor Island', N'Malaysia', N'PKG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6887, N'Porto Cheli Airport', N'Porto Heli', N'Greece', N'PKH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6202, N'Pakhokku Airport', N'Pakhokku', N'Burma', N'PKK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3910, N'Iskandar Airport', N'Pangkalan Bun', N'Indonesia', N'PKN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12104, N'Parakou Airport', N'Parakou', N'Benin', N'PKO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1982, N'Puka Puka Airport', N'Puka Puka', N'French Polynesia', N'PKP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3127, N'Pokhara Airport', N'Pokhara', N'Nepal', N'PKR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11030, N'Port Keats Airport', N'Wadeye', N'Australia', N'PKT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3273, N'Sultan Syarif Kasim Ii (Simpang Tiga) Airport', N'Pekanbaru', N'Indonesia', N'PKU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4372, N'Pskov Airport', N'Pskov', N'Russia', N'PKV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (882, N'Selebi Phikwe Airport', N'Selebi-phikwe', N'Botswana', N'PKW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10209, N'Beijing Daxing International Airport', N'Beijing', N'China', N'PKX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3911, N'Tjilik Riwut Airport', N'Palangkaraya', N'Indonesia', N'PKY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3116, N'Pakse International Airport', N'Pakse', N'Laos', N'PKZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7297, N'Playa Samara/Carrillo Airport', N'Carrillo', N'Costa Rica', N'PLD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (493, N'Plymouth City Airport', N'Plymouth', N'United Kingdom', N'PLH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2589, N'Ponta Pelada Airport', N'Manaus', N'Brazil', N'PLL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3289, N'Sultan Mahmud Badaruddin II Airport', N'Palembang', N'Indonesia', N'PLM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5762, N'Pellston Regional Airport of Emmet County Airport', N'Pellston', N'United States', N'PLN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6318, N'Port Lincoln Airport', N'Port Lincoln', N'Australia', N'PLO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5841, N'Captain Ramon Xatruch Airport', N'La Palma', N'Panama', N'PLP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3958, N'Palanga International Airport', N'Palanga', N'Lithuania', N'PLQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1754, N'Providenciales Airport', N'Providenciales', N'Turks and Caicos Islands', N'PLS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2528, N'Pampulha - Carlos Drummond de Andrade Airport', N'Belo Horizonte', N'Brazil', N'PLU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8328, N'Suprunovka Airport', N'Poltava', N'Ukraine', N'PLV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3249, N'Mutiara Airport', N'Palu', N'Indonesia', N'PLW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2918, N'Semipalatinsk Airport', N'Semiplatinsk', N'Kazakhstan', N'PLX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (838, N'Port Elizabeth Airport', N'Port Elizabeth', N'South Africa', N'PLZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1184, N'Pemba Airport', N'Pemba', N'Tanzania', N'PMA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3647, N'Pembina Municipal Airport', N'Pembina', N'United States', N'PMB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2665, N'El Tepual Airport', N'Puerto Montt', N'Chile', N'PMC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3756, N'Palmdale Regional/USAF Plant 42 Airport', N'Palmdale', N'United States', N'PMD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1531, N'Parma Airport', N'Parma', N'Italy', N'PMF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2606, N'Ponta Por+ú Airport', N'Ponta Pora', N'Brazil', N'PMG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13271, N'Greater Portsmouth Regional Airport', N'Portsmouth', N'United States', N'PMH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3998, N'Palma De Mallorca Airport', N'Palma de Mallorca', N'Spain', N'PMI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6313, N'Palm Island Airport', N'Palm Island', N'Australia', N'PMK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7204, N'Port Moller Airport', N'Cold Bay', N'United States', N'PML')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1512, N'FalconeÔÇôBorsellino Airport', N'Palermo', N'Italy', N'PMO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2499, N'Perito Moreno Airport', N'Perito Moreno', N'Argentina', N'PMQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2028, N'Palmerston North Airport', N'Palmerston North', N'New Zealand', N'PMR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2240, N'Palmyra Airport', N'Palmyra', N'Syria', N'PMS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2850, N'Del Caribe Santiago Mari+¦o International Airport', N'Porlamar', N'Venezuela', N'PMV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4214, N'Brigadeiro Lysias Rodrigues Airport', N'Palmas', N'Brazil', N'PMW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2492, N'El Tehuelche Airport', N'Puerto Madryn', N'Argentina', N'PMY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1887, N'Palmar Sur Airport', N'Palmar Sur', N'Costa Rica', N'PMZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1234, N'Pamplona Airport', N'Pamplona', N'Spain', N'PNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2605, N'Porto Nacional Airport', N'Porto Nacional', N'Brazil', N'PNB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3440, N'Ponca City Regional Airport', N'Ponca City', N'United States', N'PNC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3750, N'Northeast Philadelphia Airport', N'Philadelphia', N'United States', N'PNE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3034, N'Phnom Penh International Airport', N'Phnom-penh', N'Cambodia', N'PNH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2255, N'Pohnpei International Airport', N'Pohnpei', N'Micronesia', N'PNI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3284, N'Supadio Airport', N'Pontianak', N'Indonesia', N'PNK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1511, N'Pantelleria Airport', N'Pantelleria', N'Italy', N'PNL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5423, N'Girua Airport', N'Girua', N'Papua New Guinea', N'PNP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3017, N'Pune Airport', N'Pune', N'India', N'PNQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (886, N'Pointe Noire Airport', N'Pointe-noire', N'Congo (Brazzaville)', N'PNR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3564, N'Pensacola Regional Airport', N'Pensacola', N'United States', N'PNS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7226, N'Tte. Julio Gallardo Airport', N'Puerto Natales', N'Chile', N'PNT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3960, N'Panev-ù+¥ys Air Base', N'Panevezys', N'Lithuania', N'PNV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3147, N'Pondicherry Airport', N'Pendicherry', N'India', N'PNY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2604, N'Senador Nilo Coelho Airport', N'Petrolina', N'Brazil', N'PNZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2599, N'Salgado Filho Airport', N'Porto Alegre', N'Brazil', N'POA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3481, N'Pope Field', N'Fort Bragg', N'United States', N'POB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8798, N'Brackett Field', N'La Verne', N'United States', N'POC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3648, N'Polk Army Air Field', N'Fort Polk', N'United States', N'POE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8664, N'Poplar Bluff Municipal Airport', N'Poplar Bluff', N'United States', N'POF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (967, N'Port Gentil Airport', N'Port Gentil', N'Gabon', N'POG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2764, N'Capitan Nicolas Rojas Airport', N'Potosi', N'Bolivia', N'POI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8237, N'Patos de Minas Airport', N'Patos de Minas', N'Brazil', N'POJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (985, N'Pemba Airport', N'Pemba', N'Mozambique', N'POL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5, N'Port Moresby Jacksons International Airport', N'Port Moresby', N'Papua New Guinea', N'POM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2601, N'Po+ºos de Caldas - Embaixador Walther Moreira Salles Airport', N'Pocos De Caldas', N'Brazil', N'POO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1761, N'Gregorio Luperon International Airport', N'Puerto Plata', N'Dominican Republic', N'POP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (448, N'Pori Airport', N'Pori', N'Finland', N'POR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2902, N'Piarco International Airport', N'Port-of-spain', N'Trinidad and Tobago', N'POS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1781, N'Ken Jones Airport', N'Port Antonio', N'Jamaica', N'POT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11851, N'Dutchess County Airport', N'Poughkeepsie', N'United States', N'POU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1571, N'Portoroz Airport', N'Portoroz', N'Slovenia', N'POW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1387, N'Pontoise - Cormeilles-en-Vexin Airport', N'Pontoise', N'France', N'POX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (674, N'Pozna+ä-+üawica Airport', N'Poznan', N'Poland', N'POZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13154, N'Perry Lefors Field', N'Pampa', N'United States', N'PPA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2550, N'Presidente Prudente Airport', N'President Prudente', N'Brazil', N'PPB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8052, N'Prospect Creek Airport', N'Prospect Creek', N'United States', N'PPC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1833, N'Mar de Cort+®s International Airport', N'Punta Penasco', N'Mexico', N'PPE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13265, N'Tri-City Airport', N'Parsons', N'United States', N'PPF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1970, N'Pago Pago International Airport', N'Pago Pago', N'American Samoa', N'PPG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12035, N'Port Pirie Airport', NULL, N'Australia', N'PPI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6084, N'Petropavlosk South Airport', N'Petropavlosk', N'Kazakhstan', N'PPK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4175, N'Phaplu Airport', N'Phaplu', N'Nepal', N'PPL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8379, N'Pompano Beach Airpark', N'Pompano Beach', N'United States', N'PPM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2741, N'Guillermo Le+¦n Valencia Airport', N'Popayan', N'Colombia', N'PPN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3328, N'Proserpine Whitsunday Coast Airport', N'Prosserpine', N'Australia', N'PPP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2029, N'Paraparaumu Airport', N'Paraparaumu', N'New Zealand', N'PPQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13529, N'Pasir Pangaraan Airport', N'Pasir Pangaraian', N'Indonesia', N'PPR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2433, N'Puerto Princesa Airport', N'Puerto Princesa', N'Philippines', N'PPS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4075, N'Faa''a International Airport', N'Papeete', N'French Polynesia', N'PPT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5567, N'Papa Westray Airport', N'Papa Westray', N'United Kingdom', N'PPW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10154, N'Pouso Alegre Airport', N'Pouso Alegre', N'Brazil', N'PPY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3204, N'Phu Quoc International Airport', N'Phuquoc', N'Vietnam', N'PQC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3528, N'Northern Maine Regional Airport at Presque Isle', N'Presque Isle', N'United States', N'PQI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13334, N'Palenque International Airport', N'Palenque', N'Mexico', N'PQM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6320, N'Port Macquarie Airport', N'Port Macquarie', N'Australia', N'PQQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2439, N'General Urquiza Airport', N'Parana', N'Argentina', N'PRA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10185, N'Paso Robles Municipal Airport', N'Paso Robles', N'United States', N'PRB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3446, N'Ernest A. Love Field', N'Prescott', N'United States', N'PRC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1587, N'V+íclav Havel Airport Prague', N'Prague', N'Czech Republic', N'PRG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3164, N'Phrae Airport', N'Phrae', N'Thailand', N'PRH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (995, N'Praslin Airport', N'Praslin', N'Seychelles', N'PRI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1635, N'Portim+úo Airport', N'Portimao', N'Portugal', N'PRM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1742, N'Pri+ítina International Airport', N'Pristina', N'Serbia', N'PRN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1325, N'Propriano Airport', N'Propriano', N'France', N'PRP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2475, N'Termal Airport', N'Presidencia R.s.pena', N'Argentina', N'PRQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3233, N'Pyay Airport', N'Pyay', N'Burma', N'PRU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1586, N'P+Öerov Air Base', N'Prerov', N'Czech Republic', N'PRV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11095, N'Cox Field', N'Paris', N'United States', N'PRX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (871, N'Wonderboom Airport', N'Pretoria', N'South Africa', N'PRY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8136, N'Prineville Airport', N'Prineville', N'United States', N'PRZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1562, N'Pisa International Airport', N'Pisa', N'Italy', N'PSA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6133, N'Tri Cities Airport', N'Pasco', N'United States', N'PSC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1134, N'Port Said Airport', N'Port Said', N'Egypt', N'PSD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2889, N'Mercedita Airport', N'Ponce', N'Puerto Rico', N'PSE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4147, N'Petersburg James A Johnson Airport', N'Petersburg', N'United States', N'PSG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8113, N'St. Peter-Ording Airport', N'Sankt Peter-Ording', N'Germany', N'PSH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2218, N'Pasni Airport', N'Pasni', N'Pakistan', N'PSI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3251, N'Kasiguncu Airport', N'Poso', N'Indonesia', N'PSJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8669, N'Perth/Scone Airport', N'Perth', N'United Kingdom', N'PSL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5763, N'Portsmouth International at Pease Airport', N'Portsmouth', N'United States', N'PSM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2742, N'Antonio Narino Airport', N'Pasto', N'Colombia', N'PSO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3839, N'Palm Springs International Airport', N'Palm Springs', N'United States', N'PSP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1505, N'Pescara International Airport', N'Pescara', N'Italy', N'PSR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2474, N'Libertador Gral D Jose De San Martin Airport', N'Posadas', N'Argentina', N'PSS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6226, N'Pangsuma Airport', N'Putussibau-Borneo Island', N'Indonesia', N'PSU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3522, N'Palacios Municipal Airport', N'Palacios', N'United States', N'PSX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6048, N'Port Stanley Airport', N'Stanley', N'Falkland Islands', N'PSY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2765, N'Capit+ín Av. Salvador Ogaya G. airport', N'Puerto Suarez', N'Bolivia', N'PSZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9387, N'Port Alsworth Airport', N'Port alsworth', N'United States', N'PTA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9120, N'Dinwiddie County Airport', N'Petersburg', N'United States', N'PTB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5868, N'Malolo Lailai Island Airport', N'Malolo Lailai Island', N'Fiji', N'PTF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (845, N'Polokwane International Airport', N'Potgietersrus', N'South Africa', N'PTG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6766, N'Port Heiden Airport', N'Port Heiden', N'United States', N'PTH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6321, N'Portland Airport', N'Portland', N'Australia', N'PTJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8877, N'Oakland County International Airport', N'Pontiac', N'United States', N'PTK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2857, N'Palmarito Airport', N'Palmarito', N'Venezuela', N'PTM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2881, N'Pointe-+á-Pitre Le Raizet', N'Pointe-a-pitre', N'Guadeloupe', N'PTP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11071, N'Pratt Regional Airport', N'Pratt', N'United States', N'PTT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3430, N'Platinum Airport', N'Port Moller', N'United States', N'PTU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2740, N'Pitalito Airport', N'Pitalito', N'Colombia', N'PTX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1871, N'Tocumen International Airport', N'Panama City', N'Panama', N'PTY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8762, N'Rio Amazonas Airport', N'Pastaza', N'Ecuador', N'PTZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3527, N'Pueblo Memorial Airport', N'Pueblo', N'United States', N'PUB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7583, N'Carbon County Regional/Buck Davis Field', N'Price', N'United States', N'PUC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2494, N'Puerto Deseado Airport', N'Puerto Deseado', N'Argentina', N'PUD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7962, N'Puerto Obaldia Airport', N'Puerto Obaldia', N'Panama', N'PUE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1274, N'Pau Pyr+®n+®es Airport', N'Pau', N'France', N'PUF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6312, N'Port Augusta Airport', N'Argyle', N'Australia', N'PUG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1760, N'Punta Cana International Airport', N'Punta Cana', N'Dominican Republic', N'PUJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9474, N'Pukarua Airport', N'Pukarua', N'French Polynesia', N'PUK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2647, N'Pdte. Carlos Iba+¦ez del Campo Airport', N'Punta Arenas', N'Chile', N'PUQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6057, N'Puerto Rico Airport', N'Puerto Rico/Manuripi', N'Bolivia', N'PUR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2372, N'Gimhae International Airport', N'Busan', N'South Korea', N'PUS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12002, N'Sri Sathya Sai Airport', N'Puttaparthi', N'India', N'PUT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2706, N'Tres De Mayo Airport', N'Puerto Asis', N'Colombia', N'PUU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3944, N'Pullman Moscow Regional Airport', N'Pullman', N'United States', N'PUW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1203, N'Pula Airport', N'Pula', N'Croatia', N'PUY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1864, N'Puerto Cabezas Airport', N'Puerto Cabezas', N'Nicaragua', N'PUZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2743, N'El Embrujo Airport', N'Providencia', N'Colombia', N'PVA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6456, N'Provincetown Municipal Airport', N'Provincetown', N'United States', N'PVC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3641, N'Theodore Francis Green State Airport', N'Providence', N'United States', N'PVD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3406, N'Shanghai Pudong International Airport', N'Shanghai', N'China', N'PVG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2607, N'Governador Jorge Teixeira de Oliveira Airport', N'Porto Velho', N'Brazil', N'PVH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1470, N'Aktion National Airport', N'Preveza', N'Greece', N'PVK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8320, N'Pike County-Hatcher Field', N'Pikeville', N'United States', N'PVL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2686, N'Reales Tamarindos Airport', N'Portoviejo', N'Ecuador', N'PVO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1836, N'Licenciado Gustavo D+¡az Ordaz International Airport', N'Puerto Vallarta', N'Mexico', N'PVR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2929, N'Provideniya Bay Airport', N'Provideniya Bay', N'Russia', N'PVS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7579, N'Provo Municipal Airport', N'Provo', N'United States', N'PVU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9781, N'Wiley Post Airport', N'Oklahoma City', N'United States', N'PWA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2931, N'Pevek Airport', N'Pevek', N'Russia', N'PWE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7936, N'Chicago Executive Airport', N'Chicago-Wheeling', N'United States', N'PWK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3862, N'Portland International Jetport Airport', N'Portland', N'United States', N'PWM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2917, N'Pavlodar Airport', N'Pavlodar', N'Kazakhstan', N'PWQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6445, N'Bremerton National Airport', N'Bremerton', N'United States', N'PWT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11850, N'Ralph Wenz Field', N'Pinedale', N'United States', N'PWY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9532, N'Prominent Hill Airport', N'Prominent Hill', N'Australia', N'PXH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1837, N'Puerto Escondido International Airport', N'Puerto Escondido', N'Mexico', N'PXM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1637, N'Porto Santo Airport', N'Porto Santo', N'Portugal', N'PXO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3185, N'Surin Airport', N'Surin', N'Thailand', N'PXR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6194, N'Pleiku Airport', N'Pleiku', N'Vietnam', N'PXU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13514, N'Jeypore Airport', N'Jeypore', N'India', N'PYB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5866, N'Tongareva Airport', N'Penrhyn Island', N'Cook Islands', N'PYE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2853, N'Cacique Aramare Airport', N'Puerto Ayacucho', N'Venezuela', N'PYH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6092, N'Polyarny Airport', N'Yakutia', N'Russia', N'PYJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11905, N'Payam International Airport', N'Karaj', N'Iran', N'PYK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8277, N'Plymouth Municipal Airport', N'Plymouth', N'United States', N'PYM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1444, N'Andravida Air Base', N'Andravida', N'Greece', N'PYR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4159, N'Mae Hong Son Airport', N'Pai', N'Thailand', N'PYY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11941, N'Paz De Ariporo Airport', N'Paz De Ariporo', N'Colombia', N'PZA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (843, N'Pietermaritzburg Airport', N'Pietermaritzburg', N'South Africa', N'PZB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5573, N'Penzance Heliport', N'Penzance', N'United Kingdom', N'PZE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2233, N'Zhob Airport', N'Zhob', N'Pakistan', N'PZH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6435, N'Bao''anying Airport', N'Panzhihua', N'China', N'PZI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10934, N'Zulu Inyala Airport', N'Phinda', N'South Africa', N'PZL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2856, N'General Manuel Carlos Piar International Airport', N'Guayana', N'Venezuela', N'PZO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2664, N'Maquehue Airport', N'Temuco', N'Chile', N'PZS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5702, N'Port Sudan New International Airport', N'Port Sudan', N'Sudan', N'PZU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1748, N'Pie+í+Ñany Airport', N'Piestany', N'Slovakia', N'PZY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6738, N'Bella Coola Airport', N'Bella Coola', N'Canada', N'QBC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8952, N'Botucatu - Tancredo de Almeida Neves Airport', N'Botucatu', N'Brazil', N'QCJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (565, N'RAF Coningsby', N'Coningsby', N'United Kingdom', N'QCY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7408, N'Tsletsi Airport', N'Djelfa', N'Algeria', N'QDJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (354, N'Frankfurt-Egelsbach Airport', N'Egelsbach', N'Germany', N'QEF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13378, N'Eqalugaarsuit Heliport', N'Eqalugaarsuit', N'Greenland', N'QFG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8813, N'Duxford Aerodrome', N'Duxford', N'United Kingdom', N'QFO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13355, N'Attu Heliport', N'Attu', N'Greenland', N'QGQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2320, N'Gifu Airport', N'Gifu', N'Japan', N'QGU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11931, N'Base de Avia+º+úo de Taubat+® Airport', N'Taubat+®', N'Brazil', N'QHP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7421, N'Harar Meda Airport', N'Debre Zeyit', N'Ethiopia', N'QHR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4213, N'Iguatu Airport', N'Iguatu', N'Brazil', N'QIG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2070, N'Jubail Airport', N'Jubail', N'Saudi Arabia', N'QJB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13357, N'Kitsissuarsuit Heliport', N'Kitsissuarsuit', N'Greenland', N'QJE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13375, N'Ikamiut Heliport', N'Ikamiut', N'Greenland', N'QJI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10080, N'Kautokeino Air Base', N'Kautokeino', N'Norway', N'QKX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (496, N'Lasham Airport', N'Lasham', N'United Kingdom', N'QLA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (207, N'Blida Airport', N'Blida', N'Algeria', N'QLD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (440, N'Lahti Vesivehmaa Airport', N'Vesivehmaa', N'Finland', N'QLF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11889, N'Sarzana-Luni Air Base', N'Sarzana (SP)', N'Italy', N'QLP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1630, N'Monte Real Air Base', N'Monte Real', N'Portugal', N'QLR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6928, N'Lausanne-Bl+®cherette Airport', N'Lausanne', N'Switzerland', N'QLS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1559, N'Latina Air Base', N'Latina', N'Italy', N'QLT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6931, N'Neuchatel Airport', N'Neuchatel', N'Switzerland', N'QNC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13078, N'Cenej Airport', N'Novi Sad', N'Serbia', N'QND')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1334, N'Annemasse Airport', N'Annemasse', N'France', N'QNJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7675, N'Aeroclube Airport', N'Nova Iguacu', N'Brazil', N'QNV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6730, N'Sam Mbakwe International Airport', N'Imo', N'Nigeria', N'QOW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1549, N'Padova Airport', N'Padova', N'Italy', N'QPA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1916, N'Pinar Del Rio Airport', N'Pinar Del Rio Norte', N'Cuba', N'QPD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3313, N'Paya Lebar Air Base', N'Paya Lebar', N'Singapore', N'QPG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2640, N'Campo Fontenelle Airport', N'Piracununga', N'Brazil', N'QPS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13356, N'Kangaatsiaq Heliport', N'Kangaatsiaq', N'Greenland', N'QPW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13360, N'Qeqertaq Heliport', N'Qeqertaq', N'Greenland', N'QQT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5603, N'Rand Airport', N'Johannesburg', N'South Africa', N'QRA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2660, N'De La Independencia Airport', N'Rancagua', N'Chile', N'QRC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12034, N'Narromine Airport', NULL, N'Australia', N'QRM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1838, N'Quer+®taro Intercontinental Airport', N'Queretaro', N'Mexico', N'QRO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12043, N'Warren Airport', NULL, N'Australia', N'QRR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6972, N'Warri Airport', N'Osubi', N'Nigeria', N'QRW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13384, N'Ikerassaarsuk Heliport', N'Ikerasaarsuk', N'Greenland', N'QRY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6868, N'Sabadell Airport', N'Sabadell', N'Spain', N'QSA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8954, N'M+írio Pereira LopesÔÇôS+úo Carlos Airport', N'Sao Carlos', N'Brazil', N'QSC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6492, N'Ain Arnat Airport', N'Setif', N'Algeria', N'QSF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13467, N'Moshi Airport', N'Moshi', N'Tanzania', N'QSI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11898, N'San Nicolas De Bari Airport', N'San Nicol+ís', N'Cuba', N'QSN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5792, N'Salerno Costa d''Amalfi Airport', N'Salerno', N'Italy', N'QSR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13485, N'Yeerqiang Airport', N'Yarkant', N'China', N'QSZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10751, N'Chichester/Goodwood Airport', N'Goodwood', N'United Kingdom', N'QUG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9826, N'Akwa Ibom International Airport', N'Uyo', N'Nigeria', N'QUO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (559, N'RAF Wyton', N'Wyton', N'United Kingdom', N'QUY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (328, N'Sch+Ânhagen Airport', N'Schoenhagen', N'Germany', N'QXH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7812, N'Oksywie Military Air Base', N'Gdynia', N'Poland', N'QYD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5435, N'Tokua Airport', N'Tokua', N'Papua New Guinea', N'RAB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8430, N'John H Batten Airport', N'Racine', N'United States', N'RAC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2084, N'Arar Domestic Airport', N'Arar', N'Saudi Arabia', N'RAE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2081, N'Rafha Domestic Airport', N'Rafha', N'Saudi Arabia', N'RAH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5674, N'Praia International Airport', N'Praia Santiago Island', N'Cape Verde', N'RAI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3019, N'Rajkot Airport', N'Rajkot', N'India', N'RAJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1075, N'Menara Airport', N'Marrakech', N'Morocco', N'RAK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3799, N'Riverside Municipal Airport', N'Riverside', N'United States', N'RAL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6323, N'Ramingining Airport', N'Ramingining', N'Australia', N'RAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2613, N'Leite Lopes Airport', N'Ribeirao Preto', N'Brazil', N'RAO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4087, N'Rapid City Regional Airport', N'Rapid City', N'United States', N'RAP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13548, N'Sugimanuru Airport', N'Raha', N'Indonesia', N'RAQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1959, N'Rarotonga International Airport', N'Avarua', N'Cook Islands', N'RAR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2123, N'Sardar-e-Jangal Airport', N'Rasht', N'Iran', N'RAS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6144, N'Raduzhny Airport', N'Raduzhnyi', N'Russia', N'RAT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2225, N'Rawalakot Airport', N'Rawala Kot', N'Pakistan', N'RAZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1072, N'Rabat-Sal+® Airport', N'Rabat', N'Morocco', N'RBA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7397, N'Borba Airport', N'Borba', N'Brazil', N'RBB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8188, N'Dallas Executive Airport', N'Dallas', N'United States', N'RBD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4295, N'Ratanakiri Airport', N'Ratanakiri', N'Cambodia', N'RBE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7769, N'French Valley Airport', N'Murrieta-Temecula', N'United States', N'RBK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8137, N'Red Bluff Municipal Airport', N'Red Bluff', N'United States', N'RBL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (379, N'Straubing Airport', N'Straubing', N'Germany', N'RBM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7317, N'Rurenabaque Airport', N'Rerrenabaque', N'Bolivia', N'RBQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2609, N'Pl+ícido de Castro Airport', N'Rio Branco', N'Brazil', N'RBR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5418, N'Ramata Airport', N'Ramata', N'Solomon Islands', N'RBV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7427, N'Rumbek Airport', N'Rumbek', N'Sudan', N'RBX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6722, N'Ruby Airport', N'Ruby', N'United States', N'RBY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3625, N'Ellsworth Air Force Base', N'Rapid City', N'United States', N'RCA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (849, N'Richards Bay Airport', N'Richard''s Bay', N'South Africa', N'RCB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2746, N'Almirante Padilla Airport', N'Rio Hacha', N'Colombia', N'RCH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5907, N'Redcliffe Airport', N'Redcliffe', N'Vanuatu', N'RCL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9904, N'Richmond Airport', N'Richmond', N'Australia', N'RCM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1300, N'Rochefort-Saint-Agnant (BA 721) Airport', N'Rochefort', N'France', N'RCO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2484, N'Reconquista Airport', N'Reconquista', N'Argentina', N'RCQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8894, N'Rochester Airport', N'Rochester', N'United Kingdom', N'RCS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2462, N'Area De Material Airport', N'Rio Cuarto', N'Argentina', N'RCU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1955, N'Rum Cay Airport', N'Port Nelson', N'Bahamas', N'RCY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13439, N'Red Dog Airport', N'Red Dog', N'United States', N'RDB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8240, N'Reden+º+úo Airport', N'Redencao', N'Brazil', N'RDC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4098, N'Redding Municipal Airport', N'Redding', N'United States', N'RDD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5764, N'Reading Regional Carl A Spaatz Field', N'Reading', N'United States', N'RDG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4103, N'Roberts Field', N'Redmond-Bend', N'United States', N'RDM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4013, N'LTS Pulau Redang Airport', N'Redang', N'Malaysia', N'RDN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8029, N'Radom Airport', N'RADOM', N'Poland', N'RDO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11998, N'Kazi Nazrul Islam Airport', N'Durgapur', N'India', N'RDP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3565, N'Grand Forks Air Force Base', N'Red River', N'United States', N'RDR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7222, N'Rincon De Los Sauces Airport', N'Rincon de los Sauces', N'Argentina', N'RDS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3626, N'Raleigh Durham International Airport', N'Raleigh-durham', N'United States', N'RDU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1289, N'Rodez-Marcillac Airport', N'Rodez', N'France', N'RDZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1976, N'Reao Airport', N'Reao', N'French Polynesia', N'REA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (326, N'Rechlin-L+ñrz Airport', N'Rechlin-laerz', N'Germany', N'REB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2610, N'Guararapes - Gilberto Freyre International Airport', N'Recife', N'Brazil', N'REC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1514, N'Reggio Calabria Airport', N'Reggio Calabria', N'Italy', N'REG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2490, N'Almirante Marco Andres Zar Airport', N'Trelew', N'Argentina', N'REL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2991, N'Orenburg Central Airport', N'Orenburg', N'Russia', N'REN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3035, N'Siem Reap International Airport', N'Siem-reap', N'Cambodia', N'REP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1769, N'Retalhuleu Airport', N'Retalhuleu', N'Guatemala', N'RER')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2469, N'Resistencia International Airport', N'Resistencia', N'Argentina', N'RES')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5584, N'R+©st Airport', N'R+©st', N'Norway', N'RET')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1236, N'Reus Air Base', N'Reus', N'Spain', N'REU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1839, N'General Lucio Blanco International Airport', N'Reynosa', N'Mexico', N'REX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6059, N'Reyes Airport', N'Reyes', N'Bolivia', N'REY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11180, N'Resende Airport', N'Resende', N'Brazil', N'REZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4028, N'Chicago Rockford International Airport', N'Rockford', N'United States', N'RFD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1995, N'Raiatea Airport', N'Raiatea Island', N'French Polynesia', N'RFP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7293, N'Rosita Airport', N'Rosita', N'Nicaragua', N'RFS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2495, N'Hermes Quijada International Airport', N'Rio Grande', N'Argentina', N'RGA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1990, N'Rangiroa Airport', N'Rangiroa', N'French Polynesia', N'RGI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8740, N'Gorno-Altaysk Airport', N'Gorno-Altaysk', N'Russia', N'RGK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2496, N'Piloto Civil N. Fern+índez Airport', N'Rio Gallegos', N'Argentina', N'RGL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3239, N'Yangon International Airport', N'Yangon', N'Burma', N'RGN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8830, N'Orang Airport', N'Chongjin', N'North Korea', N'RGO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6757, N'Burgos Airport', N'Burgos', N'Spain', N'RGS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3291, N'Japura Airport', N'Rengat', N'Indonesia', N'RGT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8914, N'Termas de R+¡o Hondo international Airport', N'Rio Hondo', N'Argentina', N'RHD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1434, N'Reims-Champagne (BA 112) Air Base', N'Reims', N'France', N'RHE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5765, N'Rhinelander Oneida County Airport', N'Rhinelander', N'United States', N'RHI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1472, N'Diagoras Airport', N'Rhodos', N'Greece', N'RHO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6991, N'Ramechhap Airport', N'Ramechhap', N'Nepal', N'RHP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13481, N'Alxa Right Banner Badanjilin Airport', N'Alxa Right Banner', N'China', N'RHT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11312, N'Reid-Hillview Airport of Santa Clara County', N'San Jose', N'United States', N'RHV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6040, N'Santa Maria Airport', N'Santa Maria', N'Brazil', N'RIA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6058, N'Capit+ín Av. Selin Zeitun Lopez Airport', N'Riberalta', N'Bolivia', N'RIB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3608, N'Richmond International Airport', N'Richmond', N'United States', N'RIC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10142, N'Scarlett Martinez International Airport', N'Rio Hato', N'Panama', N'RIH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11945, N'Juan Simons Vela Airport', N'Rioja', N'Peru', N'RIJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7652, N'Garfield County Regional Airport', N'Rifle', N'United States', N'RIL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6918, N'Ringi Cove Airport', N'Ringi Cove', N'Solomon Islands', N'RIN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2301, N'Rishiri Airport', N'Rishiri Island', N'Japan', N'RIS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3815, N'March ARB Airport', N'Riverside', N'United States', N'RIV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6881, N'Riverton Regional Airport', N'Riverton WY', N'United States', N'RIW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3953, N'Riga International Airport', N'Riga', N'Latvia', N'RIX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3974, N'Mukalla International Airport', N'Mukalla', N'Yemen', N'RIY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11713, N'Rizhao Shanzihe Airport', N'Rizhao', N'China', N'RIZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3148, N'Rajahmundry Airport', N'Rajahmundry', N'India', N'RJA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13573, N'Rajbiraj Airport', N'Rajbiraj', N'Nepal', N'RJB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3072, N'Shah Mokhdum Airport', N'Rajshahi', N'Bangladesh', N'RJH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1205, N'Rijeka Airport', N'Rijeka', N'Croatia', N'RJK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5781, N'Logro+¦o-Agoncillo Airport', N'Logro+¦o-Agoncillo', N'Spain', N'RJL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5929, N'Rafsanjan Airport', N'Rafsanjan', N'Iran', N'RJN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4026, N'Knox County Regional Airport', N'Rockland', N'United States', N'RKD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (617, N'Copenhagen Roskilde Airport', N'Copenhagen', N'Denmark', N'RKE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7494, N'Rock Hill - York County Airport', N'Rock Hill', N'United States', N'RKH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13525, N'Rokot Airport', N'Sipora', N'Indonesia', N'RKO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8077, N'Aransas County Airport', N'Rockport', N'United States', N'RKP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5766, N'Southwest Wyoming Regional Airport', N'Rock Springs', N'United States', N'RKS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2190, N'Ras Al Khaimah International Airport', N'Ras Al Khaimah', N'United Arab Emirates', N'RKT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (18, N'Reykjavik Airport', N'Reykjavik', N'Iceland', N'RKV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8442, N'Shigatse Air Base', N'Shigatse', N'China', N'RKZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (772, N'Rostock-Laage Airport', N'Laage', N'Germany', N'RLG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8630, N'Bayannur Tianjitai Airport', N'Bayannur', N'China', N'RLK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6324, N'Roma Airport', N'Roma', N'Australia', N'RMA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3450, N'Griffiss International Airport', N'Rome', N'United States', N'RME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4197, N'Marsa Alam International Airport', N'Marsa Alam', N'Egypt', N'RMF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8294, N'Richard B Russell Airport', N'Rome', N'United States', N'RMG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1546, N'Federico Fellini International Airport', N'Rimini', N'Italy', N'RMI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8348, N'Renmark Airport', N'Renmark', N'Australia', N'RMK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3027, N'Colombo Ratmalana Airport', N'Colombo', N'Sri Lanka', N'RML')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2268, N'Taichung Ching Chuang Kang Airport', N'Taichung', N'Taiwan', N'RMQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (751, N'Ramstein Air Base', N'Ramstein', N'Germany', N'RMS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6926, N'Rimatara Airport', N'Rimatara', N'French Polynesia', N'RMT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13829, N'Regi+¦n de Murcia International Airport', N'Murcia', N'Spain', N'RMU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7630, N'Mariposa Yosemite Airport', N'Mariposa', N'United States', N'RMY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7616, N'Ulawa Airport', N'Ulawa', N'Solomon Islands', N'RNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (685, N'Ronneby Airport', N'Ronneby', N'Sweden', N'RNB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3757, N'Randolph Air Force Base', N'San Antonio', N'United States', N'RND')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1338, N'Roanne-Renaison Airport', N'Roanne', N'France', N'RNE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7291, N'Corn Island', N'Corn Island', N'Nicaragua', N'RNI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2394, N'Yoron Airport', N'Yoron', N'Japan', N'RNJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5414, N'Rennell/Tingoa Airport', N'Rennell Island', N'Solomon Islands', N'RNL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (618, N'Bornholm Airport', N'Ronne', N'Denmark', N'RNN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3807, N'Reno Tahoe International Airport', N'Reno', N'United States', N'RNO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1415, N'Rennes-Saint-Jacques Airport', N'Rennes', N'France', N'RNS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8796, N'Renton Municipal Airport', N'Renton', N'United States', N'RNT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12873, N'Jasper County Airport', N'Rensselaer', N'United States', N'RNZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4016, N'RoanokeÔÇôBlacksburg Regional Airport', N'Roanoke VA', N'United States', N'ROA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1063, N'Roberts International Airport', N'Monrovia', N'Liberia', N'ROB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3622, N'Greater Rochester International Airport', N'Rochester', N'United States', N'ROC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (851, N'Robertson Airport', N'Robertson', N'South Africa', N'ROD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4132, N'Roi Et Airport', N'Roi Et', N'Thailand', N'ROI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3329, N'Rockhampton Airport', N'Rockhampton', N'Australia', N'ROK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7382, N'Maestro Marinho Franco Airport', N'Rondonopolis', N'Brazil', N'ROO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2243, N'Rota International Airport', N'Rota', N'Northern Mariana Islands', N'ROP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2256, N'Babelthuap Airport', N'Babelthuap', N'Palau', N'ROR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2440, N'Islas Malvinas Airport', N'Rosario', N'Argentina', N'ROS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2031, N'Rotorua Regional Airport', N'Rotorua', N'New Zealand', N'ROT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2964, N'Platov International Airport', N'Rostov', N'Russia', N'ROV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3736, N'Roswell International Air Center Airport', N'Roswell', N'United States', N'ROW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1237, N'Rota Naval Station Airport', N'Rota', N'Spain', N'ROZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8821, N'Roper Bar Airport', N'Roper Bar', N'Australia', N'RPB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12033, N'Ngukurr Airport', NULL, N'Australia', N'RPM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1598, N'Ben Ya''akov Airport', N'Rosh Pina', N'Israel', N'RPN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3020, N'Raipur Airport', N'Raipur', N'India', N'RPR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11913, N'Qayyarah West Airport', N'Qayyarah', N'Iraq', N'RQW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (894, N'Sir Charles Gaetan Duval Airport', N'Rodriguez Island', N'Mauritius', N'RRG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3064, N'Rourkela Airport', N'Rourkela', N'India', N'RRK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13628, N'Raroia Airport', N'Raroia', N'French Polynesia', N'RRR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (656, N'R+©ros Airport', N'Roros', N'Norway', N'RRS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2512, N'Santa Rosa Airport', N'Santa Rosa', N'Argentina', N'RSA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1946, N'Rock Sound Airport', N'Rock Sound', N'Bahamas', N'RSD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7098, N'Russian Mission Airport', N'Russian Mission', N'United States', N'RSH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11853, N'Russell Municipal Airport', N'Russell', N'United States', N'RSL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1168, N'Damazin Airport', N'Damazin', N'Sudan', N'RSS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4048, N'Rochester International Airport', N'Rochester', N'United States', N'RST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2365, N'Yeosu Airport', N'Yeosu', N'South Korea', N'RSU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3793, N'Southwest Florida International Airport', N'Fort Myers', N'United States', N'RSW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5877, N'Rotuma Airport', N'Rotuma', N'Fiji', N'RTA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1774, N'Juan Manuel Galvez International Airport', N'Roatan', N'Honduras', N'RTB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11996, N'Ratnagiri Airport', NULL, N'India', N'RTC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3915, N'Frans Sales Lega Airport', N'Ruteng', N'Indonesia', N'RTG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (591, N'Rotterdam The Hague Airport', N'Rotterdam', N'Netherlands', N'RTM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13142, N'Raton Municipal-Crews Field', N'Raton', N'United States', N'RTN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8352, N'Rottnest Island Airport', N'Rottnest Island', N'Australia', N'RTS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4363, N'Saratov Central Airport', N'Saratov', N'Russia', N'RTW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5709, N'Arua Airport', N'Arua', N'Uganda', N'RUA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2144, N'Shahroud Airport', N'Emam Shahr', N'Iran', N'RUD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12053, N'Rugao Air Base', N'Rugao', N'China', N'RUG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2082, N'King Khaled International Airport', N'Riyadh', N'Saudi Arabia', N'RUH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7077, N'Sierra Blanca Regional Airport', N'Ruidoso', N'United States', N'RUI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4179, N'Rukum Chaurjahari Airport', N'Rukumkot', N'Nepal', N'RUK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4177, N'Rumjatar Airport', N'Rumjatar', N'Nepal', N'RUM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (916, N'Roland Garros Airport', N'St.-denis', N'Reunion', N'RUN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1971, N'Rurutu Airport', N'Rurutu', N'French Polynesia', N'RUR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5415, N'Marau Airport', N'Marau', N'Solomon Islands', N'RUS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5767, N'Rutland - Southern Vermont Regional Airport', N'Rutland', N'United States', N'RUT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11895, N'Rubelsanto Airport', N'Rubelsanto', N'Guatemala', N'RUV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (939, N'Farafangana Airport', N'Farafangana', N'Madagascar', N'RVA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7394, N'General Leite de Castro Airport', N'Rio Verde', N'Brazil', N'RVD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7355, N'Los Colonizadores Airport', N'Saravena', N'Colombia', N'RVE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (453, N'Rovaniemi Airport', N'Rovaniemi', N'Finland', N'RVN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7849, N'Richard Lloyd Jones Jr Airport', N'Tulsa', N'United States', N'RVS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7577, N'Ravensthorpe Airport', N'Ravensthorpe', N'Australia', N'RVT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7456, N'Raivavae Airport', N'Raivavae', N'French Polynesia', N'RVV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8236, N'Presidente General Don Oscar D. Gestido International Airport', N'Rivera', N'Uruguay', N'RVY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11854, N'Redwood Falls Municipal Airport', N'Redwood Falls', N'United States', N'RWF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7690, N'Rocky Mount Wilson Regional Airport', N'Rocky Mount', N'United States', N'RWI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7986, N'Rawlins Municipal Airport/Harvey Field', N'Rawlins', N'United States', N'RWL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6108, N'Rivne International Airport', N'Rivne', N'Ukraine', N'RWN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6026, N'Roxas Airport', N'Roxas City', N'Philippines', N'RXS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6155, N'Staroselye Airport', N'Rybinsk', N'Russia', N'RYB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2222, N'Shaikh Zaid Airport', N'Rahim Yar Khan', N'Pakistan', N'RYK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1292, N'Royan-M+®dis Airport', N'Royan', N'France', N'RYN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2500, N'Santa Cruz Airport', N'Santa Cruz', N'Argentina', N'RZA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (675, N'Rzesz+¦w-Jasionka Airport', N'Rzeszow', N'Poland', N'RZE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8431, N'Cesar Lim Rodriguez Airport', N'Taytay', N'Philippines', N'RZP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2151, N'Ramsar Airport', N'Ramsar', N'Iran', N'RZR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11332, N'Sawan Airport', N'Sindh', N'Pakistan', N'RZS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7653, N'Shively Field', N'SARATOGA', N'United States', N'SAA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4249, N'Juancho E. Yrausquin Airport', N'Saba', N'Netherlands Antilles', N'SAB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3663, N'Sacramento Executive Airport', N'Sacramento', N'United States', N'SAC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9140, N'Safford Regional Airport', N'Safford', N'United States', N'SAD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3784, N'Santa Fe Municipal Airport', N'Santa Fe', N'United States', N'SAF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13513, N'Shirdi Airport', N'Shirdi', N'India', N'SAG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3980, N'Sana''a International Airport', N'Sanaa', N'Yemen', N'SAH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7466, N'Sau+¦+írkr+¦kur Airport', N'Saudarkrokur', N'Iceland', N'SAK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1892, N'Monse+¦or +ôscar Arnulfo Romero International Airport', N'San Salvador', N'El Salvador', N'SAL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3731, N'San Diego International Airport', N'San Diego', N'United States', N'SAN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1772, N'Ram+¦n Villeda Morales International Airport', N'San Pedro Sula', N'Honduras', N'SAP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1931, N'San Andros Airport', N'San Andros', N'Bahamas', N'SAQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3621, N'San Antonio International Airport', N'San Antonio', N'United States', N'SAT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3613, N'Savannah Hilton Head International Airport', N'Savannah', N'United States', N'SAV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4317, N'Sabiha G+Âk+ºen International Airport', N'Istanbul', N'Turkey', N'SAW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1552, N'Siena-Ampugnano Airport', N'Siena', N'Italy', N'SAY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3949, N'Santa Barbara Municipal Airport', N'Santa Barbara', N'United States', N'SBA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2859, N'Santa B+írbara de Barinas Airport', N'Santa Barbara', N'Venezuela', N'SBB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7670, N'San Bernardino International Airport', N'San Bernardino', N'United States', N'SBD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3891, N'Maimun Saleh Airport', N'Sabang', N'Indonesia', N'SBG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6460, N'Gustaf III Airport', N'Gustavia', N'France', N'SBH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1419, N'Saint-Brieuc-Armor Airport', N'St.-brieuc Armor', N'France', N'SBK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2766, N'Santa Ana Del Yacuma Airport', N'Santa Ana', N'Bolivia', N'SBL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9126, N'Sheboygan County Memorial Airport', N'Sheboygan', N'United States', N'SBM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4359, N'South Bend Regional Airport', N'South Bend', N'United States', N'SBN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5768, N'San Luis County Regional Airport', N'San Luis Obispo', N'United States', N'SBP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6327, N'Saibai Island Airport', N'Saibai Island', N'Australia', N'SBR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7580, N'Steamboat Springs Bob Adams Field', N'Steamboat Springs', N'United States', N'SBS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12919, N'Sabetta International Airport', N'Sabetta', N'Russia', N'SBT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (852, N'Springbok Airport', N'Springbok', N'South Africa', N'SBU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3267, N'Sibu Airport', N'Sibu', N'Malaysia', N'SBW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3642, N'Salisbury Ocean City Wicomico Regional Airport', N'Salisbury', N'United States', N'SBY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1658, N'Sibiu International Airport', N'Sibiu', N'Romania', N'SBZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3620, N'Deadhorse Airport', N'Deadhorse', N'United States', N'SCC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4318, N'University Park Airport', N'State College Pennsylvania', N'United States', N'SCE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7649, N'Scottsdale Airport', N'Scottsdale', N'United States', N'SCF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6968, N'Schenectady County Airport', N'Scotia NY', N'United States', N'SCH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2855, N'Paramillo Airport', N'San Cristobal', N'Venezuela', N'SCI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3805, N'Stockton Metropolitan Airport', N'Stockton', N'United States', N'SCK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2650, N'Comodoro Arturo Merino Ben+¡tez International Airport', N'Santiago', N'Chile', N'SCL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7209, N'Scammon Bay Airport', N'Scammon Bay', N'United States', N'SCM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (349, N'Saarbr++cken Airport', N'Saarbruecken', N'Germany', N'SCN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4367, N'Aktau Airport', N'Aktau', N'Kazakhstan', N'SCO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1243, N'Santiago de Compostela Airport', N'Santiago', N'Spain', N'SCQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (539, N'Scatsta Airport', N'Scatsta', N'United Kingdom', N'SCS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3984, N'Socotra International Airport', N'Socotra', N'Yemen', N'SCT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1905, N'Antonio Maceo International Airport', N'Santiago De Cuba', N'Cuba', N'SCU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1660, N'Suceava Stefan cel Mare Airport', N'Suceava', N'Romania', N'SCV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2989, N'Syktyvkar Airport', N'Syktyvkar', N'Russia', N'SCW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6045, N'San Crist+¦bal Airport', N'San Crist+¦bal', N'Ecuador', N'SCY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5410, N'Santa Cruz/Graciosa Bay/Luova Airport', N'Santa Cruz/Graciosa Bay/Luova', N'Solomon Islands', N'SCZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (823, N'Langebaanweg Airport', N'Langebaanweg', N'South Africa', N'SDB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (959, N'Lubango Airport', N'Lubango', N'Angola', N'SDD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2456, N'Vicecomodoro Angel D. La Paz Aragon+®s Airport', N'Santiago Del Estero', N'Argentina', N'SDE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4014, N'Louisville International Standiford Field', N'Louisville', N'United States', N'SDF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2117, N'Sanandaj Airport', N'Sanandaj', N'Iran', N'SDG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2347, N'Sendai Airport', N'Sendai', N'Japan', N'SDJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4141, N'Sandakan Airport', N'Sandakan', N'Malaysia', N'SDK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (721, N'Sundsvall-H+ñrn+Âsand Airport', N'Sundsvall', N'Sweden', N'SDL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7659, N'Brown Field Municipal Airport', N'San Diego', N'United States', N'SDM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5585, N'Sandane Airport (Anda)', N'Sandane', N'Norway', N'SDN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6742, N'Sand Point Airport', N'Sand Point', N'United States', N'SDP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1762, N'Las Am+®ricas International Airport', N'Santo Domingo', N'Dominican Republic', N'SDQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1251, N'Santander Airport', N'Santander', N'Spain', N'SDR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2342, N'Sado Airport', N'Sado', N'Japan', N'SDS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2228, N'Saidu Sharif Airport', N'Saidu Sharif', N'Pakistan', N'SDT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2612, N'Santos Dumont Airport', N'Rio De Janeiro', N'Brazil', N'SDU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1605, N'Sde Dov Airport', N'Tel-aviv', N'Israel', N'SDV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4280, N'Sedona Airport', N'Sedona', N'United States', N'SDX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7065, N'Sidney - Richland Regional Airport', N'Sidney', N'United States', N'SDY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3577, N'Seattle Tacoma International Airport', N'Seattle', N'United States', N'SEA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1156, N'Sabha Airport', N'Sebha', N'Libya', N'SEB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7693, N'Gillespie Field', N'El Cajon', N'United States', N'SEE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8506, N'Sebring Regional Airport', N'Sebring', N'United States', N'SEF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6206, N'Senggeh Airport', N'Senggeh-Papua Island', N'Indonesia', N'SEH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9091, N'Srednekolymsk Airport', N'Srednekolymsk', N'Russia', N'SEK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3874, N'Craig Field', N'Selma', N'United States', N'SEM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (508, N'Southend Airport', N'Southend', N'United Kingdom', N'SEN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9783, N'Stephenville Clark Regional Airport', N'Stephenville', N'United States', N'SEP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4060, N'Seronera Airport', N'Seronera', N'Tanzania', N'SEU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1095, N'S+®libaby Airport', N'Selibabi', N'Mauritania', N'SEY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (994, N'Seychelles International Airport', N'Mahe', N'Seychelles', N'SEZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (295, N'Sfax Thyna International Airport', N'Sfax', N'Tunisia', N'SFA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4167, N'Orlando Sanford International Airport', N'Sanford', N'United States', N'SFB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6077, N'St-Fran+ºois Airport', N'St-Fran+ºois', N'Guadeloupe', N'SFC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2863, N'San Fernando De Apure Airport', N'San Fernando De Apure', N'Venezuela', N'SFD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6020, N'San Fernando Airport', N'San Fernando', N'Philippines', N'SFE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3716, N'Felts Field', N'Spokane', N'United States', N'SFF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2879, N'L''Esp+®rance Airport', N'St. Martin', N'Guadeloupe', N'SFG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1841, N'San Felipe International Airport', N'San Filipe', N'Mexico', N'SFH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9, N'Kangerlussuaq Airport', N'Sondrestrom', N'Greenland', N'SFJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7371, N'Soure Airport', N'Soure', N'Brazil', N'SFK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5675, N'S+úo Filipe Airport', N'Sao Filipe Fogo Island', N'Cape Verde', N'SFL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2441, N'Sauce Viejo Airport', N'Santa Fe', N'Argentina', N'SFN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3469, N'San Francisco International Airport', N'San Francisco', N'United States', N'SFO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5797, N'+×anl-¦urfa Airport', N'Sanliurfa', N'Turkey', N'SFQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6009, N'Subic Bay International Airport', N'Olongapo City', N'Philippines', N'SFS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (726, N'Skellefte+Ñ Airport', N'Skelleftea', N'Sweden', N'SFT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3781, N'North Central State Airport', N'Smithfield', N'United States', N'SFZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2974, N'Surgut Airport', N'Surgut', N'Russia', N'SGC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (619, N'S+©nderborg Airport', N'Soenderborg', N'Denmark', N'SGD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (361, N'Siegerland Airport', N'Siegerland', N'Germany', N'SGE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4348, N'Springfield Branson National Airport', N'Springfield', N'United States', N'SGF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7908, N'Springfield-Beckley Municipal Airport', N'Springfield', N'United States', N'SGH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11912, N'Mushaf Air Base', N'Sargodha', N'Pakistan', N'SGI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3205, N'Tan Son Nhat International Airport', N'Ho Chi Minh City', N'Vietnam', N'SGN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6325, N'St George Airport', N'St George', N'Australia', N'SGO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9890, N'Sanggata/Sangkimah Airport', N'Sanggata', N'Indonesia', N'SGQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4220, N'Sugar Land Regional Airport', N'Sugar Land', N'United States', N'SGR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4064, N'St George Municipal Airport', N'Saint George', N'United States', N'SGU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7229, N'Sierra Grande Airport', N'Sierra Grande', N'Argentina', N'SGV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9831, N'Songea Airport', N'Songea', N'Tanzania', N'SGX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5961, N'Skagway Airport', N'Skagway', N'United States', N'SGY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3175, N'Songkhla Airport', N'Songkhla', N'Thailand', N'SGZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3391, N'Shanghai Hongqiao International Airport', N'Shanghai', N'China', N'SHA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2291, N'Nakashibetsu Airport', N'Nakashibetsu', N'Japan', N'SHB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7062, N'Shenandoah Valley Regional Airport', N'Weyers Cave', N'United States', N'SHD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4144, N'Taoxian Airport', N'Shenyang', N'China', N'SHE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7117, N'Shungnak Airport', N'Shungnak', N'United States', N'SHG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6723, N'Shishmaref Airport', N'Shishmaref', N'United States', N'SHH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2392, N'Shimojishima Airport', N'Shimojishima', N'Japan', N'SHI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2191, N'Sharjah International Airport', N'Sharjah', N'United Arab Emirates', N'SHJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6172, N'Shillong Airport', N'Shillong', N'India', N'SHL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2284, N'Nanki Shirahama Airport', N'Nanki-shirahama', N'Japan', N'SHM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9547, N'Sanderson Field', N'Shelton', N'United States', N'SHN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13463, N'King Mswati III International Airport', N'Manzini', N'Swaziland', N'SHO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6429, N'Shanhaiguan Airport', N'Qinhuangdao', N'China', N'SHP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5769, N'Sheridan County Airport', N'Sheridan', N'United States', N'SHR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8994, N'Shepparton Airport', N'Shepparton', N'Australia', N'SHT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3609, N'Shreveport Regional Airport', N'Shreveport', N'United States', N'SHV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2086, N'Sharurah Airport', N'Sharurah', N'Saudi Arabia', N'SHW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7090, N'Shageluk Airport', N'Shageluk', N'United States', N'SHX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5707, N'Shinyanga Airport', N'Shinyanga', N'Tanzania', N'SHY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7052, N'Xi''an Xiguan Airport', N'Xi\''AN', N'China', N'SIA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1102, N'Am+¡lcar Cabral International Airport', N'Amilcar Cabral', N'Cape Verde', N'SID')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3128, N'Simara Airport', N'Simara', N'Nepal', N'SIF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2887, N'Fernando Luis Ribas Dominicci Airport', N'San Juan', N'Puerto Rico', N'SIG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (19, N'Siglufj+Âr+¦ur Airport', N'Siglufjordur', N'Iceland', N'SIJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9164, N'Sikeston Memorial Municipal Airport', N'Sikeston', N'United States', N'SIK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3316, N'Singapore Changi Airport', N'Singapore', N'Singapore', N'SIN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12036, N'Smithton Airport', NULL, N'Australia', N'SIO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2942, N'Simferopol International Airport', N'Simferopol', N'Ukraine', N'SIP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3907, N'Dabo Airport', N'Singkep', N'Indonesia', N'SIQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1667, N'Sion Airport', N'Sion', N'Switzerland', N'SIR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (857, N'Sishen Airport', N'Sishen', N'South Africa', N'SIS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3856, N'Sitka Rocky Gutierrez Airport', N'Sitka', N'United States', N'SIT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7294, N'Siuna', N'Siuna', N'Nicaragua', N'SIU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3748, N'Norman Y. Mineta San Jose International Airport', N'San Jose', N'United States', N'SJC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1840, N'Los Cabos International Airport', N'San Jose Del Cabo', N'Mexico', N'SJD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2747, N'Jorge E. Gonzalez Torres Airport', N'San Jose Del Guaviare', N'Colombia', N'SJE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2409, N'San Jose Airport', N'San Jose', N'Philippines', N'SJI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1646, N'Sarajevo International Airport', N'Sarajevo', N'Bosnia and Herzegovina', N'SJJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2615, N'Professor Urbano Ernesto Stumpf Airport', N'Sao Jose Dos Campos', N'Brazil', N'SJK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2630, N'S+úo Gabriel da Cachoeira Airport', N'Sao Gabriel', N'Brazil', N'SJL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1885, N'Juan Santamaria International Airport', N'San Jose', N'Costa Rica', N'SJO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2619, N'Prof. Eribelto Manoel Reino State Airport', N'Sao Jose Do Rio Preto', N'Brazil', N'SJP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3708, N'San Angelo Regional Mathis Field', N'San Angelo', N'United States', N'SJT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2890, N'Luis Munoz Marin International Airport', N'San Juan', N'Puerto Rico', N'SJU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6347, N'Shijiazhuang Daguocun International Airport', N'Shijiazhuang', N'China', N'SJW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5560, N'Sein+ñjoki Airport', N'Sein+ñjoki / Ilmajoki', N'Finland', N'SJY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1639, N'S+úo Jorge Airport', N'Sao Jorge Island', N'Portugal', N'SJZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3667, N'Fairchild Air Force Base', N'Spokane', N'United States', N'SKA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2891, N'Robert L. Bradshaw International Airport', N'Basse Terre', N'Saint Kitts and Nevis', N'SKB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2981, N'Samarkand Airport', N'Samarkand', N'Uzbekistan', N'SKD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (659, N'Skien Airport', N'Skien', N'Norway', N'SKE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3727, N'Lackland Air Force Base', N'San Antonio', N'United States', N'SKF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1486, N'Thessaloniki Macedonia International Airport', N'Thessaloniki', N'Greece', N'SKG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4184, N'Surkhet Airport', N'Surkhet', N'Nepal', N'SKH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7192, N'Shaktoolik Airport', N'Shaktoolik', N'United States', N'SKK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4252, N'Stokmarknes Skagen Airport', N'Stokmarknes', N'Norway', N'SKN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (276, N'Sadiq Abubakar III International Airport', N'Sokoto', N'Nigeria', N'SKO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1737, N'Skopje Alexander the Great Airport', N'Skopje', N'Macedonia', N'SKP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (621, N'Skrydstrup Air Base', N'Skrydstrup', N'Denmark', N'SKS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6776, N'Sialkot Airport', N'Sialkot', N'Pakistan', N'SKT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1482, N'Skiros Airport', N'Skiros', N'Greece', N'SKU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1135, N'St Catherine International Airport', N'St. Catherine', N'Egypt', N'SKV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6166, N'Saransk Airport', N'Saransk', N'Russia', N'SKX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3821, N'Griffing Sandusky Airport', N'Sandusky', N'United States', N'SKY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2227, N'Sukkur Airport', N'Sukkur', N'Pakistan', N'SKZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2476, N'Martin Miguel De Guemes International Airport', N'Salta', N'Argentina', N'SLA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3536, N'Salt Lake City International Airport', N'Salt Lake City', N'United States', N'SLC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1749, N'Slia-ì Airport', N'Sliac', N'Slovakia', N'SLD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7826, N'Salem Municipal Airport/McNary Field', N'Salem', N'United States', N'SLE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2088, N'Sulayel Airport', N'Sulayel', N'Saudi Arabia', N'SLF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5894, N'Sola Airport', N'Sola', N'Vanuatu', N'SLH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9146, N'Solomon Airport', N'Solomon', N'Australia', N'SLJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5770, N'Adirondack Regional Airport', N'Saranac Lake', N'United States', N'SLK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2195, N'Salalah Airport', N'Salalah', N'Oman', N'SLL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1238, N'Salamanca Airport', N'Salamanca', N'Spain', N'SLM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5771, N'Salina Municipal Airport', N'Salina', N'United States', N'SLN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1842, N'Ponciano Arriaga International Airport', N'San Luis Potosi', N'Mexico', N'SLP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7240, N'Sleetmute Airport', N'Sleetmute', N'United States', N'SLQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2893, N'George F. L. Charles Airport', N'Castries', N'Saint Lucia', N'SLU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6762, N'Shimla Airport', N'Shimla', N'India', N'SLV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1810, N'Plan De Guadalupe International Airport', N'Saltillo', N'Mexico', N'SLW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5809, N'Salt Cay Airport', N'Salt Cay', N'Turks and Caicos Islands', N'SLX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6137, N'Salekhard Airport', N'Salekhard', N'Russia', N'SLY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2616, N'Marechal Cunha Machado International Airport', N'Sao Luis', N'Brazil', N'SLZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1617, N'Santa Maria Airport', N'Santa Maria (island)', N'Portugal', N'SMA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4383, N'Smith Field', N'Fort Wayne IN', N'United States', N'SMD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7061, N'Lake Cumberland Regional Airport', N'Somerset', N'United States', N'SME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3817, N'Sacramento International Airport', N'Sacramento', N'United States', N'SMF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1476, N'Samos Airport', N'Samos', N'Greece', N'SMI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7191, N'St Michael Airport', N'St. Michael', N'United States', N'SMK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1951, N'Stella Maris Airport', N'Stella Maris', N'Bahamas', N'SML')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7080, N'Lemhi County Airport', N'Salmon', N'United States', N'SMN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7647, N'Santa Monica Municipal Airport', N'Santa Monica', N'United States', N'SMO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6211, N'Sampit(Hasan) Airport', N'Sampit-Borneo Island', N'Indonesia', N'SMQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2748, N'Sim+¦n Bol+¡var International Airport', N'Santa Marta', N'Colombia', N'SMR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (920, N'Sainte Marie Airport', N'Sainte Marie', N'Madagascar', N'SMS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13399, N'Adolino Bedin Regional Airport', N'Sorriso', N'Brazil', N'SMT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1680, N'Samedan Airport', N'Samedan', N'Switzerland', N'SMV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5669, N'Smara Airport', N'Smara', N'Western Sahara', N'SMW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5772, N'Santa Maria Pub/Capt G Allan Hancock Field', N'Santa Maria', N'United States', N'SMX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7339, N'Stoelmanseiland Airport', N'Stoelmans Eiland', N'Suriname', N'SMZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3867, N'John Wayne Airport-Orange County Airport', N'Santa Ana', N'United States', N'SNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12037, N'Snake Bay Airport', NULL, N'Australia', N'SNB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2691, N'General Ulpiano Paez Airport', N'Salinas', N'Ecuador', N'SNC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1105, N'Pregui+ºa Airport', N'Sao Nocolau Island', N'Cape Verde', N'SNE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2862, N'Sub Teniente Nestor Arias Airport', N'San Felipe', N'Venezuela', N'SNF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11899, N'San Julian Air Base', N'Pinar Del Rio', N'Cuba', N'SNJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (603, N'Shannon Airport', N'Shannon', N'Ireland', N'SNN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3184, N'Sakon Nakhon Airport', N'Sakon Nakhon', N'Thailand', N'SNO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3426, N'St Paul Island Airport', N'St. Paul Island', N'United States', N'SNP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1422, N'Saint-Nazaire-Montoir Airport', N'St.-nazaire', N'France', N'SNR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11855, N'Salinas Municipal Airport', N'Salinas', N'United States', N'SNS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1918, N'Abel Santamaria Airport', N'Santa Clara', N'Cuba', N'SNU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2860, N'Santa Elena de Uairen Airport', N'Santa Ana De Uairen', N'Venezuela', N'SNV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3236, N'Thandwe Airport', N'Thandwe', N'Burma', N'SNW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8815, N'Sidney Municipal-Lloyd W Carr Field', N'Sidney', N'United States', N'SNY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2614, N'Santa Cruz Air Force Base', N'Rio De Janeiro', N'Brazil', N'SNZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5790, N'S+írmell+®k International Airport', N'S+írmell+®k', N'Hungary', N'SOB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3929, N'Adi Sumarmo Wiryokusumo Airport', N'Solo City', N'Indonesia', N'SOC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6044, N'Sorocaba Airport', N'Sorocaba', N'Brazil', N'SOD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1194, N'Sofia Airport', N'Sofia', N'Bulgaria', N'SOF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5586, N'Sogndal Airport', N'Sogndal', N'Norway', N'SOG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5588, N'S+©rkjosen Airport', N'Sorkjosen', N'Norway', N'SOJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2864, N'San Tom+® Airport', N'San Tome', N'Venezuela', N'SOM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5908, N'Santo Pekoa International Airport', N'Santo', N'Vanuatu', N'SON')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8682, N'S+Âderhamn Airport', N'Soderhamn', N'Sweden', N'SOO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8519, N'Moore County Airport', N'Pinehurst-Southern Pines', N'United States', N'SOP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3261, N'Dominique Edward Osok Airport', N'Sorong', N'Indonesia', N'SOQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (457, N'Sodankyla Airport', N'Sodankyla', N'Finland', N'SOT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (495, N'Southampton Airport', N'Southampton', N'United Kingdom', N'SOU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13707, N'Seldovia Airport', N'Seldovia', N'United States', N'SOV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7078, N'Show Low Regional Airport', N'Show Low', N'United States', N'SOW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5568, N'Stronsay Airport', N'Stronsay', N'United Kingdom', N'SOY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1326, N'Solenzara (BA 126) Air Base', N'Solenzara', N'France', N'SOZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13233, N'Spartanburg Downtown Memorial Airport', N'Spartangurg', N'United States', N'SPA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7309, N'Charlotte Amalie Harbor Seaplane Base', N'Charlotte Amalie', N'Virgin Islands', N'SPB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1053, N'La Palma Airport', N'Santa Cruz De La Palma', N'Spain', N'SPC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3073, N'Saidpur Airport', N'Saidpur', N'Bangladesh', N'SPD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7809, N'Black Hills Airport-Clyde Ice Field', N'Spearfish-South Dakota', N'United States', N'SPF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3548, N'Albert Whitted Airport', N'St. Petersburg', N'United States', N'SPG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4336, N'Abraham Lincoln Capital Airport', N'Springfield', N'United States', N'SPI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1478, N'Sparti Airport', N'Sparti', N'Greece', N'SPJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (750, N'Spangdahlem Air Base', N'Spangdahlem', N'Germany', N'SPM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2244, N'Saipan International Airport', N'Saipan', N'Northern Mariana Islands', N'SPN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (953, N'Menongue Airport', N'Menongue', N'Angola', N'SPP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4279, N'San Pedro Airport', N'San Pedro', N'Belize', N'SPR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3680, N'Sheppard Air Force Base-Wichita Falls Municipal Airport', N'Wichita Falls', N'United States', N'SPS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1206, N'Split Airport', N'Split', N'Croatia', N'SPU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6446, N'Spencer Municipal Airport', N'Spencer', N'United States', N'SPW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (258, N'San Pedro Airport', N'San Pedro', N'Cote d''Ivoire', N'SPY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13189, N'Santa Ynez Airport', N'Santa Ynez', N'United States', N'SQA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13472, N'Shangrao Sanqingshan Airport', N'Shangrao', N'China', N'SQD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6227, N'Sintang(Susilo) Airport', N'Sintang-Borneo Island', N'Indonesia', N'SQG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7701, N'Na-San Airport', N'Son-La', N'Vietnam', N'SQH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11714, N'Shaxian Airport', N'Sanming', N'China', N'SQJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7683, N'San Carlos Airport', N'San Carlos', N'United States', N'SQL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13543, N'Emalamo Sanana Airport', N'Sanana', N'Indonesia', N'SQN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5598, N'Storuman Airport', N'Mohed', N'Sweden', N'SQO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3954, N'+áiauliai International Airport', N'Siauliai', N'Lithuania', N'SQQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3888, N'Soroako Airport', N'Soroako', N'Indonesia', N'SQR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (622, N'Skive Airport', N'Skive', N'Denmark', N'SQW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11295, N'S+úo Miguel do Oeste Airport', N'Sao Miguel do Oeste', N'Brazil', N'SQX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (571, N'RAF Scampton', N'Scampton', N'United Kingdom', N'SQZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6069, N'Santa Rosa Airport', N'Santa Rosa', N'Brazil', N'SRA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2767, N'Juana Azurduy De Padilla Airport', N'Sucre', N'Bolivia', N'SRE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3901, N'Achmad Yani Airport', N'Semarang', N'Indonesia', N'SRG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5639, N'Sarh Airport', N'Sarh', N'Chad', N'SRH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3921, N'Temindung Airport', N'Samarinda', N'Indonesia', N'SRI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6060, N'Capit+ín Av. German Quiroga G. Airport', N'San Borja', N'Bolivia', N'SRJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6328, N'Strahan Airport', N'Strahan', N'Australia', N'SRN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (660, N'Stord Airport', N'Stord', N'Norway', N'SRP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4067, N'Sarasota Bradenton International Airport', N'Sarasota', N'United States', N'SRQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1189, N'Soroti Airport', N'Soroti', N'Uganda', N'SRT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5696, N'Gardabya Airport', N'Sirt', N'Libya', N'SRX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5933, N'Dasht-e Naz Airport', N'Dasht-e-naz', N'Iran', N'SRY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4247, N'El Trompillo Airport', N'Santa Cruz', N'Bolivia', N'SRZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2621, N'Deputado Luiz Eduardo Magalh+úes International Airport', N'Salvador', N'Brazil', N'SSA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3733, N'Shaw Air Force Base', N'Sumter', N'United States', N'SSC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3021, N'Solapur Airport', N'Sholapur', N'India', N'SSE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10102, N'Stinson Municipal Airport', N'Stinson', N'United States', N'SSF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (891, N'Malabo Airport', N'Malabo', N'Equatorial Guinea', N'SSG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4057, N'Sharm El Sheikh International Airport', N'Sharm El Sheikh', N'Egypt', N'SSH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8789, N'Malcolm McKinnon Airport', N'Brunswick', N'United States', N'SSI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (662, N'Sandnessj+©en Airport (Stokka)', N'Sandnessjoen', N'Norway', N'SSJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2376, N'Seoul Air Base (K-16)', N'Seoul East', N'South Korea', N'SSN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5899, N'Sara Airport', N'Pentecost Island', N'Vanuatu', N'SSR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6032, N'Santa Teresita Airport', N'Santa Teresita', N'Argentina', N'SST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (944, N'Mbanza Congo Airport', N'M''banza-congo', N'Angola', N'SSY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2620, N'Base A+®rea de Santos Airport', N'Santos', N'Brazil', N'SSZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (627, N'Stauning Airport', N'Stauning', N'Denmark', N'STA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2865, N'Santa B+írbara del Zulia Airport', N'Santa Barbara', N'Venezuela', N'STB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4271, N'St Cloud Regional Airport', N'Saint Cloud', N'United States', N'STC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2861, N'Mayor Buenaventura Vivas International Airport', N'Santo Domingo', N'Venezuela', N'STD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8744, N'Stevens Point Municipal Airport', N'Stevens Point', N'United States', N'STE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3428, N'St George Airport', N'Point Barrow', N'United States', N'STG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1764, N'Cibao International Airport', N'Santiago', N'Dominican Republic', N'STI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7042, N'Rosecrans Memorial Airport', N'Rosecrans', N'United States', N'STJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7985, N'Sterling Municipal Airport', N'Sterling', N'United States', N'STK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3678, N'St Louis Lambert International Airport', N'St. Louis', N'United States', N'STL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4092, N'Maestro Wilson Fonseca Airport', N'Santarem', N'Brazil', N'STM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (548, N'London Stansted Airport', N'London', N'United Kingdom', N'STN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8681, N'St Paul Downtown Holman Field', N'St. Paul', N'United States', N'STP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (350, N'Stuttgart Airport', N'Stuttgart', N'Germany', N'STR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6992, N'Charles M. Schulz Sonoma County Airport', N'Santa Rosa', N'United States', N'STS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2883, N'Cyril E. King Airport', N'St. Thomas', N'Virgin Islands', N'STT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3022, N'Surat Airport', N'Surat', N'India', N'STV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2963, N'Stavropol Shpakovskoye Airport', N'Stavropol', N'Russia', N'STW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2884, N'Henry E Rohlsen Airport', N'St. Croix Island', N'Virgin Islands', N'STX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2817, N'Nueva Hesperides International Airport', N'Salto', N'Uruguay', N'STY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7374, N'Santa Terezinha Airport', N'Santa Terezinha', N'Brazil', N'STZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7656, N'Witham Field', N'Stuart', N'United States', N'SUA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3928, N'Juanda International Airport', N'Surabaya', N'Indonesia', N'SUB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1508, N'Lamezia Terme Airport', N'Lamezia', N'Italy', N'SUF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6016, N'Surigao Airport', N'Sangley Point', N'Philippines', N'SUG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6465, N'Sukhumi Dranda Airport', N'Sukhumi', N'Georgia', N'SUI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1659, N'Satu Mare Airport', N'Satu Mare', N'Romania', N'SUJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13426, N'Sakkyryr Airport', N'Batagay-Alyta', N'Russia', N'SUK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2229, N'Sui Airport', N'Sui', N'Pakistan', N'SUL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6494, N'Friedman Memorial Airport', N'Hailey', N'United States', N'SUN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13520, N'Trunojoyo Airport', N'Sumenep', N'Indonesia', N'SUP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5464, N'Summer Beaver Airport', N'Summer Beaver', N'Canada', N'SUR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7015, N'Spirit of St Louis Airport', N'Null', N'United States', N'SUS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3449, N'Travis Air Force Base', N'Fairfield', N'United States', N'SUU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1961, N'Nausori International Airport', N'Nausori', N'Fiji', N'SUV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3753, N'Sioux Gateway Col. Bud Day Field', N'Sioux City', N'United States', N'SUX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9821, N'Suntar Airport', N'Suntar', N'Russia', N'SUY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6724, N'Savoonga Airport', N'Savoonga', N'United States', N'SVA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (933, N'Sambava Airport', N'Sambava', N'Madagascar', N'SVB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2907, N'Argyle International Airport', N'Kingstown', N'Saint Vincent and the Grenadines', N'SVD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (666, N'Stavanger Airport Sola', N'Stavanger', N'Norway', N'SVG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8526, N'Statesville Regional Airport', N'Statesville', N'United States', N'SVH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2750, N'Eduardo Falla Solano Airport', N'San Vincente De Caguan', N'Colombia', N'SVI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5587, N'Svolv+ªr Helle Airport', N'Svolv+ªr', N'Norway', N'SVJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (455, N'Savonlinna Airport', N'Savonlinna', N'Finland', N'SVL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3441, N'Hunter Army Air Field', N'Hunter Aaf', N'United States', N'SVN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2985, N'Sheremetyevo International Airport', N'Moscow', N'Russia', N'SVO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (949, N'Kuito Airport', N'Kuito', N'Angola', N'SVP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1253, N'Sevilla Airport', N'Sevilla', N'Spain', N'SVQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5878, N'Savusavu Airport', N'Savusavu', N'Fiji', N'SVU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3421, N'Sparrevohn LRRS Airport', N'Sparrevohn', N'United States', N'SVW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2975, N'Koltsovo Airport', N'Yekaterinburg', N'Russia', N'SVX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2858, N'San Antonio Del Tachira Airport', N'San Antonio', N'Venezuela', N'SVZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4302, N'Jieyang Chaoshan International Airport', N'Shantou', N'China', N'SWA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12038, N'Stawell Airport', NULL, N'Australia', N'SWC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6845, N'Seward Airport', N'Seward', N'United States', N'SWD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3661, N'Stewart International Airport', N'Newburgh', N'United States', N'SWF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11274, N'Swan Hill Airport', N'Swan Hill', N'Australia', N'SWH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5912, N'Southwest Bay Airport', N'Malekula Island', N'Vanuatu', N'SWJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9776, N'Stillwater Regional Airport', N'Stillwater', N'United States', N'SWO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5644, N'Swakopmund Airport', N'Swakopmund', N'Namibia', N'SWP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6203, N'Sumbawa Besar Airport', N'Sumbawa Island', N'Indonesia', N'SWQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (489, N'Swansea Airport', N'Swansea', N'United Kingdom', N'SWS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7033, N'Strezhevoy Airport', N'Strezhevoy', N'Russia', N'SWT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2379, N'Suwon Airport', N'Suwon', N'South Korea', N'SWU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5609, N'Shakawe Airport', N'Shakawe', N'Botswana', N'SWX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1435, N'Strasbourg Airport', N'Strasbourg', N'France', N'SXB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12044, N'West Sale Airport', N'Sale', N'Australia', N'SXE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (337, N'Berlin-Sch+Ânefeld Airport', N'Berlin', N'Germany', N'SXF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2112, N'Sirri Island Airport', N'Siri Island', N'Iran', N'SXI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12055, N'Shanshan Airport', N'Shanshan', N'China', N'SXJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11258, N'Saumlaki/Olilit Airport', N'Saumlaki', N'Indonesia', N'SXK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (604, N'Sligo Airport', N'Sligo', N'Ireland', N'SXL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2899, N'Princess Juliana International Airport', N'Philipsburg', N'Netherlands Antilles', N'SXM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11804, N'Sua Pan Airport', N'Sowa', N'Botswana', N'SXN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8243, N'S+úo F+®lix do Araguaia Airport', N'Sao Felix do Araguaia', N'Brazil', N'SXO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7692, N'Soldotna Airport', N'Soldotna', N'United States', N'SXQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3112, N'Sheikh ul Alam Airport', N'Srinagar', N'India', N'SXR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3149, N'Salem Airport', N'Salem', N'India', N'SXV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8241, N'S+úo F+®lix do Xingu Airport', N'Sao Felix do Xingu', N'Brazil', N'SXX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1731, N'Siirt Airport', N'Siirt', N'Turkey', N'SXZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3813, N'Eareckson Air Station', N'Shemya', N'United States', N'SYA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3361, N'Sydney Kingsford Smith International Airport', N'Sydney', N'Australia', N'SYD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7766, N'Syangboche Airport', N'Syangboche', N'Nepal', N'SYH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2141, N'Sirjan Airport', N'Sirjan', N'Iran', N'SYJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6377, N'Pu''er Simao Airport', N'Simao', N'China', N'SYM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6001, N'Shonai Airport', N'Shonai', N'Japan', N'SYO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1870, N'Ruben Cantu Airport', N'Santiago', N'Panama', N'SYP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5848, N'Tobias Bolanos International Airport', N'San Jose', N'Costa Rica', N'SYQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3745, N'Syracuse Hancock International Airport', N'Syracuse', N'United States', N'SYR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7476, N'Saskylakh Airport', N'Saskylakh', N'Russia', N'SYS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1337, N'Saint-Yan Airport', N'St.-yan', N'France', N'SYT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6332, N'Warraber Island Airport', N'Sue Islet', N'Australia', N'SYU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5950, N'Sehwan Sharif Airport', N'Sehwan Sharif', N'Pakistan', N'SYW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4030, N'Sanya Phoenix International Airport', N'Sanya', N'China', N'SYX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (541, N'Stornoway Airport', N'Stornoway', N'United Kingdom', N'SYY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2157, N'Shiraz Shahid Dastghaib International Airport', N'Shiraz', N'Iran', N'SYZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (958, N'Soyo Airport', N'Soyo', N'Angola', N'SZA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3408, N'Sultan Abdul Aziz Shah International Airport', N'Kuala Lumpur', N'Malaysia', N'SZB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5803, N'Samsun +çar+ƒamba Airport', N'Samsun', N'Turkey', N'SZF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1612, N'Salzburg Airport', N'Salzburg', N'Austria', N'SZG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1920, N'Siguanea Airport', N'Siguanea', N'Cuba', N'SZJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (859, N'Skukuza Airport', N'Skukuza', N'South Africa', N'SZK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3586, N'Whiteman Air Force Base', N'Knobnoster', N'United States', N'SZL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1195, N'Stara Zagora Airport', N'Stara Zagora', N'Bulgaria', N'SZR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7517, N'Ryan''s Creek Aerodrome', N'Stewart Island', N'New Zealand', N'SZS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10135, N'San Cristobal de las Casas Airport', N'San Cristobal de las Casas', N'Mexico', N'SZT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9857, N'Suzhou Guangfu Airport', N'Suzhou', N'China', N'SZV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (383, N'Schwerin Parchim Airport', N'Parchim', N'Germany', N'SZW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3374, N'Shenzhen Bao''an International Airport', N'Shenzhen', N'China', N'SZX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11103, N'Olsztyn-Mazury Airport', N'Szczytno-Szymany', N'Poland', N'SZY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (676, N'Szczecin-Goleni+¦w Solidarno+ø-ç Airport', N'Szczecin', N'Poland', N'SZZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2901, N'Tobago-Crown Point Airport', N'Scarborough', N'Trinidad and Tobago', N'TAB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2422, N'Daniel Z. Romualdez Airport', N'Tacloban', N'Philippines', N'TAC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2381, N'Daegu Airport', N'Taegu', N'South Korea', N'TAE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (229, N'Tafaraoui Airport', N'Oran', N'Algeria', N'TAF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3994, N'Tagbilaran Airport', N'Tagbilaran', N'Philippines', N'TAG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4242, N'Tanna Airport', N'Tanna', N'Vanuatu', N'TAH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3975, N'Ta''izz International Airport', N'Taiz', N'Yemen', N'TAI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2337, N'Takamatsu Airport', N'Takamatsu', N'Japan', N'TAK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1848, N'General Francisco Javier Mina International Airport', N'Tampico', N'Mexico', N'TAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3390, N'Liuting Airport', N'Qingdao', N'China', N'TAO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1851, N'Tapachula International Airport', N'Tapachula', N'Mexico', N'TAP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1503, N'Taranto-Grottaglie Marcello Arlotta Airport', N'Grottaglie', N'Italy', N'TAR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2983, N'Tashkent International Airport', N'Tashkent', N'Uzbekistan', N'TAS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1751, N'Poprad-Tatry Airport', N'Poprad', N'Slovakia', N'TAT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (416, N'Tartu Airport', N'Tartu', N'Estonia', N'TAY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7565, N'Da+ƒoguz Airport', N'Dasoguz', N'Turkmenistan', N'TAZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4158, N'Dong Tac Airport', N'Tuy Hoa', N'Vietnam', N'TBB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1966, N'Tabiteuea North Airport', N'Tabiteuea North', N'Kiribati', N'TBF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5434, N'Tabubil Airport', N'Tabubil', N'Papua New Guinea', N'TBG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6745, N'Tugdan Airport', N'Romblon', N'Philippines', N'TBH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5858, N'New Bight Airport', N'Cat Island', N'Bahamas', N'TBI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4316, N'Tabarka 7 Novembre Airport', N'Tabarka', N'Tunisia', N'TBJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3665, N'Waynesville-St. Robert Regional Forney field', N'Fort Leonardwood', N'United States', N'TBN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5708, N'Tabora Airport', N'Tabora', N'Tanzania', N'TBO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2796, N'Capitan FAP Pedro Canga Rodriguez Airport', N'Tumbes', N'Peru', N'TBP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12950, N'Statesboro Bulloch County Airport', N'Statesboro', N'United States', N'TBR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3973, N'Tbilisi International Airport', N'Tbilisi', N'Georgia', N'TBS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2628, N'Tabatinga Airport', N'Tabatinga', N'Brazil', N'TBT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1963, N'Fua''amotu International Airport', N'Tongatapu', N'Tonga', N'TBU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6466, N'Donskoye Airport', N'Tambow', N'Russia', N'TBW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2162, N'Tabriz International Airport', N'Tabriz', N'Iran', N'TBZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6330, N'Tennant Creek Airport', N'Tennant Creek', N'Australia', N'TCA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1934, N'Treasure Cay Airport', N'Treasure Cay', N'Bahamas', N'TCB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3773, N'Tucumcari Municipal Airport', N'Tucumcari', N'United States', N'TCC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1661, N'Tulcea Airport', N'Tulcea', N'Romania', N'TCE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6752, N'Tacheng Airport', N'Tacheng', N'China', N'TCG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5636, N'Tchibanga Airport', N'Tchibanga', N'Gabon', N'TCH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4387, N'Tuscaloosa Regional Airport', N'Tuscaloosa AL', N'United States', N'TCL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3672, N'McChord Air Force Base', N'Tacoma', N'United States', N'TCM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1806, N'Tehuacan Airport', N'Tehuacan', N'Mexico', N'TCN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2716, N'La Florida Airport', N'Tumaco', N'Colombia', N'TCO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4313, N'Taba International Airport', N'Taba', N'Egypt', N'TCP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2807, N'Coronel FAP Carlos Ciriani Santa Rosa International Airport', N'Tacna', N'Peru', N'TCQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3755, N'Truth Or Consequences Municipal Airport', N'Truth Or Consequences', N'United States', N'TCS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2147, N'Tabas Airport', N'Tabas', N'Iran', N'TCX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7862, N'Tengchong Tuofeng Airport', N'Tengchong', N'China', N'TCZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2769, N'Teniente Av. Jorge Henrich Arauz Airport', N'Trinidad', N'Bolivia', N'TDD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6017, N'Tandag Airport', N'Tandag', N'Philippines', N'TDG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9392, N'Tadjoura Airport', N'Tadjoura', N'Djibouti', N'TDJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2514, N'H+®roes De Malvinas Airport', N'Tandil', N'Argentina', N'TDL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8848, N'Theodore Airport', N'Theodore', N'Australia', N'TDR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13631, N'Sasereme Airport', N'Sasereme', N'Papua New Guinea', N'TDS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4135, N'Trat Airport', N'Trat', N'Thailand', N'TDX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1775, N'Tela Airport', N'Tela', N'Honduras', N'TEA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3624, N'Teterboro Airport', N'Teterboro', N'United States', N'TEB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2626, N'Tel+¬maco Borba Airport', N'Telemaco Borba', N'Brazil', N'TEC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (623, N'Thisted Airport', N'Thisted', N'Denmark', N'TED')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (222, N'Cheikh Larbi T+®bessi Airport', N'Tebessa', N'Algeria', N'TEE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8265, N'Telfer Airport', N'Telfer', N'Australia', N'TEF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13487, N'Tezu Airport', N'Tezu', N'India', N'TEI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8995, N'Temora Airport', N'Temora', N'Australia', N'TEM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6963, N'Tongren Fenghuang Airport', N'Tongren', N'China', N'TEN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6784, N'Tekirda-ƒ +çorlu Airport', N'+çorlu', N'Turkey', N'TEQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1629, N'Lajes Airport', N'Lajes (terceira Island)', N'Portugal', N'TER')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (988, N'Chingozi Airport', N'Tete', N'Mozambique', N'TET')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2021, N'Manapouri Airport', N'Manapouri', N'New Zealand', N'TEU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11880, N'Teruel Airport', N'Teruel', N'Spain', N'TEV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4084, N'Telluride Regional Airport', N'Telluride', N'United States', N'TEX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6175, N'Tezpur Airport', N'Tezpur', N'India', N'TEZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2624, N'Tef+® Airport', N'Tefe', N'Brazil', N'TFF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11145, N'Juscelino Kubitscheck Airport', N'Teofilo Otoni', N'Brazil', N'TFL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1057, N'Tenerife Norte Airport', N'Tenerife', N'Spain', N'TFN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1056, N'Tenerife South Airport', N'Tenerife', N'Spain', N'TFS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3314, N'Tengah Air Base', N'Tengah', N'Singapore', N'TGA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1741, N'Podgorica Airport', N'Podgorica', N'Montenegro', N'TGD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3307, N'Sultan Mahmud Airport', N'Kuala Terengganu', N'Malaysia', N'TGG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5909, N'Tongoa Airport', N'Tongoa Island', N'Vanuatu', N'TGH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9768, N'Tingo Maria Airport', N'Tingo Maria', N'Peru', N'TGI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5919, N'Tiga Airport', N'Tiga', N'New Caledonia', N'TGJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6932, N'Taganrog Yuzhny Airport', N'Taganrog', N'Russia', N'TGK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1662, N'Transilvania T+órgu Mure+ƒ International Airport', N'Tirgu Mures', N'Romania', N'TGM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12031, N'Latrobe Valley Airport', N'Morwell', N'Australia', N'TGN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6348, N'Tongliao Airport', N'Tongliao', N'China', N'TGO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8341, N'Podkamennaya Tunguska Airport', N'Bor', N'Russia', N'TGP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11205, N'Tangar+í da Serra Airport', N'Tangara da Serra', N'Brazil', N'TGQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (240, N'Touggourt Sidi Madhi Airport', N'Touggourt', N'Algeria', N'TGR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1185, N'Tanga Airport', N'Tanga', N'Tanzania', N'TGT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1776, N'Toncont+¡n International Airport', N'Tegucigalpa', N'Honduras', N'TGU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1846, N'Angel Albino Corzo International Airport', N'Tuxtla Gutierrez', N'Mexico', N'TGZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2623, N'Senador Petr+¦nio Portela Airport', N'Teresina', N'Brazil', N'THE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (343, N'Berlin-Tempelhof International Airport', N'Berlin', N'Germany', N'THF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4289, N'Thangool Airport', N'Biloela', N'Australia', N'THG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3237, N'Tachileik Airport', N'Tachilek', N'Burma', N'THL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (693, N'Trollh+ñttan-V+ñnersborg Airport', N'Trollhattan', N'Sweden', N'THN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5452, N'Thorshofn Airport', N'Thorshofn', N'Iceland', N'THO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8889, N'Tianshui Maijishan Airport', N'Tianshui', N'China', N'THQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2131, N'Mehrabad International Airport', N'Teheran', N'Iran', N'THR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3939, N'Sukhothai Airport', N'Sukhothai', N'Thailand', N'THS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10, N'Thule Air Base', N'Thule', N'Greenland', N'THU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8340, N'Turukhansk Airport', N'Turukhansk', N'Russia', N'THX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (281, N'Tahoua Airport', N'Tahoua', N'Niger', N'THZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1190, N'Tirana International Airport Mother Teresa', N'Tirana', N'Albania', N'TIA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (225, N'Bou Chekif Airport', N'Tiaret', N'Algeria', N'TID')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5684, N'Tippi Airport', N'Tippi', N'Ethiopia', N'TIE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2090, N'TaÔÇÖif Regional Airport', N'Taif', N'Saudi Arabia', N'TIF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1975, N'Tikehau Airport', N'Tikehau', N'French Polynesia', N'TIH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7499, N'Tarin Kowt Airport', N'Tarin Kowt', N'Afghanistan', N'TII')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1847, N'General Abelardo L. Rodr+¡guez International Airport', N'Tijuana', N'Mexico', N'TIJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3525, N'Tinker Air Force Base', N'Oklahoma City', N'United States', N'TIK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3243, N'Moses Kilangin Airport', N'Timika', N'Indonesia', N'TIM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (227, N'Tindouf Airport', N'Tindouf', N'Algeria', N'TIN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1157, N'Tripoli International Airport', N'Tripoli', N'Libya', N'TIP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2247, N'Tinian International Airport', N'West Tinian', N'Northern Mariana Islands', N'TIQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3151, N'Tirupati Airport', N'Tirupeti', N'India', N'TIR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2035, N'Timaru Airport', N'Timaru', N'New Zealand', N'TIU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1743, N'Tivat Airport', N'Tivat', N'Montenegro', N'TIV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8446, N'Tacoma Narrows Airport', N'Tacoma', N'United States', N'TIW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9199, N'Space Coast Regional Airport', N'Titusville', N'United States', N'TIX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1090, N'Tidjikja Airport', N'Tidjikja', N'Mauritania', N'TIY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5433, N'Tari Airport', N'Tari', N'Papua New Guinea', N'TIZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2768, N'Capitan Oriel Lea Plaza Airport', N'Tarija', N'Bolivia', N'TJA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13530, N'Sei Bati Airport', N'Tanjung Balai Karimun', N'Indonesia', N'TJB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6210, N'Warukin Airport', N'Tanjung-Borneo Island', N'Indonesia', N'TJG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7549, N'Tajima Airport', N'Toyooka', N'Japan', N'TJH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1777, N'Trujillo Airport', N'Trujillo', N'Honduras', N'TJI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1698, N'Tokat Airport', N'Tokat', N'Turkey', N'TJK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9769, N'Pl+¡nio Alarcom Airport', N'Tres Lagoas', N'Brazil', N'TJL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4111, N'Roshchino International Airport', N'Tyumen', N'Russia', N'TJM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3904, N'Buluh Tumbang (H A S Hanandjoeddin) Airport', N'Tanjung Pandan', N'Indonesia', N'TJQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6207, N'Tanjung Harapan Airport', N'Tanjung Selor-Borneo Island', N'Indonesia', N'TJS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7563, N'Kulob Airport', N'Kulyab', N'Tajikistan', N'TJU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3150, N'Tanjore Air Force Base', N'Tanjore', N'India', N'TJV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4004, N'Talkeetna Airport', N'Talkeetna', N'United States', N'TKA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (896, N'Tiko Airport', N'Tiko', N'Cameroon', N'TKC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (252, N'Takoradi Airport', N'Takoradi', N'Ghana', N'TKD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7702, N'Truckee Tahoe Airport', N'Truckee', N'United States', N'TKF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6223, N'Radin Inten II (Branti) Airport', N'Bandar Lampung-Sumatra Island', N'Indonesia', N'TKG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3166, N'Takhli Airport', N'Nakhon Sawan', N'Thailand', N'TKH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7235, N'Tok Junction Airport', N'Tok', N'United States', N'TKJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2254, N'Chuuk International Airport', N'Chuuk', N'Micronesia', N'TKK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2318, N'Tokunoshima Airport', N'Tokunoshima', N'Japan', N'TKN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1983, N'Takapoto Airport', N'Takapoto', N'French Polynesia', N'TKP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5704, N'Kigoma Airport', N'Kigoma', N'Tanzania', N'TKQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2336, N'Tokushima Airport/JMSDF Air Base', N'Tokushima', N'Japan', N'TKS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9233, N'Tak Airport', N'Tak', N'Thailand', N'TKT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (460, N'Turku Airport', N'Turku', N'Finland', N'TKU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13630, N'Tatakoto Airport', N'Tatakoto', N'French Polynesia', N'TKV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1986, N'Takaroa Airport', N'Takaroa', N'French Polynesia', N'TKX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7186, N'Teller Airport', N'Teller', N'United States', N'TLA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1850, N'Licenciado Adolfo Lopez Mateos International Airport', N'Toluca', N'Mexico', N'TLC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5610, N'Limpopo Valley Airport', N'Tuli Lodge', N'Botswana', N'TLD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (943, N'Toliara Airport', N'Toliara', N'Madagascar', N'TLE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3698, N'Tallahassee Regional Airport', N'Tallahassee', N'United States', N'TLH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11401, N'Sultan Bantilan Airport', N'Toli-Toli', N'Indonesia', N'TLI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3423, N'Tatalina LRRS Airport', N'Tatalina', N'United States', N'TLJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13432, N'Talakan Airport', N'Talakan', N'Russia', N'TLK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (415, N'Lennart Meri Tallinn Airport', N'Tallinn-ulemiste International', N'Estonia', N'TLL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (230, N'Zenata ÔÇô Messali El Hadj Airport', N'Tlemcen', N'Algeria', N'TLM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1438, N'Toulon-Hy+¿res Airport', N'Hyeres', N'France', N'TLN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8926, N'Turpan Jiaohe Airport', N'Turpan', N'China', N'TLQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1273, N'Toulouse-Blagnac Airport', N'Toulouse', N'France', N'TLS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7363, N'Golfo de Morrosquillo Airport', N'Tolu', N'Colombia', N'TLU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1590, N'Ben Gurion International Airport', N'Tel-aviv', N'Israel', N'TLV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11935, N'Panguilemo Airport', N'Talca', N'Chile', N'TLX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8005, N'Henry Tift Myers Airport', N'Tifton', N'United States', N'TMA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3869, N'Kendall-Tamiami Executive Airport', N'Kendall-tamiami', N'United States', N'TMB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6204, N'Tambolaka Airport', N'Waikabubak-Sumba Island', N'Indonesia', N'TMC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2751, N'Gustavo Vargas Airport', N'Tame', N'Colombia', N'TME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11353, N'Thimarafushi Airport', N'Thimarafushi', N'Maldives', N'TMF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6221, N'Tomanggong Airport', N'Tomanggong', N'Malaysia', N'TMG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13632, N'Tanah Merah Airport', N'Boven Digoel', N'Indonesia', N'TMH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4183, N'Tumling Tar Airport', N'Tumling Tar', N'Nepal', N'TMI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6154, N'Termez Airport', N'Termez', N'Uzbekistan', N'TMJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (249, N'Tamale Airport', N'Tamale', N'Ghana', N'TML')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (921, N'Toamasina Airport', N'Toamasina', N'Madagascar', N'TMM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7594, N'Tamana Island Airport', N'Tamana', N'Kiribati', N'TMN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2867, N'Tumeremo Airport', N'Tumeremo', N'Venezuela', N'TMO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (458, N'Tampere-Pirkkala Airport', N'Tampere', N'Finland', N'TMP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (216, N'Aguenar ÔÇô Hadj Bey Akhamok Airport', N'Tamanrasset', N'Algeria', N'TMR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (973, N'S+úo Tom+® International Airport', N'Sao Tome', N'Sao Tome and Principe', N'TMS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2622, N'Trombetas Airport', N'Oriximina', N'Brazil', N'TMT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6732, N'Tambor Airport', N'Nicoya', N'Costa Rica', N'TMU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3362, N'Tamworth Airport', N'Tamworth', N'Australia', N'TMW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (242, N'Timimoun Airport', N'Timimoun', N'Algeria', N'TMX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4108, N'Yaoqiang Airport', N'Jinan', N'China', N'TNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7194, N'Tin City Long Range Radar Station Airport', N'Tin City', N'United States', N'TNC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5853, N'Alberto Delgado Airport', N'Trinidad', N'Cuba', N'TND')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2306, N'New Tanegashima Airport', N'Tanegashima', N'Japan', N'TNE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1385, N'Toussus-le-Noble Airport', N'Toussous-le-noble', N'France', N'TNF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1080, N'Ibn Batouta Airport', N'Tanger', N'Morocco', N'TNG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9854, N'Tonghua Sanyuanpu Airport', N'Tonghua', N'China', N'TNH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3113, N'Satna Airport', N'Satna', N'India', N'TNI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3906, N'Raja Haji Fisabilillah International Airport', N'Tanjung Pinang', N'Indonesia', N'TNJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2661, N'Teniente Rodolfo Marsh Martin Base', N'Isla Rey Jorge', N'Antarctica', N'TNM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2270, N'Tainan Airport', N'Tainan', N'Taiwan', N'TNN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (918, N'Ivato Airport', N'Antananarivo', N'Madagascar', N'TNR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3721, N'Dade Collier Training and Transition Airport', N'Miami', N'United States', N'TNT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10792, N'Jumandy Airport', N'Tena', N'Ecuador', N'TNW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3036, N'Stung Treng Airport', N'Stung Treng', N'Cambodia', N'TNX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7053, N'Zamperini Field', N'Torrance', N'United States', N'TOA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5697, N'Gamal Abdel Nasser Airport', N'Tobruk', N'Libya', N'TOB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8322, N'Toccoa Airport - R.G. Letourneau Field', N'Toccoa', N'United States', N'TOC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3407, N'Pulau Tioman Airport', N'Tioman', N'Malaysia', N'TOD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (296, N'Tozeur Nefta International Airport', N'Tozeur', N'Tunisia', N'TOE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4297, N'Bogashevo Airport', N'Tomsk', N'Russia', N'TOF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6767, N'Togiak Airport', N'Togiak Village', N'United States', N'TOG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5895, N'Torres Airstrip', N'Loh/Linua', N'Vanuatu', N'TOH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11010, N'Troy Municipal Airport at N Kenneth Campbell Field', N'Troy', N'United States', N'TOI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1245, N'Torrej+¦n Airport', N'Madrid', N'Spain', N'TOJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4040, N'Toledo Express Airport', N'Toledo', N'United States', N'TOL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1048, N'Timbuktu Airport', N'Tombouctou', N'Mali', N'TOM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1891, N'San Vito De Java Airport', N'San Vito De Jaba', N'Costa Rica', N'TOO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7925, N'Philip Billard Municipal Airport', N'Topeka', N'United States', N'TOP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11932, N'Barriles Airport', N'Tocopilla', N'Chile', N'TOQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (663, N'Troms+© Airport', N'Tromso', N'Norway', N'TOS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7340, N'Totness Airport', N'Totness', N'Suriname', N'TOT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2003, N'Touho Airport', N'Touho', N'New Caledonia', N'TOU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6041, N'Toledo Airport', N'Toledo', N'Brazil', N'TOW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2324, N'Toyama Airport', N'Toyama', N'Japan', N'TOY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3646, N'Tampa International Airport', N'Tampa', N'United States', N'TPA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2696, N'Tarapoa Airport', N'Tarapoa', N'Ecuador', N'TPC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2276, N'Taiwan Taoyuan International Airport', N'Taipei', N'Taiwan', N'TPE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11153, N'Peter O Knight Airport', N'Tampa', N'United States', N'TPF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11858, N'Tonopah Airport', N'Tonopah', N'United States', N'TPH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4182, N'Taplejung Airport', N'Taplejung', N'Nepal', N'TPJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4230, N'Draughon Miller Central Texas Regional Airport', N'Temple', N'United States', N'TPL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8761, N'Tiputini Airport', N'Tiputini', N'Ecuador', N'TPN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2806, N'Cadete FAP Guillermo Del Castillo Paredes Airport', N'Tarapoto', N'Peru', N'TPP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1802, N'Amado Nervo National Airport', N'Tepic', N'Mexico', N'TPQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1515, N'Vincenzo Florio Airport Trapani-Birgi', N'Trapani', N'Italy', N'TPS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4138, N'Al Taqaddum Air Base', N'Al Taqaddum', N'Iraq', N'TQD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11436, N'Tarko-Sale Airport', N'Tarko-Sale', N'Russia', N'TQL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9103, N'Maranggo Airport', N'Sulawesi Tenggara', N'Indonesia', N'TQQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11943, N'Tres Esquinas Air Base', N'Tres Esquinas', N'Colombia', N'TQS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2393, N'Tarama Airport', N'Tarama', N'Japan', N'TRA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1845, N'Francisco Sarabia International Airport', N'Torreon', N'Mexico', N'TRC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (665, N'Trondheim Airport V+ªrnes', N'Trondheim', N'Norway', N'TRD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (542, N'Tiree Airport', N'Tiree', N'United Kingdom', N'TRE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (664, N'Sandefjord Airport', N'Torp Sandefjord', N'Norway', N'TRF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2034, N'Tauranga Airport', N'Tauranga', N'New Zealand', N'TRG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4116, N'Tri-Cities Regional TN/VA Airport', N'BRISTOL', N'United States', N'TRI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3920, N'Juwata Airport', N'Taraken', N'Indonesia', N'TRK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7646, N'Jacqueline Cochran Regional Airport', N'Palm Springs', N'United States', N'TRM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1526, N'Turin Airport', N'Torino', N'Italy', N'TRN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6794, N'Taree Airport', N'Taree', N'Australia', N'TRO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2625, N'Tarauac+í Airport', N'Tarauaca', N'Brazil', N'TRQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3030, N'China Bay Airport', N'Trinciomalee', N'Sri Lanka', N'TRR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1545, N'TriesteÔÇôFriuli Venezia Giulia Airport', N'Ronchi De Legionari', N'Italy', N'TRS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2804, N'Capitan FAP Carlos Martinez De Pinillos International Airport', N'Trujillo', N'Peru', N'TRU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3153, N'Trivandrum International Airport', N'Trivandrum', N'India', N'TRV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1965, N'Bonriki International Airport', N'Tarawa', N'Kiribati', N'TRW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3152, N'Tiruchirapally Civil Airport Airport', N'Tiruchirappalli', N'India', N'TRZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2275, N'Taipei Songshan Airport', N'Taipei', N'Taiwan', N'TSA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8148, N'Tsumeb Airport', N'Tsumeb', N'Namibia', N'TSB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2910, N'Astana International Airport', N'Tselinograd', N'Kazakhstan', N'TSE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1539, N'Treviso-Sant''Angelo Airport', N'Treviso', N'Italy', N'TSF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5652, N'Tshikapa Airport', N'Tshikapa', N'Congo (Kinshasa)', N'TSH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2297, N'Tsushima Airport', N'Tsushima', N'Japan', N'TSJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1849, N'Tamuin Airport', N'Tamuin', N'Mexico', N'TSL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13139, N'Taos Regional Airport', N'Taos', N'United States', N'TSM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3368, N'Tianjin Binhai International Airport', N'Tianjin', N'China', N'TSN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1663, N'Timi+ƒoara Traian Vuia Airport', N'Timisoara', N'Romania', N'TSR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3182, N'Trang Airport', N'Trang', N'Thailand', N'TST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7601, N'Tabiteuea South Airport', N'Tabiteuea', N'Kiribati', N'TSU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3330, N'Townsville Airport', N'Townsville', N'Australia', N'TSV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3922, N'Tanjung Santan Airport', N'Tanjung Santan', N'Indonesia', N'TSX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3892, N'Cibeureum Airport', N'Tasikmalaya', N'Indonesia', N'TSY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1065, N'Tan Tan Airport', N'Tan Tan', N'Morocco', N'TTA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1521, N'Tortol+¼ Airport', N'Tortoli', N'Italy', N'TTB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11937, N'Las Breas Airport', N'Taltal', N'Chile', N'TTC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8121, N'Portland Troutdale Airport', N'Troutdale', N'United States', N'TTD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3253, N'Sultan Khairun Babullah Airport', N'Ternate', N'Indonesia', N'TTE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6027, N'General Enrique Mosconi Airport', N'Tartagal', N'Argentina', N'TTG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2196, N'Thumrait Air Base', N'Thumrait', N'Oman', N'TTH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9175, N'Tetiaroa Airport', N'Tetiaroa', N'French Polynesia', N'TTI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2335, N'Tottori Airport', N'Tottori', N'Japan', N'TTJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11277, N'Turtle Island Seaplane Base', N'Turtle Island', N'Fiji', N'TTL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3447, N'Trenton Mercer Airport', N'Trenton', N'United States', N'TTN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5842, N'Aerotortuguero Airport', N'Roxana', N'Costa Rica', N'TTQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3889, N'Pongtiku Airport', N'Makale', N'Indonesia', N'TTR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2262, N'Taitung Airport', N'Fengnin', N'Taiwan', N'TTT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1079, N'Saniat R''mel Airport', N'Tetouan', N'Morocco', N'TTU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2697, N'Teniente Coronel Luis a Mantilla Airport', N'Tulcan', N'Ecuador', N'TUA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1972, N'Tubuai Airport', N'Tubuai', N'French Polynesia', N'TUB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2460, N'Teniente Benjamin Matienzo Airport', N'Tucuman', N'Argentina', N'TUC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1088, N'Tambacounda Airport', N'Tambacounda', N'Senegal', N'TUD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1376, N'Tours-Val-de-Loire Airport', N'Tours', N'France', N'TUF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6021, N'Tuguegarao Airport', N'Tuguegarao', N'Philippines', N'TUG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2093, N'Turaif Domestic Airport', N'Turaif', N'Saudi Arabia', N'TUI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5951, N'Turbat International Airport', N'Turbat', N'Pakistan', N'TUK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3855, N'Tulsa International Airport', N'Tulsa', N'United States', N'TUL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12040, N'Tumut Airport', NULL, N'Australia', N'TUM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (287, N'Tunis Carthage International Airport', N'Tunis', N'Tunisia', N'TUN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2007, N'Taupo Airport', N'Taupo', N'New Zealand', N'TUO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5773, N'Tupelo Regional Airport', N'Tupelo', N'United States', N'TUP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2629, N'Tucuru+¡ Airport', N'Tucurui', N'Brazil', N'TUR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3636, N'Tucson International Airport', N'Tucson', N'United States', N'TUS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2089, N'Tabuk Airport', N'Tabuk', N'Saudi Arabia', N'TUU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2866, N'Tucupita Airport', N'Tucupita', N'Venezuela', N'TUV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5619, N'Morafenobe Airport', N'Morafenobe', N'Madagascar', N'TVA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4023, N'Cherry Capital Airport', N'Traverse City', N'United States', N'TVC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7018, N'Thief River Falls Regional Airport', N'Thief River Falls', N'United States', N'TVF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7998, N'Thomasville Regional Airport', N'Thomasville', N'United States', N'TVI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4262, N'Lake Tahoe Airport', N'South Lake Tahoe', N'United States', N'TVL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5875, N'Matei Airport', N'Matei', N'Fiji', N'TVU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6197, N'Dawei Airport', N'Dawei', N'Burma', N'TVY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7128, N'Toowoomba Airport', N'Toowoomba', N'Australia', N'TWB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4263, N'Joslin Field Magic Valley Regional Airport', N'Twin Falls', N'United States', N'TWF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6014, N'Sanga Sanga Airport', N'Sanga Sanga', N'Philippines', N'TWT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3271, N'Tawau Airport', N'Tawau', N'Malaysia', N'TWU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2036, N'Pukaki Airport', N'Pukaki', N'New Zealand', N'TWZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13230, N'9 de Maio - Teixeira de Freitas Airport', N'Teixeira de Freitas', N'Brazil', N'TXF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8055, N'Taichung Airport', N'Taichung', N'Taiwan', N'TXG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3770, N'Texarkana Regional Webb Field', N'Texarkana', N'United States', N'TXK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (351, N'Berlin-Tegel Airport', N'Berlin', N'Germany', N'TXL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6387, N'Tunxi International Airport', N'Huangshan', N'China', N'TXN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12039, N'Tibooburra Airport', NULL, N'Australia', N'TYB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5596, N'Torsby Airport', N'Torsby', N'Sweden', N'TYF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2810, N'Capitan Montes Airport', N'Talara', N'Peru', N'TYL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1947, N'Staniel Cay Airport', N'Staniel Cay', N'Bahamas', N'TYM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3369, N'Taiyuan Wusu Airport', N'Taiyuan', N'China', N'TYN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3848, N'Tyler Pounds Regional Airport', N'Tyler', N'United States', N'TYR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3676, N'McGhee Tyson Airport', N'Knoxville', N'United States', N'TYS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6947, N'Tuzla International Airport', N'Null', N'Bosnia and Herzegovina', N'TZL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9403, N'Tasz+ír Air Base', N'Columbus', N'United States', N'TZR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1726, N'Trabzon International Airport', N'Trabzon', N'Turkey', N'TZX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1686, N'-¦ncirlik Air Base', N'Adana', N'Turkey', N'UAB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5892, N'Ua Huka Airport', N'Ua Huka', N'French Polynesia', N'UAH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3309, N'Suai Airport', N'Suai', N'East Timor', N'UAI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7, N'Narsarsuaq Airport', N'Narssarssuaq', N'Greenland', N'UAK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2245, N'Andersen Air Force Base', N'Andersen', N'Guam', N'UAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5891, N'Ua Pou Airport', N'Ua Pou', N'French Polynesia', N'UAP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2461, N'Domingo Faustino Sarmiento Airport', N'San Juan', N'Argentina', N'UAQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9215, N'Bouarfa Airport', N'Bouarfa', N'Morocco', N'UAR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6773, N'Buffalo Spring', N'Samburu South', N'Kenya', N'UAS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2635, N'M+írio de Almeida Franco Airport', N'Uberaba', N'Brazil', N'UBA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6292, N'Mabuiag Island Airport', N'Mabuiag Island', N'Australia', N'UBB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2296, N'Yamaguchi Ube Airport', N'Yamaguchi', N'Japan', N'UBJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3937, N'Ubon Ratchathani Airport', N'Ubon Ratchathani', N'Thailand', N'UBP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10545, N'Ubatuba Airport', N'Ubatuba', N'Brazil', N'UBT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13211, N'Ulanqab Jining Airport', N'Wulanchabu', N'China', N'UCB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6905, N'Lutsk Airport', N'Lutsk', N'Ukraine', N'UCK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4368, N'Ukhta Airport', N'Ukhta', N'Russia', N'UCT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7648, N'Bermuda Dunes Airport', N'Palm Springs', N'United States', N'UDD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2633, N'Ten. Cel. Aviador C+®sar Bombonato Airport', N'Uberlandia', N'Brazil', N'UDI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6109, N'Uzhhorod International Airport', N'Uzhgorod', N'Ukraine', N'UDJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3023, N'Maharana Pratap Airport', N'Udaipur', N'India', N'UDR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (986, N'Quelimane Airport', N'Quelimane', N'Mozambique', N'UEL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2388, N'Kumejima Airport', N'Kumejima', N'Japan', N'UEO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2221, N'Quetta International Airport', N'Quetta', N'Pakistan', N'UET')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2992, N'Ufa International Airport', N'Ufa', N'Russia', N'UFA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7557, N'Bulgan Airport', N'Bulgan', N'Mongolia', N'UGA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6152, N'Urgench Airport', N'Urgench', N'Uzbekistan', N'UGC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3818, N'Waukegan National Airport', N'Chicago', N'United States', N'UGN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (961, N'Uige Airport', N'Uige', N'Angola', N'UGO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (14097, N'Bilogai-Sugapa Airport', N'Sugapa-Papua Island', N'Indonesia', N'UGU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1578, N'Kunovice Airport', N'Kunovice', N'Czech Republic', N'UHE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2753, N'El Cara+¦o Airport', N'Quibdo', N'Colombia', N'UIB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6193, N'Phu Cat Airport', N'Phucat', N'Vietnam', N'UIH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4125, N'Utila Airport', N'Utila', N'Honduras', N'UII')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4333, N'Ust-Ilimsk Airport', N'Ust Ilimsk', N'Russia', N'UIK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5774, N'Quincy Regional Baldwin Field', N'Quincy', N'United States', N'UIN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2688, N'Mariscal Sucre International Airport', N'Quito', N'Ecuador', N'UIO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1417, N'Quimper-Cornouaille Airport', N'Quimper', N'France', N'UIP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6100, N'Ujae Atoll Airport', N'Ujae Atoll', N'Marshall Islands', N'UJE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7976, N'Ukunda Airstrip', N'Ukunda', N'Kenya', N'UKA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3943, N'Kobe Airport', N'Kobe', N'Japan', N'UKB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13427, N'Ust-Kuyga Airport', N'Ust-Kuyga', N'Russia', N'UKG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11860, N'Ukiah Municipal Airport', N'Ukiah', N'United States', N'UKI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6086, N'Ust-Kamennogorsk Airport', N'Ust Kamenogorsk', N'Kazakhstan', N'UKK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7863, N'Belbek Airport', N'Sevastopol', N'Ukraine', N'UKS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11111, N'Quakertown Airport', N'Quakertown', N'United States', N'UKT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6924, N'Ust-Kut Airport', N'Ust-Kut', N'Russia', N'UKX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2498, N'Capitan D Daniel Vazquez Airport', N'San Julian', N'Argentina', N'ULA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5910, N'Ul+®i Airport', N'Ambryn Island', N'Vanuatu', N'ULB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (864, N'Prince Mangosuthu Buthelezi Airport', N'Ulundi', N'South Africa', N'ULD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7470, N'Ulgii Mongolei Airport', N'Olgii', N'Mongolia', N'ULG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8381, N'Majeed Bin Abdulaziz Airport', N'Al-Ula', N'Saudi Arabia', N'ULH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9026, N'Lensk Airport', N'Lensk', N'Russia', N'ULK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3380, N'Chinggis Khaan International Airport', N'Ulan Bator', N'Mongolia', N'ULN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7558, N'Ulaangom Airport', N'Ulaangom', N'Mongolia', N'ULO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6322, N'Quilpie Airport', N'Quilpie', N'Australia', N'ULP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2754, N'Heriberto G+¡l Mart+¡nez Airport', N'Tulua', N'Colombia', N'ULQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5710, N'Gulu Airport', N'Gulu', N'Uganda', N'ULU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7003, N'Ulyanovsk Baratayevka Airport', N'Ulyanovsk', N'Russia', N'ULV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6163, N'Ulyanovsk East Airport', N'Ulyanovsk', N'Russia', N'ULY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7556, N'Donoi Airport', N'Uliastai', N'Mongolia', N'ULZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8628, N'Uummannaq Heliport', N'Uummannaq', N'Greenland', N'UMD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (728, N'Ume+Ñ Airport', N'Umea', N'Sweden', N'UME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3352, N'Woomera Airfield', N'Woomera', N'Australia', N'UMR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9376, N'Ust-Maya Airport', N'Ust-Maya', N'Russia', N'UMS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8253, N'Umuarama Airport', N'Umuarama', N'Brazil', N'UMU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8260, N'Hotel Transam+®rica Airport', N'Una', N'Brazil', N'UNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2056, N'Konduz Airport', N'Kunduz', N'Afghanistan', N'UND')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5425, N'Kiunga Airport', N'Kiunga', N'Papua New Guinea', N'UNG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6082, N'Union Island International Airport', N'Union Island', N'Saint Vincent and the Grenadines', N'UNI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7088, N'Unalakleet Airport', N'Unalakleet', N'United States', N'UNK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3180, N'Ranong Airport', N'Ranong', N'Thailand', N'UNN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6454, N'Unst Airport', N'Unst', N'United Kingdom', N'UNT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13546, N'Buol Airport', N'Buol', N'Indonesia', N'UOL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7931, N'Franklin County Airport', N'Sewanee', N'United States', N'UOS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11861, N'University Oxford Airport', N'Oxford', N'United States', N'UOX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1915, N'Playa Baracoa Airport', N'Baracoa Playa', N'Cuba', N'UPB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3240, N'Hasanuddin International Airport', N'Ujung Pandang', N'Indonesia', N'UPG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11897, N'Upala Airport', N'Upala', N'Costa Rica', N'UPL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1835, N'Licenciado y General Ignacio Lopez Rayon Airport', N'Uruapan', N'Mexico', N'UPN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3532, N'Upolu Airport', N'Opolu', N'United States', N'UPP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2916, N'Uralsk Airport', N'Uralsk', N'Kazakhstan', N'URA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3399, N'+£r++mqi Diwopu International Airport', N'Urumqi', N'China', N'URC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (387, N'Burg Feuerstein Airport', N'Burg Feuerstein', N'Germany', N'URD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (413, N'Kuressaare Airport', N'Kuressaare', N'Estonia', N'URE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2632, N'Rubem Berta Airport', N'Uruguaiana', N'Brazil', N'URG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4377, N'Uray Airport', N'Uraj', N'Russia', N'URJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1375, N'Rouen Airport', N'Rouen', N'France', N'URO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6157, N'Kursk East Airport', N'Kursk', N'Russia', N'URS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4000, N'Surat Thani Airport', N'Surat Thani', N'Thailand', N'URT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2068, N'Gurayat Domestic Airport', N'Guriat', N'Saudi Arabia', N'URY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6482, N'Concord-Padgett Regional Airport', N'Concord', N'United States', N'USA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2497, N'Malvinas Argentinas Airport', N'Ushuaia', N'Argentina', N'USH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7351, N'Mabaruma Airport', N'Mabaruma', N'Guyana', N'USI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4369, N'Usinsk Airport', N'Usinsk', N'Russia', N'USK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3177, N'Samui Airport', N'Ko Samui', N'Thailand', N'USM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2374, N'Ulsan Airport', N'Ulsan', N'South Korea', N'USN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5795, N'U+ƒak Airport', N'Usak', N'Turkey', N'USQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8866, N'Ust-Nera Airport', N'Ust-Nera', N'Russia', N'USR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1921, N'Sancti Spiritus Airport', N'Sancti Spiritus', N'Cuba', N'USS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6989, N'Northeast Florida Regional Airport', N'St. Augustine Airport', N'United States', N'UST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4199, N'Francisco B. Reyes Airport', N'Busuanga', N'Philippines', N'USU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1008, N'Mutare Airport', N'Mutare', N'Zimbabwe', N'UTA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (592, N'Soesterberg Air Base', N'Soesterberg', N'Netherlands', N'UTC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3183, N'Udon Thani Airport', N'Udon Thani', N'Thailand', N'UTH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (461, N'Utti Air Base', N'Utti', N'Finland', N'UTI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5814, N'Utirik Airport', N'Utirik Island', N'Marshall Islands', N'UTK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7827, N'Tunica Municipal Airport', N'Tunica', N'United States', N'UTM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (865, N'Pierre Van Ryneveld Airport', N'Upington', N'South Africa', N'UTN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3419, N'Indian Mountain LRRS Airport', N'Indian Mountains', N'United States', N'UTO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3161, N'U-Tapao International Airport', N'Pattaya', N'Thailand', N'UTP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8723, N'Ust-Tsylma Airport', N'Ust-Tsylma', N'Russia', N'UTS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (866, N'K. D. Matanzima Airport', N'Umtata', N'South Africa', N'UTT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (848, N'Queenstown Airport', N'Queenstown', N'South Africa', N'UTW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6160, N'Bugulma Airport', N'Bugulma', N'Russia', N'UUA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2938, N'Ulan-Ude Airport (Mukhino)', N'Ulan-ude', N'Russia', N'UUD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7089, N'Ugnu-Kuparuk Airport', N'Kuparuk', N'United States', N'UUK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12051, N'Baruun Urt Airport', NULL, N'Mongolia', N'UUN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2933, N'Yuzhno-Sakhalinsk Airport', N'Yuzhno-sakhalinsk', N'Russia', N'UUS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7885, N'Garner Field', N'Uvalde', N'United States', N'UVA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2004, N'Ouv+®a Airport', N'Ouvea', N'New Caledonia', N'UVE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2894, N'Hewanorra International Airport', N'Hewandorra', N'Saint Lucia', N'UVF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5701, N'Nyala Airport', N'Nyala', N'Sudan', N'UYL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6368, N'Yulin Yuyang Airport', N'Yulin', N'China', N'UYN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7313, N'Uyuni Airport', N'Uyuni', N'Bolivia', N'UYU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13415, N'Urzhar Airport', N'Urzhar', N'Kazakhstan', N'UZR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2485, N'Curuzu Cuatia Airport', N'Curuzu Cuatia', N'Argentina', N'UZU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (462, N'Vaasa Airport', N'Vaasa', N'Finland', N'VAA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3575, N'Moody Air Force Base', N'Valdosta', N'United States', N'VAD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1342, N'Valence-Chabeuil Airport', N'Valence', N'France', N'VAF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2636, N'Major Brigadeiro Trompowsky Airport', N'Varginha', N'Brazil', N'VAG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5436, N'Vanimo Airport', N'Vanimo', N'Papua New Guinea', N'VAI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5968, N'Chevak Airport', N'Chevak', N'United States', N'VAK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7671, N'Valen+ºa Airport', N'Valenca', N'Brazil', N'VAL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8840, N'Villa Airport', N'Maamigili', N'Maldives', N'VAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1728, N'Van Ferit Melen Airport', N'Van', N'Turkey', N'VAN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5416, N'Suavanao Airport', N'Suavanao', N'Solomon Islands', N'VAO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1196, N'Varna Airport', N'Varna', N'Bulgaria', N'VAR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1694, N'Sivas Nuri Demira-ƒ Airport', N'Sivas', N'Turkey', N'VAS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1964, N'Vava''u International Airport', N'Vava''u', N'Tonga', N'VAV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3207, N'Ann Airport', N'Ann', N'Burma', N'VBA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3810, N'Vandenberg Air Force Base', N'Lompoc', N'United States', N'VBG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6952, N'Bokpyinn Airport', N'Bokepyin', N'Burma', N'VBP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1544, N'Brescia Airport', N'Brescia', N'Italy', N'VBS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5883, N'Vanua Balavu Airport', N'Vanua Balavu', N'Fiji', N'VBV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (746, N'Visby Airport', N'Visby', N'Sweden', N'VBY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6191, N'Can Tho International Airport', N'Can Tho', N'Vietnam', N'VCA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6331, N'Victoria River Downs Airport', N'Victoria River Downs', N'Australia', N'VCD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1551, N'Venice Marco Polo Airport', N'Venice', N'Italy', N'VCE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4157, N'Chu Lai International Airport', N'Chu Lai', N'Vietnam', N'VCL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2578, N'Viracopos International Airport', N'Campinas', N'Brazil', N'VCP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2831, N'Carora Airport', N'Carora', N'Venezuela', N'VCR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6190, N'Co Ong Airport', N'Conson', N'Vietnam', N'VCS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5775, N'Victoria Regional Airport', N'Victoria', N'United States', N'VCT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3554, N'Southern California Logistics Airport', N'Victorville', N'United States', N'VCV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1602, N'Ovda International Airport', N'Ovda', N'Israel', N'VDA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (642, N'Leirin Airport', N'Fagernes', N'Norway', N'VDB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6039, N'Vit+¦ria da Conquista Airport', N'Vit+¦ria Da Conquista', N'Brazil', N'VDC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1052, N'Hierro Airport', N'Hierro', N'Spain', N'VDE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4154, N'Dong Hoi Airport', N'Dong Hoi', N'Vietnam', N'VDH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13757, N'Vidalia Regional Airport', N'Vidalia', N'United States', N'VDI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2491, N'Gobernador Castello Airport', N'Viedma', N'Argentina', N'VDM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2871, N'Valle de La Pascua Airport', N'Valle De La Pascua', N'Venezuela', N'VDP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2463, N'Villa Dolores Airport', N'Villa Dolores', N'Argentina', N'VDR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4328, N'Vads+© Airport', N'Vads+©', N'Norway', N'VDS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13511, N'Vijayanagar Aerodrome (JSW)', N'Toranagallu', N'India', N'VDY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3865, N'Valdez Pioneer Field', N'Valdez', N'United States', N'VDZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7114, N'Venetie Airport', N'Venetie', N'United States', N'VEE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7076, N'Vernal Regional Airport', N'Vernal', N'United States', N'VEL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1854, N'General Heriberto Jara International Airport', N'Vera Cruz', N'Mexico', N'VER')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (20, N'Vestmannaeyjar Airport', N'Vestmannaeyjar', N'Iceland', N'VEY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1004, N'Victoria Falls International Airport', N'Victoria Falls', N'Zimbabwe', N'VFA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3134, N'Vijayawada Airport', N'Vijayawada', N'India', N'VGA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7473, N'Vologda Airport', N'Vologda', N'Russia', N'VGD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1250, N'Vigo Airport', N'Vigo', N'Spain', N'VGO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6877, N'North Las Vegas Airport', N'Las Vegas', N'United States', N'VGT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7359, N'Villa Garz+¦n Airport', N'Villa Garzon', N'Colombia', N'VGZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (957, N'Saurimo Airport', N'Saurimo', N'Angola', N'VHC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (729, N'Vilhelmina Airport', N'Vilhelmina', N'Sweden', N'VHM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13428, N'Verkhnevilyuisk Airport', N'Verkhnevilyuysk', N'Russia', N'VHV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1343, N'Vichy-Charmeil Airport', N'Vichy', N'France', N'VHY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13626, N'Vahitahi Airport', N'Vahitahi', N'French Polynesia', N'VHZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1548, N'Vicenza Airport', N'Vicenza', N'Italy', N'VIC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1613, N'Vienna International Airport', N'Vienna', N'Austria', N'VIE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6072, N'Juan Pablo P+®rez Alfonso Airport', N'El Vig+¡a', N'Venezuela', N'VIG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6195, N'Vinh Airport', N'Vinh', N'Vietnam', N'VII')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6080, N'Virgin Gorda Airport', N'Spanish Town', N'British Virgin Islands', N'VIJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5670, N'Dakhla Airport', N'Dakhla', N'Western Sahara', N'VIL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8209, N'Vinnytsia/Gavyryshivka Airport', N'Vinnitsa', N'Ukraine', N'VIN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (868, N'Virginia Airport', N'Durban', N'South Africa', N'VIR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7121, N'Visalia Municipal Airport', N'Visalia', N'United States', N'VIS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1249, N'Vitoria/Foronda Airport', N'Vitoria', N'Spain', N'VIT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2638, N'Eurico de Aguiar Salles Airport', N'Vitoria', N'Brazil', N'VIX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1388, N'Villacoublay-V+®lizy (BA 107) Air Base', N'Villacoublay', N'France', N'VIY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4155, N'Rach Gia Airport', N'Rach Gia', N'Vietnam', N'VKG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2988, N'Vnukovo International Airport', N'Moscow', N'Russia', N'VKO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6159, N'Vorkuta Airport', N'Vorkuta', N'Russia', N'VKT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1246, N'Valencia Airport', N'Valencia', N'Spain', N'VLC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5776, N'Valdosta Regional Airport', N'Valdosta', N'United States', N'VLD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2515, N'Villa Gesell Airport', N'Villa Gesell', N'Argentina', N'VLG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1997, N'Bauerfield International Airport', N'Port-vila', N'Vanuatu', N'VLI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11984, N'Volgodonsk Airport', NULL, N'Russia', N'VLK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1247, N'Valladolid Airport', N'Valladolid', N'Spain', N'VLL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2770, N'Teniente Coronel Rafael Pab+¦n Airport', N'Villa Montes', N'Bolivia', N'VLM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2868, N'Arturo Michelena International Airport', N'Valencia', N'Venezuela', N'VLN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11201, N'Vila Rica Airport', N'Vila Rica', N'Brazil', N'VLP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2659, N'Vallenar Airport', N'Vallenar', N'Chile', N'VLR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5911, N'Valesdir Airport', N'Valesdir', N'Vanuatu', N'VLS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9048, N'Velikiye Luki Airport', N'Velikiye Luki', N'Russia', N'VLU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2870, N'Dr. Antonio Nicol+ís Brice+¦o Airport', N'Valera', N'Venezuela', N'VLV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5574, N'Anglesey Airport', N'Angelsey', N'United Kingdom', N'VLY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2466, N'Villa Reynolds Airport', N'Villa Reynolds', N'Argentina', N'VME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5986, N'Baimuru Airport', N'Baimuru', N'Papua New Guinea', N'VMU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8684, N'Saravane Airport', N'Saravane', N'Laos', N'VNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7662, N'Venice Municipal Airport', N'Venice', N'United States', N'VNC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1421, N'Vannes-Meucon Airport', N'Vannes', N'France', N'VNE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3959, N'Vilnius International Airport', N'Vilnius', N'Lithuania', N'VNO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3084, N'Lal Bahadur Shastri Airport', N'Varanasi', N'India', N'VNS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5602, N'Ventspils International Airport', N'Ventspils', N'Latvia', N'VNT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (990, N'Vilankulo Airport', N'Vilankulu', N'Mozambique', N'VNX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4071, N'Van Nuys Airport', N'Van Nuys', N'United States', N'VNY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1589, N'Vodochody Airport', N'Vodochody', N'Czech Republic', N'VOD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2967, N'Volgograd International Airport', N'Volgograd', N'Russia', N'VOG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (934, N'Vohimarina Airport', N'Vohemar', N'Madagascar', N'VOH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7048, N'Volk Field', N'Camp Douglas', N'United States', N'VOK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1448, N'Nea Anchialos Airport', N'Nea Anghialos', N'Greece', N'VOL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2987, N'Voronezh International Airport', N'Voronezh', N'Russia', N'VOZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5632, N'Ngjiva Pereira Airport', N'Ondjiva', N'Angola', N'VPE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5453, N'Vopnafj+Âr+¦ur Airport', N'Vopnafj+Âr+¦ur', N'Iceland', N'VPN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3873, N'Destin-Ft Walton Beach Airport', N'Valparaiso', N'United States', N'VPS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5637, N'Chimoio Airport', N'Chimoio', N'Mozambique', N'VPY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11255, N'Porter County Municipal Airport', N'Valparaiso IN', N'United States', N'VPZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7496, N'Cecil Airport', N'Jacksonville', N'United States', N'VQQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6788, N'Vieques Airport', N'Vieques Island', N'Puerto Rico', N'VQS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1923, N'Juan Gualberto Gomez International Airport', N'Varadero', N'Cuba', N'VRA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3688, N'Vero Beach Regional Airport', N'Vero Beach', N'United States', N'VRB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6022, N'Virac Airport', N'Virac', N'Philippines', N'VRC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (869, N'Vredendal Airport', N'Vredendal', N'South Africa', N'VRE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (463, N'Varkaus Airport', N'Varkaus', N'Finland', N'VRK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1642, N'Vila Real Airport', N'Vila Real', N'Portugal', N'VRL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1550, N'Verona Villafranca Airport', N'Villafranca', N'Italy', N'VRN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8890, N'Kawama Airport', N'Kawama', N'Cuba', N'VRO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (867, N'Vryburg Airport', N'Vryburg', N'South Africa', N'VRU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5590, N'V+ªr+©y Heliport', N'V+ªr+©y', N'Norway', N'VRY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1853, N'Carlos Rovirosa P+®rez International Airport', N'Villahermosa', N'Mexico', N'VSA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1643, N'Aerodromo Goncalves Lobato (Viseu Airport)', N'Viseu', N'Portugal', N'VSE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6102, N'Luhansk International Airport', N'Lugansk', N'Ukraine', N'VSG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (733, N'Stockholm V+ñster+Ñs Airport', N'Vasteras', N'Sweden', N'VST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2951, N'Vitebsk Vostochny Airport', N'Vitebsk', N'Belarus', N'VTB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3120, N'Wattay International Airport', N'Vientiane', N'Laos', N'VTE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1601, N'Nevatim Air Base', N'Nevatim', N'Israel', N'VTM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11863, N'Miller Field', N'Valentine', N'United States', N'VTN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1924, N'Hermanos Ameijeiras Airport', N'Las Tunas', N'Cuba', N'VTU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3066, N'Vishakhapatnam Airport', N'Vishakhapatnam', N'India', N'VTZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2755, N'Alfonso L+¦pez Pumarejo Airport', N'Valledupar', N'Colombia', N'VUP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8924, N'Velikiy Ustyug Airport', N'Veliky Ustyug', N'Russia', N'VUS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2756, N'Vanguardia Airport', N'Villavicencio', N'Colombia', N'VVC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2771, N'Viru Viru International Airport', N'Santa Cruz', N'Bolivia', N'VVI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2934, N'Vladivostok International Airport', N'Vladivostok', N'Russia', N'VVO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (214, N'Illizi Takhamalt Airport', N'Illizi', N'Algeria', N'VVZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (977, N'Lichinga Airport', N'Lichinga', N'Mozambique', N'VXC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1106, N'S+úo Pedro Airport', N'Sao Vicente Island', N'Cape Verde', N'VXE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (711, N'V+ñxj+Â Kronoberg Airport', N'Vaxjo', N'Sweden', N'VXO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11953, N'Vilyuisk Airport', N'Vilyuisk', N'Russia', N'VYI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8497, N'Illinois Valley Regional Airport-Walter A Duncan Field', N'Peru', N'United States', N'VYS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7187, N'Wales Airport', N'Wales', N'United States', N'WAA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5926, N'Wadi Al Dawasir Airport', N'Wadi-al-dawasir', N'Saudi Arabia', N'WAE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2232, N'Wana Airport', N'Wana', N'Pakistan', N'WAF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2047, N'Wanganui Airport', N'Wanganui', N'New Zealand', N'WAG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (935, N'Ambalabe Airport', N'Antsohihy', N'Madagascar', N'WAI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3801, N'Wallops Flight Facility Airport', N'Wallops Island', N'United States', N'WAL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5622, N'Ambatondrazaka Airport', N'Ambatondrazaka', N'Madagascar', N'WAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5615, N'Antsalova Airport', N'Antsalova', N'Madagascar', N'WAQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9397, N'Waris Airport', N'Waris-Papua Island', N'Indonesia', N'WAR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (605, N'Waterford Airport', N'Waterford', N'Ireland', N'WAT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (679, N'Warsaw Chopin Airport', N'Warsaw', N'Poland', N'WAW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (774, N'Schleswig Air Base', N'Schleswig', N'Germany', N'WBG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5437, N'Wapenamanda Airport', N'Wapenamanda', N'Papua New Guinea', N'WBM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7115, N'Beaver Airport', N'Beaver', N'United States', N'WBQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8854, N'Boulder Municipal Airport', N'Boulder', N'United States', N'WBU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8625, N'Wilkes Barre Wyoming Valley Airport', N'Wilkes-Barre', N'United States', N'WBW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2666, N'Chait+®n Airport', N'Chaiten', N'Chile', N'WCH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4105, N'Hosea Kutako International Airport', N'Windhoek', N'Namibia', N'WDH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8297, N'Barrow County Airport', N'Winder', N'United States', N'WDR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12048, N'Shiyan Wudangshan Airport', N'Shiyan', N'China', N'WDS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6388, N'Weifang Airport', N'Weifang', N'China', N'WEF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6389, N'Weihai Airport', N'Weihai', N'China', N'WEH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3331, N'Weipa Airport', N'Weipa', N'Australia', N'WEI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (938, N'Fianarantsoa Airport', N'Fianarantsoa', N'Madagascar', N'WFI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7058, N'Northern Aroostook Regional Airport', N'Frenchville', N'United States', N'WFK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3363, N'Wagga Wagga City Airport', N'Wagga Wagga', N'Australia', N'WGA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7570, N'Walgett Airport', N'Walgett', N'Australia', N'WGE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13229, N'Shaoyang Wugang Airport', N'Shaoyang', N'China', N'WGN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3927, N'Umbu Mehang Kunda Airport', N'Waingapu', N'Indonesia', N'WGP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12041, N'Wangaratta Airport', NULL, N'Australia', N'WGT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7446, N'Wadi Halfa Airport', N'Wadi Halfa', N'Sudan', N'WHF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2041, N'Whakatane Airport', N'Whakatane', N'New Zealand', N'WHK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8220, N'Whiteman Airport', N'Los Angeles', N'United States', N'WHP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12054, N'Wuhu Air Base', N'Wuhu', N'China', N'WHU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (531, N'Wick Airport', N'Wick', N'United Kingdom', N'WIC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (780, N'Wiesbaden Army Airfield', N'Wiesbaden', N'Germany', N'WIE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13609, N'Waiheke Reeve Airport', N'Waiheke Island', N'New Zealand', N'WIK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1147, N'Nairobi Wilson Airport', N'Nairobi', N'Kenya', N'WIL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6337, N'Winton Airport', N'Winton', N'Australia', N'WIN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8998, N'Wilcannia Airport', N'Wilcannia', N'Australia', N'WIO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2043, N'Wairoa Airport', N'Wairoa', N'New Zealand', N'WIR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10371, N'General WM J Fox Airfield', N'Lancaster', N'United States', N'WJF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1149, N'Wajir Airport', N'Wajir', N'Kenya', N'WJR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6005, N'Wonju/Hoengseong Air Base (K-38/K-46)', N'Wonju', N'South Korea', N'WJU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2039, N'Wanaka Airport', N'Wanaka', N'New Zealand', N'WKA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12042, N'Warracknabeal Airport', NULL, N'Australia', N'WKB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (873, N'Waterkloof Air Force Base', N'Waterkloof', N'South Africa', N'WKF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13020, N'Hwange (Town) Airport', N'Hwange', N'Zimbabwe', N'WKI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2294, N'Wakkanai Airport', N'Wakkanai', N'Japan', N'WKJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6126, N'Aleknagik / New Airport', N'Aleknagik', N'United States', N'WKK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6415, N'Waikoloa Heliport', N'Waikoloa Village', N'United States', N'WKL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9759, N'Abaco I Walker C Airport', N'Walker''s Cay', N'Bahamas', N'WKR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9780, N'Strother Field', N'Winfield', N'United States', N'WLD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2042, N'Wellington International Airport', N'Wellington', N'New Zealand', N'WLG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6771, N'Walaha Airport', N'Walaha', N'Vanuatu', N'WLH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7182, N'Selawik Airport', N'Selawik', N'United States', N'WLK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1968, N'Hihifo Airport', N'Wallis', N'Wallis and Futuna', N'WLS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5628, N'Mandritsara Airport', N'Mandritsara', N'Madagascar', N'WMA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9902, N'Warrnambool Airport', N'Warrnambool', N'Australia', N'WMB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11864, N'Winnemucca Municipal Airport', N'Winnemucca', N'United States', N'WMC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6419, N'Mount Keith Airport', N'Mount Keith', N'Australia', N'WME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11821, N'Ozark Regional Airport', N'Mountain Home', N'United States', N'WMH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8414, N'Modlin Airport', N'Warsaw', N'Poland', N'WMI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (932, N'Maroantsetra Airport', N'Maroantsetra', N'Madagascar', N'WMN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7188, N'White Mountain Airport', N'White Mountain', N'United States', N'WMO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5626, N'Mampikony Airport', N'Mampikony', N'Madagascar', N'WMP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (924, N'Mananara Nord Airport', N'Mananara', N'Madagascar', N'WMR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13476, N'Zunyi Maotai Airport', N'Zunyi', N'China', N'WMT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3245, N'Wamena Airport', N'Wamena', N'Indonesia', N'WMX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9739, N'Napakiak Airport', N'Napakiak', N'United States', N'WNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5466, N'Wunnumin Lake Airport', N'Wunnumin Lake', N'Canada', N'WNN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6018, N'Naga Airport', N'Naga', N'Philippines', N'WNP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6333, N'Windorah Airport', N'Windorah', N'Australia', N'WNR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2215, N'Shaheed Benazirabad Airport', N'Nawabshah', N'Pakistan', N'WNS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6392, N'Wenzhou Longwan International Airport', N'Wenzhou', N'China', N'WNZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (595, N'Woensdrecht Air Base', N'Woensdrecht', N'Netherlands', N'WOE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6336, N'Wollongong Airport', N'Wollongong', N'Australia', N'WOL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10949, N'Wonsan Kalma International Airport', N'Wonsan', N'North Korea', N'WOS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2277, N'Wang-an Airport', N'Wang An', N'Taiwan', N'WOT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5623, N'Port Berg+® Airport', N'Port Berg+®', N'Madagascar', N'WPB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11782, N'Pincher Creek Airport', N'Pincher Creek', N'Canada', N'WPC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2652, N'Capitan Fuentes Martinez Airport Airport', N'Porvenir', N'Chile', N'WPR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2655, N'Guardiamarina Za+¦artu Airport', N'Puerto Williams', N'Chile', N'WPU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3884, N'Robins Air Force Base', N'Macon', N'United States', N'WRB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2045, N'Whangarei Airport', N'Whangarei', N'New Zealand', N'WRE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5969, N'Wrangell Airport', N'Wrangell', N'United States', N'WRG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3655, N'Mc Guire Air Force Base', N'Wrightstown', N'United States', N'WRI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5777, N'Worland Municipal Airport', N'Worland', N'United States', N'WRL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (680, N'Copernicus Wroc+éaw Airport', N'Wroclaw', N'Poland', N'WRO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (518, N'Warton Airport', N'Warton', N'United Kingdom', N'WRT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5571, N'Westray Airport', N'Westray', N'United Kingdom', N'WRY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6170, N'Weerawila Airport', N'Wirawila', N'Sri Lanka', N'WRZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3853, N'Condron Army Air Field', N'White Sands', N'United States', N'WSD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7159, N'South Naknek Nr 2 Airport', N'South Naknek', N'United States', N'WSN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9751, N'Washabo Airport', N'Washabo', N'Suriname', N'WSO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7295, N'Waspam Airport', N'Waspam', N'Nicaragua', N'WSP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9873, N'Wasior Airport', N'Wasior', N'Indonesia', N'WSR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8194, N'Westerly State Airport', N'Washington County', N'United States', N'WST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6870, N'Whitsunday Island Airport', N'Airlie Beach', N'Australia', N'WSY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2046, N'Westport Airport', N'Westport', N'New Zealand', N'WSZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5620, N'Tambohorano Airport', N'Tambohorano', N'Madagascar', N'WTA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9853, N'Toowoomba Wellcamp Airport', N'Toowoomba', N'Australia', N'WTB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6725, N'Noatak Airport', N'Noatak', N'United States', N'WTK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (574, N'RAF Waddington', N'Waddington', N'United Kingdom', N'WTN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5621, N'Tsiroanomandidy Airport', N'Tsiroanomandidy', N'Madagascar', N'WTS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7610, N'Whitianga Airport', N'Whitianga', N'New Zealand', N'WTZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6955, N'Wuhai Airport', N'Wuhai', N'China', N'WUA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3376, N'Wuhan Tianhe International Airport', N'Wuhan', N'China', N'WUH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6335, N'Wiluna Airport', N'Wiluna', N'Australia', N'WUN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6391, N'Nanping Wuyishan Airport', N'Wuyishan', N'China', N'WUS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13494, N'Xinzhou Wutaishan Airport', N'Xinzhou', N'China', N'WUT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8332, N'Wau Airport', N'Wau', N'Sudan', N'WUU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6390, N'Sunan Shuofang International Airport', N'Wuxi', N'China', N'WUX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6744, N'Wuzhou Changzhoudao Airport', N'Wuzhou', N'China', N'WUZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6778, N'Walvis Bay Airport', N'Walvis Bay', N'Namibia', N'WVB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11638, N'Watsonville Municipal Airport', N'Watsonville', N'United States', N'WVI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (940, N'Manakara Airport', N'Manakara', N'Madagascar', N'WVK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (405, N'Wilhelmshaven-Mariensiel Airport', N'Wilhelmshaven', N'Germany', N'WVN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11919, N'Wasilla Airport', N'Wasilla', N'United States', N'WWA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3740, N'Cape May County Airport', N'Wildwood', N'United States', N'WWD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6, N'Wewak International Airport', N'Wewak', N'Papua New Guinea', N'WWK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11865, N'West Woodward Airport', N'Woodward', N'United States', N'WWR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12045, N'West Wyalong Airport', N'West Wyalong', N'Australia', N'WWY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6403, N'Wanxian Airport', N'Wanxian', N'China', N'WXN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6334, N'Whyalla Airport', N'Whyalla', N'Australia', N'WYA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8336, N'Yengema Airport', N'Yengema', N'Sierra Leone', N'WYE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8476, N'Wyndham Airport', N'Wyndham', N'Australia', N'WYN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7072, N'Yellowstone Airport', N'West Yellowstone', N'United States', N'WYS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1372, N'Abbeville', N'Abbeville', N'France', N'XAB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2539, N'Serafin Enoss Bertaso Airport', N'Chapeco', N'Brazil', N'XAP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6506, N'Sa+¦l Airport', N'Saul', N'French Guiana', N'XAU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5468, N'Bearskin Lake Airport', N'Bearskin Lake', N'Canada', N'XBE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2142, N'Birjand Airport', N'Birjand', N'Iran', N'XBJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3353, N'Christmas Island Airport', N'Christmas Island', N'Christmas Island', N'XCH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1374, N'Ch+ólons-Vatry Airport', N'Chalons', N'France', N'XCR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1401, N'Charleville-M+®zi+¿res Airport', N'Charleville', N'France', N'XCZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (14092, N'Xingcheng Air Base', NULL, N'China', N'XEN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6360, N'Xiangyang Liuji Airport', N'Xiangfan', N'China', N'XFN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (362, N'Hamburg-Finkenwerder Airport', N'Hamburg', N'Germany', N'XFW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (962, N'Xangongo Airport', N'Xangongo', N'Angola', N'XGN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5512, N'Kangiqsualujjuaq (Georges River) Airport', N'Kangiqsualujjuaq', N'Canada', N'XGR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3396, N'Xichang Qingshan Airport', N'Xichang', N'China', N'XIC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11906, N'Ahmed Al Jaber Air Base', N'Ahmed Al Jaber AB', N'Kuwait', N'XIJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6350, N'Xilinhot Airport', N'Xilinhot', N'China', N'XIL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13359, N'Ilimanaq Heliport', N'Ilimanaq', N'Greenland', N'XIQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3379, N'Xi''an Xianyang International Airport', N'Xi''an', N'China', N'XIY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6833, N'Al Udeid Air Base', N'Doha', N'Qatar', N'XJD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2209, N'Mangla Airport', N'Mangla', N'Pakistan', N'XJM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4081, N'Xieng Khouang Airport', N'Phon Savan', N'Laos', N'XKH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5480, N'Kasabonika Airport', N'Kasabonika', N'Canada', N'XKS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7260, N'Lac Brochet Airport', N'Lac Brochet', N'Canada', N'XLB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1085, N'Saint Louis Airport', N'St. Louis', N'Senegal', N'XLS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8380, N'Mallacoota Airport', N'Mallacoota', N'Australia', N'XMC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1396, N'Maubeuge-+ëlesmes Airport', N'Maubeuge', N'France', N'XME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1978, N'Manihi Airport', N'Manihi', N'French Polynesia', N'XMH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3383, N'Xiamen Gaoqi International Airport', N'Xiamen', N'China', N'XMN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2680, N'Coronel E Carvajal Airport', N'Macas', N'Ecuador', N'XMS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1295, N'Montauban Airport', N'Montauban', N'France', N'XMW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6340, N'Yam Island Airport', N'Yam Island', N'Australia', N'XMY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4356, N'Northwest Arkansas Regional Airport', N'Bentonville', N'United States', N'XNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6366, N'Xining Caojiabu Airport', N'Xining', N'China', N'XNN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1355, N'Orange-Caritat (BA 115) Air Base', N'Orange', N'France', N'XOG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11776, N'Pukatawagan Airport', N'Pukatawagan', N'Canada', N'XPK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11896, N'Coronel Enrique Soto Cano Air Base', N'Comayagua', N'Honduras', N'XPL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11781, N'Poplar River Airport', N'Poplar River', N'Canada', N'XPP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4139, N'Joint Base Balad', N'Al Bakr', N'Iraq', N'XQC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1889, N'Quepos Managua Airport', N'Quepos', N'Costa Rica', N'XQP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3360, N'RAAF Base Richmond', N'Richmond', N'Australia', N'XRH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11751, N'Ross River Airport', N'Ross River', N'Canada', N'XRR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1226, N'Jerez Airport', N'Jerez', N'Spain', N'XRY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8961, N'Sir Bani Yas Airport', N'Sir Bani Yas Island', N'United Arab Emirates', N'XSB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1755, N'South Caicos Airport', N'South Caicos', N'Turks and Caicos Islands', N'XSC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3592, N'Tonopah Test Range Airport', N'Tonopah', N'United States', N'XSD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7261, N'South Indian Lake Airport', N'South Indian Lake', N'Canada', N'XSI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3315, N'Seletar Airport', N'Singapore', N'Singapore', N'XSP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6329, N'Thargomindah Airport', N'Thargomindah', N'Australia', N'XTG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7259, N'Tadoule Lake Airport', N'Tadoule Lake', N'Canada', N'XTL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11717, N'Taroom Airport', N'Taroom', N'Australia', N'XTO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4149, N'Xuzhou Guanyin Airport', N'Xuzhou', N'China', N'XUZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1260, N'Valenciennes-Denain Airport', N'Valenciennes', N'France', N'XVS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11902, N'Riyadh Air Base', N'Riyadh', N'Saudi Arabia', N'XXN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7619, N'Yandina Airport', N'Yandina', N'Solomon Islands', N'XYA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8069, N'Ye Airport', N'Ye', N'Burma', N'XYE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5457, N'Anahim Lake Airport', N'Anahim Lake', N'Canada', N'YAA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8225, N'Old Arctic Bay Airport', N'Arctic Bay', N'Canada', N'YAB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5478, N'Cat Lake Airport', N'Cat Lake', N'Canada', N'YAC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5479, N'Fort Frances Municipal Airport', N'Fort Frances', N'Canada', N'YAG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11743, N'La Grande-4 Airport', N'La Grande-4', N'Canada', N'YAH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2646, N'Gral. Bernardo O-¦Higgins Airport', N'Chillan', N'Chile', N'YAI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6803, N'Yakutat Airport', N'Yakutat', N'United States', N'YAK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11744, N'Alert Bay Airport', N'Alert Bay', N'Canada', N'YAL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (21, N'Sault Ste Marie Airport', N'Sault Sainte Marie', N'Canada', N'YAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (904, N'Yaound+® Airport', N'Yaounde', N'Cameroon', N'YAO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2258, N'Yap International Airport', N'Yap', N'Micronesia', N'YAP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13602, N'Yasawa Island Airport', N'Yasawa Island', N'Fiji', N'YAS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5482, N'Attawapiskat Airport', N'Attawapiskat', N'Canada', N'YAT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5465, N'Wapekeka Airport', N'Angling Lake', N'Canada', N'YAX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (24, N'St. Anthony Airport', N'St. Anthony', N'Canada', N'YAY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (25, N'Tofino / Long Beach Airport', N'Tofino', N'Canada', N'YAZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11127, N'Banff Airport', N'Banff', N'Canada', N'YBA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (26, N'Kugaaruk Airport', N'Pelly Bay', N'Canada', N'YBB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (27, N'Baie Comeau Airport', N'Baie Comeau', N'Canada', N'YBC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5484, N'Uranium City Airport', N'Uranium City', N'Canada', N'YBE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (28, N'CFB Bagotville', N'Bagotville', N'Canada', N'YBG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8218, N'Black Tickle Airport', N'Black Tickle', N'Canada', N'YBI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (29, N'Baker Lake Airport', N'Baker Lake', N'Canada', N'YBK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (30, N'Campbell River Airport', N'Campbell River', N'Canada', N'YBL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8477, N'Bob Quinn Lake Airport', N'Bob Quinn Lake', N'Canada', N'YBO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4110, N'Yibin Caiba Airport', N'Yibin', N'China', N'YBP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (31, N'Brandon Municipal Airport', N'Brandon', N'Canada', N'YBR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11702, N'Opapimiskan Lake Airport', N'Musselwhite Mine', N'Canada', N'YBS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7262, N'Brochet Airport', N'Brochet', N'Canada', N'YBT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7022, N'Berens River Airport', N'Berens River', N'Canada', N'YBV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9749, N'Bedwell Harbour Seaplane Base', N'Bedwell Harbour', N'Canada', N'YBW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5485, N'Lourdes de Blanc Sablon Airport', N'Lourdes-De-Blanc-Sablon', N'Canada', N'YBX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7267, N'Bonnyville Airport', N'Bonnyville', N'Canada', N'YBY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (32, N'Cambridge Bay Airport', N'Cambridge Bay', N'Canada', N'YCB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8177, N'Cornwall Regional Airport', N'Cornwall', N'Canada', N'YCC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (33, N'Nanaimo Airport', N'Nanaimo', N'Canada', N'YCD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11748, N'Centralia / James T. Field Memorial Aerodrome', N'Centralia', N'Canada', N'YCE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (34, N'Castlegar/West Kootenay Regional Airport', N'Castlegar', N'Canada', N'YCG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (35, N'Miramichi Airport', N'Chatham', N'Canada', N'YCH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5462, N'Colville Lake Airport', N'Colville Lake', N'Canada', N'YCK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (36, N'Charlo Airport', N'Charlo', N'Canada', N'YCL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9241, N'Niagara District Airport', N'Saint Catherines', N'Canada', N'YCM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9088, N'Cochrane Airport', N'Cochrane', N'Canada', N'YCN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (37, N'Kugluktuk Airport', N'Coppermine', N'Canada', N'YCO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11750, N'Chetwynd Airport', N'Chetwynd', N'Canada', N'YCQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7264, N'Cross Lake (Charlie Sinclair Memorial) Airport', N'Cross Lake', N'Canada', N'YCR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5487, N'Chesterfield Inlet Airport', N'Chesterfield Inlet', N'Canada', N'YCS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (38, N'Coronation Airport', N'Coronation', N'Canada', N'YCT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6430, N'Yuncheng Guangong Airport', N'Yuncheng', N'China', N'YCU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (39, N'Chilliwack Airport', N'Chilliwack', N'Canada', N'YCW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (40, N'Clyde River Airport', N'Clyde River', N'Canada', N'YCY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (42, N'Dawson City Airport', N'Dawson', N'Canada', N'YDA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (43, N'Burwash Airport', N'Burwash', N'Canada', N'YDB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (45, N'Deer Lake Airport', N'Deer Lake', N'Canada', N'YDF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11757, N'Digby / Annapolis Regional Airport', N'Digby', N'Canada', N'YDG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (46, N'Dease Lake Airport', N'Dease Lake', N'Canada', N'YDL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (47, N'Dauphin Barker Airport', N'Dauphin', N'Canada', N'YDN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11752, N'Dolbeau St Felicien Airport', N'Dolbeau-St-F+®licien', N'Canada', N'YDO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5488, N'Nain Airport', N'Nain', N'Canada', N'YDP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (48, N'Dawson Creek Airport', N'Dawson Creek', N'Canada', N'YDQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7273, N'Boundary Bay Airport', N'Boundary Bay', N'Canada', N'YDT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2383, N'Yecheon Airbase', N'Yechon', N'South Korea', N'YEC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (49, N'Edmonton International Airport', N'Edmonton', N'Canada', N'YEG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6785, N'Bursa Yeni+ƒehir Airport', N'Yenisehir', N'Turkey', N'YEI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (50, N'Arviat Airport', N'Eskimo Point', N'Canada', N'YEK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9796, N'Elliot Lake Municipal Airport', N'ELLIOT LAKE', N'Canada', N'YEL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8362, N'Manitoulin East Municipal Airport', N'Manitowaning', N'Canada', N'YEM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (51, N'Estevan Airport', N'Estevan', N'Canada', N'YEN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (486, N'RNAS Yeovilton', N'Yeovilton', N'United Kingdom', N'YEO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5489, N'Fort Severn Airport', N'Fort Severn', N'Canada', N'YER')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7547, N'Yasouj Airport', N'Yasuj', N'Iran', N'YES')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (52, N'Edson Airport', N'Edson', N'Canada', N'YET')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (53, N'Eureka Airport', N'Eureka', N'Canada', N'YEU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (54, N'Inuvik Mike Zubko Airport', N'Inuvik', N'Canada', N'YEV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11753, N'Amos/Magny Airport', N'Amos', N'Canada', N'YEY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5490, N'Fort Albany Airport', N'Fort Albany', N'Canada', N'YFA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (55, N'Iqaluit Airport', N'Iqaluit', N'Canada', N'YFB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (56, N'Fredericton Airport', N'Fredericton', N'Canada', N'YFC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (57, N'Forestville Airport', N'Forestville', N'Canada', N'YFE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5491, N'Fort Hope Airport', N'Fort Hope', N'Canada', N'YFH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7277, N'Wekwe+¿t+¼ Airport', N'Wekweeti', N'Canada', N'YFJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (58, N'Flin Flon Airport', N'Flin Flon', N'Canada', N'YFO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (59, N'Fort Resolution Airport', N'Fort Resolution', N'Canada', N'YFR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (60, N'Fort Simpson Airport', N'Fort Simpson', N'Canada', N'YFS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5459, N'St. Lewis (Fox Harbour) Airport', N'St. Lewis', N'Canada', N'YFX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5493, N'Texada Gillies Bay Airport', N'Texada', N'Canada', N'YGB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7269, N'Ganges Seaplane Base', N'Ganges', N'Canada', N'YGG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4239, N'Fort Good Hope Airport', N'Fort Good Hope', N'Canada', N'YGH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2330, N'Miho Yonago Airport', N'Miho', N'Japan', N'YGJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (61, N'Kingston Norman Rogers Airport', N'Kingston', N'Canada', N'YGK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (62, N'La Grande Rivi+¿re Airport', N'La Grande Riviere', N'Canada', N'YGL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8423, N'Gimli Industrial Park Airport', N'Gimli', N'Canada', N'YGM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5494, N'Gods Lake Narrows Airport', N'Gods Lake Narrows', N'Canada', N'YGO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (63, N'Gasp+® (Michel-Pouliot) Airport', N'Gaspe', N'Canada', N'YGP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (64, N'Geraldton Greenstone Regional Airport', N'Geraldton', N'Canada', N'YGQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (65, N'+Äles-de-la-Madeleine Airport', N'Iles De La Madeleine', N'Canada', N'YGR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5495, N'Igloolik Airport', N'Igloolik', N'Canada', N'YGT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7255, N'Havre St Pierre Airport', N'Havre-Saint-Pierre', N'Canada', N'YGV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5496, N'Kuujjuarapik Airport', N'Kuujjuarapik', N'Canada', N'YGW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5497, N'Gillam Airport', N'Gillam', N'Canada', N'YGX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5498, N'Grise Fiord Airport', N'Grise Fiord', N'Canada', N'YGZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5460, N'Port Hope Simpson Airport', N'Port Hope Simpson', N'Canada', N'YHA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (66, N'Hudson Bay Airport', N'Hudson Bay', N'Canada', N'YHB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (67, N'Dryden Regional Airport', N'Dryden', N'Canada', N'YHD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11755, N'Hope Airport', N'Hope', N'Canada', N'YHE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8357, N'Hearst Ren+® Fontaine Municipal Airport', N'Hearst', N'Canada', N'YHF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (68, N'Ulukhaktok Holman Airport', N'Holman Island', N'Canada', N'YHI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (69, N'Gjoa Haven Airport', N'Gjoa Haven', N'Canada', N'YHK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (70, N'John C. Munro Hamilton International Airport', N'Hamilton', N'Canada', N'YHM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8358, N'Hornepayne Municipal Airport', N'Hornepayne', N'Canada', N'YHN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5502, N'Hopedale Airport', N'Hopedale', N'Canada', N'YHO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5471, N'Poplar Hill Airport', N'Poplar Hill', N'Canada', N'YHP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5503, N'Chevery Airport', N'Chevery', N'Canada', N'YHR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11756, N'Haines Junction Airport', N'Haines Junction', N'Canada', N'YHT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (71, N'Montr+®al / Saint-Hubert Airport', N'Montreal', N'Canada', N'YHU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (72, N'Hay River / Merlyn Carter Airport', N'Hay River', N'Canada', N'YHY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (73, N'Halifax / Stanfield International Airport', N'Halifax', N'Canada', N'YHZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (74, N'Atikokan Municipal Airport', N'Atikokan', N'Canada', N'YIB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9107, N'Yichun Mingyueshan Airport', N'Yichun', N'China', N'YIC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10941, N'Arxan Yi''ershi Airport', N'Arxan', N'China', N'YIE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6789, N'St Augustin Airport', N'St-Augustin', N'Canada', N'YIF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6361, N'Yichang Sanxia Airport', N'Yichang', N'China', N'YIH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5504, N'Ivujivik Airport', N'Ivujivik', N'Canada', N'YIK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6409, N'Yining Airport', N'Yining', N'China', N'YIN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (75, N'Pond Inlet Airport', N'Pond Inlet', N'Canada', N'YIO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3809, N'Willow Run Airport', N'Detroit', N'United States', N'YIP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5505, N'Island Lake Airport', N'Island Lake', N'Canada', N'YIV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6394, N'Yiwu Airport', N'Yiwu', N'China', N'YIW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11758, N'Fort Liard Airport', N'Fort Liard', N'Canada', N'YJF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (76, N'St Jean Airport', N'St. Jean', N'Canada', N'YJN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11583, N'Hinton/Jasper-Hinton Airport', N'Hinton', N'Canada', N'YJP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (77, N'Stephenville Airport', N'Stephenville', N'Canada', N'YJT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (78, N'Kamloops Airport', N'Kamloops', N'Canada', N'YKA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (79, N'Waterloo Airport', N'Waterloo', N'Canada', N'YKF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5481, N'Kangirsuk Airport', N'Kangirsuk', N'Canada', N'YKG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (12056, N'Yingkou Lanqi Airport', N'Yingkou', N'China', N'YKH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11759, N'Key Lake Airport', N'Key Lake', N'Canada', N'YKJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (80, N'Schefferville Airport', N'Schefferville', N'Canada', N'YKL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5779, N'Yakima Air Terminal McAllister Field', N'Yakima', N'United States', N'YKM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8958, N'Chan Gurney Municipal Airport', N'Yankton', N'United States', N'YKN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11357, N'Hakkari Y++ksekova Airport', N'Hakkari', N'Turkey', N'YKO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5507, N'Waskaganish Airport', N'Waskaganish', N'Canada', N'YKQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2923, N'Yakutsk Airport', N'Yakutsk', N'Russia', N'YKS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5472, N'Chisasibi Airport', N'Chisasibi', N'Canada', N'YKU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8359, N'Kirkland Lake Airport', N'Kirkland Lake', N'Canada', N'YKX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (81, N'Kindersley Airport', N'Kindersley', N'Canada', N'YKY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (82, N'Buttonville Municipal Airport', N'Toronto', N'Canada', N'YKZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5509, N'Kimmirut Airport', N'Kimmirut', N'Canada', N'YLC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (83, N'Chapleau Airport', N'Chapleau', N'Canada', N'YLD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5463, N'What+¼ Airport', N'What+¼', N'Canada', N'YLE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5510, N'Lansdowne House Airport', N'Lansdowne House', N'Canada', N'YLH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (464, N'Ylivieska Airfield', N'Ylivieska-raudaskyla', N'Finland', N'YLI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (84, N'Meadow Lake Airport', N'Meadow Lake', N'Canada', N'YLJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9236, N'Barrie-Orillia (Lake Simcoe Regional Airport)', N'Barrie-Orillia', N'Canada', N'YLK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (85, N'Lloydminster Airport', N'Lloydminster', N'Canada', N'YLL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11760, N'Leaf Rapids Airport', N'Leaf Rapids', N'Canada', N'YLR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (86, N'Alert Airport', N'Alert', N'Canada', N'YLT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (87, N'Kelowna International Airport', N'Kelowna', N'Canada', N'YLW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7274, N'Langley Airport', N'Langley Township', N'Canada', N'YLY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (88, N'Mayo Airport', N'Mayo', N'Canada', N'YMA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11761, N'Matane Airport', N'Matane', N'Canada', N'YME')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8360, N'Manitouwadge Airport', N'Manitouwadge', N'Canada', N'YMG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5513, N'Mary''s Harbour Airport', N'Mary''s Harbour', N'Canada', N'YMH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (89, N'Moose Jaw Air Vice Marshal C. M. McEwen Airport', N'Moose Jaw', N'Canada', N'YMJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11762, N'Charlevoix Airport', N'Charlevoix', N'Canada', N'YML')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (90, N'Fort McMurray Airport', N'Fort Mcmurray', N'Canada', N'YMM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5492, N'Makkovik Airport', N'Makkovik', N'Canada', N'YMN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (91, N'Moosonee Airport', N'Moosonee', N'Canada', N'YMO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2797, N'Moises Benzaquen Rengifo Airport', N'Yurimaguas', N'Peru', N'YMS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5514, N'Chapais Airport', N'Chibougamau', N'Canada', N'YMT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (92, N'Maniwaki Airport', N'Maniwaki', N'Canada', N'YMW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (93, N'Montreal International (Mirabel) Airport', N'Montreal', N'Canada', N'YMX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (94, N'Natashquan Airport', N'Natashquan', N'Canada', N'YNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2096, N'Prince Abdulmohsin Bin Abdulaziz Airport', N'Yenbo', N'Saudi Arabia', N'YNB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5516, N'Wemindji Airport', N'Wemindji', N'Canada', N'YNC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (95, N'Ottawa / Gatineau Airport', N'Gatineau', N'Canada', N'YND')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5517, N'Norway House Airport', N'Norway House', N'Canada', N'YNE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3881, N'Youngstown Warren Regional Airport', N'Youngstown', N'United States', N'YNG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6414, N'Yanji Chaoyangchuan Airport', N'Yanji', N'China', N'YNJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5518, N'Points North Landing Airport', N'Points North Landing', N'Canada', N'YNL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (96, N'Matagami Airport', N'Matagami', N'Canada', N'YNM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5467, N'North Spirit Lake Airport', N'North Spirit Lake', N'Canada', N'YNO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7251, N'Natuashish Airport', N'Natuashish', N'Canada', N'YNP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5501, N'Nemiscau Airport', N'Nemiscau', N'Canada', N'YNS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3392, N'Yantai Laishan Airport', N'Yantai', N'China', N'YNT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6006, N'Yangyang International Airport', N'Sokcho / Gangneung', N'South Korea', N'YNY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6393, N'Yancheng Airport', N'Yancheng', N'China', N'YNZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4094, N'Ekati Airport', N'Ekati', N'Canada', N'YOA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (97, N'Old Crow Airport', N'Old Crow', N'Canada', N'YOC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (98, N'CFB Cold Lake', N'Cold Lake', N'Canada', N'YOD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5470, N'Ogoki Post Airport', N'Ogoki Post', N'Canada', N'YOG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5519, N'Oxford House Airport', N'Oxford House', N'Canada', N'YOH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (99, N'High Level Airport', N'High Level', N'Canada', N'YOJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (277, N'Yola Airport', N'Yola', N'Nigeria', N'YOL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7902, N'Toronto/Oshawa Executive Airport', N'Oshawa', N'Canada', N'YOO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7266, N'Rainbow Lake Airport', N'Rainbow Lake', N'Canada', N'YOP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11764, N'Owen Sound / Billy Bishop Regional Airport', N'Owen Sound', N'Canada', N'YOS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (100, N'Ottawa Macdonald-Cartier International Airport', N'Ottawa', N'Canada', N'YOW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (101, N'Prince Albert Glass Field', N'Prince Albert', N'Canada', N'YPA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4244, N'Paulatuk (Nora Aliqatchialuk Ruben) Airport', N'Paulatuk', N'Canada', N'YPC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9247, N'Parry Sound Area Municipal Airport', N'Parry Sound', N'Canada', N'YPD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (102, N'Peace River Airport', N'Peace River', N'Canada', N'YPE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (103, N'Southport Airport', N'Portage-la-prairie', N'Canada', N'YPG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5520, N'Inukjuak Airport', N'Inukjuak', N'Canada', N'YPH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5508, N'Aupaluk Airport', N'Aupaluk', N'Canada', N'YPJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (105, N'Pickle Lake Airport', N'Pickle Lake', N'Canada', N'YPL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5521, N'Pikangikum Airport', N'Pikangikum', N'Canada', N'YPM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (106, N'Port Menier Airport', N'Port Menier', N'Canada', N'YPN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5522, N'Peawanuck Airport', N'Peawanuck', N'Canada', N'YPO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (107, N'Peterborough Airport', N'Peterborough', N'Canada', N'YPQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (108, N'Prince Rupert Airport', N'Prince Pupert', N'Canada', N'YPR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11765, N'Port Hawkesbury Airport', N'Port Hawkesbury', N'Canada', N'YPS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5523, N'Powell River Airport', N'Powell River', N'Canada', N'YPW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6727, N'Puvirnituq Airport', N'Puvirnituq', N'Canada', N'YPX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (109, N'Fort Chipewyan Airport', N'Fort Chipewyan', N'Canada', N'YPY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (110, N'Muskoka Airport', N'Muskoka', N'Canada', N'YQA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (111, N'Quebec Jean Lesage International Airport', N'Quebec', N'Canada', N'YQB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5499, N'Quaqtaq Airport', N'Quaqtaq', N'Canada', N'YQC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5524, N'The Pas Airport', N'The Pas', N'Canada', N'YQD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (112, N'Red Deer Regional Airport', N'Red Deer Industrial', N'Canada', N'YQF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (113, N'Windsor Airport', N'Windsor', N'Canada', N'YQG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (114, N'Watson Lake Airport', N'Watson Lake', N'Canada', N'YQH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7521, N'Yarmouth Airport', N'Yarmouth', N'Canada', N'YQI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (115, N'Kenora Airport', N'Kenora', N'Canada', N'YQK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (116, N'Lethbridge County Airport', N'Lethbridge', N'Canada', N'YQL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (117, N'Greater Moncton International Airport', N'Moncton', N'Canada', N'YQM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5525, N'Nakina Airport', N'Nakina', N'Canada', N'YQN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (119, N'Comox Airport', N'Comox', N'Canada', N'YQQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (120, N'Regina International Airport', N'Regina', N'Canada', N'YQR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11766, N'St Thomas Municipal Airport', N'St Thomas', N'Canada', N'YQS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (121, N'Thunder Bay Airport', N'Thunder Bay', N'Canada', N'YQT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (122, N'Grande Prairie Airport', N'Grande Prairie', N'Canada', N'YQU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (123, N'Yorkton Municipal Airport', N'Yorkton', N'Canada', N'YQV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (124, N'North Battleford Airport', N'North Battleford', N'Canada', N'YQW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (125, N'Gander International Airport', N'Gander', N'Canada', N'YQX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (126, N'Sydney / J.A. Douglas McCurdy Airport', N'Sydney', N'Canada', N'YQY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (127, N'Quesnel Airport', N'Quesnel', N'Canada', N'YQZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5526, N'Rae Lakes Airport', N'Gam+¿t+¼', N'Canada', N'YRA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (128, N'Resolute Bay Airport', N'Resolute', N'Canada', N'YRB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5486, N'Cartwright Airport', N'Cartwright', N'Canada', N'YRF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5461, N'Rigolet Airport', N'Rigolet', N'Canada', N'YRG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (129, N'Rivi+¿re-du-Loup Airport', N'Riviere Du Loup', N'Canada', N'YRI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (130, N'Roberval Airport', N'Roberval', N'Canada', N'YRJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5527, N'Red Lake Airport', N'Red Lake', N'Canada', N'YRL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (131, N'Rocky Mountain House Airport', N'Rocky Mountain House', N'Canada', N'YRM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11767, N'Ottawa / Rockcliffe Airport', N'Ottawa', N'Canada', N'YRO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8663, N'Trois-Rivi+¿res Airport', N'Trois Rivieres', N'Canada', N'YRQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7265, N'Red Sucker Lake Airport', N'Red Sucker Lake', N'Canada', N'YRS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (132, N'Rankin Inlet Airport', N'Rankin Inlet', N'Canada', N'YRT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8033, N'Revelstoke Airport', N'Revelstoke', N'Canada', N'YRV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (133, N'Sudbury Airport', N'Sudbury', N'Canada', N'YSB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (134, N'Sherbrooke Airport', N'Sherbrooke', N'Canada', N'YSC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8149, N'Suffield Heliport', N'Suffield', N'Canada', N'YSD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11722, N'Squamish Airport', N'Squamish', N'Canada', N'YSE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5528, N'Stony Rapids Airport', N'Stony Rapids', N'Canada', N'YSF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13711, N'Lutselk''e Airport', N'Lutselk''e', N'Canada', N'YSG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11769, N'Smiths Falls-Montague (Russ Beach) Airport', N'Smiths Falls', N'Canada', N'YSH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (135, N'Saint John Airport', N'St. John', N'Canada', N'YSJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5529, N'Sanikiluaq Airport', N'Sanikiluaq', N'Canada', N'YSK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11770, N'St Leonard Airport', N'St Leonard', N'Canada', N'YSL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (136, N'Fort Smith Airport', N'Fort Smith', N'Canada', N'YSM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11774, N'Shuswap Regional Airport', N'Salmon Arm', N'Canada', N'YSN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7252, N'Postville Airport', N'Postville', N'Canada', N'YSO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8356, N'Marathon Airport', N'Marathon', N'Canada', N'YSP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13473, N'Songyuan Chaganhu Airport', N'Songyuan', N'China', N'YSQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (137, N'Nanisivik Airport', N'Nanisivik', N'Canada', N'YSR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5530, N'St. Theresa Point Airport', N'St. Theresa Point', N'Canada', N'YST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (138, N'Summerside Airport', N'Summerside', N'Canada', N'YSU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (139, N'Sachs Harbour (David Nasogaluak Jr. Saaryuaq) Airport', N'Sachs Harbour', N'Canada', N'YSY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8147, N'Pembroke Airport', N'Pembroke', N'Canada', N'YTA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11779, N'Thicket Portage Airport', N'Thicket Portage', N'Canada', N'YTD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (140, N'Cape Dorset Airport', N'Cape Dorset', N'Canada', N'YTE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7254, N'Alma Airport', N'Alma', N'Canada', N'YTF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (141, N'Thompson Airport', N'Thompson', N'Canada', N'YTH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5531, N'Big Trout Lake Airport', N'Big Trout Lake', N'Canada', N'YTL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7060, N'La Macaza / Mont-Tremblant International Inc Airport', N'Mont-Tremblant', N'Canada', N'YTM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6728, N'Tasiujaq Airport', N'Tasiujaq', N'Canada', N'YTQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (142, N'CFB Trenton', N'Trenton', N'Canada', N'YTR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (143, N'Timmins/Victor M. Power', N'Timmins', N'Canada', N'YTS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8876, N'Yangzhou Taizhou Airport', N'Yangzhou', N'China', N'YTY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (144, N'Billy Bishop Toronto City Centre Airport', N'Toronto', N'Canada', N'YTZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (14090, N'Yuanmou Air Base', N'Yuanmou', N'China', N'YUA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (145, N'Tuktoyaktuk Airport', N'Tuktoyaktuk', N'Canada', N'YUB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5515, N'Umiujaq Airport', N'Umiujaq', N'Canada', N'YUD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8395, N'Yuendumu Airport', N'Yuendumu ', N'Australia', N'YUE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (146, N'Montreal / Pierre Elliott Trudeau International Airport', N'Montreal', N'Canada', N'YUL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3596, N'Yuma MCAS/Yuma International Airport', N'Yuma', N'United States', N'YUM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7894, N'Yushu Batang Airport', N'Yushu', N'China', N'YUS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (147, N'Repulse Bay Airport', N'Repulse Bay', N'Canada', N'YUT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (148, N'Hall Beach Airport', N'Hall Beach', N'Canada', N'YUX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (149, N'Rouyn Noranda Airport', N'Rouyn', N'Canada', N'YUY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5614, N'Iconi Airport', N'Moroni', N'Comoros', N'YVA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6775, N'Bonaventure Airport', N'Bonaventure', N'Canada', N'YVB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (150, N'La Ronge Airport', N'La Ronge', N'Canada', N'YVC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11772, N'Vernon Airport', N'Vernon', N'Canada', N'YVE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (151, N'Vermilion Airport', N'Vermillion', N'Canada', N'YVG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (152, N'Qikiqtarjuaq Airport', N'Broughton Island', N'Canada', N'YVM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (153, N'Val-d''Or Airport', N'Val D''or', N'Canada', N'YVO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (154, N'Kuujjuaq Airport', N'Quujjuaq', N'Canada', N'YVP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (155, N'Norman Wells Airport', N'Norman Wells', N'Canada', N'YVQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (156, N'Vancouver International Airport', N'Vancouver', N'Canada', N'YVR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (157, N'Buffalo Narrows Airport', N'Buffalo Narrows', N'Canada', N'YVT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (158, N'Wiarton Airport', N'Wiarton', N'Canada', N'YVV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5532, N'Deer Lake Airport', N'Deer Lake', N'Canada', N'YVZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (159, N'Petawawa Airport', N'Petawawa', N'Canada', N'YWA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7253, N'Kangiqsujuaq (Wakeham Bay) Airport', N'Kangiqsujuaq', N'Canada', N'YWB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (160, N'Winnipeg / James Armstrong Richardson International Airport', N'Winnipeg', N'Canada', N'YWG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4106, N'Victoria Harbour Seaplane Base', N'Victoria', N'Canada', N'YWH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4237, N'D+®line Airport', N'Deline', N'Canada', N'YWJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (161, N'Wabush Airport', N'Wabush', N'Canada', N'YWK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (162, N'Williams Lake Airport', N'Williams Lake', N'Canada', N'YWL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5458, N'Williams Harbour Airport', N'Williams Harbour', N'Canada', N'YWM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5533, N'Webequie Airport', N'Webequie', N'Canada', N'YWP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5456, N'Whistler/Green Lake Water Aerodrome', N'Whistler', N'Canada', N'YWS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (163, N'Wrigley Airport', N'Wrigley', N'Canada', N'YWY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (164, N'Cranbrook/Canadian Rockies International Airport', N'Cranbrook', N'Canada', N'YXC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (165, N'Edmonton City Centre (Blatchford Field) Airport', N'Edmonton', N'Canada', N'YXD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (166, N'Saskatoon John G. Diefenbaker International Airport', N'Saskatoon', N'Canada', N'YXE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (167, N'Medicine Hat Airport', N'Medicine Hat', N'Canada', N'YXH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (168, N'Fort St John Airport', N'Fort Saint John', N'Canada', N'YXJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7256, N'Rimouski Airport', N'Rimouski', N'Canada', N'YXK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (169, N'Sioux Lookout Airport', N'Sioux Lookout', N'Canada', N'YXL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5534, N'Whale Cove Airport', N'Whale Cove', N'Canada', N'YXN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (170, N'Pangnirtung Airport', N'Pangnirtung', N'Canada', N'YXP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11773, N'Beaver Creek Airport', N'Beaver Creek', N'Canada', N'YXQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (171, N'Earlton (Timiskaming Regional) Airport', N'Earlton', N'Canada', N'YXR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (172, N'Prince George Airport', N'Prince George', N'Canada', N'YXS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (173, N'Northwest Regional Airport Terrace-Kitimat', N'Terrace', N'Canada', N'YXT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (174, N'London Airport', N'London', N'Canada', N'YXU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (175, N'Abbotsford Airport', N'Abbotsford', N'Canada', N'YXX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (176, N'Whitehorse / Erik Nielsen International Airport', N'Whitehorse', N'Canada', N'YXY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8361, N'Wawa Airport', N'Wawa', N'Canada', N'YXZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (177, N'North Bay Jack Garland Airport', N'North Bay', N'Canada', N'YYB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (178, N'Calgary International Airport', N'Calgary', N'Canada', N'YYC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (179, N'Smithers Airport', N'Smithers', N'Canada', N'YYD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (180, N'Fort Nelson Airport', N'Fort Nelson', N'Canada', N'YYE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (181, N'Penticton Airport', N'Penticton', N'Canada', N'YYF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (182, N'Charlottetown Airport', N'Charlottetown', N'Canada', N'YYG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (183, N'Taloyoak Airport', N'Spence Bay', N'Canada', N'YYH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (184, N'Victoria International Airport', N'Victoria', N'Canada', N'YYJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (185, N'Lynn Lake Airport', N'Lynn Lake', N'Canada', N'YYL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (186, N'Swift Current Airport', N'Swift Current', N'Canada', N'YYN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (187, N'Churchill Airport', N'Churchill', N'Canada', N'YYQ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (188, N'Goose Bay Airport', N'Goose Bay', N'Canada', N'YYR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (189, N'St. John''s International Airport', N'St. John''s', N'Canada', N'YYT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (190, N'Kapuskasing Airport', N'Kapuskasing', N'Canada', N'YYU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (191, N'Armstrong Airport', N'Armstrong', N'Canada', N'YYW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (192, N'Mont Joli Airport', N'Mont Joli', N'Canada', N'YYY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (193, N'Lester B. Pearson International Airport', N'Toronto', N'Canada', N'YYZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (194, N'Downsview Airport', N'Toronto', N'Canada', N'YZD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (195, N'Gore Bay Manitoulin Airport', N'Gore Bay', N'Canada', N'YZE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (196, N'Yellowknife Airport', N'Yellowknife', N'Canada', N'YZF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5535, N'Salluit Airport', N'Salluit', N'Canada', N'YZG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (197, N'Slave Lake Airport', N'Slave Lake', N'Canada', N'YZH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (198, N'Sandspit Airport', N'Sandspit', N'Canada', N'YZP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (199, N'Chris Hadfield Airport', N'Sarnia', N'Canada', N'YZR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (41, N'Coral Harbour Airport', N'Coral Harbour', N'Canada', N'YZS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (200, N'Port Hardy Airport', N'Port Hardy', N'Canada', N'YZT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (201, N'Whitecourt Airport', N'Whitecourt', N'Canada', N'YZU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (202, N'Sept-+Äles Airport', N'Sept-iles', N'Canada', N'YZV')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (203, N'Teslin Airport', N'Teslin', N'Canada', N'YZW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (204, N'CFB Greenwood', N'Greenwood', N'Canada', N'YZX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9770, N'Zhangye Ganzhou Airport', N'Zhangye', N'China', N'YZY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8223, N'Trail Airport', N'Trail', N'Canada', N'YZZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5536, N'York Landing Airport', N'York Landing', N'Canada', N'ZAC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1209, N'Zadar Airport', N'Zadar', N'Croatia', N'ZAD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1208, N'Zagreb Airport', N'Zagreb', N'Croatia', N'ZAG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2167, N'Zahedan International Airport', N'Zahedan', N'Iran', N'ZAH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7500, N'Zaranj Airport', N'Zaranj', N'Afghanistan', N'ZAJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2667, N'Pichoy Airport', N'Valdivia', N'Chile', N'ZAL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2404, N'Zamboanga International Airport', N'Zamboanga', N'Philippines', N'ZAM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1281, N'Cahors-Lalbenque Airport', N'Cahors', N'France', N'ZAO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (278, N'Zaria Airport', N'Zaria', N'Nigeria', N'ZAR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6378, N'Zhaotong Airport', N'Zhaotong', N'China', N'ZAT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1252, N'Zaragoza Air Base', N'Zaragoza', N'Spain', N'ZAZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5538, N'Bathurst Airport', N'Bathurst', N'Canada', N'ZBF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8963, N'Bromont (Roland Desourdy) Airport', N'Bromont', N'Canada', N'ZBM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13210, N'Bowen Airport', N'Bowen', N'Australia', N'ZBO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2166, N'Konarak Airport', N'Chah Bahar', N'Iran', N'ZBR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13566, N'Sayaboury Airport', N'Sainyabuli', N'Laos', N'ZBY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1855, N'General Leobardo C. Ruiz International Airport', N'Zacatecas', N'Mexico', N'ZCL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (755, N'Celle Airport', N'Celle', N'Germany', N'ZCN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13754, N'La Araucan+¡a Airport', N'Temuco', N'Chile', N'ZCO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (853, N'Secunda Airport', N'Secunda', N'South Africa', N'ZEC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5539, N'Eastmain River Airport', N'Eastmain River', N'Canada', N'ZEM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3067, N'Ziro Airport', N'Zero', N'India', N'ZER')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (205, N'Faro Airport', N'Faro', N'Canada', N'ZFA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5540, N'Fond-Du-Lac Airport', N'Fond-Du-Lac', N'Canada', N'ZFD')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (206, N'Fort Mcpherson Airport', N'Fort Mcpherson', N'Canada', N'ZFM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (4238, N'Tulita Airport', N'Tulita', N'Canada', N'ZFN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11777, N'Grand Forks Airport', N'Grand Forks', N'Canada', N'ZGF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5541, N'Gods River Airport', N'Gods River', N'Canada', N'ZGI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7263, N'Little Grand Rapids Airport', N'Little Grand Rapids', N'Canada', N'ZGR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8216, N'La Romaine Airport', N'La Romaine', N'Canada', N'ZGS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5906, N'Gaua Island Airport', N'Gaua Island', N'Vanuatu', N'ZGU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6357, N'Zhanjiang Airport', N'Zhanjiang', N'China', N'ZHA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1677, N'Grenchen Airport', N'Grenchen', N'Switzerland', N'ZHI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8043, N'Zhongwei Shapotou Airport', N'Zhongwei', N'China', N'ZHY')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6934, N'Zhukovsky International Airport', N'Ramenskoe', N'Russia', N'ZIA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11936, N'Victoria Airport', N'Victoria', N'Chile', N'ZIC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1081, N'Ziguinchor Airport', N'Ziguinchor', N'Senegal', N'ZIG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1856, N'Ixtapa Zihuatanejo International Airport', N'Zihuatanejo', N'Mexico', N'ZIH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7027, N'Interlaken Air Base', N'Interlaken', N'Switzerland', N'ZIN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (13451, N'Alzintan Airport', N'Zintan', N'Libya', N'ZIS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11992, N'Zhigansk Airport', N'Zhigansk', N'Russia', N'ZIX')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11778, N'Jenpeg Airport', N'Jenpeg', N'Canada', N'ZJG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6930, N'Locarno Airport', N'Locarno', N'Switzerland', N'ZJI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5542, N'Swan River Airport', N'Swan River', N'Canada', N'ZJN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7830, N'Kasaba Bay Airport', N'Kasaba Bay', N'Zambia', N'ZKB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5543, N'Kashechewan Airport', N'Kashechewan', N'Canada', N'ZKE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8217, N'Kegaska Airport', N'Kegaska', N'Canada', N'ZKG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9373, N'Zyryanka Airport', N'Zyryanka', N'Russia', N'ZKP')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1858, N'Playa De Oro International Airport', N'Manzanillo', N'Mexico', N'ZLO')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5474, N'La Tabati+¿re Airport', N'La Tabati+¿re', N'Canada', N'ZLT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (332, N'Magdeburg City Airport', N'Magdeburg', N'Germany', N'ZMG')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8404, N'South Cariboo Region / 108 Mile Airport', N'108 Mile Ranch', N'Canada', N'ZMH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1857, N'Zamora Airport', N'Zamora', N'Mexico', N'ZMM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5545, N'Masset Airport', N'Masset', N'Canada', N'ZMT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7268, N'Nanaimo Harbour Water Airport', N'Nanaimo', N'Canada', N'ZNA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (285, N'Zinder Airport', N'Zinder', N'Niger', N'ZND')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6310, N'Newman Airport', N'Newman', N'Australia', N'ZNE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (764, N'Hanau Army Air Field', N'Hanau', N'Germany', N'ZNF')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1186, N'Abeid Amani Karume International Airport', N'Zanzibar', N'Tanzania', N'ZNZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2658, N'Ca+¦al Bajo Carlos - Hott Siebert Airport', N'Osorno', N'Chile', N'ZOS')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5546, N'Sachigo Lake Airport', N'Sachigo Lake', N'Canada', N'ZPB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6043, N'Puc+¦n Airport', N'Pucon', N'Chile', N'ZPC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8509, N'Zephyrhills Municipal Airport', N'Zephyrhills', N'United States', N'ZPH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (394, N'Donaueschingen-Villingen Airport', N'Donaueschingen', N'Germany', N'ZQL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (2030, N'Queenstown International Airport', N'Queenstown International', N'New Zealand', N'ZQN')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (393, N'Zweibr++cken Airport', N'Zweibruecken', N'Germany', N'ZQW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (10940, N'Zhangjiakou Ningyuan Airport', N'Zhangjiakou', N'China', N'ZQZ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1678, N'Z++rich Airport', N'Zurich', N'Switzerland', N'ZRH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5547, N'Round Lake (Weagamow Lake) Airport', N'Round Lake', N'Canada', N'ZRJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1956, N'San Salvador Airport', N'Cockburn Town', N'Bahamas', N'ZSA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (917, N'Pierrefonds Airport', N'St.-pierre', N'Reunion', N'ZSE')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5548, N'Sandy Lake Airport', N'Sandy Lake', N'Canada', N'ZSJ')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11783, N'Stewart Airport', N'Stewart', N'Canada', N'ZST')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7012, N'Prince Rupert/Seal Cove Seaplane Base', N'Prince Rupert', N'Canada', N'ZSW')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (7946, N'Tureia Airport', N'Tureia', N'French Polynesia', N'ZTA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5473, N'T+¬te-+á-la-Baleine Airport', N'T+¬te-+á-la-Baleine', N'Canada', N'ZTB')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1488, N'Zakynthos International Airport Dionysios Solomos', N'Zakynthos', N'Greece', N'ZTH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5549, N'Shamattawa Airport', N'Shamattawa', N'Canada', N'ZTM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8946, N'Zhytomyr Airport', N'Zhytomyr', N'Ukraine', N'ZTR')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (8776, N'Zaqatala International Airport', N'Zaqatala', N'Azerbaijan', N'ZTU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11784, N'Ignace Municipal Airport', N'Ignace', N'Canada', N'ZUC')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (6355, N'Zhuhai Jinwan Airport', N'Zhuhai', N'China', N'ZUH')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5550, N'Churchill Falls Airport', N'Churchill Falls', N'Canada', N'ZUM')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (919, N'Miandrivazo Airport', N'Miandrivazo', N'Madagascar', N'ZVA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3118, N'Savannakhet Airport', N'Savannakhet', N'Laos', N'ZVK')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (925, N'Andapa Airport', N'Andapa', N'Madagascar', N'ZWA')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (5551, N'Wollaston Lake Airport', N'Wollaston Lake', N'Canada', N'ZWL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (14087, N'Zabrat Airport', N'Baku', N'Azerbaijan', N'ZXT')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (9846, N'Zunyi Xinzhou Airport', N'Zunyi', N'China', N'ZYI')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (3074, N'Osmany International Airport', N'Sylhet Osmani', N'Bangladesh', N'ZYL')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (1017, N'Mzuzu Airport', N'Mzuzu', N'Malawi', N'ZZU')
GO
INSERT [dbo].[Cities] ([id], [airport], [city], [country], [iataCode]) VALUES (11868, N'Zanesville Municipal Airport', N'Zanesville', N'United States', N'ZZV')
GO
SET IDENTITY_INSERT [dbo].[Flights] ON 
GO
INSERT [dbo].[Flights] ([Id], [Origin], [Destination], [DepartureDate], [ArrivalDate], [TicketsPurchased], [PurchaseDate], [UserId]) VALUES (2, N'PTY', N'BOG', N'2024-07-23 a las 17:40:00', N'2024-07-23 a las 19:15:00', 0, CAST(N'2024-07-22T21:53:16.7064221' AS DateTime2), N'f45ad72a-704e-4344-a20c-1968616e3af4')
GO
INSERT [dbo].[Flights] ([Id], [Origin], [Destination], [DepartureDate], [ArrivalDate], [TicketsPurchased], [PurchaseDate], [UserId]) VALUES (3, N'BOG', N'SJO', N'2024-07-23 a las 23:10:00', N'2024-07-24 a las 00:20:00', 0, CAST(N'2024-07-22T21:53:16.7768502' AS DateTime2), N'f45ad72a-704e-4344-a20c-1968616e3af4')
GO
INSERT [dbo].[Flights] ([Id], [Origin], [Destination], [DepartureDate], [ArrivalDate], [TicketsPurchased], [PurchaseDate], [UserId]) VALUES (4, N'PTY', N'BOG', N'2024-07-23 a las 21:40:00', N'2024-07-23 a las 23:14:00', 0, CAST(N'2024-07-22T21:53:16.7783387' AS DateTime2), N'f45ad72a-704e-4344-a20c-1968616e3af4')
GO
INSERT [dbo].[Flights] ([Id], [Origin], [Destination], [DepartureDate], [ArrivalDate], [TicketsPurchased], [PurchaseDate], [UserId]) VALUES (5, N'BOG', N'GUA', N'2024-07-24 a las 13:50:00', N'2024-07-24 a las 16:05:00', 0, CAST(N'2024-07-22T21:53:16.7784377' AS DateTime2), N'f45ad72a-704e-4344-a20c-1968616e3af4')
GO
INSERT [dbo].[Flights] ([Id], [Origin], [Destination], [DepartureDate], [ArrivalDate], [TicketsPurchased], [PurchaseDate], [UserId]) VALUES (6, N'CDG', N'MUC', N'2024-07-23 a las 20:35:00', N'2024-07-23 a las 22:05:00', 0, CAST(N'2024-07-22T23:08:36.4065553' AS DateTime2), N'f45ad72a-704e-4344-a20c-1968616e3af4')
GO
INSERT [dbo].[Flights] ([Id], [Origin], [Destination], [DepartureDate], [ArrivalDate], [TicketsPurchased], [PurchaseDate], [UserId]) VALUES (7, N'MUC', N'TXL', N'2024-07-24 a las 11:00:00', N'2024-07-24 a las 11:50:00', 0, CAST(N'2024-07-22T23:08:36.4139011' AS DateTime2), N'f45ad72a-704e-4344-a20c-1968616e3af4')
GO
SET IDENTITY_INSERT [dbo].[Flights] OFF
GO
SET IDENTITY_INSERT [dbo].[MealPreferences] ON 
GO
INSERT [dbo].[MealPreferences] ([Id], [Name]) VALUES (1, N'Vegetariana')
GO
INSERT [dbo].[MealPreferences] ([Id], [Name]) VALUES (2, N'Vegana')
GO
INSERT [dbo].[MealPreferences] ([Id], [Name]) VALUES (3, N'Sin Gluten')
GO
INSERT [dbo].[MealPreferences] ([Id], [Name]) VALUES (4, N'Estándar')
GO
SET IDENTITY_INSERT [dbo].[MealPreferences] OFF
GO
SET IDENTITY_INSERT [dbo].[SeatPreferences] ON 
GO
INSERT [dbo].[SeatPreferences] ([Id], [Name]) VALUES (1, N'Ventana')
GO
INSERT [dbo].[SeatPreferences] ([Id], [Name]) VALUES (2, N'Pasillo')
GO
INSERT [dbo].[SeatPreferences] ([Id], [Name]) VALUES (3, N'Centro')
GO
SET IDENTITY_INSERT [dbo].[SeatPreferences] OFF
GO
SET IDENTITY_INSERT [dbo].[TravelPreferences] ON 
GO
INSERT [dbo].[TravelPreferences] ([Id], [UserId], [PreferredSeat], [PreferredMeal], [PreferredAirline]) VALUES (1, N'81fe36d2-ce4c-4d1b-862c-ac603998e29a', 1, 4, 2)
GO
SET IDENTITY_INSERT [dbo].[TravelPreferences] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 26/07/2024 07:40:25 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 26/07/2024 07:40:25 a. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 26/07/2024 07:40:25 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 26/07/2024 07:40:25 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 26/07/2024 07:40:25 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 26/07/2024 07:40:25 a. m. ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 26/07/2024 07:40:25 a. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reservations_FlightId]    Script Date: 26/07/2024 07:40:25 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_Reservations_FlightId] ON [dbo].[Reservations]
(
	[FlightId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[Flights_respaldo] ADD  DEFAULT (getdate()) FOR [PurchaseDate]
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
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Flights_respaldo]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_UserId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Flights_respaldo] CHECK CONSTRAINT [FK_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[FlightSegments]  WITH CHECK ADD FOREIGN KEY([FlightId])
REFERENCES [dbo].[Flights] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_Flights_FlightId] FOREIGN KEY([FlightId])
REFERENCES [dbo].[Flights_respaldo] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_Flights_FlightId]
GO
ALTER TABLE [dbo].[TravelPreferences]  WITH CHECK ADD  CONSTRAINT [FK_TravelPreferences_Airline] FOREIGN KEY([PreferredAirline])
REFERENCES [dbo].[AirlinePreferences] ([Id])
GO
ALTER TABLE [dbo].[TravelPreferences] CHECK CONSTRAINT [FK_TravelPreferences_Airline]
GO
ALTER TABLE [dbo].[TravelPreferences]  WITH CHECK ADD  CONSTRAINT [FK_TravelPreferences_Meal] FOREIGN KEY([PreferredMeal])
REFERENCES [dbo].[MealPreferences] ([Id])
GO
ALTER TABLE [dbo].[TravelPreferences] CHECK CONSTRAINT [FK_TravelPreferences_Meal]
GO
ALTER TABLE [dbo].[TravelPreferences]  WITH CHECK ADD  CONSTRAINT [FK_TravelPreferences_Seat] FOREIGN KEY([PreferredSeat])
REFERENCES [dbo].[SeatPreferences] ([Id])
GO
ALTER TABLE [dbo].[TravelPreferences] CHECK CONSTRAINT [FK_TravelPreferences_Seat]
GO
ALTER TABLE [dbo].[TravelPreferences]  WITH CHECK ADD  CONSTRAINT [FK_TravelPreferences_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[TravelPreferences] CHECK CONSTRAINT [FK_TravelPreferences_Users]
GO
USE [master]
GO
ALTER DATABASE [TravelReservation] SET  READ_WRITE 
GO
