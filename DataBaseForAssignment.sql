USE [Assignment]
Go
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [varchar](100) NOT NULL,
	[Password] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
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
	[UserName] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
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
	[Name] [nvarchar](20) NULL,
	[phoneNumber] [varchar](20) NULL,
	[Total] [int] NULL,
	[Payed] [int] NULL,
	[Owes] [int] NULL,
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
	[GroupNumber] [int] NOT NULL,
	[IDLeader] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[importBill](
	[id] [int] NOT NULL,
	[date] [date] NULL,
	[SupplierID] [int] NULL,
	[AmountPaid] [float] NULL,
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
CREATE TABLE [dbo].[importGoods](
	[categoryID] [int] NULL,
	[Seri] [varchar](50) NOT NULL,
	[importbillID] [int] NULL,
	[colorCode] [nvarchar](30),
	[Number] [int] NULL,
	[Price] [int] NULL,
	CONSTRAINT fkWareHouse_good FOREIGN KEY (Seri) REFERENCES WareHouse (seri),
PRIMARY KEY CLUSTERED 
(	[Seri],
	[colorCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Address] [nvarchar](500) NULL,
	[phoneNumber] [varchar](20) NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([UserName], [Password]) VALUES (N'leducanh@gmail', N'123')
INSERT [dbo].[Account] ([UserName], [Password]) VALUES (N'anhld', N'1122')
INSERT [dbo].[Account] ([UserName], [Password]) VALUES (N'anhldhr141746@gmail.com', N'2345')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [Name]) VALUES (1, N'Áo cộc tay')
INSERT [dbo].[Category] ([id], [Name]) VALUES (2, N'Ba lỗ')
INSERT [dbo].[Category] ([id], [Name]) VALUES (3, N'Quần đùi')
INSERT [dbo].[Category] ([id], [Name]) VALUES (4, N'jean')
INSERT [dbo].[Category] ([id], [Name]) VALUES (5, N'Măng-Tô')
INSERT [dbo].[Category] ([id], [Name]) VALUES (6, N'Áo dạ')
INSERT [dbo].[Category] ([id], [Name]) VALUES (7, N'Quần vải')
INSERT [dbo].[Category] ([id], [Name]) VALUES (8, N'Áo da')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[customer] ([id], [Name], [phoneNumber], [Total], [Payed], [Owes]) VALUES (N'Anhle', N'Le Duc Anh', N'0984268930', 1000000, 500000,500000)
INSERT [dbo].[customer] ([id], [Name], [phoneNumber], [Total], [Payed], [Owes]) VALUES (N'HanhPT9', N'Phạm Thúy Hạnh ', N'0123212322', 2000000,500000,1500000 )
INSERT [dbo].[customer] ([id], [Name], [phoneNumber], [Total], [Payed], [Owes]) VALUES (N'KhaiL2', N'Nguyễn Lý Hải', N'0936337498', 1000000, 500000,500000)
INSERT [dbo].[customer] ([id], [Name], [phoneNumber], [Total], [Payed], [Owes]) VALUES (N'LeAnhnk4', N'Nguyễn Khắc Lê Anh', N'02253977462', 8000000, 4300000,3700000)
GO
GO
INSERT [dbo].[importBill] ([id], [date], [SupplierID], [AmountPaid]) VALUES (111, CAST(N'2021-01-15' AS Date), 1, 12000)
INSERT [dbo].[importBill] ([id], [date], [SupplierID], [AmountPaid]) VALUES (1001, CAST(N'2021-03-04' AS Date), 2, 200000)
INSERT [dbo].[importBill] ([id], [date], [SupplierID], [AmountPaid]) VALUES (1122, CAST(N'2021-03-06' AS Date), 1, 300000)
INSERT [dbo].[importBill] ([id], [date], [SupplierID], [AmountPaid]) VALUES (1919, CAST(N'2021-02-01' AS Date), 3, 400000)
INSERT [dbo].[importBill] ([id], [date], [SupplierID], [AmountPaid]) VALUES (2000, CAST(N'2021-01-15' AS Date), 2, 12000)
INSERT [dbo].[importBill] ([id], [date], [SupplierID], [AmountPaid]) VALUES (7041, CAST(N'2021-01-22' AS Date), 3, 0)
INSERT [dbo].[importBill] ([id], [date], [SupplierID], [AmountPaid]) VALUES (10021, CAST(N'2021-03-02' AS Date), 2, 200000)
INSERT [dbo].[importBill] ([id], [date], [SupplierID], [AmountPaid]) VALUES (35077, CAST(N'2021-03-16' AS Date), 4, 1500000)
INSERT [dbo].[importBill] ([id], [date], [SupplierID], [AmountPaid]) VALUES (121111, CAST(N'2021-03-18' AS Date), 2, 120000)
INSERT [dbo].[importBill] ([id], [date], [SupplierID], [AmountPaid]) VALUES (1110000, CAST(N'2021-01-15' AS Date), 1, 12000)
INSERT [dbo].[importBill] ([id], [date], [SupplierID], [AmountPaid]) VALUES (1333333, CAST(N'2021-02-05' AS Date), 1, 300000)
INSERT [dbo].[importBill] ([id], [date], [SupplierID], [AmountPaid]) VALUES (3050210, CAST(N'2021-02-05' AS Date), 2, 300000)
INSERT [dbo].[importBill] ([id], [date], [SupplierID], [AmountPaid]) VALUES (25122020, CAST(N'2020-12-25' AS Date), 1, 0)
GO
INSERT [dbo].[importGoods] ([categoryID],  [Seri], [importbillID], [colorCode], [Number], [Price]) VALUES (3, N'12009', 1001, N'Lô', 1, 200000)
INSERT [dbo].[importGoods] ([categoryID],  [Seri], [importbillID], [colorCode], [Number], [Price]) VALUES (1, N'1221', 1122, N'Lô', 2, 150000)
INSERT [dbo].[importGoods] ([categoryID],  [Seri], [importbillID], [colorCode], [Number], [Price]) VALUES (4, N'122222', 111, N'Lô', 5, 200000)
INSERT [dbo].[importGoods] ([categoryID],  [Seri], [importbillID], [colorCode], [Number], [Price]) VALUES (1, N'123333', 1122, N'Lô', 8, 120000)
INSERT [dbo].[importGoods] ([categoryID],  [Seri], [importbillID], [colorCode], [Number], [Price]) VALUES (4, N'12341', 35077, N'Lô', 8, 400000)
INSERT [dbo].[importGoods] ([categoryID],  [Seri], [importbillID], [colorCode], [Number], [Price]) VALUES (4, N'1255', 111, N'Lô', 5, 35000)
INSERT [dbo].[importGoods] ([categoryID],  [Seri], [importbillID], [colorCode], [Number], [Price]) VALUES (2, N'1881', 3050210, N'Lô', 9, 40000)
INSERT [dbo].[importGoods] ([categoryID],  [Seri], [importbillID], [colorCode], [Number], [Price]) VALUES (1, N'2223', 1333333, N'Lô', 4, 10000)
INSERT [dbo].[importGoods] ([categoryID],  [Seri], [importbillID], [colorCode], [Number], [Price]) VALUES (4, N'434', 1001, N'Lô', 5, 500000)
INSERT [dbo].[importGoods] ([categoryID],  [Seri], [importbillID], [colorCode], [Number], [Price]) VALUES (1, N'61222', 25122020, N'Lô ', 3, 34000)
INSERT [dbo].[importGoods] ([categoryID],  [Seri], [importbillID], [colorCode], [Number], [Price]) VALUES (1, N'6456', 25122020, N'Chiếc', 4, 35000)
INSERT [dbo].[importGoods] ([categoryID],  [Seri], [importbillID], [colorCode], [Number], [Price]) VALUES (1, N'6546654', 25122020, N'Chiếc', 2, 32000)
INSERT [dbo].[importGoods] ([categoryID],  [Seri], [importbillID], [colorCode], [Number], [Price]) VALUES (4, N'9812', 111, N'Chiếc', 2, 40000)
GO
INSERT [dbo].[WareHouse] ([seri]) VALUES (N'1221')
INSERT [dbo].[WareHouse] ([seri]) VALUES (N'2223')
INSERT [dbo].[WareHouse] ([seri]) VALUES (N'434')
INSERT [dbo].[WareHouse] ([seri]) VALUES (N'61222')
INSERT [dbo].[WareHouse] ([seri]) VALUES (N'9812')
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([id], [Name], [Address], [phoneNumber], [Email]) VALUES (1, N'An Phú', N'3c, Phan ĐÌnh Phùng,Hải Phòng', N'0862 019 369', N'Anphu@gmail.com')
INSERT [dbo].[Supplier] ([id], [Name], [Address], [phoneNumber], [Email]) VALUES (2, N'Cát Tiên', N'34 An Đà, Lạch Tray, Ngô Quyền, Hải Phòng', N'0225 3741 638', N'CatTien12@gmail.com')
INSERT [dbo].[Supplier] ([id], [Name], [Address], [phoneNumber], [Email]) VALUES (3, N'NPP-Dũng Mai', N'số 9b Mạc đĩnh Phúc', N'0988966074', N'Dung11@gmail.com')
INSERT [dbo].[Supplier] ([id], [Name], [Address], [phoneNumber], [Email]) VALUES (4, N'Tuấn Ngà', N'16F/630 Thiên Lôi-Lê chân _hải Phòng', N'0934687496', N'Tuannga1998@gmail.com')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
ALTER TABLE [dbo].[FeatureGroup]  WITH CHECK ADD FOREIGN KEY([fid])
REFERENCES [dbo].[Feature] ([id])
GO
ALTER TABLE [dbo].[FeatureGroup]  WITH CHECK ADD FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD FOREIGN KEY([IDLeader])
REFERENCES [dbo].[Account] ([UserName])
GO
ALTER TABLE [dbo].[importBill]  WITH CHECK ADD FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([id])
GO
ALTER TABLE [dbo].[importGoods]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[importGoods]  WITH CHECK ADD FOREIGN KEY([importbillID])
REFERENCES [dbo].[importBill] ([id])
GO
ALTER TABLE [dbo].[WareHouse]  WITH CHECK ADD FOREIGN KEY([seri])
REFERENCES [dbo].[importGoods] ([Seri])
GO
ALTER TABLE [dbo].[RoleAccount]  WITH CHECK ADD FOREIGN KEY([UserName])
REFERENCES [dbo].[Account] ([UserName])
GO
ALTER TABLE [dbo].[RoleAccount]  WITH CHECK ADD FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([id])
GO