USE [Moving]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 7/12/2020 10:15:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[Phone] [varchar](100) NULL,
	[Email] [varchar](250) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobImages]    Script Date: 7/12/2020 10:15:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[ImagePath] [varchar](max) NOT NULL,
 CONSTRAINT [PK_JobImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 7/12/2020 10:15:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumberOfMovers] [int] NOT NULL,
	[NumberOfTrucks] [int] NOT NULL,
	[PricePerHour] [decimal](10, 2) NOT NULL,
	[Deposit] [decimal](10, 2) NOT NULL,
	[MinimumHours] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[JobTypeId] [int] NOT NULL,
	[MoveDate] [datetime] NOT NULL,
	[CreatedByUserId] [int] NOT NULL,
	[JobStatusId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Pickup] [bit] NOT NULL,
	[Delivery] [bit] NOT NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobStatuses]    Script Date: 7/12/2020 10:15:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobStatuses](
	[Id] [int] NOT NULL,
	[JobStatus] [varchar](150) NOT NULL,
 CONSTRAINT [PK_JobStatuses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobTypes]    Script Date: 7/12/2020 10:15:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobTypes](
	[Id] [int] NOT NULL,
	[JobType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_JobTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 7/12/2020 10:15:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[Id] [int] NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Description] [varchar](350) NOT NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolePermissions]    Script Date: 7/12/2020 10:15:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermissions](
	[PermissionId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_RolePermissions] PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 7/12/2020 10:15:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] NOT NULL,
	[RoleName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UseCaseLogs]    Script Date: 7/12/2020 10:15:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UseCaseLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[UseCaseName] [varchar](100) NOT NULL,
	[Data] [varchar](max) NOT NULL,
	[Actor] [varchar](500) NOT NULL,
 CONSTRAINT [PK_UseCaseLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 7/12/2020 10:15:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/12/2020 10:15:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](150) NOT NULL,
	[LastName] [varchar](150) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[UserName] [varchar](150) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[CreatedDate] [date] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (1, N'Mike', N'Young', N'38166415304', N'mike@young.com', CAST(N'2020-07-01T15:04:05.497' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (2, N'LazarA', N'Customer', N'12345689', N'lazar@gmail.com', CAST(N'2020-06-30T14:48:00.630' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (3, N'Mike', N'Young', N'38166415304', N'mike@young.com', CAST(N'2020-07-01T15:04:18.583' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (4, N'John', N'Smith', N'38123812314', N'john@smith.com', CAST(N'2020-07-01T15:10:30.730' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (5, N'Adam', N'Holmes', N'381238123114', N'adam@holmes.com', CAST(N'2020-07-01T15:19:00.883' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (6, N'milan', N'milanovic', NULL, N'milan@gmail.com', CAST(N'2020-07-02T16:54:16.167' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (7, N'petar', N'petrovic', NULL, N'petar@gmail.com', CAST(N'2020-07-02T16:54:41.643' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (8, N'mitar', N'miric', N'3141251512', N'mitar@gmail.com', CAST(N'2020-07-02T17:09:22.060' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (9, N'John', N'Johnny', N'1231231231', N'john@john.com', CAST(N'2020-07-12T09:29:41.413' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (10, N'Josh', N'Junior', N'123312123', N'josh@junior.com', CAST(N'2020-07-12T09:30:04.540' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (11, N'Suzan', N'Taylor', N'123123123', N'suzan@tailor.com', CAST(N'2020-07-12T09:30:18.707' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (12, N'Jack', N'Black', N'123321123', N'black@jack.com', CAST(N'2020-07-12T09:30:34.507' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (13, N'Bruce', N'H', N'132322133', N'bruce@morph.com', CAST(N'2020-07-12T09:30:51.337' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (14, N'Samantah', N'Swiss', N'991293939', N'samantah@swiss.com', CAST(N'2020-07-12T09:31:15.790' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (15, N'Pavelito', N'Pav', N'309930033', N'pavel@pavel.com', CAST(N'2020-07-12T09:31:27.953' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (16, N'Lim', N'Essa', N'319189883', N'lim@essa.com', CAST(N'2020-07-12T09:36:16.157' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (17, N'Sneaky', N'Bot', N'123939393', N'sneaky@c9.com', CAST(N'2020-07-12T09:36:35.070' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (18, N'Joshua', N'Joshuah', N'93939393', N'jish@jish.com', CAST(N'2020-07-12T09:36:55.060' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (19, N'Dragan', N'draganovic', N'39393939', N'dragi@drag.com', CAST(N'2020-07-12T09:37:11.210' AS DateTime))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Phone], [Email], [CreatedDate]) VALUES (20, N'Goran', N'Goranovic', N'39393993', N'goran@goran.com', CAST(N'2020-07-12T09:37:24.547' AS DateTime))
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[JobImages] ON 

INSERT [dbo].[JobImages] ([Id], [JobId], [ImagePath]) VALUES (1, 3, N'Images\98bd2e11-343c-40c9-b758-ad81d4ee43a7.jpg')
SET IDENTITY_INSERT [dbo].[JobImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Jobs] ON 

INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (3, 10, 10, CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 10, CAST(N'2020-06-30T17:48:08.493' AS DateTime), 3, CAST(N'2020-06-30T12:42:24.847' AS DateTime), 1004, 1, 1, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (4, 2, 1, CAST(10.00 AS Decimal(10, 2)), CAST(50.00 AS Decimal(10, 2)), 3, CAST(N'2020-07-01T14:14:46.197' AS DateTime), 1, CAST(N'2020-07-05T00:00:00.000' AS DateTime), 1004, 1, 1, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (5, 3, 1, CAST(15.00 AS Decimal(10, 2)), CAST(50.00 AS Decimal(10, 2)), 3, CAST(N'2020-07-01T14:43:19.363' AS DateTime), 2, CAST(N'2020-07-06T00:00:00.000' AS DateTime), 1004, 1, 1, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (6, 2, 1, CAST(200.00 AS Decimal(10, 2)), CAST(50.00 AS Decimal(10, 2)), 3, CAST(N'2020-07-01T14:43:52.680' AS DateTime), 1, CAST(N'2020-07-04T00:00:00.000' AS DateTime), 1004, 1, 1, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (7, 3, 2, CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 3, CAST(N'2020-07-01T15:23:04.533' AS DateTime), 1, CAST(N'2020-07-04T00:00:00.000' AS DateTime), 1023, 1, 5, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (8, 10, 3, CAST(1000.00 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), 3, CAST(N'2020-07-01T15:23:42.443' AS DateTime), 4, CAST(N'2020-07-29T00:00:00.000' AS DateTime), 1023, 1, 4, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (9, 2, 2, CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 10, CAST(N'2020-07-02T16:46:57.003' AS DateTime), 3, CAST(N'2020-07-05T00:00:00.000' AS DateTime), 1020, 1, 1, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (10, 2, 2, CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 10, CAST(N'2020-07-02T16:47:11.173' AS DateTime), 3, CAST(N'2020-07-06T00:00:00.000' AS DateTime), 1020, 1, 1, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (11, 2, 1, CAST(300.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 10, CAST(N'2020-07-02T16:47:34.950' AS DateTime), 3, CAST(N'2020-07-07T00:00:00.000' AS DateTime), 1020, 1, 1, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (12, 2, 1, CAST(300.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 10, CAST(N'2020-07-02T16:47:39.790' AS DateTime), 3, CAST(N'2020-07-07T00:00:00.000' AS DateTime), 1020, 1, 1, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (13, 2, 1, CAST(300.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 10, CAST(N'2020-07-02T16:47:44.390' AS DateTime), 3, CAST(N'2020-07-07T00:00:00.000' AS DateTime), 1020, 1, 1, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (14, 2, 1, CAST(300.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 10, CAST(N'2020-07-02T16:49:39.627' AS DateTime), 3, CAST(N'2020-07-07T00:00:00.000' AS DateTime), 1020, 1, 1, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (15, 2, 1, CAST(300.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 10, CAST(N'2020-07-02T16:49:49.557' AS DateTime), 3, CAST(N'2020-07-07T00:00:00.000' AS DateTime), 1020, 1, 1, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (16, 2, 1, CAST(300.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 10, CAST(N'2020-07-02T16:50:04.770' AS DateTime), 3, CAST(N'2020-07-10T00:00:00.000' AS DateTime), 1020, 1, 1, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (17, 2, 1, CAST(300.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 10, CAST(N'2020-07-02T16:51:32.323' AS DateTime), 3, CAST(N'2020-07-10T00:00:00.000' AS DateTime), 1020, 1, 1, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (19, 2, 1, CAST(150.00 AS Decimal(10, 2)), CAST(50.00 AS Decimal(10, 2)), 3, CAST(N'2020-07-12T09:41:12.047' AS DateTime), 1, CAST(N'2020-07-13T00:00:00.000' AS DateTime), 1032, 1, 7, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (24, 2, 1, CAST(150.00 AS Decimal(10, 2)), CAST(40.00 AS Decimal(10, 2)), 3, CAST(N'2020-07-12T09:43:17.820' AS DateTime), 2, CAST(N'2020-07-23T00:00:00.000' AS DateTime), 1022, 1, 5, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (25, 4, 1, CAST(170.00 AS Decimal(10, 2)), CAST(50.00 AS Decimal(10, 2)), 3, CAST(N'2020-07-12T09:44:02.813' AS DateTime), 2, CAST(N'2020-07-22T00:00:00.000' AS DateTime), 1027, 1, 4, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (26, 5, 2, CAST(200.00 AS Decimal(10, 2)), CAST(50.00 AS Decimal(10, 2)), 3, CAST(N'2020-07-12T00:00:00.000' AS DateTime), 3, CAST(N'2020-07-21T00:00:00.000' AS DateTime), 1026, 1, 3, 0, 0)
INSERT [dbo].[Jobs] ([Id], [NumberOfMovers], [NumberOfTrucks], [PricePerHour], [Deposit], [MinimumHours], [CreatedDate], [JobTypeId], [MoveDate], [CreatedByUserId], [JobStatusId], [CustomerId], [Pickup], [Delivery]) VALUES (28, 4, 2, CAST(200.00 AS Decimal(10, 2)), CAST(50.00 AS Decimal(10, 2)), 3, CAST(N'2020-07-12T09:46:13.743' AS DateTime), 2, CAST(N'2020-07-22T00:00:00.000' AS DateTime), 1024, 1, 7, 0, 0)
SET IDENTITY_INSERT [dbo].[Jobs] OFF
GO
INSERT [dbo].[JobStatuses] ([Id], [JobStatus]) VALUES (1, N'In Progress')
INSERT [dbo].[JobStatuses] ([Id], [JobStatus]) VALUES (2, N'Completed')
GO
INSERT [dbo].[JobTypes] ([Id], [JobType]) VALUES (1, N'1 bedrooms')
INSERT [dbo].[JobTypes] ([Id], [JobType]) VALUES (2, N'2 bedrooms')
INSERT [dbo].[JobTypes] ([Id], [JobType]) VALUES (3, N'3 bedrooms')
INSERT [dbo].[JobTypes] ([Id], [JobType]) VALUES (4, N'more than 3 bedrooms')
GO
INSERT [dbo].[Permissions] ([Id], [Name], [Description]) VALUES (1, N'Create New Customer', N'Create New Customer')
INSERT [dbo].[Permissions] ([Id], [Name], [Description]) VALUES (2, N'Delete Customer', N'Delete Customer')
INSERT [dbo].[Permissions] ([Id], [Name], [Description]) VALUES (3, N'Update Customer', N'Update Customer')
INSERT [dbo].[Permissions] ([Id], [Name], [Description]) VALUES (4, N'Customer search', N'Customer search')
INSERT [dbo].[Permissions] ([Id], [Name], [Description]) VALUES (5, N'Create New Job', N'Create New Job')
INSERT [dbo].[Permissions] ([Id], [Name], [Description]) VALUES (6, N'Update Job', N'Update Job')
INSERT [dbo].[Permissions] ([Id], [Name], [Description]) VALUES (7, N'Job Search', N'Job Search')
INSERT [dbo].[Permissions] ([Id], [Name], [Description]) VALUES (8, N'Delete Job', N'Delete Job')
INSERT [dbo].[Permissions] ([Id], [Name], [Description]) VALUES (9, N'Use Case Search', N'Use Case Search')
GO
INSERT [dbo].[RolePermissions] ([PermissionId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[RolePermissions] ([PermissionId], [RoleId]) VALUES (1, 2)
INSERT [dbo].[RolePermissions] ([PermissionId], [RoleId]) VALUES (2, 1)
INSERT [dbo].[RolePermissions] ([PermissionId], [RoleId]) VALUES (3, 1)
INSERT [dbo].[RolePermissions] ([PermissionId], [RoleId]) VALUES (3, 2)
INSERT [dbo].[RolePermissions] ([PermissionId], [RoleId]) VALUES (4, 1)
INSERT [dbo].[RolePermissions] ([PermissionId], [RoleId]) VALUES (4, 2)
INSERT [dbo].[RolePermissions] ([PermissionId], [RoleId]) VALUES (5, 1)
INSERT [dbo].[RolePermissions] ([PermissionId], [RoleId]) VALUES (5, 2)
INSERT [dbo].[RolePermissions] ([PermissionId], [RoleId]) VALUES (6, 1)
INSERT [dbo].[RolePermissions] ([PermissionId], [RoleId]) VALUES (6, 2)
INSERT [dbo].[RolePermissions] ([PermissionId], [RoleId]) VALUES (7, 1)
INSERT [dbo].[RolePermissions] ([PermissionId], [RoleId]) VALUES (7, 2)
INSERT [dbo].[RolePermissions] ([PermissionId], [RoleId]) VALUES (8, 1)
INSERT [dbo].[RolePermissions] ([PermissionId], [RoleId]) VALUES (9, 1)
INSERT [dbo].[RolePermissions] ([PermissionId], [RoleId]) VALUES (9, 2)
GO
INSERT [dbo].[Roles] ([Id], [RoleName]) VALUES (1, N'Manager')
INSERT [dbo].[Roles] ([Id], [RoleName]) VALUES (2, N'Sales Agent')
INSERT [dbo].[Roles] ([Id], [RoleName]) VALUES (3, N'Contractor')
GO
SET IDENTITY_INSERT [dbo].[UseCaseLogs] ON 

INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (1, CAST(N'2020-06-28T19:40:33.560' AS DateTime), N'Create New Customer using EF', N'{"Id":0,"FirstName":"string","LastName":"string","Phone":"string","Email":null,"CreatedDate":"2020-06-28T19:40:17.794Z"}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (2, CAST(N'2020-06-28T19:41:55.660' AS DateTime), N'Create New Customer using EF', N'{"Id":0,"FirstName":"string","LastName":"string","Phone":"string","Email":null,"CreatedDate":"2020-06-28T19:40:17.794Z"}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (3, CAST(N'2020-06-28T19:43:02.653' AS DateTime), N'Create New Customer using EF', N'{"Id":0,"FirstName":"string","LastName":"string","Phone":"string","Email":null,"CreatedDate":"2020-06-28T19:40:17.794Z"}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (4, CAST(N'2020-06-28T19:43:48.190' AS DateTime), N'Create New Customer using EF', N'{"Id":0,"FirstName":"string","LastName":"string","Phone":"string","Email":null,"CreatedDate":"2020-06-28T19:40:17.794Z"}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (5, CAST(N'2020-06-29T13:34:31.850' AS DateTime), N'User Registration', N'{"FirstName":"string","LastName":"string","UserName":"string","Password":"string","Email":"string","RoleId":0}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (6, CAST(N'2020-06-29T13:36:09.150' AS DateTime), N'User Registration', N'{"FirstName":"string","LastName":"string","UserName":"string","Password":"string","Email":"string","RoleId":0}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (7, CAST(N'2020-06-29T14:49:30.697' AS DateTime), N'User Registration', N'{"FirstName":"Salman","LastName":"Arshad","UserName":"salman","Password":"salman123","Email":"s.arshad623@gmail.com","RoleId":0}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (8, CAST(N'2020-06-29T14:50:02.803' AS DateTime), N'User Registration', N'{"FirstName":"Salman","LastName":"Arshad","UserName":"salman","Password":"salman123","Email":"s.arshad623@gmail.com","RoleId":2}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (30, CAST(N'2020-06-30T09:39:07.053' AS DateTime), N'User Registration', N'{"FirstName":"string","LastName":"string","UserName":"string","Password":"string","Email":"string","RoleId":0}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (31, CAST(N'2020-06-30T09:40:00.840' AS DateTime), N'User Registration', N'{"FirstName":"string","LastName":"string","UserName":"string","Password":"string","Email":"string","RoleId":0}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (32, CAST(N'2020-06-30T09:43:07.763' AS DateTime), N'User Registration', N'{"FirstName":"Lazar","LastName":"Martic","UserName":"martic","Password":"lazar","Email":"lazar@gmail.com","RoleId":2}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (33, CAST(N'2020-06-30T09:43:20.903' AS DateTime), N'User Registration', N'{"FirstName":"Lazar","LastName":"Martic","UserName":"martic","Password":"lazar123","Email":"lazar@gmail.com","RoleId":2}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (34, CAST(N'2020-06-30T09:45:42.837' AS DateTime), N'Create New Customer', N'{"Id":0,"FirstName":"Lazar","LastName":"Customer","Phone":"12345689","Email":"lazar@gmail.com","CreatedDate":"0001-01-01T00:00:00"}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (35, CAST(N'2020-06-30T09:45:54.443' AS DateTime), N'Customer search', N'{"Name":null,"PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (36, CAST(N'2020-06-30T09:46:37.007' AS DateTime), N'Customer search', N'{"Name":null,"PerPage":5,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (37, CAST(N'2020-06-30T09:46:46.587' AS DateTime), N'Customer search', N'{"Name":null,"PerPage":1,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (38, CAST(N'2020-06-30T09:47:18.350' AS DateTime), N'Customer search', N'{"Name":null,"PerPage":2,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (39, CAST(N'2020-06-30T09:47:44.073' AS DateTime), N'Update Customer', N'{"Id":0,"FirstName":"LazarA","LastName":"Customer","Phone":"12345689","Email":"lazar@gmail.com","CreatedDate":"2020-06-30T14:45:42.86"}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (40, CAST(N'2020-06-30T09:48:00.620' AS DateTime), N'Update Customer', N'{"Id":2,"FirstName":"LazarA","LastName":"Customer","Phone":"12345689","Email":"lazar@gmail.com","CreatedDate":"2020-06-30T14:45:42.86"}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (41, CAST(N'2020-06-30T09:48:10.580' AS DateTime), N'Customer search', N'{"Name":null,"PerPage":2,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (42, CAST(N'2020-06-30T09:48:56.487' AS DateTime), N'Delete Customer', N'1', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (43, CAST(N'2020-06-30T09:51:54.050' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":2,"NumberOfTrucks":2,"PricePerHour":15.0,"Deposit":100.0,"MinimumHours":10,"CreatedDate":"2020-06-30T09:49:44.891Z","JobTypeId":10,"MoveDate":"2020-06-30T09:49:44.891Z","MoveSize":0,"CreatedByUserId":0,"JobStatusId":0,"CustomerId":0,"Pickup":false,"Delivery":false}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (44, CAST(N'2020-06-30T09:52:14.390' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":2,"NumberOfTrucks":2,"PricePerHour":15.0,"Deposit":100.0,"MinimumHours":10,"CreatedDate":"2020-06-30T09:49:44.891Z","JobTypeId":10,"MoveDate":"2020-06-30T09:49:44.891Z","MoveSize":10,"CreatedByUserId":0,"JobStatusId":0,"CustomerId":2,"Pickup":false,"Delivery":false}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (45, CAST(N'2020-06-30T09:53:28.637' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":2,"NumberOfTrucks":2,"PricePerHour":15.0,"Deposit":100.0,"MinimumHours":10,"CreatedDate":"2020-06-30T09:49:44.891Z","JobTypeId":10,"MoveDate":"2020-06-30T09:49:44.891Z","MoveSize":10,"CreatedByUserId":0,"JobStatusId":0,"CustomerId":2,"Pickup":false,"Delivery":false}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (46, CAST(N'2020-06-30T09:54:01.533' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":2,"NumberOfTrucks":2,"PricePerHour":15.0,"Deposit":100.0,"MinimumHours":10,"CreatedDate":"2020-06-30T09:49:44.891Z","JobTypeId":10,"MoveDate":"2020-06-30T09:49:44.891Z","MoveSize":10,"CreatedByUserId":0,"JobStatusId":0,"CustomerId":2,"Pickup":false,"Delivery":false}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (47, CAST(N'2020-06-30T09:54:25.603' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":2,"NumberOfTrucks":2,"PricePerHour":15.0,"Deposit":100.0,"MinimumHours":10,"CreatedDate":"2020-06-30T09:49:44.891Z","JobTypeId":4,"MoveDate":"2020-06-30T09:49:44.891Z","MoveSize":10,"CreatedByUserId":0,"JobStatusId":0,"CustomerId":2,"Pickup":false,"Delivery":false}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (48, CAST(N'2020-06-30T12:41:42.757' AS DateTime), N'Create New Job', N'{"Id":0,"ImagePath":"Images\\98bd2e11-343c-40c9-b758-ad81d4ee43a7.jpg","JobId":15}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (49, CAST(N'2020-06-30T12:43:30.730' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":10,"NumberOfTrucks":10,"PricePerHour":10.0,"Deposit":10.0,"MinimumHours":10,"CreatedDate":"2020-06-30T12:42:24.847Z","JobTypeId":2,"MoveDate":"2020-06-30T12:42:24.847Z","CreatedByUserId":1004,"JobStatusId":1,"CustomerId":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (50, CAST(N'2020-06-30T12:43:39.053' AS DateTime), N'Job search', N'{"CustomerName":null,"PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (51, CAST(N'2020-06-30T12:44:53.147' AS DateTime), N'Job search', N'{"CustomerName":null,"PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (52, CAST(N'2020-06-30T12:46:20.800' AS DateTime), N'Job Search', N'{"CustomerName":null,"PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (53, CAST(N'2020-06-30T12:46:53.487' AS DateTime), N'Update Job', N'{"Id":3,"NumberOfMovers":10,"NumberOfTrucks":10,"PricePerHour":10.00,"Deposit":10.00,"MinimumHours":10,"CreatedDate":"2020-06-30T17:43:30.777","JobTypeId":3,"MoveDate":"2020-06-30T12:42:24.847","CreatedByUserId":1004,"JobStatusId":1,"CustomerId":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (54, CAST(N'2020-06-30T12:48:05.100' AS DateTime), N'Update Job', N'{"Id":3,"NumberOfMovers":10,"NumberOfTrucks":10,"PricePerHour":10.00,"Deposit":10.00,"MinimumHours":10,"CreatedDate":"2020-06-30T17:43:30.777","JobTypeId":3,"MoveDate":"2020-06-30T12:42:24.847","CreatedByUserId":1004,"JobStatusId":1,"CustomerId":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (55, CAST(N'2020-06-30T12:48:26.567' AS DateTime), N'Create New Job', N'{"Id":0,"ImagePath":"Images\\98bd2e11-343c-40c9-b758-ad81d4ee43a7.jpg","JobId":3}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (56, CAST(N'2020-06-30T14:11:18.197' AS DateTime), N'Job Search', N'{"CustomerName":null,"PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (57, CAST(N'2020-06-30T14:11:57.373' AS DateTime), N'Job Search', N'{"CustomerName":null,"PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (58, CAST(N'2020-06-30T14:12:53.670' AS DateTime), N'Job Search', N'{"CustomerName":null,"PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (59, CAST(N'2020-06-30T14:15:38.257' AS DateTime), N'Job Search', N'{"CustomerName":null,"PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (60, CAST(N'2020-06-30T14:16:28.970' AS DateTime), N'Job Search', N'{"CustomerName":null,"PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (61, CAST(N'2020-06-30T14:18:23.737' AS DateTime), N'Customer search', N'{"Name":null,"PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (62, CAST(N'2020-06-30T14:18:29.240' AS DateTime), N'Job Search', N'{"CustomerName":null,"PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (63, CAST(N'2020-06-30T14:19:47.150' AS DateTime), N'Job Search', N'{"CustomerName":null,"PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (64, CAST(N'2020-06-30T14:21:09.420' AS DateTime), N'Job Search', N'{"CustomerName":null,"PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (65, CAST(N'2020-06-30T14:23:36.887' AS DateTime), N'Job Search', N'{"CustomerName":null,"PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (66, CAST(N'2020-06-30T14:24:17.200' AS DateTime), N'Job Search', N'{"CustomerName":null,"PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (89, CAST(N'2020-07-01T12:02:57.513' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":0,"NumberOfTrucks":0,"PricePerHour":0.0,"Deposit":0.0,"MinimumHours":0,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":0,"MoveDate":"0001-01-01T00:00:00","CreatedByUserId":1004,"JobStatusId":1,"CustomerId":0,"JobImages":[]}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (90, CAST(N'2020-07-01T12:06:09.817' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":2,"NumberOfTrucks":1,"PricePerHour":10.0,"Deposit":50.0,"MinimumHours":3,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":0,"MoveDate":"0001-01-01T00:00:00","CreatedByUserId":1004,"JobStatusId":1,"CustomerId":1,"JobImages":[]}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (91, CAST(N'2020-07-01T12:14:44.097' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":2,"NumberOfTrucks":1,"PricePerHour":10.0,"Deposit":50.0,"MinimumHours":3,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":1,"MoveDate":"2020-07-05T00:00:00","CreatedByUserId":1004,"JobStatusId":1,"CustomerId":1,"JobImages":[]}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (92, CAST(N'2020-07-01T12:43:17.817' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":3,"NumberOfTrucks":1,"PricePerHour":15.0,"Deposit":50.0,"MinimumHours":3,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":2,"MoveDate":"2020-07-06T00:00:00","CreatedByUserId":1004,"JobStatusId":1,"CustomerId":1,"JobImages":[]}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (93, CAST(N'2020-07-01T12:43:52.663' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":2,"NumberOfTrucks":1,"PricePerHour":200.0,"Deposit":50.0,"MinimumHours":3,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":1,"MoveDate":"2020-07-04T00:00:00","CreatedByUserId":1004,"JobStatusId":1,"CustomerId":1,"JobImages":[]}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (94, CAST(N'2020-07-01T12:43:57.897' AS DateTime), N'Job Search', N'{"CustomerName":null,"PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (95, CAST(N'2020-07-01T12:47:33.063' AS DateTime), N'Job Search', N'{"CustomerName":"lazar","PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (96, CAST(N'2020-07-01T12:47:44.507' AS DateTime), N'Job Search', N'{"CustomerName":"admin","PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (97, CAST(N'2020-07-01T12:47:57.263' AS DateTime), N'Job Search', N'{"CustomerName":"l","PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (98, CAST(N'2020-07-01T12:48:08.493' AS DateTime), N'Job Search', N'{"CustomerName":"l","PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (99, CAST(N'2020-07-01T12:48:25.787' AS DateTime), N'Job Search', N'{"CustomerName":"l","PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (100, CAST(N'2020-07-01T12:48:46.560' AS DateTime), N'Job Search', N'{"CustomerName":"l","PerPage":10,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (101, CAST(N'2020-07-01T12:51:02.370' AS DateTime), N'Job Search', N'{"CustomerName":"l","PerPage":2,"Page":1}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (102, CAST(N'2020-07-01T12:51:11.380' AS DateTime), N'Job Search', N'{"CustomerName":"l","PerPage":2,"Page":2}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (103, CAST(N'2020-07-01T12:58:10.030' AS DateTime), N'User Registration', N'{"FirstName":"Johny","LastName":"Smith","UserName":"johnny123","Password":"johnny321","Email":"johnny@gmail.com","RoleId":3}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (104, CAST(N'2020-07-01T12:59:01.303' AS DateTime), N'User Registration', N'{"FirstName":"Sales","LastName":"Agent","UserName":"sales","Password":"sales123","Email":"sales@gmail.com","RoleId":2}', N'lazar@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (105, CAST(N'2020-07-01T13:01:41.803' AS DateTime), N'Update Customer', N'{"Id":0,"FirstName":"Mike","LastName":"Young","Phone":"38166415304","Email":"mike@young.com","CreatedDate":"0001-01-01T00:00:00"}', N'sales@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (106, CAST(N'2020-07-01T13:03:10.380' AS DateTime), N'Update Customer', N'{"Id":22,"FirstName":"Mike","LastName":"Young","Phone":"38166415304","Email":"mike@young.com","CreatedDate":"0001-01-01T00:00:00"}', N'sales@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (107, CAST(N'2020-07-01T13:04:02.040' AS DateTime), N'Update Customer', N'{"Id":13,"FirstName":"Mike","LastName":"Young","Phone":"38166415304","Email":"mike@young.com","CreatedDate":"0001-01-01T00:00:00"}', N'sales@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (108, CAST(N'2020-07-01T13:04:05.477' AS DateTime), N'Update Customer', N'{"Id":1,"FirstName":"Mike","LastName":"Young","Phone":"38166415304","Email":"mike@young.com","CreatedDate":"0001-01-01T00:00:00"}', N'sales@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (109, CAST(N'2020-07-01T13:04:18.577' AS DateTime), N'Create New Customer', N'{"Id":0,"FirstName":"Mike","LastName":"Young","Phone":"38166415304","Email":"mike@young.com","CreatedDate":"0001-01-01T00:00:00"}', N'sales@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (110, CAST(N'2020-07-01T13:10:01.300' AS DateTime), N'Create New Customer', N'{"Id":0,"FirstName":"Mike","LastName":"Young","Phone":"38166415304","Email":"mike@young.com","CreatedDate":"0001-01-01T00:00:00"}', N'sales@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (111, CAST(N'2020-07-01T13:10:30.710' AS DateTime), N'Create New Customer', N'{"Id":0,"FirstName":"John","LastName":"Smith","Phone":"38123812314","Email":"john@smith.com","CreatedDate":"0001-01-01T00:00:00"}', N'sales@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (112, CAST(N'2020-07-01T13:19:00.867' AS DateTime), N'Create New Customer', N'{"Id":0,"FirstName":"Adam","LastName":"Holmes","Phone":"381238123114","Email":"adam@holmes.com","CreatedDate":"0001-01-01T00:00:00"}', N'sales@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (113, CAST(N'2020-07-01T13:19:08.313' AS DateTime), N'Customer search', N'{"Name":null,"PerPage":10,"Page":1}', N'sales@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (114, CAST(N'2020-07-01T13:21:30.023' AS DateTime), N'Job Search', N'{"CustomerName":null,"PerPage":10,"Page":1}', N'sales@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (115, CAST(N'2020-07-01T13:22:45.757' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":3,"NumberOfTrucks":2,"PricePerHour":10.00,"Deposit":10.00,"MinimumHours":3,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":1,"MoveDate":"2020-07-04T00:00:00","CreatedByUserId":1023,"JobStatusId":1,"CustomerId":0,"JobImages":[]}', N'sales@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (116, CAST(N'2020-07-01T13:23:04.520' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":3,"NumberOfTrucks":2,"PricePerHour":10.00,"Deposit":10.00,"MinimumHours":3,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":1,"MoveDate":"2020-07-04T00:00:00","CreatedByUserId":1023,"JobStatusId":1,"CustomerId":5,"JobImages":[]}', N'sales@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (117, CAST(N'2020-07-01T13:23:12.147' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":3,"NumberOfTrucks":25,"PricePerHour":10.00,"Deposit":10.00,"MinimumHours":3,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":1,"MoveDate":"2020-07-04T00:00:00","CreatedByUserId":1023,"JobStatusId":1,"CustomerId":5,"JobImages":[]}', N'sales@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (118, CAST(N'2020-07-01T13:23:42.433' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":10,"NumberOfTrucks":3,"PricePerHour":1000.00,"Deposit":100.0,"MinimumHours":3,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":4,"MoveDate":"2020-07-29T00:00:00","CreatedByUserId":1023,"JobStatusId":1,"CustomerId":4,"JobImages":[]}', N'sales@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (119, CAST(N'2020-07-02T14:44:45.597' AS DateTime), N'Job Search', N'{"CustomerName":null,"PerPage":10,"Page":1}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (120, CAST(N'2020-07-02T14:46:06.067' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":10,"NumberOfTrucks":10,"PricePerHour":10.00,"Deposit":10.00,"MinimumHours":10,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":3,"MoveDate":"0001-01-01T00:00:00","CreatedByUserId":1020,"JobStatusId":1,"CustomerId":1,"JobImages":[]}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (121, CAST(N'2020-07-02T14:46:42.510' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":10,"NumberOfTrucks":10,"PricePerHour":10.00,"Deposit":10.00,"MinimumHours":10,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":3,"MoveDate":"2020-07-05T00:00:00","CreatedByUserId":1020,"JobStatusId":1,"CustomerId":1,"JobImages":[]}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (122, CAST(N'2020-07-02T14:46:50.753' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":12,"NumberOfTrucks":2,"PricePerHour":10.00,"Deposit":10.00,"MinimumHours":10,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":3,"MoveDate":"2020-07-05T00:00:00","CreatedByUserId":1020,"JobStatusId":1,"CustomerId":1,"JobImages":[]}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (123, CAST(N'2020-07-02T14:46:56.990' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":2,"NumberOfTrucks":2,"PricePerHour":10.00,"Deposit":10.00,"MinimumHours":10,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":3,"MoveDate":"2020-07-05T00:00:00","CreatedByUserId":1020,"JobStatusId":1,"CustomerId":1,"JobImages":[]}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (124, CAST(N'2020-07-02T14:47:11.120' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":2,"NumberOfTrucks":2,"PricePerHour":10.00,"Deposit":10.00,"MinimumHours":10,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":3,"MoveDate":"2020-07-06T00:00:00","CreatedByUserId":1020,"JobStatusId":1,"CustomerId":1,"JobImages":[]}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (125, CAST(N'2020-07-02T14:47:19.863' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":1,"NumberOfTrucks":2,"PricePerHour":10.00,"Deposit":10.00,"MinimumHours":10,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":3,"MoveDate":"2020-07-07T00:00:00","CreatedByUserId":1020,"JobStatusId":1,"CustomerId":1,"JobImages":[]}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (126, CAST(N'2020-07-02T14:47:34.930' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":2,"NumberOfTrucks":1,"PricePerHour":300.0,"Deposit":10.00,"MinimumHours":10,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":3,"MoveDate":"2020-07-07T00:00:00","CreatedByUserId":1020,"JobStatusId":1,"CustomerId":1,"JobImages":[]}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (127, CAST(N'2020-07-02T14:47:39.770' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":2,"NumberOfTrucks":1,"PricePerHour":300.0,"Deposit":10.00,"MinimumHours":10,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":3,"MoveDate":"2020-07-07T00:00:00","CreatedByUserId":1020,"JobStatusId":1,"CustomerId":1,"JobImages":[]}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (128, CAST(N'2020-07-02T14:47:44.383' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":2,"NumberOfTrucks":1,"PricePerHour":300.0,"Deposit":10.00,"MinimumHours":10,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":3,"MoveDate":"2020-07-07T00:00:00","CreatedByUserId":1020,"JobStatusId":1,"CustomerId":1,"JobImages":[]}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (129, CAST(N'2020-07-02T14:49:38.063' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":2,"NumberOfTrucks":1,"PricePerHour":300.0,"Deposit":10.00,"MinimumHours":10,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":3,"MoveDate":"2020-07-07T00:00:00","CreatedByUserId":1020,"JobStatusId":1,"CustomerId":1,"JobImages":[]}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (130, CAST(N'2020-07-02T14:49:49.540' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":2,"NumberOfTrucks":1,"PricePerHour":300.0,"Deposit":10.00,"MinimumHours":10,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":3,"MoveDate":"2020-07-07T00:00:00","CreatedByUserId":1020,"JobStatusId":1,"CustomerId":1,"JobImages":[]}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (131, CAST(N'2020-07-02T14:50:04.753' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":2,"NumberOfTrucks":1,"PricePerHour":300.0,"Deposit":10.00,"MinimumHours":10,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":3,"MoveDate":"2020-07-10T00:00:00","CreatedByUserId":1020,"JobStatusId":1,"CustomerId":1,"JobImages":[]}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (132, CAST(N'2020-07-02T14:51:32.307' AS DateTime), N'Create New Job', N'{"Id":0,"NumberOfMovers":2,"NumberOfTrucks":1,"PricePerHour":300.0,"Deposit":10.00,"MinimumHours":10,"CreatedDate":"0001-01-01T00:00:00","JobTypeId":3,"MoveDate":"2020-07-10T00:00:00","CreatedByUserId":1020,"JobStatusId":1,"CustomerId":1,"JobImages":[]}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (133, CAST(N'2020-07-02T14:54:14.637' AS DateTime), N'Create New Customer', N'{"Id":0,"FirstName":"milan","LastName":"milanovic","Phone":null,"Email":"milan@gmail.com","CreatedDate":"0001-01-01T00:00:00"}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (134, CAST(N'2020-07-02T14:54:41.633' AS DateTime), N'Create New Customer', N'{"Id":0,"FirstName":"petar","LastName":"petrovic","Phone":null,"Email":"petar@gmail.com","CreatedDate":"0001-01-01T00:00:00"}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (135, CAST(N'2020-07-02T15:09:20.557' AS DateTime), N'Create New Customer', N'{"Id":0,"FirstName":"mitar","LastName":"miric","Phone":"3141251512","Email":"mitar@gmail.com","CreatedDate":"0001-01-01T00:00:00"}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (136, CAST(N'2020-07-12T07:26:53.953' AS DateTime), N'User Registration', N'{"FirstName":"John","LastName":"Doe","UserName":null,"Password":null,"Email":"john@doe.com","RoleId":0}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (137, CAST(N'2020-07-12T07:27:33.507' AS DateTime), N'User Registration', N'{"FirstName":"John","LastName":"Doe","UserName":null,"Password":"sifra123","Email":"john@doe.com","RoleId":1}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (138, CAST(N'2020-07-12T07:27:48.047' AS DateTime), N'User Registration', N'{"FirstName":"John","LastName":"Doe","UserName":null,"Password":"sifra123","Email":"john@doe.com","RoleId":1}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (139, CAST(N'2020-07-12T07:28:01.660' AS DateTime), N'User Registration', N'{"FirstName":"John","LastName":"Doe","UserName":"john123","Password":"sifra123","Email":"john@doe.com","RoleId":1}', N'admin@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (140, CAST(N'2020-07-12T07:28:42.523' AS DateTime), N'User Registration', N'{"FirstName":"Mike","LastName":"Smith","UserName":"mike123","Password":"sifra123","Email":"mike@smith.com","RoleId":1}', N'admin@gmail.com')
SET IDENTITY_INSERT [dbo].[UseCaseLogs] OFF
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1004, 2)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1020, 2)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1022, 3)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1023, 2)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1024, 1)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1025, 1)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1004, N'Lazar', N'Martic', N'lazar@gmail.com', N'martic', N'lazar123', CAST(N'2020-06-30' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1020, N'Admin', N'Admin', N'admin@gmail.com', N'admin', N'admin123', CAST(N'2020-06-30' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1021, N'Manager', N'Manager', N'manager@gmail.com', N'manager', N'manager123', CAST(N'2020-07-01' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1022, N'Johny', N'Smith', N'johnny@gmail.com', N'johnny123', N'johnny321', CAST(N'2020-07-01' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1023, N'Sales', N'Agent', N'sales@gmail.com', N'sales', N'sales123', CAST(N'2020-07-01' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1024, N'John', N'Doe', N'john@doe.com', N'john123', N'sifra123', CAST(N'2020-07-12' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1025, N'Mike', N'Smith', N'mike@smith.com', N'mike123', N'sifra123', CAST(N'2020-07-12' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1026, N'Frank', N'Franklin', N'frank@frank.com', N'frank123', N'frank123', CAST(N'2020-07-12' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1027, N'Josh', N'Joshin', N'josh@josh.com', N'josh123', N'josh123', CAST(N'2020-07-12' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1028, N'Anna', N'An', N'ann@anna.com', N'ann123', N'ann123', CAST(N'2020-07-12' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1029, N'Boris', N'Johnson', N'boris@johnson.com', N'boris123', N'boris123', CAST(N'2020-07-12' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1030, N'Adam', N'Apple', N'adam@apple.com', N'adam123', N'adam123', CAST(N'2020-07-12' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1031, N'Pike', N'Hook', N'pike@hook.com', N'pike123', N'pike123', CAST(N'2020-07-12' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1032, N'Donald', N'Trump', N'donald@trump.com', N'trum123', N'trum123', CAST(N'2020-07-12' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1033, N'Mike', N'Pence', N'mike@pence.com', N'mike', N'pence123', CAST(N'2020-07-12' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1034, N'Majkl', N'Luis', N'majkl@luis.com', N'majkl123', N'majkl123', CAST(N'2020-07-12' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1035, N'Dzim', N'Shepart', N'dzim@shepard.com', N'dzim123', N'dzim123', CAST(N'2020-07-12' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1036, N'Nick', N'Vuicic', N'nick@vuicic.com', N'nick.123', N'nick123', CAST(N'2020-07-12' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1037, N'Daglas', N'Adamas', N'daglas@adamas.com', N'daglas123', N'daglas123', CAST(N'2020-07-12' AS Date))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [CreatedDate]) VALUES (1038, N'Sam', N'Fisher', N'sam@fisher.com', N'sam123', N'sam123', CAST(N'2020-07-12' AS Date))
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Jobs] ADD  CONSTRAINT [DF_Jobs_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Jobs] ADD  CONSTRAINT [DF_Jobs_Pickup]  DEFAULT ((0)) FOR [Pickup]
GO
ALTER TABLE [dbo].[Jobs] ADD  CONSTRAINT [DF_Jobs_Delivery]  DEFAULT ((0)) FOR [Delivery]
GO
ALTER TABLE [dbo].[UseCaseLogs] ADD  CONSTRAINT [DF_UseCaseLogs_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[JobImages]  WITH CHECK ADD  CONSTRAINT [FK_JobImages_Jobs] FOREIGN KEY([JobId])
REFERENCES [dbo].[Jobs] ([Id])
GO
ALTER TABLE [dbo].[JobImages] CHECK CONSTRAINT [FK_JobImages_Jobs]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_Customers]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_JobStatuses] FOREIGN KEY([JobStatusId])
REFERENCES [dbo].[JobStatuses] ([Id])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_JobStatuses]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_JobTypes] FOREIGN KEY([JobTypeId])
REFERENCES [dbo].[JobTypes] ([Id])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_JobTypes]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_Users] FOREIGN KEY([CreatedByUserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_Users]
GO
ALTER TABLE [dbo].[RolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_RolePermissions_Permissions] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[Permissions] ([Id])
GO
ALTER TABLE [dbo].[RolePermissions] CHECK CONSTRAINT [FK_RolePermissions_Permissions]
GO
ALTER TABLE [dbo].[RolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_RolePermissions_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[RolePermissions] CHECK CONSTRAINT [FK_RolePermissions_Roles]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users]
GO
