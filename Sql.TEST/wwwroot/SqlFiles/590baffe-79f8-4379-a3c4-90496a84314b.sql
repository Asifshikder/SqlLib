USE [testdb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/2/2021 11:06:21 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AboutUs]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[PrimaryImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_AboutUs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/2/2021 11:06:21 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/2/2021 11:06:21 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/2/2021 11:06:21 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/2/2021 11:06:21 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/2/2021 11:06:21 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[UserImage] [nvarchar](max) NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/2/2021 11:06:21 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BaseGaragePort]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaseGaragePort](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[DocumentFile] [nvarchar](max) NULL,
	[DocumentFile1] [nvarchar](max) NULL,
	[Instruction] [nvarchar](max) NULL,
	[TechnicalSpecification] [nvarchar](max) NULL,
	[BaseImage] [nvarchar](max) NULL,
	[BasePrice] [bigint] NULL,
 CONSTRAINT [PK_BaseGaragePort] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BlogCategory]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_BlogCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BlogImage]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BlogPostId] [int] NOT NULL,
	[ImageFile] [nvarchar](max) NULL,
 CONSTRAINT [PK_BlogImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BlogPost]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogPost](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[PrimaryImage] [nvarchar](max) NULL,
	[BlogCategoryId] [int] NOT NULL,
 CONSTRAINT [PK_BlogPost] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Color]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ColorSamplmage] [nvarchar](max) NULL,
	[ColorName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ColorPriceRole]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColorPriceRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PriceIncrease] [bigint] NULL,
 CONSTRAINT [PK_ColorPriceRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ContactReasonId] [int] NOT NULL,
	[Attachment] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactReason]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactReason](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_ContactReason] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeliveryFee]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryFee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DoorCount] [bigint] NULL,
	[ZoneId] [int] NOT NULL,
	[Fee] [bigint] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_DeliveryFee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeliveryZone]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryZone](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ZoneName] [nvarchar](max) NULL,
 CONSTRAINT [PK_DeliveryZone] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Height]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Height](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MeasuredValue] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Height] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InstalationTypePriceRole]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InstalationTypePriceRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PriceIncrease] [bigint] NULL,
 CONSTRAINT [PK_InstalationTypePriceRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Installation]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Installation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[District] [nvarchar](max) NULL,
	[Height] [bigint] NOT NULL,
	[Width] [bigint] NOT NULL,
	[OldGateStatusId] [int] NULL,
 CONSTRAINT [PK_Installation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MainPage]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainPage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[PrimaryImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_MainPage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Model]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ModelLogo] [nvarchar](max) NULL,
	[ModelName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Model] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OldGateStatus]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OldGateStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_OldGateStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OperationStyle]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationStyle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PriceIncrease] [bigint] NOT NULL,
 CONSTRAINT [PK_OperationStyle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OperationStylePriceRole]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationStylePriceRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PriceIncrease] [bigint] NULL,
 CONSTRAINT [PK_OperationStylePriceRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OurServices]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OurServices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[PrimaryImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_OurServices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PatternPriceRole]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatternPriceRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PriceIncrease] [bigint] NULL,
 CONSTRAINT [PK_PatternPriceRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PostalCode]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostalCode](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostCodeStart] [bigint] NOT NULL,
	[PostCodeEnd] [bigint] NOT NULL,
	[ZoneId] [int] NOT NULL,
 CONSTRAINT [PK_PostalCode] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PrivacyPolicy]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrivacyPolicy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[PrimaryImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_PrivacyPolicy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[TechnicalSpec] [nvarchar](max) NULL,
	[PrimaryImage] [nvarchar](max) NULL,
	[Image1] [nvarchar](max) NULL,
	[Image2] [nvarchar](max) NULL,
	[Image3] [nvarchar](max) NULL,
	[Image4] [nvarchar](max) NULL,
	[Price] [bigint] NOT NULL,
	[ModelId] [int] NULL,
	[CategoryId] [int] NULL,
	[OperationStyleId] [int] NULL,
	[DocumentationFile1] [nvarchar](max) NULL,
	[DocumentationFile2] [nvarchar](max) NULL,
	[BrandId] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](max) NULL,
	[ParentType] [int] NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReturnPolicy]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnPolicy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[PrimaryImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_ReturnPolicy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SizePriceRole]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SizePriceRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FromHeight] [bigint] NULL,
	[ToHeight] [bigint] NOT NULL,
	[FromWidth] [bigint] NULL,
	[ToWidth] [bigint] NOT NULL,
	[PriceIncrease] [bigint] NULL,
 CONSTRAINT [PK_SizePriceRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Store]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[StoreViewImage] [nvarchar](max) NULL,
	[MapIFrame] [nvarchar](max) NULL,
	[StoreOnTime] [nvarchar](max) NULL,
	[SeoMETA] [nvarchar](max) NULL,
	[SeoMETAEnglish] [nvarchar](max) NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StoreEmployee]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreEmployee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Designation] [nvarchar](max) NULL,
	[EmployeeImage] [nvarchar](max) NULL,
	[StoreId] [int] NOT NULL,
 CONSTRAINT [PK_StoreEmployee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StoreService]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreService](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ServiceLogo] [nvarchar](max) NULL,
	[StoreId] [int] NOT NULL,
 CONSTRAINT [PK_StoreService] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SurfaceLayerPriceRole]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurfaceLayerPriceRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PriceIncrease] [bigint] NULL,
	[PatternPriceRoleId] [int] NULL,
 CONSTRAINT [PK_SurfaceLayerPriceRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SurfaceType]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurfaceType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SurfaceTypeName] [nvarchar](max) NULL,
	[SurfaceTypeLogo] [nvarchar](max) NULL,
 CONSTRAINT [PK_SurfaceType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TermsOfPurchase]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TermsOfPurchase](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[PrimaryImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_TermsOfPurchase] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Width]    Script Date: 3/2/2021 11:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Width](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MeasuredValue] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Width] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210227093536_dasfsd', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210302170517_sdfs', N'5.0.2')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c261b6af-f5ea-4226-b5eb-403d3207096f', N'Client', N'CLIENT', N'18125885-bd96-4649-ac95-594631954bb1')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'dfa02daa-3d85-47f7-abbb-a410d2541330', N'Admin', N'ADMIN', N'ddd0bd39-f13f-4355-80c1-4d6cd6a2fcf8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5c068f88-d32f-43e9-80db-791a3844d3a5', N'dfa02daa-3d85-47f7-abbb-a410d2541330')
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserImage], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5c068f88-d32f-43e9-80db-791a3844d3a5', N'Garage Specialisten', NULL, N'garagespecialisten', N'GARAGESPECIALISTEN', N'admin@garagespecialisten.se', N'ADMIN@GARAGESPECIALISTEN.SE', 0, N'AQAAAAEAACcQAAAAELp3yV1Qk4YRRVo5hqe8AKCUFuY5BCCAZ584xOt59Siq8cEtvC12xsgjKKHafCipvg==', N'BDZBV2UYOGLNOX73KU2IL5KFXRBIJ7S4', N'f8379e6a-90e5-44ec-aab6-23b2a9d07685', N'0909099032432', 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[BaseGaragePort] ON 

