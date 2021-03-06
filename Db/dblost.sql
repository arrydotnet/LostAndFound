USE [dbLost]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblRequests_tblRequestType]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblRequests]'))
ALTER TABLE [dbo].[tblRequests] DROP CONSTRAINT [FK_tblRequests_tblRequestType]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblRequests_tblCountries]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblRequests]'))
ALTER TABLE [dbo].[tblRequests] DROP CONSTRAINT [FK_tblRequests_tblCountries]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 4/30/2016 9:14:06 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUser]') AND type in (N'U'))
DROP TABLE [dbo].[tblUser]
GO
/****** Object:  Table [dbo].[tblRequestType]    Script Date: 4/30/2016 9:14:06 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblRequestType]') AND type in (N'U'))
DROP TABLE [dbo].[tblRequestType]
GO
/****** Object:  Table [dbo].[tblRequests]    Script Date: 4/30/2016 9:14:06 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblRequests]') AND type in (N'U'))
DROP TABLE [dbo].[tblRequests]
GO
/****** Object:  Table [dbo].[tblCountries]    Script Date: 4/30/2016 9:14:06 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCountries]') AND type in (N'U'))
DROP TABLE [dbo].[tblCountries]
GO
/****** Object:  Table [dbo].[tblCountries]    Script Date: 4/30/2016 9:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCountries]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCountries](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[ISO_Code] [nchar](2) NOT NULL,
	[CountryName] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tblRequests]    Script Date: 4/30/2016 9:14:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblRequests]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblRequests](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RequestID] [int] NOT NULL,
	[Item] [nvarchar](500) NULL,
	[ItemDesc] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](50) NULL,
	[CountryID] [int] NOT NULL,
 CONSTRAINT [PK_tblRequests] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tblRequestType]    Script Date: 4/30/2016 9:14:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblRequestType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblRequestType](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[RequestType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblRequestType] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 4/30/2016 9:14:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblUser](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblCountries] ON 

INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (1, N'AF', N'Afghanistan')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (2, N'AX', N'Aland Islands')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (3, N'AT', N'Austria')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (4, N'AZ', N'Azerbaijan')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (5, N'BS', N'Bahamas')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (6, N'BH', N'Bahrain')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (7, N'BD', N'Bangladesh')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (8, N'BB', N'Barbados')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (9, N'BY', N'Belarus')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (10, N'BE', N'Belgium')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (11, N'BZ', N'Belize')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (12, N'BJ', N'Benin')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (13, N'BM', N'Bermuda')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (14, N'BT', N'Bhutan')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (15, N'BO', N'Bolivia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (16, N'BA', N'Bosnia and Herzegovina')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (17, N'BW', N'Botswana')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (18, N'BV', N'Bouvet Island')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (19, N'BR', N'Brazil')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (20, N'IO', N'British Indian Ocean Territory')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (21, N'BN', N'Brunei Darussalam')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (22, N'BG', N'Bulgaria')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (23, N'BF', N'Burkina Faso')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (24, N'BI', N'Burundi')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (25, N'KH', N'Cambodia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (26, N'CM', N'Cameroon')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (27, N'CA', N'Canada')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (28, N'CV', N'Cape Verde')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (29, N'KY', N'Cayman Islands')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (30, N'CF', N'Central African Republic')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (31, N'TD', N'Chad')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (32, N'CL', N'Chile')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (33, N'CN', N'China')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (34, N'CX', N'Christmas Island')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (35, N'CC', N'Cocos Keeling Islands')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (36, N'CO', N'Colombia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (37, N'KM', N'Comoros')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (38, N'CG', N'Congo')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (39, N'CD', N'Congo, The Democratic Republic of The')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (40, N'CK', N'Cook Islands')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (41, N'CR', N'Costa Rica')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (42, N'CI', N'Cote Divoire')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (43, N'HR', N'Croatia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (44, N'CU', N'Cuba')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (45, N'CY', N'Cyprus')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (46, N'CZ', N'Czech Republic')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (47, N'DK', N'Denmark')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (48, N'DJ', N'Djibouti')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (49, N'DM', N'Dominica')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (50, N'DO', N'Dominican Republic')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (51, N'EC', N'Ecuador')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (52, N'EG', N'Egypt')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (53, N'SV', N'El Salvador')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (54, N'GQ', N'Equatorial Guinea')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (55, N'ER', N'Eritrea')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (56, N'EE', N'Estonia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (57, N'ET', N'Ethiopia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (58, N'FK', N'Falkland Islands Malvinas')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (59, N'FO', N'Faroe Islands')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (60, N'FJ', N'Fiji')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (61, N'FI', N'Finland')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (62, N'FR', N'France')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (63, N'GF', N'French Guiana')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (64, N'PF', N'French Polynesia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (65, N'TF', N'French Southern Territories')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (66, N'GA', N'Gabon')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (67, N'GM', N'Gambia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (68, N'GE', N'Georgia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (69, N'DE', N'Germany')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (70, N'GH', N'Ghana')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (71, N'GI', N'Gibraltar')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (72, N'GR', N'Greece')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (73, N'GL', N'Greenland')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (74, N'GD', N'Grenada')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (75, N'GP', N'Guadeloupe')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (76, N'GU', N'Guam')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (77, N'GT', N'Guatemala')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (78, N'GG', N'Guernsey')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (79, N'GN', N'Guinea')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (80, N'GW', N'Guinea-bissau')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (81, N'GY', N'Guyana')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (82, N'HT', N'Haiti')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (83, N'HM', N'Heard Island and Mcdonald Islands')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (84, N'VA', N'Holy See Vatican City State')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (85, N'HN', N'Honduras')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (86, N'HK', N'Hong Kong')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (87, N'HU', N'Hungary')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (88, N'IS', N'Iceland')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (89, N'IN', N'India')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (90, N'ID', N'Indonesia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (91, N'IR', N'Iran, Islamic Republic of')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (92, N'IQ', N'Iraq')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (93, N'IE', N'Ireland')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (94, N'IM', N'Isle of Man')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (95, N'IL', N'Israel')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (96, N'IT', N'Italy')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (97, N'JM', N'Jamaica')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (98, N'JP', N'Japan')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (99, N'JE', N'Jersey')
GO
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (100, N'JO', N'Jordan')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (101, N'KZ', N'Kazakhstan')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (102, N'KE', N'Kenya')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (103, N'KI', N'Kiribati')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (104, N'KP', N'Korea, Democratic Peoples Republic of')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (105, N'KR', N'Korea, Republic of')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (106, N'KW', N'Kuwait')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (107, N'KG', N'Kyrgyzstan')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (108, N'LA', N'Lao Peoples Democratic Republic')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (109, N'LV', N'Latvia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (110, N'LB', N'Lebanon')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (111, N'LS', N'Lesotho')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (112, N'LR', N'Liberia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (113, N'LY', N'Libyan Arab Jamahiriya')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (114, N'LI', N'Liechtenstein')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (115, N'LT', N'Lithuania')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (116, N'LU', N'Luxembourg')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (117, N'MO', N'Macao')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (118, N'MK', N'Macedonia, The Former Yugoslav Republic of')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (119, N'MG', N'Madagascar')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (120, N'MW', N'Malawi')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (121, N'MY', N'Malaysia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (122, N'MV', N'Maldives')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (123, N'ML', N'Mali')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (124, N'MT', N'Malta')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (125, N'MH', N'Marshall Islands')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (126, N'MQ', N'Martinique')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (127, N'MR', N'Mauritania')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (128, N'MU', N'Mauritius')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (129, N'YT', N'Mayotte')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (130, N'MX', N'Mexico')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (131, N'FM', N'Micronesia, Federated States of')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (132, N'MD', N'Moldova, Republic of')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (133, N'MC', N'Monaco')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (134, N'MN', N'Mongolia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (135, N'ME', N'Montenegro')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (136, N'MS', N'Montserrat')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (137, N'MA', N'Morocco')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (138, N'MZ', N'Mozambique')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (139, N'MM', N'Myanmar')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (140, N'NA', N'Namibia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (141, N'NR', N'Nauru')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (142, N'NP', N'Nepal')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (143, N'NL', N'Netherlands')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (144, N'AN', N'Netherlands Antilles')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (145, N'NC', N'New Caledonia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (146, N'NZ', N'New Zealand')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (147, N'NI', N'Nicaragua')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (148, N'NE', N'Niger')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (149, N'NG', N'Nigeria')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (150, N'NU', N'Niue')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (151, N'NF', N'Norfolk Island')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (152, N'MP', N'Northern Mariana Islands')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (153, N'NO', N'Norway')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (154, N'OM', N'Oman')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (155, N'PK', N'Pakistan')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (156, N'PW', N'Palau')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (157, N'PS', N'Palestinian Territory, Occupied')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (158, N'PA', N'Panama')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (159, N'PG', N'Papua New Guinea')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (160, N'PY', N'Paraguay')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (161, N'PE', N'Peru')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (162, N'PH', N'Philippines')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (163, N'PN', N'Pitcairn')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (164, N'PL', N'Poland')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (165, N'PT', N'Portugal')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (166, N'PR', N'Puerto Rico')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (167, N'QA', N'Qatar')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (168, N'RE', N'Reunion')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (169, N'RO', N'Romania')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (170, N'RU', N'Russian Federation')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (171, N'RW', N'Rwanda')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (172, N'SH', N'Saint Helena')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (173, N'KN', N'Saint Kitts and Nevis')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (174, N'LC', N'Saint Lucia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (175, N'PM', N'Saint Pierre and Miquelon')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (176, N'VC', N'Saint Vincent and The Grenadines')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (177, N'WS', N'Samoa')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (178, N'SM', N'San Marino')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (179, N'ST', N'Sao Tome and Principe')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (180, N'SA', N'Saudi Arabia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (181, N'SN', N'Senegal')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (182, N'RS', N'Serbia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (183, N'SC', N'Seychelles')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (184, N'SL', N'Sierra Leone')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (185, N'SG', N'Singapore')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (186, N'SK', N'Slovakia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (187, N'SI', N'Slovenia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (188, N'SB', N'Solomon Islands')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (189, N'SO', N'Somalia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (190, N'ZA', N'South Africa')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (191, N'GS', N'South Georgia and The South Sandwich Islands')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (192, N'ES', N'Spain')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (193, N'LK', N'Sri Lanka')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (194, N'SD', N'Sudan')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (195, N'SR', N'Suriname')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (196, N'SJ', N'Svalbard and Jan Mayen')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (197, N'SZ', N'Swaziland')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (198, N'SE', N'Sweden')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (199, N'CH', N'Switzerland')
GO
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (200, N'SY', N'Syrian Arab Republic')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (201, N'TW', N'Taiwan, Province of China')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (202, N'TJ', N'Tajikistan')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (203, N'TZ', N'Tanzania, United Republic of')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (204, N'TH', N'Thailand')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (205, N'TL', N'Timor-leste')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (206, N'TG', N'Togo')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (207, N'TK', N'Tokelau')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (208, N'TO', N'Tonga')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (209, N'TT', N'Trinidad and Tobago')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (210, N'TN', N'Tunisia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (211, N'TR', N'Turkey')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (212, N'TM', N'Turkmenistan')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (213, N'TC', N'Turks and Caicos Islands')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (214, N'TV', N'Tuvalu')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (215, N'UG', N'Uganda')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (216, N'UA', N'Ukraine')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (217, N'AE', N'United Arab Emirates')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (218, N'GB', N'United Kingdom')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (219, N'US', N'United States')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (220, N'UM', N'United States Minor Outlying Islands')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (221, N'UY', N'Uruguay')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (222, N'UZ', N'Uzbekistan')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (223, N'VU', N'Vanuatu')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (224, N'VE', N'Venezuela')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (225, N'VN', N'Viet Nam')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (226, N'VG', N'Virgin Islands, British')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (227, N'VI', N'Virgin Islands, U.S.')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (228, N'WF', N'Wallis and Futuna')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (229, N'EH', N'Western Sahara')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (230, N'YE', N'Yemen')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (231, N'ZM', N'Zambia')
INSERT [dbo].[tblCountries] ([CountryID], [ISO_Code], [CountryName]) VALUES (232, N'ZW', N'Zimbabwe')
SET IDENTITY_INSERT [dbo].[tblCountries] OFF
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblRequests_tblCountries]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblRequests]'))
ALTER TABLE [dbo].[tblRequests]  WITH CHECK ADD  CONSTRAINT [FK_tblRequests_tblCountries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[tblCountries] ([CountryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblRequests_tblCountries]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblRequests]'))
ALTER TABLE [dbo].[tblRequests] CHECK CONSTRAINT [FK_tblRequests_tblCountries]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblRequests_tblRequestType]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblRequests]'))
ALTER TABLE [dbo].[tblRequests]  WITH CHECK ADD  CONSTRAINT [FK_tblRequests_tblRequestType] FOREIGN KEY([RequestID])
REFERENCES [dbo].[tblRequestType] ([RequestID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblRequests_tblRequestType]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblRequests]'))
ALTER TABLE [dbo].[tblRequests] CHECK CONSTRAINT [FK_tblRequests_tblRequestType]
GO
