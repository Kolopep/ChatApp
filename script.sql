USE [ChatAppDatabase]
GO
/****** Object:  Table [dbo].[ChatMessage]    Script Date: 11.03.2023 12:51:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatMessage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[ChatroomId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ChatMessage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chatroom]    Script Date: 11.03.2023 12:51:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chatroom](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Chatroom] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 11.03.2023 12:51:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 11.03.2023 12:51:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeChatroom]    Script Date: 11.03.2023 12:51:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeChatroom](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[ChatroomId] [int] NOT NULL,
 CONSTRAINT [PK_EmployeeChatroom] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChatMessage] ON 

INSERT [dbo].[ChatMessage] ([Id], [EmployeeId], [ChatroomId], [Date], [Text]) VALUES (1, 1, 1, CAST(N'2023-03-11T12:38:26.150' AS DateTime), N'ABOBA')
INSERT [dbo].[ChatMessage] ([Id], [EmployeeId], [ChatroomId], [Date], [Text]) VALUES (2, 1, 1, CAST(N'2023-03-11T12:39:37.140' AS DateTime), N'bcbx')
INSERT [dbo].[ChatMessage] ([Id], [EmployeeId], [ChatroomId], [Date], [Text]) VALUES (3, 1, 1, CAST(N'2023-03-11T12:39:38.100' AS DateTime), N'bvcxb')
INSERT [dbo].[ChatMessage] ([Id], [EmployeeId], [ChatroomId], [Date], [Text]) VALUES (4, 1, 1, CAST(N'2023-03-11T12:39:45.977' AS DateTime), N'hfdhg')
INSERT [dbo].[ChatMessage] ([Id], [EmployeeId], [ChatroomId], [Date], [Text]) VALUES (5, 1, 1, CAST(N'2023-03-11T12:39:47.130' AS DateTime), N'dsfhgh')
INSERT [dbo].[ChatMessage] ([Id], [EmployeeId], [ChatroomId], [Date], [Text]) VALUES (6, 1, 1, CAST(N'2023-03-11T12:39:48.540' AS DateTime), N'dfghjgfdjfdgh')
INSERT [dbo].[ChatMessage] ([Id], [EmployeeId], [ChatroomId], [Date], [Text]) VALUES (7, 2, 1, CAST(N'2023-03-11T12:46:15.200' AS DateTime), N'йа даун
')
INSERT [dbo].[ChatMessage] ([Id], [EmployeeId], [ChatroomId], [Date], [Text]) VALUES (8, 2, 1, CAST(N'2023-03-11T12:48:20.880' AS DateTime), N'Мужики не шмаляйте я кабан! 
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ 
⠀⠀⠀⠀⠀⠀⠀⣴⣶⣦⣤⣴⣶⣶⣿⣿⣿⣿⣷⣶⣦⣤⣄⣀⡀⠀⠀⠀⣀⡀ 
⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⡋⠀⠀ 
⠀⠀⣠⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀ 
⠙⠟⠛⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀ 
⠀⠀⠀⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⡀ 
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢡⣶⡿⢿⡿⠿⠿⠂⠀⠉⠉⠉⠀⣀⣿⡿⠟⠛⠿⠻⠇ 
⠀⠀⠀⠀⠀⠀⠀⢀⣰⠟⠀⠀⠈⠛⠳⠀⠀⠀⠀⠀⢠⡾⠋⠀⠀')
INSERT [dbo].[ChatMessage] ([Id], [EmployeeId], [ChatroomId], [Date], [Text]) VALUES (9, 2, 1, CAST(N'2023-03-11T12:48:56.113' AS DateTime), N'Мужики не шмаляйте я кабан! 
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ 
⠀⠀⠀⠀⠀⠀⠀⣴⣶⣦⣤⣴⣶⣶⣿⣿⣿⣿⣷⣶⣦⣤⣄⣀⡀⠀⠀⠀⣀⡀ 
⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⡋⠀⠀ 
⠀⠀⣠⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀ 
⠙⠟⠛⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀ 
⠀⠀⠀⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⡀ 
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢡⣶⡿⢿⡿⠿⠿⠂⠀⠉⠉⠉⠀⣀⣿⡿⠟⠛⠿⠻⠇ 
⠀⠀⠀⠀⠀⠀⠀⢀⣰⠟⠀⠀⠈⠛⠳⠀⠀⠀⠀⠀⢠⡾⠋⠀⠀')
INSERT [dbo].[ChatMessage] ([Id], [EmployeeId], [ChatroomId], [Date], [Text]) VALUES (10, 2, 1, CAST(N'2023-03-11T12:49:10.823' AS DateTime), N'⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣵⣿⣿⣿⠿⡟⣛⣧⣿⣯⣿⣝⡻⢿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⠋⠁⣴⣶⣿⣿⣿⣿⣿⣿⣿⣦⣍⢿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⢷⠄⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⢼⣿⣿⣿⣿
⢹⣿⣿⢻⠎⠔⣛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣿⣿⣿⣿
⢸⣿⣿⠇⡶⠄⣿⣿⠿⠟⡛⠛⠻⣿⡿⠿⠿⣿⣗⢣⣿⣿⣿⣿
⠐⣿⣿⡿⣷⣾⣿⣿⣿⣾⣶⣶⣶⣿⣁⣔⣤⣀⣼⢲⣿⣿⣿⣿
⠄⣿⣿⣿⣿⣾⣟⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⢟⣾⣿⣿⣿⣿
⠄⣟⣿⣿⣿⡷⣿⣿⣿⣿⣿⣮⣽⠛⢻⣽⣿⡇⣾⣿⣿⣿⣿⣿
⠄⢻⣿⣿⣿⡷⠻⢻⡻⣯⣝⢿⣟⣛⣛⣛⠝⢻⣿⣿⣿⣿⣿⣿
⠄⠸⣿⣿⡟⣹⣦⠄⠋⠻⢿⣶⣶⣶⡾⠃⡂⢾⣿⣿⣿⣿⣿⣿
⠄⠄⠟⠋⠄⢻⣿⣧⣲⡀⡀⠄⠉⠱⣠⣾⡇⠄⠉⠛⢿⣿⣿⣿
⠄⠄⠄⠄⠄⠈⣿⣿⣿⣷⣿⣿⢾⣾⣿⣿⣇⠄⠄⠄⠄⠄⠉⠉
⠄⠄⠄⠄⠄⠄⠸⣿⣿⠟⠃⠄⠄⢈⣻⣿⣿⠄⠄⠄⠄⠄⠄⠄
⠄⠄⠄⠄⠄⠄⠄⢿⣿⣾⣷⡄⠄⢾⣿⣿⣿⡄⠄⠄⠄⠄⠄⠄
⠄⠄⠄⠄⠄⠄⠄⠸⣿⣿⣿⠃⠄⠈⢿⣿⣿⠄⠄⠄⠄⠄⠄⠄')
SET IDENTITY_INSERT [dbo].[ChatMessage] OFF
GO
SET IDENTITY_INSERT [dbo].[Chatroom] ON 

INSERT [dbo].[Chatroom] ([Id], [Name]) VALUES (1, N'Test Room')
SET IDENTITY_INSERT [dbo].[Chatroom] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([Id], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[Department] ([Id], [Name]) VALUES (2, N'IT Helpdesk')
INSERT [dbo].[Department] ([Id], [Name]) VALUES (3, N'Sales')
INSERT [dbo].[Department] ([Id], [Name]) VALUES (4, N'Marketing')
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [Name], [DepartmentId], [Login], [Password]) VALUES (1, N'Arseniy', 3, N'1', N'1')
INSERT [dbo].[Employee] ([Id], [Name], [DepartmentId], [Login], [Password]) VALUES (2, N'Ivan', 3, N'2', N'2')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeChatroom] ON 

INSERT [dbo].[EmployeeChatroom] ([Id], [EmployeeId], [ChatroomId]) VALUES (1, 1, 1)
INSERT [dbo].[EmployeeChatroom] ([Id], [EmployeeId], [ChatroomId]) VALUES (3, 2, 1)
SET IDENTITY_INSERT [dbo].[EmployeeChatroom] OFF
GO
ALTER TABLE [dbo].[ChatMessage]  WITH CHECK ADD  CONSTRAINT [FK_ChatMessage_Chatroom] FOREIGN KEY([ChatroomId])
REFERENCES [dbo].[Chatroom] ([Id])
GO
ALTER TABLE [dbo].[ChatMessage] CHECK CONSTRAINT [FK_ChatMessage_Chatroom]
GO
ALTER TABLE [dbo].[ChatMessage]  WITH CHECK ADD  CONSTRAINT [FK_ChatMessage_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[ChatMessage] CHECK CONSTRAINT [FK_ChatMessage_Employee]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[EmployeeChatroom]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeChatroom_Chatroom] FOREIGN KEY([ChatroomId])
REFERENCES [dbo].[Chatroom] ([Id])
GO
ALTER TABLE [dbo].[EmployeeChatroom] CHECK CONSTRAINT [FK_EmployeeChatroom_Chatroom]
GO
ALTER TABLE [dbo].[EmployeeChatroom]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeChatroom_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[EmployeeChatroom] CHECK CONSTRAINT [FK_EmployeeChatroom_Employee]
GO