INSERT [dbo].[BaseGaragePort] ([Id], [Title], [Description], [DocumentFile], [DocumentFile1], [Instruction], [TechnicalSpecification], [BaseImage], [BasePrice]) VALUES (1, N'Anpassa Compact+', N'Garageporten COMPACT+ är en komplett takskjutport som kan levereras med  motorn ELEVO från King Gates >> (inklusive styrskena) och 2 fjärrkontroller i elegant design. Allt du behöver för ett komplett portbygge. COMPACT+ är den optimala lösningen för ditt garage när takhöjden för din port är minst [porthöjden + 80 mm]. Alla delar i porten har noga valts ut och är grundligt testade för att se till att de är av högsta kvalitet.  COMPACT+ har dessutom en elegant design och stark konstruktion. Läs mer om COMPACT+ >>

Antal ribbor på garageporten bestäms utifrån höjden på porten och valet av mönster (småpanel, mellanpanel eller helpanel). Se bilderna i gallerian för mer inspiration..', NULL, NULL, NULL, NULL, NULL, 6000)
SET IDENTITY_INSERT [dbo].[BaseGaragePort] OFF
SET IDENTITY_INSERT [dbo].[ColorPriceRole] ON 

INSERT [dbo].[ColorPriceRole] ([Id], [Name], [PriceIncrease]) VALUES (1, N'Trafikvit (RAL 9016)  ', 0)
INSERT [dbo].[ColorPriceRole] ([Id], [Name], [PriceIncrease]) VALUES (2, N'Antracitgrå (RAL 7016)   +1 000,00 Kr', 1000)
SET IDENTITY_INSERT [dbo].[ColorPriceRole] OFF
SET IDENTITY_INSERT [dbo].[InstalationTypePriceRole] ON 

INSERT [dbo].[InstalationTypePriceRole] ([Id], [Name], [PriceIncrease]) VALUES (1, N'Nej  ', 0)
INSERT [dbo].[InstalationTypePriceRole] ([Id], [Name], [PriceIncrease]) VALUES (2, N'Utnyttja rot-avdrag   +4 130,00 Kr', 4130)
INSERT [dbo].[InstalationTypePriceRole] ([Id], [Name], [PriceIncrease]) VALUES (3, N'Installation utan rot-avdrag   +5 900,00 Kr', 5900)
SET IDENTITY_INSERT [dbo].[InstalationTypePriceRole] OFF
SET IDENTITY_INSERT [dbo].[OperationStylePriceRole] ON 

INSERT [dbo].[OperationStylePriceRole] ([Id], [Name], [PriceIncrease]) VALUES (1, N'Manuellt  ', 0)
INSERT [dbo].[OperationStylePriceRole] ([Id], [Name], [PriceIncrease]) VALUES (2, N'Motordrift - ELEVO från King gates   +1 700,00 Kr', 1700)
SET IDENTITY_INSERT [dbo].[OperationStylePriceRole] OFF
SET IDENTITY_INSERT [dbo].[PatternPriceRole] ON 

INSERT [dbo].[PatternPriceRole] ([Id], [Name], [PriceIncrease]) VALUES (1, N'Småplanel  ', 0)
INSERT [dbo].[PatternPriceRole] ([Id], [Name], [PriceIncrease]) VALUES (2, N'Mellanpanel   +500,00 Kr', 500)
INSERT [dbo].[PatternPriceRole] ([Id], [Name], [PriceIncrease]) VALUES (3, N'Helpanel   +1 000,00 Kr', 1000)
SET IDENTITY_INSERT [dbo].[PatternPriceRole] OFF
SET IDENTITY_INSERT [dbo].[SizePriceRole] ON 

INSERT [dbo].[SizePriceRole] ([Id], [FromHeight], [ToHeight], [FromWidth], [ToWidth], [PriceIncrease]) VALUES (1, 1800, 1900, 1850, 1900, 50)
INSERT [dbo].[SizePriceRole] ([Id], [FromHeight], [ToHeight], [FromWidth], [ToWidth], [PriceIncrease]) VALUES (2, 1901, 2000, 1901, 2000, 100)
INSERT [dbo].[SizePriceRole] ([Id], [FromHeight], [ToHeight], [FromWidth], [ToWidth], [PriceIncrease]) VALUES (3, 2001, 2500, 2001, 2500, 500)
INSERT [dbo].[SizePriceRole] ([Id], [FromHeight], [ToHeight], [FromWidth], [ToWidth], [PriceIncrease]) VALUES (4, 2501, 3000, 2500, 2500, 1000)
INSERT [dbo].[SizePriceRole] ([Id], [FromHeight], [ToHeight], [FromWidth], [ToWidth], [PriceIncrease]) VALUES (5, 3001, 4500, 2500, 2500, 1000)
SET IDENTITY_INSERT [dbo].[SizePriceRole] OFF
SET IDENTITY_INSERT [dbo].[SurfaceLayerPriceRole] ON 

INSERT [dbo].[SurfaceLayerPriceRole] ([Id], [Name], [PriceIncrease], [PatternPriceRoleId]) VALUES (1, N'Stucco', 0, 1)
INSERT [dbo].[SurfaceLayerPriceRole] ([Id], [Name], [PriceIncrease], [PatternPriceRoleId]) VALUES (2, N'Stucco', 0, 2)
INSERT [dbo].[SurfaceLayerPriceRole] ([Id], [Name], [PriceIncrease], [PatternPriceRoleId]) VALUES (3, N'Stucco', 0, 3)
SET IDENTITY_INSERT [dbo].[SurfaceLayerPriceRole] OFF
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
ALTER TABLE [dbo].[BlogImage]  WITH CHECK ADD  CONSTRAINT [FK_BlogImage_BlogPost_BlogPostId] FOREIGN KEY([BlogPostId])
REFERENCES [dbo].[BlogPost] ([Id])
GO
ALTER TABLE [dbo].[BlogImage] CHECK CONSTRAINT [FK_BlogImage_BlogPost_BlogPostId]
GO
ALTER TABLE [dbo].[BlogPost]  WITH CHECK ADD  CONSTRAINT [FK_BlogPost_BlogCategory_BlogCategoryId] FOREIGN KEY([BlogCategoryId])
REFERENCES [dbo].[BlogCategory] ([Id])
GO
ALTER TABLE [dbo].[BlogPost] CHECK CONSTRAINT [FK_BlogPost_BlogCategory_BlogCategoryId]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_ContactReason_ContactReasonId] FOREIGN KEY([ContactReasonId])
REFERENCES [dbo].[ContactReason] ([Id])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_ContactReason_ContactReasonId]
GO
ALTER TABLE [dbo].[DeliveryFee]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryFee_DeliveryZone_ZoneId] FOREIGN KEY([ZoneId])
REFERENCES [dbo].[DeliveryZone] ([Id])
GO
ALTER TABLE [dbo].[DeliveryFee] CHECK CONSTRAINT [FK_DeliveryFee_DeliveryZone_ZoneId]
GO
ALTER TABLE [dbo].[Height]  WITH CHECK ADD  CONSTRAINT [FK_Height_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Height] CHECK CONSTRAINT [FK_Height_Product_ProductId]
GO
ALTER TABLE [dbo].[Installation]  WITH CHECK ADD  CONSTRAINT [FK_Installation_OldGateStatus_OldGateStatusId] FOREIGN KEY([OldGateStatusId])
REFERENCES [dbo].[OldGateStatus] ([Id])
GO
ALTER TABLE [dbo].[Installation] CHECK CONSTRAINT [FK_Installation_OldGateStatus_OldGateStatusId]
GO
ALTER TABLE [dbo].[PostalCode]  WITH CHECK ADD  CONSTRAINT [FK_PostalCode_DeliveryZone_ZoneId] FOREIGN KEY([ZoneId])
REFERENCES [dbo].[DeliveryZone] ([Id])
GO
ALTER TABLE [dbo].[PostalCode] CHECK CONSTRAINT [FK_PostalCode_DeliveryZone_ZoneId]
GO
ALTER TABLE [dbo].[StoreEmployee]  WITH CHECK ADD  CONSTRAINT [FK_StoreEmployee_Store_StoreId] FOREIGN KEY([StoreId])
REFERENCES [dbo].[Store] ([Id])
GO
ALTER TABLE [dbo].[StoreEmployee] CHECK CONSTRAINT [FK_StoreEmployee_Store_StoreId]
GO
ALTER TABLE [dbo].[StoreService]  WITH CHECK ADD  CONSTRAINT [FK_StoreService_Store_StoreId] FOREIGN KEY([StoreId])
REFERENCES [dbo].[Store] ([Id])
GO
ALTER TABLE [dbo].[StoreService] CHECK CONSTRAINT [FK_StoreService_Store_StoreId]
GO
ALTER TABLE [dbo].[SurfaceLayerPriceRole]  WITH CHECK ADD  CONSTRAINT [FK_SurfaceLayerPriceRole_PatternPriceRole_PatternPriceRoleId] FOREIGN KEY([PatternPriceRoleId])
REFERENCES [dbo].[PatternPriceRole] ([Id])
GO
ALTER TABLE [dbo].[SurfaceLayerPriceRole] CHECK CONSTRAINT [FK_SurfaceLayerPriceRole_PatternPriceRole_PatternPriceRoleId]
GO
ALTER TABLE [dbo].[Width]  WITH CHECK ADD  CONSTRAINT [FK_Width_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Width] CHECK CONSTRAINT [FK_Width_Product_ProductId]
GO
