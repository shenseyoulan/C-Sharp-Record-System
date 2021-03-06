USE [学生成绩管理数据库]
GO
/****** Object:  Table [dbo].[myuser]    Script Date: 01/04/2017 12:42:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[myuser](
	[username] [varchar](255) NOT NULL,
	[password] [varchar](50) NULL,
	[usertype] [smallint] NULL,
 CONSTRAINT [PK_myuser] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[myuser] ([username], [password], [usertype]) VALUES (N'admin', N'123456', 1)
INSERT [dbo].[myuser] ([username], [password], [usertype]) VALUES (N'lisi', N'123456', 0)
INSERT [dbo].[myuser] ([username], [password], [usertype]) VALUES (N'zhangsan', N'123456', 0)
/****** Object:  Table [dbo].[major]    Script Date: 01/04/2017 12:42:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[major](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[major_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_major] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[major] ON
INSERT [dbo].[major] ([id], [major_name]) VALUES (1, N'软件工程')
INSERT [dbo].[major] ([id], [major_name]) VALUES (2, N'汉语国际教育5')
INSERT [dbo].[major] ([id], [major_name]) VALUES (3, N'计算机应用技术')
SET IDENTITY_INSERT [dbo].[major] OFF
/****** Object:  Table [dbo].[dept]    Script Date: 01/04/2017 12:42:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dept](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dept_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_dept] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dept] ON
INSERT [dbo].[dept] ([id], [dept_name]) VALUES (1, N'软件学院')
INSERT [dbo].[dept] ([id], [dept_name]) VALUES (2, N'信息工程学院')
INSERT [dbo].[dept] ([id], [dept_name]) VALUES (3, N'水利学院')
SET IDENTITY_INSERT [dbo].[dept] OFF
/****** Object:  Table [dbo].[course]    Script Date: 01/04/2017 12:42:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[course](
	[cno] [varchar](10) NOT NULL,
	[cname] [varchar](20) NOT NULL,
	[ccredit] [smallint] NULL,
	[cpno] [varchar](10) NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[course] ([cno], [cname], [ccredit], [cpno]) VALUES (N'1', N'数据库', 4, N'5')
INSERT [dbo].[course] ([cno], [cname], [ccredit], [cpno]) VALUES (N'2', N'数学', 2, NULL)
INSERT [dbo].[course] ([cno], [cname], [ccredit], [cpno]) VALUES (N'3', N'信息系统', 4, N'1')
INSERT [dbo].[course] ([cno], [cname], [ccredit], [cpno]) VALUES (N'4', N'操作系统', 3, N'2')
INSERT [dbo].[course] ([cno], [cname], [ccredit], [cpno]) VALUES (N'5', N'数据结构', 4, N'2')
INSERT [dbo].[course] ([cno], [cname], [ccredit], [cpno]) VALUES (N'6', N'数据处理', 2, N'1')
INSERT [dbo].[course] ([cno], [cname], [ccredit], [cpno]) VALUES (N'7', N'PASCAL语言', 4, N'4')
/****** Object:  Table [dbo].[class]    Script Date: 01/04/2017 12:42:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[class](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[major_id] [int] NULL,
	[grade] [int] NULL,
	[class_name] [varchar](50) NULL,
 CONSTRAINT [PK_class] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[class] ON
INSERT [dbo].[class] ([id], [major_id], [grade], [class_name]) VALUES (1, 1, 2015, N'201班')
INSERT [dbo].[class] ([id], [major_id], [grade], [class_name]) VALUES (2, 1, 2016, N'202班')
INSERT [dbo].[class] ([id], [major_id], [grade], [class_name]) VALUES (3, 2, 2014, N'203班')
INSERT [dbo].[class] ([id], [major_id], [grade], [class_name]) VALUES (4, 2, 2013, N'204班')
INSERT [dbo].[class] ([id], [major_id], [grade], [class_name]) VALUES (5, 3, 2015, N'205班')
SET IDENTITY_INSERT [dbo].[class] OFF
/****** Object:  Table [dbo].[student]    Script Date: 01/04/2017 12:42:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[sno] [varchar](10) NOT NULL,
	[sname] [varchar](50) NOT NULL,
	[sgender] [char](2) NOT NULL,
	[sage] [int] NULL,
	[class_id] [int] NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[student] ([sno], [sname], [sgender], [sage], [class_id]) VALUES (N'95001', N'李勇', N'男', 20, 1)
INSERT [dbo].[student] ([sno], [sname], [sgender], [sage], [class_id]) VALUES (N'95002', N'刘晨', N'女', 19, 1)
INSERT [dbo].[student] ([sno], [sname], [sgender], [sage], [class_id]) VALUES (N'95003', N'王敏', N'女', 18, 1)
INSERT [dbo].[student] ([sno], [sname], [sgender], [sage], [class_id]) VALUES (N'95004', N'张立', N'男', 19, 2)
INSERT [dbo].[student] ([sno], [sname], [sgender], [sage], [class_id]) VALUES (N'95005', N'张三', N'男', 61, NULL)
INSERT [dbo].[student] ([sno], [sname], [sgender], [sage], [class_id]) VALUES (N'95006', N'李四', N'男', 57, 3)
/****** Object:  Table [dbo].[sc]    Script Date: 01/04/2017 12:42:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sc](
	[sno] [varchar](10) NOT NULL,
	[cno] [varchar](10) NOT NULL,
	[cgrade] [float] NULL,
 CONSTRAINT [PK_sc] PRIMARY KEY CLUSTERED 
(
	[sno] ASC,
	[cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[sc] ([sno], [cno], [cgrade]) VALUES (N'95001', N'1', 95)
INSERT [dbo].[sc] ([sno], [cno], [cgrade]) VALUES (N'95001', N'2', 85)
INSERT [dbo].[sc] ([sno], [cno], [cgrade]) VALUES (N'95001', N'3', 88)
INSERT [dbo].[sc] ([sno], [cno], [cgrade]) VALUES (N'95002', N'1', 80.56)
INSERT [dbo].[sc] ([sno], [cno], [cgrade]) VALUES (N'95002', N'3', 95)
INSERT [dbo].[sc] ([sno], [cno], [cgrade]) VALUES (N'95004', N'1', 95)
INSERT [dbo].[sc] ([sno], [cno], [cgrade]) VALUES (N'95005', N'1', 76)
INSERT [dbo].[sc] ([sno], [cno], [cgrade]) VALUES (N'95006', N'1', 89.5)
/****** Object:  Default [DF_myuser_password]    Script Date: 01/04/2017 12:42:06 ******/
ALTER TABLE [dbo].[myuser] ADD  CONSTRAINT [DF_myuser_password]  DEFAULT ((123456)) FOR [password]
GO
/****** Object:  Default [DF_myuser_usertype]    Script Date: 01/04/2017 12:42:06 ******/
ALTER TABLE [dbo].[myuser] ADD  CONSTRAINT [DF_myuser_usertype]  DEFAULT ((0)) FOR [usertype]
GO
/****** Object:  Check [CK_student_sgender]    Script Date: 01/04/2017 12:42:06 ******/
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [CK_student_sgender] CHECK  (([sgender]='男' OR [sgender]='女'))
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [CK_student_sgender]
GO
/****** Object:  ForeignKey [FK_sc_course]    Script Date: 01/04/2017 12:42:06 ******/
ALTER TABLE [dbo].[sc]  WITH CHECK ADD  CONSTRAINT [FK_sc_course] FOREIGN KEY([cno])
REFERENCES [dbo].[course] ([cno])
GO
ALTER TABLE [dbo].[sc] CHECK CONSTRAINT [FK_sc_course]
GO
/****** Object:  ForeignKey [FK_sc_student]    Script Date: 01/04/2017 12:42:06 ******/
ALTER TABLE [dbo].[sc]  WITH CHECK ADD  CONSTRAINT [FK_sc_student] FOREIGN KEY([sno])
REFERENCES [dbo].[student] ([sno])
GO
ALTER TABLE [dbo].[sc] CHECK CONSTRAINT [FK_sc_student]
GO
