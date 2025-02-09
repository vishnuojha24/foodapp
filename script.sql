USE [FoodCopsDB]
GO
/****** Object:  Table [dbo].[DonateFoodMaster]    Script Date: 2/4/2024 2:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonateFoodMaster](
	[DonorId] [int] IDENTITY(1,1) NOT NULL,
	[DonetedBy] [varchar](100) NULL,
	[MobNo] [bigint] NULL,
	[EmailId] [varchar](200) NULL,
	[FoodWeight] [int] NULL,
	[Address] [varchar](250) NULL,
	[Pincode] [float] NULL,
	[DonateDT] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[Isdel] [bit] NULL,
 CONSTRAINT [PK_DonateFoodMaster] PRIMARY KEY CLUSTERED 
(
	[DonorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnquiryMaster]    Script Date: 2/4/2024 2:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnquiryMaster](
	[EnquiryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](70) NULL,
	[EmailId] [varchar](200) NULL,
	[MobNo] [varchar](100) NULL,
	[EnquiryMsg] [varchar](max) NULL,
	[Enquiry_DT] [datetime] NULL,
 CONSTRAINT [PK_EnquiryMaster] PRIMARY KEY CLUSTERED 
(
	[EnquiryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 2/4/2024 2:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FId] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [varchar](200) NULL,
	[Feedback_Title] [varchar](100) NULL,
	[Feedback_Detail] [varchar](250) NULL,
	[MsgDT] [datetime] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[FId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginMaster]    Script Date: 2/4/2024 2:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginMaster](
	[User_Id] [varchar](200) NOT NULL,
	[Pass] [varchar](200) NULL,
	[Utype] [varchar](20) NULL,
	[Status] [bit] NULL,
	[Lcount] [int] NULL,
	[Last_LoginDT] [datetime] NULL,
 CONSTRAINT [PK_LoginMaster] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickRequest]    Script Date: 2/4/2024 2:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickRequest](
	[RequestId] [int] IDENTITY(1,1) NOT NULL,
	[RequestedBy] [varchar](100) NULL,
	[MobNo] [bigint] NULL,
	[EmailId] [varchar](200) NULL,
	[EstimateWeight] [varchar](100) NULL,
	[Address] [varchar](250) NULL,
	[Pincode] [float] NULL,
	[RequestDT] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[Isdel] [bit] NULL,
 CONSTRAINT [PK_PickRequest] PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistrationMaster]    Script Date: 2/4/2024 2:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistrationMaster](
	[Name] [varchar](100) NULL,
	[Gender] [varchar](20) NULL,
	[EmailId] [varchar](200) NOT NULL,
	[Mobno] [bigint] NULL,
	[AdharNo] [varchar](20) NULL,
	[Organization_Name] [varchar](200) NULL,
	[UserImg] [varchar](250) NULL,
	[Address] [varchar](250) NULL,
	[Registered_On] [datetime] NULL,
	[Utype] [varchar](50) NULL,
	[Is_del] [bit] NULL,
 CONSTRAINT [PK_RegistrationMaster] PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_RegistrationMaster] FOREIGN KEY([User_Id])
REFERENCES [dbo].[RegistrationMaster] ([EmailId])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_RegistrationMaster]
GO
