USE [UserRegistration]
GO
/****** Object:  Table [dbo].[Credentials]    Script Date: 5/27/2020 12:25:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credentials](
	[Password] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States]    Script Date: 5/27/2020 12:25:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[State] [char](2) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Credentials] ([Password]) VALUES (N'SpeakCore2020')
GO
INSERT [dbo].[States] ([State]) VALUES (N'AL')
INSERT [dbo].[States] ([State]) VALUES (N'AR')
INSERT [dbo].[States] ([State]) VALUES (N'AZ')
INSERT [dbo].[States] ([State]) VALUES (N'AK')
INSERT [dbo].[States] ([State]) VALUES (N'CA')
INSERT [dbo].[States] ([State]) VALUES (N'CO')
INSERT [dbo].[States] ([State]) VALUES (N'CT')
INSERT [dbo].[States] ([State]) VALUES (N'DE')
INSERT [dbo].[States] ([State]) VALUES (N'FL')
INSERT [dbo].[States] ([State]) VALUES (N'GA')
INSERT [dbo].[States] ([State]) VALUES (N'HI')
INSERT [dbo].[States] ([State]) VALUES (N'IA')
INSERT [dbo].[States] ([State]) VALUES (N'IL')
INSERT [dbo].[States] ([State]) VALUES (N'IN')
INSERT [dbo].[States] ([State]) VALUES (N'ID')
INSERT [dbo].[States] ([State]) VALUES (N'KA')
INSERT [dbo].[States] ([State]) VALUES (N'KY')
INSERT [dbo].[States] ([State]) VALUES (N'LA')
INSERT [dbo].[States] ([State]) VALUES (N'ME')
INSERT [dbo].[States] ([State]) VALUES (N'MI')
INSERT [dbo].[States] ([State]) VALUES (N'MS')
INSERT [dbo].[States] ([State]) VALUES (N'MN')
INSERT [dbo].[States] ([State]) VALUES (N'MO')
INSERT [dbo].[States] ([State]) VALUES (N'MT')
INSERT [dbo].[States] ([State]) VALUES (N'MA')
INSERT [dbo].[States] ([State]) VALUES (N'NJ')
INSERT [dbo].[States] ([State]) VALUES (N'NY')
INSERT [dbo].[States] ([State]) VALUES (N'ND')
INSERT [dbo].[States] ([State]) VALUES (N'NC')
INSERT [dbo].[States] ([State]) VALUES (N'NM')
INSERT [dbo].[States] ([State]) VALUES (N'NH')
INSERT [dbo].[States] ([State]) VALUES (N'OK')
INSERT [dbo].[States] ([State]) VALUES (N'OH')
INSERT [dbo].[States] ([State]) VALUES (N'OR')
INSERT [dbo].[States] ([State]) VALUES (N'TN')
INSERT [dbo].[States] ([State]) VALUES (N'TX')
INSERT [dbo].[States] ([State]) VALUES (N'PA')
INSERT [dbo].[States] ([State]) VALUES (N'RI')
INSERT [dbo].[States] ([State]) VALUES (N'SC')
INSERT [dbo].[States] ([State]) VALUES (N'SD')
INSERT [dbo].[States] ([State]) VALUES (N'UT')
INSERT [dbo].[States] ([State]) VALUES (N'VA')
INSERT [dbo].[States] ([State]) VALUES (N'WV')
INSERT [dbo].[States] ([State]) VALUES (N'WY')
INSERT [dbo].[States] ([State]) VALUES (N'WA')
INSERT [dbo].[States] ([State]) VALUES (N'NE')
INSERT [dbo].[States] ([State]) VALUES (N'WI')
INSERT [dbo].[States] ([State]) VALUES (N'NV')
INSERT [dbo].[States] ([State]) VALUES (N'MD')
GO

CREATE TABLE [dbo].[Registrants](
	[EmailAddress] [varchar](100) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[State] [char](2) NULL,
	[IsSubscriber] [bit] NOT NULL,
 CONSTRAINT [PK_Registrants] PRIMARY KEY CLUSTERED 
(
	[EmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Registrants] ADD  CONSTRAINT [DF_Registrants_IsSubscriber]  DEFAULT ((0)) FOR [IsSubscriber]
GO