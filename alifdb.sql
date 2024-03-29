USE [aliftadb]
GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 08/19/2016 19:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user](
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[confirm_password] [nvarchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_user] ([username], [password], [confirm_password], [Fullname], [Status]) VALUES (N'alif', N'1234', N'1234', N'Akram', N'Y')
/****** Object:  Table [dbo].[tbl_unit]    Script Date: 08/19/2016 19:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_unit](
	[unit_id] [nvarchar](50) NULL,
	[unit_name] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_unit] ([unit_id], [unit_name]) VALUES (N'101', N'pcs')
INSERT [dbo].[tbl_unit] ([unit_id], [unit_name]) VALUES (N'102', N'kg')
INSERT [dbo].[tbl_unit] ([unit_id], [unit_name]) VALUES (N'103', N'bag')
/****** Object:  Table [dbo].[tbl_trn_type]    Script Date: 08/19/2016 19:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_trn_type](
	[trn_name] [nvarchar](50) NULL,
	[trn_sign] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_trn_type] ([trn_name], [trn_sign]) VALUES (N'SI', N'+')
INSERT [dbo].[tbl_trn_type] ([trn_name], [trn_sign]) VALUES (N'SO', N'-')
INSERT [dbo].[tbl_trn_type] ([trn_name], [trn_sign]) VALUES (N'DO', N'+')
INSERT [dbo].[tbl_trn_type] ([trn_name], [trn_sign]) VALUES (N'SR', N'-')
/****** Object:  Table [dbo].[tbl_stock_detail]    Script Date: 08/19/2016 19:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_stock_detail](
	[OID] [int] IDENTITY(1,1) NOT NULL,
	[itemid] [nvarchar](50) NOT NULL,
	[trn_type] [nvarchar](50) NULL,
	[qty] [nvarchar](50) NOT NULL,
	[idate] [datetime] NULL,
	[purchase_price] [int] NOT NULL,
 CONSTRAINT [PK_tbl_stock_detail] PRIMARY KEY CLUSTERED 
(
	[OID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_stock_detail] ON
INSERT [dbo].[tbl_stock_detail] ([OID], [itemid], [trn_type], [qty], [idate], [purchase_price]) VALUES (42599, N'1001', N'SI', N'10', CAST(0x0000A665017330ED AS DateTime), 10500)
INSERT [dbo].[tbl_stock_detail] ([OID], [itemid], [trn_type], [qty], [idate], [purchase_price]) VALUES (42600, N'1002', N'SI', N'15', CAST(0x0000A66501748D84 AS DateTime), 13500)
INSERT [dbo].[tbl_stock_detail] ([OID], [itemid], [trn_type], [qty], [idate], [purchase_price]) VALUES (42601, N'1001', N'SO', N'2', CAST(0x0000A66501759EA5 AS DateTime), 10490)
INSERT [dbo].[tbl_stock_detail] ([OID], [itemid], [trn_type], [qty], [idate], [purchase_price]) VALUES (42602, N'1002', N'SO', N'1', CAST(0x0000A6650175A95B AS DateTime), 13800)
INSERT [dbo].[tbl_stock_detail] ([OID], [itemid], [trn_type], [qty], [idate], [purchase_price]) VALUES (42603, N'10010', N'SI', N'20', CAST(0x0000A666014E9CD0 AS DateTime), 2500)
INSERT [dbo].[tbl_stock_detail] ([OID], [itemid], [trn_type], [qty], [idate], [purchase_price]) VALUES (42604, N'10010', N'SO', N'2', CAST(0x0000A666014FF9D7 AS DateTime), 3200)
SET IDENTITY_INSERT [dbo].[tbl_stock_detail] OFF
/****** Object:  Table [dbo].[tbl_item_stock]    Script Date: 08/19/2016 19:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_item_stock](
	[itemid] [nvarchar](50) NOT NULL,
	[classid] [nvarchar](50) NULL,
	[qty] [int] NOT NULL,
	[spl_qty] [int] NULL,
	[isu_qty] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_item_stock] ([itemid], [classid], [qty], [spl_qty], [isu_qty]) VALUES (N'1001', NULL, 8, NULL, NULL)
INSERT [dbo].[tbl_item_stock] ([itemid], [classid], [qty], [spl_qty], [isu_qty]) VALUES (N'1002', NULL, 14, NULL, NULL)
INSERT [dbo].[tbl_item_stock] ([itemid], [classid], [qty], [spl_qty], [isu_qty]) VALUES (N'10010', NULL, 18, NULL, NULL)
/****** Object:  Table [dbo].[tbl_item_master]    Script Date: 08/19/2016 19:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_item_master](
	[itemid] [nvarchar](50) NOT NULL,
	[itemname] [nvarchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[d_price] [int] NULL,
	[r_price] [int] NULL,
	[itemclassid] [nvarchar](50) NOT NULL,
	[itemclassname] [nvarchar](50) NULL,
	[d_unit_id] [nvarchar](50) NULL,
	[r_unit] [nvarchar](50) NULL,
	[pur_price] [int] NOT NULL,
 CONSTRAINT [PK_tbl_item_master] PRIMARY KEY CLUSTERED 
(
	[itemid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_item_master] ([itemid], [itemname], [price], [d_price], [r_price], [itemclassid], [itemclassname], [d_unit_id], [r_unit], [pur_price]) VALUES (N'1001', N'SAMSUNG J2', 10490, 0, 0, N'1002', N'0', N'101', N'0', 90000)
INSERT [dbo].[tbl_item_master] ([itemid], [itemname], [price], [d_price], [r_price], [itemclassid], [itemclassname], [d_unit_id], [r_unit], [pur_price]) VALUES (N'10010', N'China Man', 3200, 0, 0, N'1005', N'0', N'101', N'0', 2500)
INSERT [dbo].[tbl_item_master] ([itemid], [itemname], [price], [d_price], [r_price], [itemclassid], [itemclassname], [d_unit_id], [r_unit], [pur_price]) VALUES (N'1002', N'SAMSUNG J5', 13800, 0, 0, N'1002', N'0', N'101', N'0', 12500)
INSERT [dbo].[tbl_item_master] ([itemid], [itemname], [price], [d_price], [r_price], [itemclassid], [itemclassname], [d_unit_id], [r_unit], [pur_price]) VALUES (N'1003', N'DELL N51010', 44500, 0, 0, N'1001', N'0', N'101', N'0', 44200)
INSERT [dbo].[tbl_item_master] ([itemid], [itemname], [price], [d_price], [r_price], [itemclassid], [itemclassname], [d_unit_id], [r_unit], [pur_price]) VALUES (N'1004', N'LOGITECH', 310, 0, 0, N'1003', N'0', N'101', N'0', 220)
INSERT [dbo].[tbl_item_master] ([itemid], [itemname], [price], [d_price], [r_price], [itemclassid], [itemclassname], [d_unit_id], [r_unit], [pur_price]) VALUES (N'1005', N'A4 TECH', 460, 0, 0, N'1003', N'0', N'101', N'0', 320)
INSERT [dbo].[tbl_item_master] ([itemid], [itemname], [price], [d_price], [r_price], [itemclassid], [itemclassname], [d_unit_id], [r_unit], [pur_price]) VALUES (N'1006', N'CASIO', 1500, 0, 0, N'1004', N'0', N'101', N'0', 1200)
/****** Object:  Table [dbo].[tbl_imag]    Script Date: 08/19/2016 19:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_imag](
	[sl] [int] NULL,
	[imapath] [nvarchar](50) NULL,
	[status] [varchar](50) NULL,
	[description] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tbl_imag] ([sl], [imapath], [status], [description]) VALUES (1, N'Adnan', N'Y', NULL)
INSERT [dbo].[tbl_imag] ([sl], [imapath], [status], [description]) VALUES (2, N'Himu', N'Y', NULL)
/****** Object:  Table [dbo].[tbl_customer_master]    Script Date: 08/19/2016 19:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_customer_master](
	[customer_mobile_no] [nvarchar](50) NOT NULL,
	[customer_name] [nvarchar](50) NULL,
	[address] [nvarchar](max) NULL,
	[Nation_id] [nvarchar](50) NULL,
	[Email_id] [nvarchar](50) NULL,
	[Total_due] [int] NULL,
	[Total_pay] [int] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_customer_master_1] PRIMARY KEY CLUSTERED 
(
	[customer_mobile_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_customer_master] ([customer_mobile_no], [customer_name], [address], [Nation_id], [Email_id], [Total_due], [Total_pay], [Note]) VALUES (N'01712833041', N'Adnan Amin', N'Islam Bagh', N'12368754987564', N'adnancse23@gmail.com', 4780, 30000, N'Ok')
INSERT [dbo].[tbl_customer_master] ([customer_mobile_no], [customer_name], [address], [Nation_id], [Email_id], [Total_due], [Total_pay], [Note]) VALUES (N'01864405555', N'Salim', N'Islambagh', N'23154878', N'', 400, 6000, N'ok')
/****** Object:  Table [dbo].[tbl_customer_detail]    Script Date: 08/19/2016 19:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_customer_detail](
	[customer_id] [nvarchar](50) NULL,
	[customer_name] [nvarchar](50) NULL,
	[due_amount] [int] NULL,
	[pay_amount] [int] NULL,
	[idate] [nvarchar](50) NULL,
	[user_type] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_customer_detail] ([customer_id], [customer_name], [due_amount], [pay_amount], [idate], [user_type]) VALUES (N'01712833041', N'Adnan Amin', 4780, 30000, NULL, NULL)
INSERT [dbo].[tbl_customer_detail] ([customer_id], [customer_name], [due_amount], [pay_amount], [idate], [user_type]) VALUES (N'01864405555', N'Salim', 400, 6000, NULL, NULL)
/****** Object:  Table [dbo].[tbl_challan_master]    Script Date: 08/19/2016 19:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_challan_master](
	[challan_no] [int] IDENTITY(1,1) NOT NULL,
	[callan_trn] [nvarchar](50) NULL,
	[customer_mobile_no] [nvarchar](50) NULL,
	[idate] [datetime] NULL,
	[iuser] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_challan_master] PRIMARY KEY CLUSTERED 
(
	[challan_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_challan_master] ON
INSERT [dbo].[tbl_challan_master] ([challan_no], [callan_trn], [customer_mobile_no], [idate], [iuser]) VALUES (9, N'DO', N'01712833041', CAST(0x0000A6650175721D AS DateTime), NULL)
INSERT [dbo].[tbl_challan_master] ([challan_no], [callan_trn], [customer_mobile_no], [idate], [iuser]) VALUES (10, N'DO', N'01864405555', CAST(0x0000A666014FF628 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tbl_challan_master] OFF
/****** Object:  Table [dbo].[tbl_challan_detail]    Script Date: 08/19/2016 19:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_challan_detail](
	[challan_no] [nvarchar](50) NULL,
	[do_line_no] [int] NULL,
	[item_id] [nvarchar](50) NULL,
	[challan_line_no] [int] NULL,
	[rate] [int] NULL,
	[qty] [int] NULL,
	[spl_qty] [int] NULL,
	[cancelled] [nvarchar](50) NULL,
	[ch_date] [nvarchar](50) NULL,
	[iuser] [nvarchar](50) NULL,
	[idate] [datetime] NULL,
	[do_no] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_challan_detail] ([challan_no], [do_line_no], [item_id], [challan_line_no], [rate], [qty], [spl_qty], [cancelled], [ch_date], [iuser], [idate], [do_no]) VALUES (N'9', NULL, N'1001', NULL, 10490, 2, NULL, NULL, NULL, NULL, CAST(0x0000A665017579A4 AS DateTime), NULL)
INSERT [dbo].[tbl_challan_detail] ([challan_no], [do_line_no], [item_id], [challan_line_no], [rate], [qty], [spl_qty], [cancelled], [ch_date], [iuser], [idate], [do_no]) VALUES (N'9', NULL, N'1002', NULL, 13800, 1, NULL, NULL, NULL, NULL, CAST(0x0000A66501757F4A AS DateTime), NULL)
INSERT [dbo].[tbl_challan_detail] ([challan_no], [do_line_no], [item_id], [challan_line_no], [rate], [qty], [spl_qty], [cancelled], [ch_date], [iuser], [idate], [do_no]) VALUES (N'10', NULL, N'10010', NULL, 3200, 2, NULL, NULL, NULL, NULL, CAST(0x0000A666014FF9D4 AS DateTime), NULL)
/****** Object:  Table [dbo].[tbl__item_class]    Script Date: 08/19/2016 19:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl__item_class](
	[item_class_id] [nvarchar](50) NOT NULL,
	[item_class_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl__item_class] PRIMARY KEY CLUSTERED 
(
	[item_class_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl__item_class] ([item_class_id], [item_class_name]) VALUES (N'1001', N'Laptop')
INSERT [dbo].[tbl__item_class] ([item_class_id], [item_class_name]) VALUES (N'1002', N'Mobile')
INSERT [dbo].[tbl__item_class] ([item_class_id], [item_class_name]) VALUES (N'1003', N'Keyboard')
INSERT [dbo].[tbl__item_class] ([item_class_id], [item_class_name]) VALUES (N'1004', N'Watch')
INSERT [dbo].[tbl__item_class] ([item_class_id], [item_class_name]) VALUES (N'1005', N'Battery')
/****** Object:  Default [DF_tbl_challan_detail_idate]    Script Date: 08/19/2016 19:19:09 ******/
ALTER TABLE [dbo].[tbl_challan_detail] ADD  CONSTRAINT [DF_tbl_challan_detail_idate]  DEFAULT (getdate()) FOR [idate]
GO
/****** Object:  Default [DF_tbl_challan_master_idate]    Script Date: 08/19/2016 19:19:09 ******/
ALTER TABLE [dbo].[tbl_challan_master] ADD  CONSTRAINT [DF_tbl_challan_master_idate]  DEFAULT (getdate()) FOR [idate]
GO
/****** Object:  Default [DF_tbl_customer_master_Total_due]    Script Date: 08/19/2016 19:19:09 ******/
ALTER TABLE [dbo].[tbl_customer_master] ADD  CONSTRAINT [DF_tbl_customer_master_Total_due]  DEFAULT ('0') FOR [Total_due]
GO
/****** Object:  Default [DF_tbl_customer_master_Total_pay]    Script Date: 08/19/2016 19:19:09 ******/
ALTER TABLE [dbo].[tbl_customer_master] ADD  CONSTRAINT [DF_tbl_customer_master_Total_pay]  DEFAULT ('0') FOR [Total_pay]
GO
/****** Object:  Default [DF_tbl_imag_status]    Script Date: 08/19/2016 19:19:09 ******/
ALTER TABLE [dbo].[tbl_imag] ADD  CONSTRAINT [DF_tbl_imag_status]  DEFAULT ('Y') FOR [status]
GO
/****** Object:  Default [DF_tbl_item_master_d_price]    Script Date: 08/19/2016 19:19:09 ******/
ALTER TABLE [dbo].[tbl_item_master] ADD  CONSTRAINT [DF_tbl_item_master_d_price]  DEFAULT ('0') FOR [d_price]
GO
/****** Object:  Default [DF_tbl_item_master_r_price]    Script Date: 08/19/2016 19:19:09 ******/
ALTER TABLE [dbo].[tbl_item_master] ADD  CONSTRAINT [DF_tbl_item_master_r_price]  DEFAULT ('0') FOR [r_price]
GO
/****** Object:  Default [DF_tbl_item_master_itemclassname]    Script Date: 08/19/2016 19:19:09 ******/
ALTER TABLE [dbo].[tbl_item_master] ADD  CONSTRAINT [DF_tbl_item_master_itemclassname]  DEFAULT ('0') FOR [itemclassname]
GO
/****** Object:  Default [DF_tbl_item_master_r_unit]    Script Date: 08/19/2016 19:19:09 ******/
ALTER TABLE [dbo].[tbl_item_master] ADD  CONSTRAINT [DF_tbl_item_master_r_unit]  DEFAULT ('0') FOR [r_unit]
GO
/****** Object:  Default [DF_tbl_stock_detail_idate]    Script Date: 08/19/2016 19:19:09 ******/
ALTER TABLE [dbo].[tbl_stock_detail] ADD  CONSTRAINT [DF_tbl_stock_detail_idate]  DEFAULT (getdate()) FOR [idate]
GO
