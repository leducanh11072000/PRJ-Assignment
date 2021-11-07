USE [Assignment]
Go
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[userName] [varchar](100) NOT NULL,
	[password] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleAccount](
	[rid] [int] NOT NULL,
	[userName] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[id] [varchar](30) NOT NULL,
	[name] [nvarchar](20) NULL,
	[phoneNumber] [varchar](20) NULL,
	[total] [int] NULL,
	[payed] [int] NULL,
	[owes] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeatureGroup](
	[fid] [int] NOT NULL,
	[rid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[fid] ASC,
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[groupNumber] [int] NOT NULL,
	[leaderid] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[groupNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[id] [int] NOT NULL,
	[date] [date] NULL,
	[supplierid] [int] NULL,
	[amountPaid] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WareHouse](
	[seri] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
GO
CREATE TABLE [dbo].[Detail](
	[categoryid] [int] NULL,
	[seri] [varchar](50) NOT NULL,
	[billid] [int] NULL,
	[colorCode] [nvarchar](30),
	[unit] [nvarchar](30) Null,
	[quantity] [int] NULL,
	[price] [int] NULL,
	CONSTRAINT fkWareHouse_good FOREIGN KEY (seri) REFERENCES WareHouse (seri),
PRIMARY KEY CLUSTERED 
(	[seri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[address] [nvarchar](500) NULL,
	[phoneNumber] [varchar](20) NULL,
	[email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([userName], [password]) VALUES (N'leducanh@gmail', N'123')
INSERT [dbo].[Account] ([userName], [password]) VALUES (N'anhld', N'1122')
INSERT [dbo].[Account] ([userName], [password]) VALUES (N'anhldhr141746@gmail.com', N'2345')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Áo cộc tay')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Ba lỗ')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Quần đùi')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'jean')
INSERT [dbo].[Category] ([id], [name]) VALUES (5, N'Măng-Tô')
INSERT [dbo].[Category] ([id], [name]) VALUES (6, N'Áo dạ')
INSERT [dbo].[Category] ([id], [name]) VALUES (7, N'Quần vải')
INSERT [dbo].[Category] ([id], [name]) VALUES (8, N'Áo da')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[customer] ([id], [name], [phoneNumber], [total], [payed], [owes]) VALUES (N'Anhle', N'Le Duc Anh', N'0984268930', 1000000, 500000,500000)
INSERT [dbo].[customer] ([id], [name], [phoneNumber], [total], [payed], [owes]) VALUES (N'HanhPT9', N'Phạm Thúy Hạnh ', N'0123212322', 2000000,500000,1500000 )
INSERT [dbo].[customer] ([id], [name], [phoneNumber], [total], [payed], [owes]) VALUES (N'KhaiL2', N'Nguyễn Lý Hải', N'0936337498', 1000000, 500000,500000)
INSERT [dbo].[customer] ([id], [name], [phoneNumber], [total], [payed], [owes]) VALUES (N'LeAnhnk4', N'Nguyễn Khắc Lê Anh', N'02253977462', 8000000, 4300000,3700000)
GO
GO
INSERT [dbo].[Bill] ([id], [date], [supplierid], [amountPaid]) VALUES (111, CAST(N'2021-09-15' AS Date), 1, 12000)
INSERT [dbo].[Bill] ([id], [date], [supplierid], [amountPaid]) VALUES (1001, CAST(N'2021-11-04' AS Date), 2, 200000)
INSERT [dbo].[Bill] ([id], [date], [supplierid], [amountPaid]) VALUES (1122, CAST(N'2021-03-06' AS Date), 1, 300000)
INSERT [dbo].[Bill] ([id], [date], [supplierid], [amountPaid]) VALUES (1919, CAST(N'2021-07-01' AS Date), 3, 400000)
INSERT [dbo].[Bill] ([id], [date], [supplierid], [amountPaid]) VALUES (2000, CAST(N'2021-01-15' AS Date), 2, 12000)
INSERT [dbo].[Bill] ([id], [date], [supplierid], [amountPaid]) VALUES (7041, CAST(N'2021-01-22' AS Date), 3, 0)
INSERT [dbo].[Bill] ([id], [date], [supplierid], [amountPaid]) VALUES (10021, CAST(N'2021-03-02' AS Date), 2, 200000)
INSERT [dbo].[Bill] ([id], [date], [supplierid], [amountPaid]) VALUES (35077, CAST(N'2021-03-16' AS Date), 4, 1500000)
INSERT [dbo].[Bill] ([id], [date], [supplierid], [amountPaid]) VALUES (121111, CAST(N'2021-03-18' AS Date), 2, 120000)
INSERT [dbo].[Bill] ([id], [date], [supplierid], [amountPaid]) VALUES (1110000, CAST(N'2021-01-15' AS Date), 1, 12000)
INSERT [dbo].[Bill] ([id], [date], [supplierid], [amountPaid]) VALUES (1333333, CAST(N'2021-02-05' AS Date), 1, 300000)
INSERT [dbo].[Bill] ([id], [date], [supplierid], [amountPaid]) VALUES (3050210, CAST(N'2021-02-05' AS Date), 2, 300000)
INSERT [dbo].[Bill] ([id], [date], [supplierid], [amountPaid]) VALUES (25122020, CAST(N'2020-12-25' AS Date), 1, 0)
GO
INSERT [dbo].[Detail] ([categoryID],  [seri], [billid], [colorCode], [unit], [quantity], [price]) VALUES (3, N'12009', 1001,N'431', N'Lô', 1, 200000)
INSERT [dbo].[Detail] ([categoryID],  [seri], [billid], [colorCode], [unit], [quantity], [price]) VALUES (1, N'1221', 1122,N'211', N'Lô', 2, 150000)
INSERT [dbo].[Detail] ([categoryID],  [seri], [billid], [colorCode], [unit], [quantity], [price]) VALUES (4, N'122222', 111,N'312', N'Lô', 5, 200000)
INSERT [dbo].[Detail] ([categoryID],  [seri], [billid], [colorCode], [unit], [quantity], [price]) VALUES (1, N'123333', 1122,N'571', N'Lô', 8, 120000)
INSERT [dbo].[Detail] ([categoryID],  [seri], [billid], [colorCode], [unit], [quantity], [price]) VALUES (4, N'12341', 35077,N'438', N'Lô', 8, 400000)
INSERT [dbo].[Detail] ([categoryID],  [seri], [billid], [colorCode], [unit], [quantity], [price]) VALUES (4, N'1255', 111,N'125', N'Lô', 5, 35000)
INSERT [dbo].[Detail] ([categoryID],  [seri], [billid], [colorCode], [unit], [quantity], [price]) VALUES (2, N'1881', 3050210,N'394', N'Lô', 9, 40000)
INSERT [dbo].[Detail] ([categoryID],  [seri], [billid], [colorCode], [unit], [quantity], [price]) VALUES (1, N'2223', 1333333,N'932', N'Lô', 4, 10000)
INSERT [dbo].[Detail] ([categoryID],  [seri], [billid], [colorCode], [unit], [quantity], [price]) VALUES (4, N'434', 1001,N'001', N'Lô', 5, 500000)
INSERT [dbo].[Detail] ([categoryID],  [seri], [billid], [colorCode], [unit], [quantity], [price]) VALUES (1, N'61222', 25122020,N'325', N'Lô ', 3, 34000)
INSERT [dbo].[Detail] ([categoryID],  [seri], [billid], [colorCode], [unit], [quantity], [price]) VALUES (1, N'6456', 25122020,N'121', N'Chiếc', 4, 35000)
INSERT [dbo].[Detail] ([categoryID],  [seri], [billid], [colorCode], [unit], [quantity], [price]) VALUES (1, N'6546654', 25122020,N'754', N'Chiếc', 2, 32000)
INSERT [dbo].[Detail] ([categoryID],  [seri], [billid], [colorCode], [unit], [quantity], [price]) VALUES (4, N'9812', 111,N'984', N'Chiếc', 2, 40000)
GO
INSERT [dbo].[WareHouse] ([seri]) VALUES (N'1221')
INSERT [dbo].[WareHouse] ([seri]) VALUES (N'2223')
INSERT [dbo].[WareHouse] ([seri]) VALUES (N'434')
INSERT [dbo].[WareHouse] ([seri]) VALUES (N'61222')
INSERT [dbo].[WareHouse] ([seri]) VALUES (N'9812')
INSERT [dbo].[WareHouse] ([seri]) VALUES (N'1222222')
INSERT [dbo].[WareHouse] ([seri]) VALUES (N'12009')
INSERT [dbo].[WareHouse] ([seri]) VALUES (N'1255')
INSERT [dbo].[WareHouse] ([seri]) VALUES (N'6456')
INSERT [dbo].[WareHouse] ([seri]) VALUES (N'6546654')
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([id], [Name], [Address], [phoneNumber], [Email]) VALUES (1, N'Trung Anh', N'Dãy Công tơ nơ,tt Thổ Tang,Vĩnh Tường,Vĩnh phúc', N'0863426164', N'trunganh@gmail.com')
INSERT [dbo].[Supplier] ([id], [Name], [Address], [phoneNumber], [Email]) VALUES (2, N'K&G', N'Toàn nhà Sông Đà,Phạm Hùng,Mĩ Đình,Hà Nội', N'02257636910', N'KaG@gmail.com')
INSERT [dbo].[Supplier] ([id], [Name], [Address], [phoneNumber], [Email]) VALUES (3, N'Hiệp Hân', N'Dân Tiến,Khoái Châu,Hưng Yên', N'0988875261', N'Hiephan@gmail.com')
INSERT [dbo].[Supplier] ([id], [Name], [Address], [phoneNumber], [Email]) VALUES (4, N'Tuấn Anh', N'Cửa khẩu Móng Cái', N'0934976259', N'Tuananh1988@gmail.com')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
ALTER TABLE [dbo].[FeatureGroup]  WITH CHECK ADD FOREIGN KEY([fid])
REFERENCES [dbo].[Feature] ([id])
GO
ALTER TABLE [dbo].[FeatureGroup]  WITH CHECK ADD FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD FOREIGN KEY([leaderid])
REFERENCES [dbo].[Account] ([userName])
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([supplierid])
REFERENCES [dbo].[Supplier] ([id])
GO
ALTER TABLE [dbo].[Detail]  WITH CHECK ADD FOREIGN KEY([categoryid])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Detail]  WITH CHECK ADD FOREIGN KEY([billID])
REFERENCES [dbo].[Bill] ([id])
GO
ALTER TABLE [dbo].[WareHouse]  WITH CHECK ADD FOREIGN KEY([seri])
REFERENCES [dbo].[Detail] ([seri])
GO
ALTER TABLE [dbo].[RoleAccount]  WITH CHECK ADD FOREIGN KEY([userName])
REFERENCES [dbo].[Account] ([userName])
GO
ALTER TABLE [dbo].[RoleAccount]  WITH CHECK ADD FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([id])
GO