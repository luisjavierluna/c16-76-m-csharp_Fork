USE [master]
GO
/****** Object:  Database [TestEGDB]    Script Date: 05/03/2024 10:13:14 a. m. ******/
CREATE DATABASE [TestEGDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TestEGDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TestEGDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TestEGDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TestEGDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TestEGDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TestEGDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TestEGDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TestEGDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TestEGDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TestEGDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TestEGDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TestEGDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TestEGDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TestEGDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TestEGDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TestEGDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TestEGDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TestEGDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TestEGDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TestEGDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TestEGDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TestEGDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TestEGDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TestEGDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TestEGDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TestEGDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TestEGDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TestEGDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TestEGDB] SET RECOVERY FULL 
GO
ALTER DATABASE [TestEGDB] SET  MULTI_USER 
GO
ALTER DATABASE [TestEGDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TestEGDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TestEGDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TestEGDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TestEGDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TestEGDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TestEGDB', N'ON'
GO
ALTER DATABASE [TestEGDB] SET QUERY_STORE = OFF
GO
USE [TestEGDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 05/03/2024 10:13:14 a. m. ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 05/03/2024 10:13:14 a. m. ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 05/03/2024 10:13:14 a. m. ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 05/03/2024 10:13:14 a. m. ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 05/03/2024 10:13:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 05/03/2024 10:13:14 a. m. ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 05/03/2024 10:13:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 05/03/2024 10:13:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assignments]    Script Date: 05/03/2024 10:13:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignments](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[StatusId] [nvarchar](450) NOT NULL,
	[ProfileId] [nvarchar](450) NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NOT NULL,
	[LastModifiedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Assignments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssignmentStatus]    Script Date: 05/03/2024 10:13:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignmentStatus](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NOT NULL,
	[LastModifiedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_AssignmentStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BenefitsSummaries]    Script Date: 05/03/2024 10:13:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenefitsSummaries](
	[Id] [nvarchar](450) NOT NULL,
	[IncludesBonusA] [bit] NOT NULL,
	[BonusA] [float] NOT NULL,
	[IncludesBonusB] [bit] NOT NULL,
	[BonusB] [float] NOT NULL,
	[IncludesBonusC] [bit] NOT NULL,
	[BonusC] [float] NOT NULL,
	[Holidays] [int] NOT NULL,
	[HasHealthCare] [bit] NOT NULL,
	[ProfileId] [nvarchar](450) NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NOT NULL,
	[LastModifiedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_BenefitsSummaries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 05/03/2024 10:13:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[Id] [nvarchar](450) NOT NULL,
	[DaysAmount] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[StatusId] [nvarchar](450) NOT NULL,
	[ProfileId] [nvarchar](450) NOT NULL,
	[TypeId] [nvarchar](450) NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NOT NULL,
	[LastModifiedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionStatus]    Script Date: 05/03/2024 10:13:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionStatus](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NOT NULL,
	[LastModifiedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_PermissionStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionTypes]    Script Date: 05/03/2024 10:13:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionTypes](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[LimitDays] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NOT NULL,
	[LastModifiedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_PermissionTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 05/03/2024 10:13:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[Id] [nvarchar](450) NOT NULL,
	[Assists] [int] NOT NULL,
	[Absences] [int] NOT NULL,
	[Delays] [int] NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[Municipality] [nvarchar](max) NOT NULL,
	[Salary] [float] NOT NULL,
	[AdmissionDate] [nvarchar](max) NOT NULL,
	[AppUserId] [nvarchar](450) NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NOT NULL,
	[LastModifiedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reports]    Script Date: 05/03/2024 10:13:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[Id] [nvarchar](450) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Performance] [int] NOT NULL,
	[AchivedGoals] [float] NOT NULL,
	[SavedMoney] [float] NOT NULL,
	[ProfileId] [nvarchar](450) NOT NULL,
	[Comments] [nvarchar](max) NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NOT NULL,
	[LastModifiedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240303174433_initialMigration', N'6.0.26')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'41382b69-eb77-4e8b-ae6c-096945cb14d6', N'Coordinator', N'COORDINATOR', N'30a3321d-b473-455f-9a72-b8d6b9d67a7c')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'4da300f4-1a8c-4e73-bf34-97abd347869c', N'Manager', N'MANAGER', N'2c9c0b3c-eeff-40e3-a744-28b86ba2d7a7')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'68a2b4b0-ac08-464b-b29b-6ee819b06435', N'Admin', N'ADMIN', N'cacc89a2-27d2-4cb4-9bd5-a7c8130584e2')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c', N'Employee', N'EMPLOYEE', N'80cf64a0-6af1-4b9c-9f47-ad501f5a2f8d')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'aba5462d-8a5f-403a-acf3-6ec89713d878', N'41382b69-eb77-4e8b-ae6c-096945cb14d6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'aba5462d-8a5f-403a-acf3-6ec89713d878', N'4da300f4-1a8c-4e73-bf34-97abd347869c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'aba5462d-8a5f-403a-acf3-6ec89713d878', N'68a2b4b0-ac08-464b-b29b-6ee819b06435')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'03e38b5d-b36f-4529-99ac-c9f2839af08a', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'12473c73-2e0b-4b1e-9e94-ba5dd809b38a', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'12d9b5ce-8127-4867-8e55-bf2b1114f644', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1a4fc4b3-a40f-4bf6-bc77-aac39a304f6d', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'22615269-ab18-4e13-b762-06e3855d9b5a', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'262a6996-8339-4687-bbc4-42adb0d5eb1a', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2abc0a21-fe76-4667-b91b-6948334b042f', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2f3cf99f-8d7b-44e2-8048-8753d8b302b4', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'32e2dcfd-e550-4e85-9472-42ed4119a7e5', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3ce76485-762c-48d0-bb55-63e34a7a73c1', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3d9bf989-398f-4bc1-b303-ea4c62c3ef8a', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43c4ba23-bb84-4390-921b-d6b5a105237d', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'46a127bb-2f9b-45c4-954f-07e9665ba51f', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4a7b4fb7-9f9a-4bbd-a0cc-3fe100e2585f', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'57cf9de1-bba5-4445-bf04-b49061431fa8', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5d8214e2-43a3-43f6-9629-d81e40c9a0ff', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5f76a601-feb0-483a-8266-cfa482cd5347', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5f81d70d-e55d-49bf-b0bc-03ed3a2adf1b', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'60f2afe2-c09d-45f6-8afd-dcbf44aa0d2f', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'730e538e-f684-4e4d-a91c-a008cac55fb2', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9420b81b-0cf5-45ad-b725-9a926c6a690c', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'95b95504-9098-4e59-89a5-fafdfe132e26', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'98c92d4e-1bbe-4a0d-b799-bae5d6ed2736', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'aba5462d-8a5f-403a-acf3-6ec89713d878', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b32a26de-534b-4659-9cc1-ceb41da0b76d', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bafeff47-455b-41af-ab19-b62f072e3df9', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bd7062a9-60fa-4fb3-9785-b5630da181ec', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c11095fc-2262-4332-8c8f-e94ca1549449', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c11b0ce2-e42f-431c-8e9a-6666b66c6445', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c218b530-7a8b-416c-a95c-c768fb0daaea', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c799bdc3-1607-439a-af80-80136ef091cb', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cc98144b-9f3c-441b-bcec-a17a255c4827', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd210608f-7528-435a-b4f9-9c29c21124a9', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd9b2ea07-9079-45b0-81f4-b293eda6dd2a', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'dd30fe54-a3b7-4aee-b205-881ce3295632', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e3214efe-c22d-4099-a946-ae6344ab0a57', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ea881ee2-4809-4413-83c5-154f459816f5', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ee9944cf-f5f9-4045-a635-8feebe7f3cc3', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'efcd72d8-718d-4a79-b4e3-c7b3959e56ab', N'da5ef6d8-1a35-4ecd-b5d7-03db34023e9c')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'03e38b5d-b36f-4529-99ac-c9f2839af08a', N'Samuel', N'Torres', 0, N'samuel_t', N'SAMUEL_T', N'samuel.torres@example.com', N'SAMUEL.TORRES@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEOI+uJr+nCVDyDX6Myusnr5gOOq/x0+Ka5tZKrBuazm7RL58DBBvIbZMx8ua+e7pEg==', N'DNPMHVFRFAN6QYWDCHXNZB4W2LRNBK3H', N'bf4a9aac-f2e0-40e3-9e25-73b5695249cf', N'555-3141', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'12473c73-2e0b-4b1e-9e94-ba5dd809b38a', N'Henry', N'Martinez', 0, N'henry_m', N'HENRY_M', N'henry.martinez@example.com', N'HENRY.MARTINEZ@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEMP/8NCOl+u7Zc+RQk6hwiNYqX2K2njfI9ih05xiyzB3hp6cp+YdxGm5S4o4G3jPMw==', N'EGYASF3AE4YFJOLLTLDMULLV5QCVERID', N'a2927c75-f2aa-4fdf-bfd3-2abf4881ded8', N'555-3141', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'12d9b5ce-8127-4867-8e55-bf2b1114f644', N'Grace', N'Choi', 0, N'grace_c', N'GRACE_C', N'grace.choi@example.com', N'GRACE.CHOI@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEKWBIffgV/VWSpt07QNc+Uy2w47X9V7AwwdLxKOlwru+CHt8ERJ/GqA+iYHWZp8NNw==', N'A22AZEAFIITHPLBS3RI24LDPGB2WQQE5', N'222a0d7d-38b3-4709-b2bd-49a40c176e50', N'555-9753', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1a4fc4b3-a40f-4bf6-bc77-aac39a304f6d', N'Aaron', N'Gonzalez', 0, N'aaron_g', N'AARON_G', N'aaron.gonzalez@example.com', N'AARON.GONZALEZ@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEJJwRenZc8zkHSdMAyYWaeija4KyoWPDe6MBul1FqngbO/NM2TrBorDUmHOgcf0N9Q==', N'45K3XJLA7HLH3UUDKGIQ2MKP36RZXRAI', N'2502d609-7d3a-457f-a885-d5e2904a7fde', N'555-8642', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'22615269-ab18-4e13-b762-06e3855d9b5a', N'Ursula', N'Martinez', 0, N'ursula_m', N'URSULA_M', N'ursula.martinez@example.com', N'URSULA.MARTINEZ@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEH2RAZcU2nCxjK4G9EmHQGEeyD/eHSatkyhbOpVfkpuR/qHP5faKG0Dz8bXKSgNJDA==', N'4XX2TMVANWXJSIXFU6RGVUSHS6NIP56I', N'acbc2803-32b7-4577-a22b-cf7bb6bcdc62', N'555-1357', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'262a6996-8339-4687-bbc4-42adb0d5eb1a', N'Leo', N'Choi', 0, N'leo_c', N'LEO_C', N'leo.choi@example.com', N'LEO.CHOI@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEAcSnWEtTbTQS3t/8ecFxztNKzGTeE5zeVCPwx0scTOkeTps2WRFrH5FwJw9LL5J9Q==', N'QSXYN5TOLAPONZZPYVJ42MVGHZQH4YOK', N'094d42af-b501-45e1-b1e6-cc2fd28767b7', N'555-9753', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2abc0a21-fe76-4667-b91b-6948334b042f', N'Katie', N'Rodriguez', 0, N'katie_r', N'KATIE_R', N'katie.rodriguez@example.com', N'KATIE.RODRIGUEZ@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEPc8aaOgj1RKS2Q+7EC8zWJjKuZMGGqz6HQpbZkvPDC0dk+QWBkTozSt1XXfH0pfyw==', N'DE2DKXCYX2OEJVJZVPY7N2JGP6E5NWLX', N'43ddafc4-7b9a-4032-9dbc-102b475fde3d', N'555-3141', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2f3cf99f-8d7b-44e2-8048-8753d8b302b4', N'Julia', N'Nguyen', 0, N'julia_n', N'JULIA_N', N'julia.nguyen@example.com', N'JULIA.NGUYEN@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEFWx2kctm80wqFsqrtY6fLO3viF5aVX/DbPO9Ow5pN69nveO9G/8JZ5+lXTBl8vUMg==', N'LYMLKGCHUQDNLM5ESY5AT4QZWXBUMFBG', N'40664de1-7b4e-4bca-9d38-af88f2b1f4d8', N'555-7890', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'32e2dcfd-e550-4e85-9472-42ed4119a7e5', N'Alice', N'Johnson', 0, N'alice_j', N'ALICE_J', N'alice.johnson@example.com', N'ALICE.JOHNSON@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEF6Qx9eAGC8Sv1h6pioS0FgH0JM+I1n77q7/Jl3FdaLuE/dkX7vGj3nR6Xs4jOlZgw==', N'SUXVJAL2XLZ5SX66U3EF463H5ANV2GOZ', N'd4401a94-905f-4b1d-ab3a-c2bd56104225', N'555-1234', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3ce76485-762c-48d0-bb55-63e34a7a73c1', N'Frank', N'Gonzalez', 0, N'frank_g', N'FRANK_G', N'frank.gonzalez@example.com', N'FRANK.GONZALEZ@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEIv3r8Mpo08MiWuG8i+ydXLawQFvMEDYqHb+my1/9Rz17oRPFMVJa4sbbJiD4wG69A==', N'CY746W4MOALLELGZJFHOM5FDBUJFYMVD', N'aee5dc58-e200-4642-958d-54e3d4b4d71a', N'555-8642', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3d9bf989-398f-4bc1-b303-ea4c62c3ef8a', N'Wendy', N'O''Connor', 0, N'wendy_o', N'WENDY_O', N'wendy.oconnor@example.com', N'WENDY.OCONNOR@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEDxkG96Lb1AA056/ynj3CjSOrtalVuGlTeLLSJOe4VSuLcB2SLxJpk6OmzAbt9B6PA==', N'WGISH5H5NUCRA6KB6YM4WOOZN2DPMOP5', N'486e99d6-6b42-408b-af35-a01f064faaaa', N'555-9753', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'43c4ba23-bb84-4390-921b-d6b5a105237d', N'Quinn', N'Rivera', 0, N'quinn_r', N'QUINN_R', N'quinn.rivera@example.com', N'QUINN.RIVERA@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAECvMEyCmbqf323sMFuDoVaf4ijRGpyDSn4vt53cvTcHE68oQ35tMaqRIaqGXUZnOcA==', N'VRDZEFYXHFOJCHBBJGBGVFEKVEYHB46J', N'23125a49-8198-4051-b431-55e49713798d', N'555-1357', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'46a127bb-2f9b-45c4-954f-07e9665ba51f', N'Bella', N'Choi', 0, N'bella_c', N'BELLA_C', N'bella.choi@example.com', N'BELLA.CHOI@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEHloVWschuTcrRxZNArPODczzvE7u9RQq6WKB1ks10IbMef4mUG9Wn3VaOJib+czgg==', N'BPLP55PIOGHG6OQ7E2QBGVRTNKWHVJAJ', N'fd7f2e70-10a4-47d4-bed2-d2e9170667d6', N'555-9753', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4a7b4fb7-9f9a-4bbd-a0cc-3fe100e2585f', N'Xavier', N'Perez', 0, N'xavier_p', N'XAVIER_P', N'xavier.perez@example.com', N'XAVIER.PEREZ@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEGQzZ5Rj6ZeUyzzyOeEsEWeR0S/1eBBhssU4mZXOvx/dQRtfctArNMTOfaE0m4QHDg==', N'FW7ICYIHF5CZ3ZGW32SN3IIMRJJO5DN4', N'a3bed99c-ab06-428e-910a-701a281fb800', N'555-3141', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'57cf9de1-bba5-4445-bf04-b49061431fa8', N'Isaac', N'Martinez', 0, N'isaac_m', N'ISAAC_M', N'isaac.martinez@example.com', N'ISAAC.MARTINEZ@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEJpvxtLTN2/jRKY1ulJi3p7qw0J9cTbovghtdYyeWEYFdQ8NDo4L6kQwYK58dxk2gA==', N'QMLRPAKJMUBQCP63RF54TBO22ZFRUCLY', N'27b97de6-9d24-4b75-a593-ad583c8160f5', N'555-2468', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5d8214e2-43a3-43f6-9629-d81e40c9a0ff', N'George', N'Wang', 0, N'george_w', N'GEORGE_W', N'george.wang@example.com', N'GEORGE.WANG@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEFTqC5riU6gw2dUSRm8nxGVGcWnUEQefO0RABan5xw5MtNX+/bAC+BGvTluMMs6Hgg==', N'BZIOXJUFIFLCMBIBBCLXOXM4XZCO7ROX', N'3580328e-9167-42c5-9ccb-a0b785ba70ee', N'555-8642', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5f76a601-feb0-483a-8266-cfa482cd5347', N'Zara', N'Ramirez', 0, N'zara_r', N'ZARA_R', N'zara.ramirez@example.com', N'ZARA.RAMIREZ@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEOdZeyMgR6Lj2Wx/dIVyr1bEuqeqrviXptxIkopfSHjRqWkRy3DtSu+qOICPM3VM6g==', N'HEAFBOD2AFWBZMWBYEOVZRPXUVHJRMM2', N'7ea5e4c2-2f51-40dd-8f3d-1bd349b94479', N'555-1357', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5f81d70d-e55d-49bf-b0bc-03ed3a2adf1b', N'Eva', N'Rodriguez', 0, N'eva_r', N'EVA_R', N'eva.rodriguez@example.com', N'EVA.RODRIGUEZ@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEGe7KxGTWN86UfvC8Ga+TSG5ds/9PckXW8wA1wsXZSvOUmRCmsOWa0CEQtc+jNPSTg==', N'SYMDMASXPRIFRPQGQ6WMXHRL7F7EH4CE', N'3116df1e-02de-40fb-8243-5571d1ee594e', N'555-1357', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'60f2afe2-c09d-45f6-8afd-dcbf44aa0d2f', N'Bob', N'Smith', 0, N'bob_s', N'BOB_S', N'bob.smith@example.com', N'BOB.SMITH@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEJMzg43NlYhGR+gDHDKp6Wip3LBnluLKW2m3BNZ2ymFf1wCfgO3dVZxPAsHcqEFWfw==', N'HPLPE5S6VW47LS2J5FGJ2SNGWZAUAHZK', N'11a700b5-3deb-4150-9c5c-d4dd6cd40bb1', N'555-5678', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'730e538e-f684-4e4d-a91c-a008cac55fb2', N'Carlos', N'Martinez', 0, N'carlos_m', N'CARLOS_M', N'carlos.martinez@example.com', N'CARLOS.MARTINEZ@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEIOjKxNB2hm0g/A95gQovonkGUC0Dan7DvLeVjQB52MD/fOgKpR5CKJF1mcCfO6/nw==', N'NHDQPZKDSKK6IFX4FYELOIIME6HP42HJ', N'66b4926b-f51e-4a47-b900-9cf317572612', N'555-3141', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9420b81b-0cf5-45ad-b725-9a926c6a690c', N'Victor', N'Nguyen', 0, N'victor_n', N'VICTOR_N', N'victor.nguyen@example.com', N'VICTOR.NGUYEN@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEBD0KpiJ7JVZzplsUKPdqOeLUMRXS7jeFzRJGRBdUFKVAYu1XHacCpqgiTl7BXpUZQ==', N'YXAKQ4TBAZT6JGCSDSVYGYNZXSKPTNTG', N'7794fcb4-10f2-41d2-bef1-4feb53f3470f', N'555-8642', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'95b95504-9098-4e59-89a5-fafdfe132e26', N'Tara', N'Vargas', 0, N'tara_v', N'TARA_V', N'tara.vargas@example.com', N'TARA.VARGAS@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAELFjpL1B7Z/YruqGtCuSrm3OBGYhk11QdMmufnJAn482CdFkp/P7gGxRReNNYHqn9A==', N'B3ILM3ZZWDLLYGHUOUKVSS6NJFAMWDAO', N'6e985072-8895-48d5-b8e8-9dedb5844f15', N'555-2718', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'98c92d4e-1bbe-4a0d-b799-bae5d6ed2736', N'Charlie', N'Brown', 0, N'charlie_b', N'CHARLIE_B', N'charlie.brown@example.com', N'CHARLIE.BROWN@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEOsAY9Cu7o6OJQHsBCD1I6/Axt6xeYhiIZ1YHqXZ9ujH+VuwsINolam/uc0OzJFjtA==', N'3Z6QVQAQARCGZSF526XLYOAMM3YCWXR3', N'aeb5c919-0341-42fa-b12d-767feba45bbe', N'555-9876', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'aba5462d-8a5f-403a-acf3-6ec89713d878', N'Admin', N'Admin', 0, N'userAdmin', N'USERADMIN', N'userAdmin@mail.com', N'USERADMIN@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEKb5/ibNonx2LgybGzUNULAlV0v2KJ8HbgkP+w9wgBF7oauONHmeh3Xq8GGsmW+v6g==', N'RN4UFT5AKII3SIIO3GKPE5NAHMVGIV4I', N'26d7d6a8-3344-47e6-8a4c-fca0ac523dfa', N'555-9074', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b32a26de-534b-4659-9cc1-ceb41da0b76d', N'Ivy', N'Nguyen', 0, N'ivy_n', N'IVY_N', N'ivy.nguyen@example.com', N'IVY.NGUYEN@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEFHEXT8WF3PTFYgoiviWj3yfCR2oZoobd5lHG+cWZxjHsDXwXWGml5PXZ4yhoC7rBw==', N'CQ5PNFURFK4U7CA7DWJTLALDOO4E7OC5', N'199d392c-44fb-458a-a504-b1a0fa7f78f0', N'555-2718', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bafeff47-455b-41af-ab19-b62f072e3df9', N'Jack', N'Hernandez', 0, N'jack_h', N'JACK_H', N'jack.hernandez@example.com', N'JACK.HERNANDEZ@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEIaAzM5mAakXpG/8V68I72W5v4ZZ+TzHDOKH8Fe4FYgmACI7uRLqtQFRLGoSgTtlng==', N'RJTRCOPR4COYJRRLT5VERBJHDSQOSKXM', N'98fe6745-8d5d-4ab8-bf00-8dc062753f1f', N'555-1357', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bd7062a9-60fa-4fb3-9785-b5630da181ec', N'Karen', N'Lopez', 0, N'karen_l', N'KAREN_L', N'karen.lopez@example.com', N'KAREN.LOPEZ@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEKAx1VwaFPeMXkQF7M8+y4fqf/3t1m9qCKs+a8Lj/hT4tDv2pmNpRoV9DC8mNzoWDA==', N'3OYRQEJMHF2LEAGN6OMFCGQVUH45367K', N'df6189ec-54ca-40e5-ad2b-f95e9301a57d', N'555-8642', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c11095fc-2262-4332-8c8f-e94ca1549449', N'Hannah', N'Choi', 0, N'hannah_c', N'HANNAH_C', N'hannah.choi@example.com', N'HANNAH.CHOI@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEMdWvYDWT1eyfELlpLcyEjUGl730dsewduxRCWdEOmcpoBA3NPBcsOviaE4wk2RY8A==', N'BLC2PNXQZ66IOOGRDU6V5M4A5563TRQZ', N'2c34c079-565c-435f-9f65-d61add89daaf', N'555-9753', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c11b0ce2-e42f-431c-8e9a-6666b66c6445', N'Peter', N'Gomez', 0, N'peter_g', N'PETER_G', N'peter.gomez@example.com', N'PETER.GOMEZ@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEPTs7utPxDQm/of0ET7kK2+3omlXwAplOAjIgSw3tRXJ56e9kYRilmvNof2c9r0RLw==', N'Q47J3Z3WOZPE6ENFSL3ONQZSW5WQ7YTA', N'2a65815a-19ae-4370-b2cd-9dadec5a5e5f', N'555-2468', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c218b530-7a8b-416c-a95c-c768fb0daaea', N'Rachel', N'Sanchez', 0, N'rachel_s', N'RACHEL_S', N'rachel.sanchez@example.com', N'RACHEL.SANCHEZ@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEBkC3ygzDpS1x9ApdVbtshp5LiuRoCGodH0g4P6lMi6atlcr3Ef6MV1KqOJn4Jh0Rw==', N'O2RVUHGKPC64ZAI5NYIRA3Q3XVNZTVHA', N'cd003939-b86a-4997-b8bd-87d72554cb65', N'555-9753', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c799bdc3-1607-439a-af80-80136ef091cb', N'Olivia', N'Perez', 0, N'olivia_p', N'OLIVIA_P', N'olivia.perez@example.com', N'OLIVIA.PEREZ@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAENNMh0vFr2A83Ska7sLUzSP5oaIhLgi3ObktoicqO7q2+Aa2E+ksbOdA/gL1PX7F7w==', N'UTPHMFJLQQFXZVVX2Y7J2YUQ4XKAJFI3', N'1c739da4-3296-49b6-a308-beac8d1a5de6', N'555-9999', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cc98144b-9f3c-441b-bcec-a17a255c4827', N'David', N'Miller', 0, N'david_m', N'DAVID_M', N'david.miller@example.com', N'DAVID.MILLER@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEE5ZhwOHOkehb858rR9ZfH90WmnkIopFa9dvrW2JW+ld+ylbDj//qlLuFYRq2g2bqQ==', N'2EWUHQ3VRCBXVYOVSM5WEEFCCUZQPL4I', N'e1cb973a-0418-4299-9b16-0f124e9d772b', N'555-4321', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd210608f-7528-435a-b4f9-9c29c21124a9', N'Diana', N'Nguyen', 0, N'diana_n', N'DIANA_N', N'diana.nguyen@example.com', N'DIANA.NGUYEN@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEI6pF4Wo+bEIKgq/sDES2bWq6Tf/RvnIF76QrNliht4mFoQOeuEQfsPTusKiJXc1hw==', N'N7P5DQFMDLNL2QF3MYUCCOURW7NMRBG7', N'82e39544-ba9f-494d-bb39-d735d415661a', N'555-2718', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd9b2ea07-9079-45b0-81f4-b293eda6dd2a', N'Liam', N'Gonzalez', 0, N'liam_g', N'LIAM_G', N'liam.gonzalez@example.com', N'LIAM.GONZALEZ@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEJYPqs+GFVAtt7PS+MZyRsfd1oF0KJzsLEAHH95zJmNbVBo//2PgZ8NkQqCFatAL7g==', N'7NTDRHER6EMRCN6ULDMAEIWRTN76JQK4', N'a29a3f6b-68a8-4b43-9f97-ef47f7688a9b', N'555-2718', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'dd30fe54-a3b7-4aee-b205-881ce3295632', N'Yara', N'Quintero', 0, N'yara_q', N'YARA_Q', N'yara.quintero@example.com', N'YARA.QUINTERO@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAELuIrzxN+WfnWWAwqNlMHUbqDq7St3Mkbpg8VIvNavLde+iLlH7lQ/3muxqxi/7j2A==', N'WBB7SBOFK6Q5LRTYSWLYZ2VE4MZJSPLB', N'fa4639d8-9cb9-4d1e-8913-5f128a64059b', N'555-2718', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e3214efe-c22d-4099-a946-ae6344ab0a57', N'Fiona', N'Lee', 0, N'fiona_l', N'FIONA_L', N'fiona.lee@example.com', N'FIONA.LEE@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEDG/+xcJdqy964xtBuOkWe62nPfwnWQI0u+X2pOIwLuE3Ivpyy8S2zb12IYjTT0qXg==', N'TNKEVIJY334ETJJUA6BZ3MFX4VZF7YPQ', N'2dbdd971-90f9-42e7-8c40-998a5607dedc', N'555-1357', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ea881ee2-4809-4413-83c5-154f459816f5', N'Noah', N'Ramirez', 0, N'noah_r', N'NOAH_R', N'noah.ramirez@example.com', N'NOAH.RAMIREZ@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEI1esoWCkJ5VdDM1gQuSC9FRDru7UM8S5/UcCXkcaowra5434jJ63FlN/HD9YSQLhA==', N'DGAAT26EQZY7C5AYNJONRKZTVUIGT4CU', N'74ff68a8-3e4b-43db-9f63-0374c5fe46f2', N'555-7777', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ee9944cf-f5f9-4045-a635-8feebe7f3cc3', N'Mia', N'Lopez', 0, N'mia_l', N'MIA_L', N'mia.lopez@example.com', N'MIA.LOPEZ@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEOIHrQUwr+EliehF75kby8v5hEKW+dB7Ob/SumFmd7E/JuHXCa8VCPAaXu47d7t1Gg==', N'JBK3CQ36E7E7Y24LJDM522ZFTDWPO5KK', N'b3f17e99-c034-4d85-9ca1-14d064eb34b9', N'555-8888', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'efcd72d8-718d-4a79-b4e3-c7b3959e56ab', N'Ella', N'Garcia', 0, N'ella_g', N'ELLA_G', N'ella.garcia@example.com', N'ELLA.GARCIA@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEP4KIcgsO2Stx8pSZvTTUsHCtjYQwWwv9eo6lB4SnyWZa4Ve+tFym/YIxs3nudHqWA==', N'2ZQGETVRYT2W2GW4L7JZAUZPLL54KEIC', N'6154411e-224c-4aef-afd4-d5c7ef60bab3', N'555-2468', 1, 0, NULL, 1, 0)
GO
INSERT [dbo].[Assignments] ([Id], [Name], [Description], [StartDate], [EndDate], [StatusId], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'36218712-be5a-45bf-ae77-9dd4c2315592', N'Crear CRUD de Roles', N'Desarrollar los métodos Crear, Leer, Actualizar y Borrar para la entidad Rol', CAST(N'2023-03-03T21:46:48.2750000' AS DateTime2), CAST(N'2023-04-03T21:46:48.2750000' AS DateTime2), N'd83fb763-98a5-441e-8e82-15d79a7c496d', N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'Example User', CAST(N'2024-03-03T21:53:38.8228690' AS DateTime2), N'Initial User', CAST(N'2024-03-03T21:53:38.8228697' AS DateTime2), 0)
INSERT [dbo].[Assignments] ([Id], [Name], [Description], [StartDate], [EndDate], [StatusId], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'5070551f-2e06-4a54-ace9-9823cf35c41c', N'Crear CRUD de Tareas', N'Desarrollar los métodos Crear, Leer, Actualizar y Borrar para la entidad Tarea', CAST(N'2023-03-03T21:46:48.2750000' AS DateTime2), CAST(N'2023-04-03T21:46:48.2750000' AS DateTime2), N'3e24e47d-c392-4aee-b098-c9f80725748e', N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'Example User', CAST(N'2024-03-03T21:52:13.9793693' AS DateTime2), N'Initial User', CAST(N'2024-03-03T21:52:13.9793713' AS DateTime2), 0)
INSERT [dbo].[Assignments] ([Id], [Name], [Description], [StartDate], [EndDate], [StatusId], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'7d2475a4-a027-41eb-9fed-011efa0ec074', N'Crear CRUD de Reportes', N'Desarrollar los métodos Crear, Leer, Actualizar y Borrar para la entidad Reporte', CAST(N'2023-03-03T21:46:48.2750000' AS DateTime2), CAST(N'2023-04-03T21:46:48.2750000' AS DateTime2), N'85ccd345-ffa0-4b67-aee3-1afc2a77d291', N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'Example User', CAST(N'2024-03-03T21:52:54.9709675' AS DateTime2), N'Initial User', CAST(N'2024-03-03T21:52:54.9709681' AS DateTime2), 0)
INSERT [dbo].[Assignments] ([Id], [Name], [Description], [StartDate], [EndDate], [StatusId], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'ede9bde1-cd63-4749-bb4a-63b8448eb11a', N'Crear CRUD de Usuarios', N'Desarrollar los métodos Crear, Leer, Actualizar y Borrar para la entidad Usuario', CAST(N'2023-03-03T21:46:48.2750000' AS DateTime2), CAST(N'2023-04-03T21:46:48.2750000' AS DateTime2), N'0faa4544-d131-4350-8776-474c3356eb06', N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'Example User', CAST(N'2024-03-03T21:50:40.9556331' AS DateTime2), N'Initial User', CAST(N'2024-03-03T21:50:40.9557677' AS DateTime2), 0)
GO
INSERT [dbo].[AssignmentStatus] ([Id], [Name], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'0faa4544-d131-4350-8776-474c3356eb06', N'Sin empezar', N'Example User', CAST(N'2024-03-03T17:49:07.9078363' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.9078372' AS DateTime2), 0)
INSERT [dbo].[AssignmentStatus] ([Id], [Name], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'3e24e47d-c392-4aee-b098-c9f80725748e', N'Finalizada', N'Example User', CAST(N'2024-03-03T17:49:07.9565626' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.9565632' AS DateTime2), 0)
INSERT [dbo].[AssignmentStatus] ([Id], [Name], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'85ccd345-ffa0-4b67-aee3-1afc2a77d291', N'En Revisión', N'Example User', CAST(N'2024-03-03T17:49:07.9423318' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.9423326' AS DateTime2), 0)
INSERT [dbo].[AssignmentStatus] ([Id], [Name], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'd83fb763-98a5-441e-8e82-15d79a7c496d', N'En Progerso', N'Example User', CAST(N'2024-03-03T17:49:07.9256337' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.9256347' AS DateTime2), 0)
GO
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'0ef63c3b-3543-4935-9762-db5de7e75638', 1, 1000, 0, 0, 0, 0, 14, 1, N'2ed4d4c9-e707-41a5-add4-6b4805d8339c', N'Example User', CAST(N'2024-03-03T17:49:07.5232154' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.5232161' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'102aa3fa-dca9-4f7f-8f36-992dada527d4', 1, 1000, 0, 0, 0, 0, 14, 1, N'451cb069-b8ea-4a68-b930-40fa1940c0e5', N'Example User', CAST(N'2024-03-03T17:49:06.6065811' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.6065819' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'1104780a-bf73-4916-9c6f-15a425f5413c', 1, 1000, 0, 0, 0, 0, 14, 1, N'a769888d-afe1-4a89-8136-aea3d90823ef', N'Example User', CAST(N'2024-03-03T17:49:07.3560805' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.3560813' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'14f1ce9f-3049-4cfb-879a-9e1e79d8c93d', 1, 1000, 0, 0, 0, 0, 14, 1, N'947cb532-2910-434d-9e46-3cbc67db9419', N'Example User', CAST(N'2024-03-03T17:49:05.4176692' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.4176699' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'175c2734-11e7-4b9d-b656-7e8be674d35a', 1, 1000, 0, 0, 0, 0, 14, 1, N'68f2199f-46a8-4788-b494-84f48ec83505', N'Example User', CAST(N'2024-03-03T17:49:06.1004675' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.1004683' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'17c45497-b983-4304-b9bb-62c970849256', 1, 1000, 0, 0, 0, 0, 14, 1, N'7705c306-7af8-4acb-8b84-588761d6ffda', N'Example User', CAST(N'2024-03-03T17:49:04.7100875' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:04.7100885' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'1da6ae76-d7bc-4a9a-b874-1ea67e1d1360', 1, 1000, 0, 0, 0, 0, 14, 1, N'4ba13672-8948-4818-b64a-fdd07a9963ae', N'Example User', CAST(N'2024-03-03T17:49:06.3630453' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.3630461' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'24914904-80f4-4eda-9f72-0ee9ebb9e855', 1, 1000, 0, 0, 0, 0, 14, 1, N'552ae685-a504-44b4-a538-33599322bd06', N'Example User', CAST(N'2024-03-03T17:49:06.0234876' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.0234883' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'28aac1a5-c4c0-4835-a5fe-4744cfef7764', 1, 1000, 0, 0, 0, 0, 14, 1, N'8c999c1f-3f77-4328-bcf0-e12ed935e469', N'Example User', CAST(N'2024-03-03T17:49:04.4639234' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:04.4639242' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'369cc858-5b39-4f1d-95d2-925b13ffb22e', 1, 1000, 0, 0, 0, 0, 14, 1, N'c80c554b-44cd-4120-a3f9-e741deb5c50c', N'Example User', CAST(N'2024-03-03T17:49:04.7849654' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:04.7849660' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'3f9b3a84-9bca-471f-8a7a-6ce1dced9b85', 1, 1000, 0, 0, 0, 0, 14, 1, N'cb241adc-5b2f-450e-8499-04603ea7697d', N'Example User', CAST(N'2024-03-03T17:49:04.5427623' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:04.5427630' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'42252b2d-e947-4e4a-9538-4aefc0e70bf5', 1, 1000, 0, 0, 0, 0, 14, 1, N'8b24283d-2560-4c96-929e-33b33deb8f56', N'Example User', CAST(N'2024-03-03T17:49:07.1001637' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.1001644' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'43e2d6ff-b5da-4378-812e-1fc38b1d1bb1', 1, 1000, 0, 0, 0, 0, 14, 1, N'8a1b7b4f-ff05-4d43-a36f-033a1fe8bf0c', N'Example User', CAST(N'2024-03-03T17:49:06.2776334' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.2776341' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'4ab30df8-ad90-4b4e-a7cb-ac6d17bf4777', 1, 1000, 0, 0, 0, 0, 14, 1, N'68f91c99-fd40-49f4-a99b-0d0834ddf43a', N'Example User', CAST(N'2024-03-03T17:49:06.8582594' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.8582604' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'4cce8451-b45a-46eb-9ca5-7f27595b5568', 1, 1000, 0, 0, 0, 0, 14, 1, N'b0a86209-827c-472b-826c-2691fbe7945b', N'Example User', CAST(N'2024-03-03T17:49:06.4438111' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.4438119' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'508d9f1f-3fcb-40c1-8ed7-3223a579543d', 1, 1000, 0, 0, 0, 0, 14, 1, N'4d614d25-9372-4844-a91b-07b45767f22f', N'Example User', CAST(N'2024-03-03T17:49:07.4431363' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.4431370' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'560ef4de-ca35-4f79-9ef0-e30cb6c7efa9', 1, 1000, 0, 0, 0, 0, 14, 1, N'cf183fbf-a0a5-4960-90ab-17d1129e6dd1', N'Example User', CAST(N'2024-03-03T17:49:05.7144655' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.7144682' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'609df0da-1ebe-4716-950c-1443f3d7d2e7', 1, 1000, 0, 0, 0, 0, 14, 1, N'35080673-92f0-4072-ad70-47c73959abaa', N'Example User', CAST(N'2024-03-03T17:49:07.0190003' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.0190013' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'63c51b8e-a4d6-4f4d-ae74-08074d96ae9a', 1, 1000, 0, 0, 0, 0, 14, 1, N'ee88c70d-9e4e-41b7-bb3e-bff9caf7a6c8', N'Example User', CAST(N'2024-03-03T17:49:03.8041281' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:03.8041297' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'640cfe35-9582-4500-b561-bc33810a8db0', 1, 1000, 0, 0, 0, 0, 14, 1, N'56248e88-9648-4082-a495-4f594af26470', N'Example User', CAST(N'2024-03-03T17:49:07.1827547' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.1827556' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'775b3483-af71-450a-8579-a741dc2ac098', 1, 1000, 0, 0, 0, 0, 14, 1, N'083311af-922d-4753-9850-2585a44b02ae', N'Example User', CAST(N'2024-03-03T17:49:06.7840702' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.7840708' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'7de2ad4c-a50c-4de3-9828-c63dea1fdf9b', 1, 1000, 0, 0, 0, 0, 14, 1, N'68f0d855-decf-4f42-948b-44414eee7012', N'Example User', CAST(N'2024-03-03T17:49:05.0927299' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.0927307' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'8579bb87-0efb-442b-9532-dd8ac65d7304', 1, 1000, 0, 0, 0, 0, 14, 1, N'cdf1b794-966c-43f4-940d-316ad5e96970', N'Example User', CAST(N'2024-03-03T17:49:07.2706710' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.2706718' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'92b2c799-f422-4331-bb3f-d2df3f67ec76', 1, 1000, 0, 0, 0, 0, 14, 1, N'0fc102ac-8d10-455c-b397-61d360c97288', N'Example User', CAST(N'2024-03-03T17:49:05.5035663' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.5035670' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'92d68bfa-8bf1-4687-9388-09a7cb675311', 1, 1000, 0, 0, 0, 0, 14, 1, N'0f2eaabc-7726-4572-9803-070df7579428', N'Example User', CAST(N'2024-03-03T17:49:05.9502985' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.9502992' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'99b8cfee-5de9-44a5-b7af-6b89a8713f05', 1, 1000, 0, 0, 0, 0, 14, 1, N'169ee013-3582-489c-9418-23b059610d00', N'Example User', CAST(N'2024-03-03T17:49:05.0136647' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.0136654' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'9c3225fa-5e94-4380-8f44-dbd8c786a42b', 1, 1000, 0, 0, 0, 0, 14, 1, N'373f9928-a406-4b90-ac0f-c7e3ede61340', N'Example User', CAST(N'2024-03-03T17:49:05.8675051' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.8675058' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'a44c705c-cc8d-4acb-9662-43e1e327c19e', 1, 1000, 0, 0, 0, 0, 14, 1, N'dc8765c3-90de-4e43-9abc-b4ef7c86c3e7', N'Example User', CAST(N'2024-03-03T17:49:06.7019917' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.7019927' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'ab1297e1-7357-423c-97a3-62a4f21435c7', 1, 1000, 0, 0, 0, 0, 14, 1, N'f1185614-551f-423c-bea0-2844371cda30', N'Example User', CAST(N'2024-03-03T17:49:05.7937999' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.7938007' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'ac24d030-fa1d-4ac8-9ed0-ad8665ebb585', 1, 1000, 0, 0, 0, 0, 14, 1, N'8a1ce934-13ad-4a86-92eb-a9132596551f', N'Example User', CAST(N'2024-03-03T17:49:04.6262060' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:04.6262068' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'b78479e5-21e0-491b-9698-d0a509047bac', 1, 1000, 0, 0, 0, 0, 14, 1, N'aa157b35-c3f9-4f9d-8112-88b2f1a1e20b', N'Example User', CAST(N'2024-03-03T17:49:04.9389888' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:04.9389895' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'c2651a2b-9a32-4894-b3d1-d48204f7b086', 1, 1000, 0, 0, 0, 0, 14, 1, N'8957474d-8fe4-458d-8a14-c3c138f759fd', N'Example User', CAST(N'2024-03-03T17:49:05.2494252' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.2494263' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'cd78bd4e-c436-4e2f-8453-bc3637620126', 1, 1000, 0, 0, 0, 0, 14, 1, N'd5f88933-cc1f-4d4d-92de-5fb1ffd355fc', N'Example User', CAST(N'2024-03-03T17:49:06.5228147' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.5228154' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'd305b4de-7d34-4d5b-80c0-0dfd82e45698', 1, 1000, 0, 0, 0, 0, 14, 1, N'26d5dd69-20a0-4900-9243-7b4af6ecb862', N'Example User', CAST(N'2024-03-03T17:49:06.1944735' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.1944749' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'd33d0533-05a4-4a38-bfb3-693efac5c366', 1, 1000, 0, 0, 0, 0, 14, 1, N'35284eaa-033b-4803-8e3e-c589e462fa1e', N'Example User', CAST(N'2024-03-03T17:49:05.3354644' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.3354653' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'decc2643-0cc1-48e9-9a45-de8442d44cc7', 1, 1000, 0, 0, 0, 0, 14, 1, N'5cd77d47-d9b3-435a-9346-c9c23a585a80', N'Example User', CAST(N'2024-03-03T17:49:05.5881867' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.5881883' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'e2b78ac4-adbf-471d-a46e-f9dbaae6b38d', 1, 1000, 0, 0, 0, 0, 14, 1, N'f0818696-e494-4d5e-9f61-f53af7ddc2b7', N'Example User', CAST(N'2024-03-03T17:49:05.1723862' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.1723869' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'ef9a4db7-2fe8-4f7f-8210-527e954456fc', 1, 1000, 0, 0, 0, 0, 14, 1, N'34cdd721-538f-41b0-be15-6dd40d86c753', N'Example User', CAST(N'2024-03-03T17:49:04.8631148' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:04.8631155' AS DateTime2), 0)
INSERT [dbo].[BenefitsSummaries] ([Id], [IncludesBonusA], [BonusA], [IncludesBonusB], [BonusB], [IncludesBonusC], [BonusC], [Holidays], [HasHealthCare], [ProfileId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'fba9fb20-31b9-46cf-89bf-4c1a3600f73b', 1, 1000, 0, 0, 0, 0, 14, 1, N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'Example User', CAST(N'2024-03-03T17:49:06.9336571' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.9336578' AS DateTime2), 0)
GO
INSERT [dbo].[Permissions] ([Id], [DaysAmount], [Date], [StatusId], [ProfileId], [TypeId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'066d996c-63b4-4c88-a956-ace7c6129138', 10, CAST(N'2018-02-01T00:04:49.8470000' AS DateTime2), N'515c564c-127f-4f68-bc0a-0226ebf85883', N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'e3976c20-288e-489f-afb6-2e5b72bca5d3', N'Example User', CAST(N'2024-03-04T00:10:57.9302036' AS DateTime2), N'Initial User', CAST(N'2024-03-04T00:10:57.9302046' AS DateTime2), 0)
INSERT [dbo].[Permissions] ([Id], [DaysAmount], [Date], [StatusId], [ProfileId], [TypeId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'1d45b033-eb5a-4a74-9384-21dbf7df00e3', 3, CAST(N'2022-09-25T00:04:49.8470000' AS DateTime2), N'515c564c-127f-4f68-bc0a-0226ebf85883', N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'e3976c20-288e-489f-afb6-2e5b72bca5d3', N'Example User', CAST(N'2024-03-04T00:10:26.7214373' AS DateTime2), N'Initial User', CAST(N'2024-03-04T00:10:26.7214380' AS DateTime2), 0)
INSERT [dbo].[Permissions] ([Id], [DaysAmount], [Date], [StatusId], [ProfileId], [TypeId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'29975962-209b-4703-a37c-4f5e8632e1e3', 2, CAST(N'2021-12-13T00:04:49.8470000' AS DateTime2), N'cf8444ff-1149-4525-a395-eebd3a09b51c', N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'b89dca31-50a5-4fb1-b284-794791993840', N'Example User', CAST(N'2024-03-04T00:10:19.1039530' AS DateTime2), N'Initial User', CAST(N'2024-03-04T00:10:19.1039537' AS DateTime2), 0)
INSERT [dbo].[Permissions] ([Id], [DaysAmount], [Date], [StatusId], [ProfileId], [TypeId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'8cc56e41-5e9a-4f2d-99e7-c19b2af40d2b', 10, CAST(N'2019-03-08T00:04:49.8470000' AS DateTime2), N'515c564c-127f-4f68-bc0a-0226ebf85883', N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'86d4097c-02e0-466e-ad8b-c0054cb2f84a', N'Example User', CAST(N'2024-03-04T00:11:30.7448207' AS DateTime2), N'Initial User', CAST(N'2024-03-04T00:11:30.7448215' AS DateTime2), 0)
INSERT [dbo].[Permissions] ([Id], [DaysAmount], [Date], [StatusId], [ProfileId], [TypeId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'94f732c7-61d4-4a3a-9485-ae84ad797552', 10, CAST(N'2023-10-29T00:04:49.8470000' AS DateTime2), N'cf8444ff-1149-4525-a395-eebd3a09b51c', N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'f4e8657c-6b86-4bdc-8e31-1b7a2f0d0c58', N'Example User', CAST(N'2024-03-04T00:11:08.3207415' AS DateTime2), N'Initial User', CAST(N'2024-03-04T00:11:08.3207424' AS DateTime2), 0)
INSERT [dbo].[Permissions] ([Id], [DaysAmount], [Date], [StatusId], [ProfileId], [TypeId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'987d816e-45be-4c88-afdf-1b11b9c61a41', 1, CAST(N'2020-08-04T00:04:49.8470000' AS DateTime2), N'515c564c-127f-4f68-bc0a-0226ebf85883', N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'e3976c20-288e-489f-afb6-2e5b72bca5d3', N'Example User', CAST(N'2024-03-04T00:09:47.8820072' AS DateTime2), N'Initial User', CAST(N'2024-03-04T00:09:47.8820087' AS DateTime2), 0)
INSERT [dbo].[Permissions] ([Id], [DaysAmount], [Date], [StatusId], [ProfileId], [TypeId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'd7728586-eb7d-40bb-9193-16d48e325464', 10, CAST(N'2020-11-14T00:04:49.8470000' AS DateTime2), N'515c564c-127f-4f68-bc0a-0226ebf85883', N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'575ec9b0-6d40-470e-832d-0a8c21b546f7', N'Example User', CAST(N'2024-03-04T00:11:18.4365660' AS DateTime2), N'Initial User', CAST(N'2024-03-04T00:11:18.4365670' AS DateTime2), 0)
GO
INSERT [dbo].[PermissionStatus] ([Id], [Name], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'380d22e3-bb1c-4b3d-b79c-a2aac86c7244', N'Enviada', N'Example User', CAST(N'2024-03-03T17:49:07.8101559' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.8101568' AS DateTime2), 0)
INSERT [dbo].[PermissionStatus] ([Id], [Name], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'515c564c-127f-4f68-bc0a-0226ebf85883', N'Aprobada', N'Example User', CAST(N'2024-03-03T17:49:07.8444373' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.8444383' AS DateTime2), 0)
INSERT [dbo].[PermissionStatus] ([Id], [Name], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'9f26369d-c7e1-409c-a65c-d9648bc8a5da', N'En revisión', N'Example User', CAST(N'2024-03-03T17:49:07.8266883' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.8266891' AS DateTime2), 0)
INSERT [dbo].[PermissionStatus] ([Id], [Name], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'cf8444ff-1149-4525-a395-eebd3a09b51c', N'Rechazada', N'Example User', CAST(N'2024-03-03T17:49:07.8612700' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.8612712' AS DateTime2), 0)
GO
INSERT [dbo].[PermissionTypes] ([Id], [Name], [LimitDays], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'0d7e7aba-565f-470a-84f3-222f588863de', N'Paternidad', 7, N'Example User', CAST(N'2024-03-03T17:49:07.7200742' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.7200748' AS DateTime2), 0)
INSERT [dbo].[PermissionTypes] ([Id], [Name], [LimitDays], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'295a6d60-9d65-4192-a7f6-bba20e904295', N'Deberes inexcusables', 1, N'Example User', CAST(N'2024-03-03T17:49:07.7474671' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.7474681' AS DateTime2), 0)
INSERT [dbo].[PermissionTypes] ([Id], [Name], [LimitDays], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'575ec9b0-6d40-470e-832d-0a8c21b546f7', N'Matrimonio', 3, N'Example User', CAST(N'2024-03-03T17:49:07.6907831' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.6907839' AS DateTime2), 0)
INSERT [dbo].[PermissionTypes] ([Id], [Name], [LimitDays], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'86d4097c-02e0-466e-ad8b-c0054cb2f84a', N'Médico o accidente', 5, N'Example User', CAST(N'2024-03-03T17:49:07.6457328' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.6457338' AS DateTime2), 0)
INSERT [dbo].[PermissionTypes] ([Id], [Name], [LimitDays], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'b89dca31-50a5-4fb1-b284-794791993840', N'Formación', 1, N'Example User', CAST(N'2024-03-03T17:49:07.7604199' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.7604206' AS DateTime2), 0)
INSERT [dbo].[PermissionTypes] ([Id], [Name], [LimitDays], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'c48115da-58f5-425f-81da-d0063e39b340', N'Maternidad', 50, N'Example User', CAST(N'2024-03-03T17:49:07.7045238' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.7045246' AS DateTime2), 0)
INSERT [dbo].[PermissionTypes] ([Id], [Name], [LimitDays], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'e3976c20-288e-489f-afb6-2e5b72bca5d3', N'Trámite', 1, N'Example User', CAST(N'2024-03-03T17:49:07.6770135' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.6770142' AS DateTime2), 0)
INSERT [dbo].[PermissionTypes] ([Id], [Name], [LimitDays], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'f1fcc638-8966-49e0-aec5-fe9ea9ea4883', N'Mudanza', 2, N'Example User', CAST(N'2024-03-03T17:49:07.7341903' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.7341910' AS DateTime2), 0)
INSERT [dbo].[PermissionTypes] ([Id], [Name], [LimitDays], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'f4e8657c-6b86-4bdc-8e31-1b7a2f0d0c58', N'Fallecimiento, accidente o enfermedad grave de familiar', 3, N'Example User', CAST(N'2024-03-03T17:49:07.6636015' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.6636034' AS DateTime2), 0)
GO
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'056e2e3a-ef22-456a-98b0-1cc354fff147', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'5f81d70d-e55d-49bf-b0bc-03ed3a2adf1b', N'Example User', CAST(N'2024-03-03T17:49:06.9336585' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.9336587' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'083311af-922d-4753-9850-2585a44b02ae', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'730e538e-f684-4e4d-a91c-a008cac55fb2', N'Example User', CAST(N'2024-03-03T17:49:06.7840716' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.7840719' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'0f2eaabc-7726-4572-9803-070df7579428', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'03e38b5d-b36f-4529-99ac-c9f2839af08a', N'Example User', CAST(N'2024-03-03T17:49:05.9502999' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.9503001' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'0fc102ac-8d10-455c-b397-61d360c97288', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'ea881ee2-4809-4413-83c5-154f459816f5', N'Example User', CAST(N'2024-03-03T17:49:05.5035677' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.5035680' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'169ee013-3582-489c-9418-23b059610d00', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'c11095fc-2262-4332-8c8f-e94ca1549449', N'Example User', CAST(N'2024-03-03T17:49:05.0136662' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.0136664' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'26d5dd69-20a0-4900-9243-7b4af6ecb862', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'9420b81b-0cf5-45ad-b725-9a926c6a690c', N'Example User', CAST(N'2024-03-03T17:49:06.1944764' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.1944766' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'2ed4d4c9-e707-41a5-add4-6b4805d8339c', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'262a6996-8339-4687-bbc4-42adb0d5eb1a', N'Example User', CAST(N'2024-03-03T17:49:07.5232169' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.5232171' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'34cdd721-538f-41b0-be15-6dd40d86c753', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'e3214efe-c22d-4099-a946-ae6344ab0a57', N'Example User', CAST(N'2024-03-03T17:49:04.8631164' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:04.8631166' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'35080673-92f0-4072-ad70-47c73959abaa', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'3ce76485-762c-48d0-bb55-63e34a7a73c1', N'Example User', CAST(N'2024-03-03T17:49:07.0190020' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.0190022' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'35284eaa-033b-4803-8e3e-c589e462fa1e', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'd9b2ea07-9079-45b0-81f4-b293eda6dd2a', N'Example User', CAST(N'2024-03-03T17:49:05.3354666' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.3354669' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'373f9928-a406-4b90-ac0f-c7e3ede61340', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'c218b530-7a8b-416c-a95c-c768fb0daaea', N'Example User', CAST(N'2024-03-03T17:49:05.8675065' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.8675067' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'451cb069-b8ea-4a68-b930-40fa1940c0e5', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'1a4fc4b3-a40f-4bf6-bc77-aac39a304f6d', N'Example User', CAST(N'2024-03-03T17:49:06.6065829' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.6065832' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'4ba13672-8948-4818-b64a-fdd07a9963ae', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'4a7b4fb7-9f9a-4bbd-a0cc-3fe100e2585f', N'Example User', CAST(N'2024-03-03T17:49:06.3630469' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.3630471' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'4d614d25-9372-4844-a91b-07b45767f22f', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'bd7062a9-60fa-4fb3-9785-b5630da181ec', N'Example User', CAST(N'2024-03-03T17:49:07.4431379' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.4431381' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'552ae685-a504-44b4-a538-33599322bd06', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'95b95504-9098-4e59-89a5-fafdfe132e26', N'Example User', CAST(N'2024-03-03T17:49:06.0234893' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.0234896' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'56248e88-9648-4082-a495-4f594af26470', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'12473c73-2e0b-4b1e-9e94-ba5dd809b38a', N'Example User', CAST(N'2024-03-03T17:49:07.1827568' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.1827571' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'5cd77d47-d9b3-435a-9346-c9c23a585a80', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'c799bdc3-1607-439a-af80-80136ef091cb', N'Example User', CAST(N'2024-03-03T17:49:05.5881891' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.5881893' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'68f0d855-decf-4f42-948b-44414eee7012', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'57cf9de1-bba5-4445-bf04-b49061431fa8', N'Example User', CAST(N'2024-03-03T17:49:05.0927318' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.0927320' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'68f2199f-46a8-4788-b494-84f48ec83505', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'22615269-ab18-4e13-b762-06e3855d9b5a', N'Example User', CAST(N'2024-03-03T17:49:06.1004691' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.1004693' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'68f91c99-fd40-49f4-a99b-0d0834ddf43a', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'd210608f-7528-435a-b4f9-9c29c21124a9', N'Example User', CAST(N'2024-03-03T17:49:06.8582615' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.8582618' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'7705c306-7af8-4acb-8b84-588761d6ffda', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'cc98144b-9f3c-441b-bcec-a17a255c4827', N'Example User', CAST(N'2024-03-03T17:49:04.7100895' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:04.7100898' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'8957474d-8fe4-458d-8a14-c3c138f759fd', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'2abc0a21-fe76-4667-b91b-6948334b042f', N'Example User', CAST(N'2024-03-03T17:49:05.2494273' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.2494276' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'8a1b7b4f-ff05-4d43-a36f-033a1fe8bf0c', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'3d9bf989-398f-4bc1-b303-ea4c62c3ef8a', N'Example User', CAST(N'2024-03-03T17:49:06.2776349' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.2776352' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'8a1ce934-13ad-4a86-92eb-a9132596551f', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'98c92d4e-1bbe-4a0d-b799-bae5d6ed2736', N'Example User', CAST(N'2024-03-03T17:49:04.6262076' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:04.6262078' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'8b24283d-2560-4c96-929e-33b33deb8f56', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'12d9b5ce-8127-4867-8e55-bf2b1114f644', N'Example User', CAST(N'2024-03-03T17:49:07.1001660' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.1001662' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'8c999c1f-3f77-4328-bcf0-e12ed935e469', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'32e2dcfd-e550-4e85-9472-42ed4119a7e5', N'Example User', CAST(N'2024-03-03T17:49:04.4639251' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:04.4639253' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'947cb532-2910-434d-9e46-3cbc67db9419', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'ee9944cf-f5f9-4045-a635-8feebe7f3cc3', N'Example User', CAST(N'2024-03-03T17:49:05.4176708' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.4176711' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'a769888d-afe1-4a89-8136-aea3d90823ef', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'bafeff47-455b-41af-ab19-b62f072e3df9', N'Example User', CAST(N'2024-03-03T17:49:07.3560820' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.3560822' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'aa157b35-c3f9-4f9d-8112-88b2f1a1e20b', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'5d8214e2-43a3-43f6-9629-d81e40c9a0ff', N'Example User', CAST(N'2024-03-03T17:49:04.9389902' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:04.9389904' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'b0a86209-827c-472b-826c-2691fbe7945b', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'dd30fe54-a3b7-4aee-b205-881ce3295632', N'Example User', CAST(N'2024-03-03T17:49:06.4438128' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.4438130' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'c80c554b-44cd-4120-a3f9-e741deb5c50c', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'efcd72d8-718d-4a79-b4e3-c7b3959e56ab', N'Example User', CAST(N'2024-03-03T17:49:04.7849668' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:04.7849671' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'cb241adc-5b2f-450e-8499-04603ea7697d', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'60f2afe2-c09d-45f6-8afd-dcbf44aa0d2f', N'Example User', CAST(N'2024-03-03T17:49:04.5427638' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:04.5427641' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'cdf1b794-966c-43f4-940d-316ad5e96970', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'b32a26de-534b-4659-9cc1-ceb41da0b76d', N'Example User', CAST(N'2024-03-03T17:49:07.2706727' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:07.2706729' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'cf183fbf-a0a5-4960-90ab-17d1129e6dd1', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'c11b0ce2-e42f-431c-8e9a-6666b66c6445', N'Example User', CAST(N'2024-03-03T17:49:05.7144701' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.7144703' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'd5f88933-cc1f-4d4d-92de-5fb1ffd355fc', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'5f76a601-feb0-483a-8266-cfa482cd5347', N'Example User', CAST(N'2024-03-03T17:49:06.5228163' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.5228165' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'dc8765c3-90de-4e43-9abc-b4ef7c86c3e7', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'46a127bb-2f9b-45c4-954f-07e9665ba51f', N'Example User', CAST(N'2024-03-03T17:49:06.7019941' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:06.7019943' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'ee88c70d-9e4e-41b7-bb3e-bff9caf7a6c8', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'aba5462d-8a5f-403a-acf3-6ec89713d878', N'Example User', CAST(N'2024-03-03T17:49:03.8037292' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:03.8039695' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'f0818696-e494-4d5e-9f61-f53af7ddc2b7', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'2f3cf99f-8d7b-44e2-8048-8753d8b302b4', N'Example User', CAST(N'2024-03-03T17:49:05.1723877' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.1723879' AS DateTime2), 0)
INSERT [dbo].[Profiles] ([Id], [Assists], [Absences], [Delays], [Country], [State], [Municipality], [Salary], [AdmissionDate], [AppUserId], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'f1185614-551f-423c-bea0-2844371cda30', 0, 0, 0, N'NoCountry', N'NoState', N'NoMunicipality', 500, N'2022-03-03T17:02:28.190Z', N'43c4ba23-bb84-4390-921b-d6b5a105237d', N'Example User', CAST(N'2024-03-03T17:49:05.7938015' AS DateTime2), N'Initial User', CAST(N'2024-03-03T17:49:05.7938017' AS DateTime2), 0)
GO
INSERT [dbo].[Reports] ([Id], [Date], [Performance], [AchivedGoals], [SavedMoney], [ProfileId], [Comments], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'25a429f4-d746-48cc-a58c-317bacba1467', CAST(N'2023-01-01T23:26:37.6610000' AS DateTime2), 10, 0.9, 10000, N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'Creatividad: Juan ha demostrado una gran creatividad en la creación de campañas publicitarias. Sus ideas frescas han contribuido al éxito de varios proyectos. Trabajo en Equipo: Juan es un colaborador excepcional. Siempre está dispuesto a ayudar a sus compañeros y aporta positivamente en las reuniones de equipo. Cumplimiento de Plazos: Juan cumple con los plazos establecidos. Su capacidad para gestionar su tiempo y entregar resultados a tiempo es destacable. Comunicación Escrita: A veces, las comunicaciones escritas de Juan pueden ser confusas. Le recomendaría revisar y ser más conciso en sus correos electrónicos y documentos. Habilidades Analíticas: Juan podría beneficiarse de mejorar sus habilidades analíticas. Algunos informes requieren un enfoque más profundo en el análisis de datos. Desarrollo Profesional: Juan debería considerar participar en cursos o talleres para seguir desarrollando sus habilidades en marketing digital. Comentarios Generales: Juan es un miembro valioso de nuestro equipo. Su actitud positiva y su dedicación son admirables. Continuaremos apoyándolo en su crecimiento profesional y esperamos verlo seguir prosperando en su rol.', N'Example User', CAST(N'2024-03-03T23:31:50.6004666' AS DateTime2), N'Initial User', CAST(N'2024-03-03T23:31:50.6004674' AS DateTime2), 0)
INSERT [dbo].[Reports] ([Id], [Date], [Performance], [AchivedGoals], [SavedMoney], [ProfileId], [Comments], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'2fc94277-7156-4ec2-8161-778226018ada', CAST(N'2023-02-01T23:26:37.6610000' AS DateTime2), 9, 0.85, 4500, N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'Creatividad: Juan ha demostrado una gran creatividad en la creación de campañas publicitarias. Sus ideas frescas han contribuido al éxito de varios proyectos. Trabajo en Equipo: Juan es un colaborador excepcional. Siempre está dispuesto a ayudar a sus compañeros y aporta positivamente en las reuniones de equipo. Cumplimiento de Plazos: Juan cumple con los plazos establecidos. Su capacidad para gestionar su tiempo y entregar resultados a tiempo es destacable. Comunicación Escrita: A veces, las comunicaciones escritas de Juan pueden ser confusas. Le recomendaría revisar y ser más conciso en sus correos electrónicos y documentos. Habilidades Analíticas: Juan podría beneficiarse de mejorar sus habilidades analíticas. Algunos informes requieren un enfoque más profundo en el análisis de datos. Desarrollo Profesional: Juan debería considerar participar en cursos o talleres para seguir desarrollando sus habilidades en marketing digital. Comentarios Generales: Juan es un miembro valioso de nuestro equipo. Su actitud positiva y su dedicación son admirables. Continuaremos apoyándolo en su crecimiento profesional y esperamos verlo seguir prosperando en su rol.', N'Example User', CAST(N'2024-03-03T23:32:03.9455918' AS DateTime2), N'Initial User', CAST(N'2024-03-03T23:32:03.9455931' AS DateTime2), 0)
INSERT [dbo].[Reports] ([Id], [Date], [Performance], [AchivedGoals], [SavedMoney], [ProfileId], [Comments], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'3b408b90-e5ed-4478-b92c-fd958d0b9531', CAST(N'2023-03-01T23:26:37.6610000' AS DateTime2), 10, 0.95, 8000, N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'Creatividad: Juan ha demostrado una gran creatividad en la creación de campañas publicitarias. Sus ideas frescas han contribuido al éxito de varios proyectos. Trabajo en Equipo: Juan es un colaborador excepcional. Siempre está dispuesto a ayudar a sus compañeros y aporta positivamente en las reuniones de equipo. Cumplimiento de Plazos: Juan cumple con los plazos establecidos. Su capacidad para gestionar su tiempo y entregar resultados a tiempo es destacable. Comunicación Escrita: A veces, las comunicaciones escritas de Juan pueden ser confusas. Le recomendaría revisar y ser más conciso en sus correos electrónicos y documentos. Habilidades Analíticas: Juan podría beneficiarse de mejorar sus habilidades analíticas. Algunos informes requieren un enfoque más profundo en el análisis de datos. Desarrollo Profesional: Juan debería considerar participar en cursos o talleres para seguir desarrollando sus habilidades en marketing digital. Comentarios Generales: Juan es un miembro valioso de nuestro equipo. Su actitud positiva y su dedicación son admirables. Continuaremos apoyándolo en su crecimiento profesional y esperamos verlo seguir prosperando en su rol.', N'Example User', CAST(N'2024-03-03T23:31:33.6335290' AS DateTime2), N'Initial User', CAST(N'2024-03-03T23:31:33.6335299' AS DateTime2), 0)
INSERT [dbo].[Reports] ([Id], [Date], [Performance], [AchivedGoals], [SavedMoney], [ProfileId], [Comments], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'7d73862e-5cb4-418a-b985-7cf3a1f2a231', CAST(N'2023-04-01T23:26:37.6610000' AS DateTime2), 10, 1, 8500, N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'Creatividad: Juan ha demostrado una gran creatividad en la creación de campañas publicitarias. Sus ideas frescas han contribuido al éxito de varios proyectos. Trabajo en Equipo: Juan es un colaborador excepcional. Siempre está dispuesto a ayudar a sus compañeros y aporta positivamente en las reuniones de equipo. Cumplimiento de Plazos: Juan cumple con los plazos establecidos. Su capacidad para gestionar su tiempo y entregar resultados a tiempo es destacable. Comunicación Escrita: A veces, las comunicaciones escritas de Juan pueden ser confusas. Le recomendaría revisar y ser más conciso en sus correos electrónicos y documentos. Habilidades Analíticas: Juan podría beneficiarse de mejorar sus habilidades analíticas. Algunos informes requieren un enfoque más profundo en el análisis de datos. Desarrollo Profesional: Juan debería considerar participar en cursos o talleres para seguir desarrollando sus habilidades en marketing digital. Comentarios Generales: Juan es un miembro valioso de nuestro equipo. Su actitud positiva y su dedicación son admirables. Continuaremos apoyándolo en su crecimiento profesional y esperamos verlo seguir prosperando en su rol.', N'Example User', CAST(N'2024-03-03T23:32:02.7093224' AS DateTime2), N'Initial User', CAST(N'2024-03-03T23:32:02.7093238' AS DateTime2), 0)
INSERT [dbo].[Reports] ([Id], [Date], [Performance], [AchivedGoals], [SavedMoney], [ProfileId], [Comments], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'8250548d-eb0f-41fc-9db1-de3a16be106b', CAST(N'2023-05-01T23:26:37.6610000' AS DateTime2), 6, 0.55, 800, N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'Creatividad: Juan ha demostrado una gran creatividad en la creación de campañas publicitarias. Sus ideas frescas han contribuido al éxito de varios proyectos. Trabajo en Equipo: Juan es un colaborador excepcional. Siempre está dispuesto a ayudar a sus compañeros y aporta positivamente en las reuniones de equipo. Cumplimiento de Plazos: Juan cumple con los plazos establecidos. Su capacidad para gestionar su tiempo y entregar resultados a tiempo es destacable. Comunicación Escrita: A veces, las comunicaciones escritas de Juan pueden ser confusas. Le recomendaría revisar y ser más conciso en sus correos electrónicos y documentos. Habilidades Analíticas: Juan podría beneficiarse de mejorar sus habilidades analíticas. Algunos informes requieren un enfoque más profundo en el análisis de datos. Desarrollo Profesional: Juan debería considerar participar en cursos o talleres para seguir desarrollando sus habilidades en marketing digital. Comentarios Generales: Juan es un miembro valioso de nuestro equipo. Su actitud positiva y su dedicación son admirables. Continuaremos apoyándolo en su crecimiento profesional y esperamos verlo seguir prosperando en su rol.', N'Example User', CAST(N'2024-03-03T23:32:06.9072679' AS DateTime2), N'Initial User', CAST(N'2024-03-03T23:32:06.9072691' AS DateTime2), 0)
INSERT [dbo].[Reports] ([Id], [Date], [Performance], [AchivedGoals], [SavedMoney], [ProfileId], [Comments], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'a6901a40-0684-44e3-b799-7b3e91e0d766', CAST(N'2023-06-01T23:26:37.6610000' AS DateTime2), 8, 0.9, 4000, N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'Creatividad: Juan ha demostrado una gran creatividad en la creación de campañas publicitarias. Sus ideas frescas han contribuido al éxito de varios proyectos. Trabajo en Equipo: Juan es un colaborador excepcional. Siempre está dispuesto a ayudar a sus compañeros y aporta positivamente en las reuniones de equipo. Cumplimiento de Plazos: Juan cumple con los plazos establecidos. Su capacidad para gestionar su tiempo y entregar resultados a tiempo es destacable. Comunicación Escrita: A veces, las comunicaciones escritas de Juan pueden ser confusas. Le recomendaría revisar y ser más conciso en sus correos electrónicos y documentos. Habilidades Analíticas: Juan podría beneficiarse de mejorar sus habilidades analíticas. Algunos informes requieren un enfoque más profundo en el análisis de datos. Desarrollo Profesional: Juan debería considerar participar en cursos o talleres para seguir desarrollando sus habilidades en marketing digital. Comentarios Generales: Juan es un miembro valioso de nuestro equipo. Su actitud positiva y su dedicación son admirables. Continuaremos apoyándolo en su crecimiento profesional y esperamos verlo seguir prosperando en su rol.', N'Example User', CAST(N'2024-03-03T23:32:08.3600839' AS DateTime2), N'Initial User', CAST(N'2024-03-03T23:32:08.3600849' AS DateTime2), 0)
INSERT [dbo].[Reports] ([Id], [Date], [Performance], [AchivedGoals], [SavedMoney], [ProfileId], [Comments], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'ed3c6f21-942c-40bb-b973-f54a47a4fa33', CAST(N'2023-07-01T23:26:37.6610000' AS DateTime2), 9, 0.9, 5500, N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'Creatividad: Juan ha demostrado una gran creatividad en la creación de campañas publicitarias. Sus ideas frescas han contribuido al éxito de varios proyectos. Trabajo en Equipo: Juan es un colaborador excepcional. Siempre está dispuesto a ayudar a sus compañeros y aporta positivamente en las reuniones de equipo. Cumplimiento de Plazos: Juan cumple con los plazos establecidos. Su capacidad para gestionar su tiempo y entregar resultados a tiempo es destacable. Comunicación Escrita: A veces, las comunicaciones escritas de Juan pueden ser confusas. Le recomendaría revisar y ser más conciso en sus correos electrónicos y documentos. Habilidades Analíticas: Juan podría beneficiarse de mejorar sus habilidades analíticas. Algunos informes requieren un enfoque más profundo en el análisis de datos. Desarrollo Profesional: Juan debería considerar participar en cursos o talleres para seguir desarrollando sus habilidades en marketing digital. Comentarios Generales: Juan es un miembro valioso de nuestro equipo. Su actitud positiva y su dedicación son admirables. Continuaremos apoyándolo en su crecimiento profesional y esperamos verlo seguir prosperando en su rol.', N'Example User', CAST(N'2024-03-03T23:31:51.8774692' AS DateTime2), N'Initial User', CAST(N'2024-03-03T23:31:51.8774700' AS DateTime2), 0)
INSERT [dbo].[Reports] ([Id], [Date], [Performance], [AchivedGoals], [SavedMoney], [ProfileId], [Comments], [CreatedBy], [CreatedAt], [LastModifiedBy], [LastModifiedAt], [IsDeleted]) VALUES (N'f2e863ea-ba6d-4991-a9da-680623f3785a', CAST(N'2023-08-01T23:26:37.6610000' AS DateTime2), 9, 0.85, 5000, N'056e2e3a-ef22-456a-98b0-1cc354fff147', N'Creatividad: Juan ha demostrado una gran creatividad en la creación de campañas publicitarias. Sus ideas frescas han contribuido al éxito de varios proyectos. Trabajo en Equipo: Juan es un colaborador excepcional. Siempre está dispuesto a ayudar a sus compañeros y aporta positivamente en las reuniones de equipo. Cumplimiento de Plazos: Juan cumple con los plazos establecidos. Su capacidad para gestionar su tiempo y entregar resultados a tiempo es destacable. Comunicación Escrita: A veces, las comunicaciones escritas de Juan pueden ser confusas. Le recomendaría revisar y ser más conciso en sus correos electrónicos y documentos. Habilidades Analíticas: Juan podría beneficiarse de mejorar sus habilidades analíticas. Algunos informes requieren un enfoque más profundo en el análisis de datos. Desarrollo Profesional: Juan debería considerar participar en cursos o talleres para seguir desarrollando sus habilidades en marketing digital. Comentarios Generales: Juan es un miembro valioso de nuestro equipo. Su actitud positiva y su dedicación son admirables. Continuaremos apoyándolo en su crecimiento profesional y esperamos verlo seguir prosperando en su rol.', N'Example User', CAST(N'2024-03-03T23:32:05.6091691' AS DateTime2), N'Initial User', CAST(N'2024-03-03T23:32:05.6091698' AS DateTime2), 0)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 05/03/2024 10:13:15 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 05/03/2024 10:13:15 a. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 05/03/2024 10:13:15 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 05/03/2024 10:13:15 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 05/03/2024 10:13:15 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 05/03/2024 10:13:15 a. m. ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 05/03/2024 10:13:15 a. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Assignments_ProfileId]    Script Date: 05/03/2024 10:13:15 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_Assignments_ProfileId] ON [dbo].[Assignments]
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Assignments_StatusId]    Script Date: 05/03/2024 10:13:15 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_Assignments_StatusId] ON [dbo].[Assignments]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_BenefitsSummaries_ProfileId]    Script Date: 05/03/2024 10:13:15 a. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_BenefitsSummaries_ProfileId] ON [dbo].[BenefitsSummaries]
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Permissions_ProfileId]    Script Date: 05/03/2024 10:13:15 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_Permissions_ProfileId] ON [dbo].[Permissions]
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Permissions_StatusId]    Script Date: 05/03/2024 10:13:15 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_Permissions_StatusId] ON [dbo].[Permissions]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Permissions_TypeId]    Script Date: 05/03/2024 10:13:15 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_Permissions_TypeId] ON [dbo].[Permissions]
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Profiles_AppUserId]    Script Date: 05/03/2024 10:13:15 a. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Profiles_AppUserId] ON [dbo].[Profiles]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Reports_ProfileId]    Script Date: 05/03/2024 10:13:15 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_Reports_ProfileId] ON [dbo].[Reports]
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
ALTER TABLE [dbo].[Assignments]  WITH CHECK ADD  CONSTRAINT [FK_Assignments_AssignmentStatus_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[AssignmentStatus] ([Id])
GO
ALTER TABLE [dbo].[Assignments] CHECK CONSTRAINT [FK_Assignments_AssignmentStatus_StatusId]
GO
ALTER TABLE [dbo].[Assignments]  WITH CHECK ADD  CONSTRAINT [FK_Assignments_Profiles_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[Assignments] CHECK CONSTRAINT [FK_Assignments_Profiles_ProfileId]
GO
ALTER TABLE [dbo].[BenefitsSummaries]  WITH CHECK ADD  CONSTRAINT [FK_BenefitsSummaries_Profiles_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[BenefitsSummaries] CHECK CONSTRAINT [FK_BenefitsSummaries_Profiles_ProfileId]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_PermissionStatus_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[PermissionStatus] ([Id])
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_PermissionStatus_StatusId]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_PermissionTypes_TypeId] FOREIGN KEY([TypeId])
REFERENCES [dbo].[PermissionTypes] ([Id])
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_PermissionTypes_TypeId]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Profiles_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_Profiles_ProfileId]
GO
ALTER TABLE [dbo].[Profiles]  WITH CHECK ADD  CONSTRAINT [FK_Profiles_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [FK_Profiles_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_Reports_Profiles_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[Reports] CHECK CONSTRAINT [FK_Reports_Profiles_ProfileId]
GO
USE [master]
GO
ALTER DATABASE [TestEGDB] SET  READ_WRITE 
GO
