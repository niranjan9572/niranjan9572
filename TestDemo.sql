USE [db_NiranjanDemo]
GO
/****** Object:  User [Niranjan]    Script Date: 07/21/2022 15:13:21 ******/
CREATE USER [Niranjan] FOR LOGIN [Niranjan] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Niranjan]
GO
/****** Object:  Table [dbo].[__MigrationHistory_old]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory_old](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[ProfilePicture] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[RegisterDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactUser]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](12) NOT NULL,
	[Message] [nvarchar](500) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ContactUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactUsers]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUsers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ELMAH_Error]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ELMAH_Error](
	[ErrorId] [uniqueidentifier] NOT NULL,
	[Application] [nvarchar](60) NOT NULL,
	[Host] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Source] [nvarchar](60) NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[User] [nvarchar](50) NOT NULL,
	[StatusCode] [int] NOT NULL,
	[TimeUtc] [datetime] NOT NULL,
	[Sequence] [int] IDENTITY(1,1) NOT NULL,
	[AllXml] [ntext] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeBanner]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeBanner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BannerImagePath] [nvarchar](max) NOT NULL,
	[BannerImageAltTag] [nvarchar](100) NULL,
	[BannerImageTitleTag] [nvarchar](100) NULL,
	[BannerContent] [nvarchar](max) NULL,
	[DisplayOrder] [int] NOT NULL,
	[Status] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.HomeBanner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginHistory]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](250) NOT NULL,
	[BrowserType] [nvarchar](250) NULL,
	[BrowserName] [nvarchar](250) NULL,
	[BrowserVersion] [nvarchar](500) NULL,
	[IsMobileDevice] [bit] NOT NULL,
	[OperatingSystem] [nvarchar](500) NULL,
	[IpAddress] [nvarchar](50) NULL,
	[LoginDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.LoginHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[URL] [nvarchar](250) NULL,
	[DisplayOrder] [int] NOT NULL,
	[Status] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[URL] [nvarchar](250) NOT NULL,
	[Content] [nvarchar](4000) NULL,
	[Status] [nvarchar](50) NOT NULL,
	[MetaTitle] [nvarchar](500) NULL,
	[MetaKeywords] [nvarchar](500) NULL,
	[MetaDescription] [nvarchar](500) NULL,
	[ExtraHeadScripts] [nvarchar](4000) NULL,
	[IpAddress] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Department]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeptId] [uniqueidentifier] NULL,
	[DeptName] [nvarchar](max) NULL,
	[DeptSalary] [bigint] NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[Updatedby] [nvarchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Role]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NULL,
	[RoleName] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[Updatedby] [nvarchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User_Details]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User_Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[Name] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Department] [nvarchar](max) NULL,
	[EmpImage] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[Updatedby] [nvarchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UsersInRole]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UsersInRole](
	[UserId] [nvarchar](128) NULL,
	[RoleId] [nvarchar](128) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testimonials]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TestimonialBy] [nvarchar](250) NOT NULL,
	[TestimonialContent] [nvarchar](max) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Testimonials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [varchar](max) NULL,
	[Firstname] [nvarchar](max) NULL,
	[Lastname] [nvarchar](max) NULL,
	[Email] [varchar](max) NULL,
	[Mobile] [nvarchar](max) NULL,
	[PicturePath] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ('') FOR [FullName]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [RegisterDate]
GO
ALTER TABLE [dbo].[ContactUser] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ContactUser] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[HomeBanner] ADD  CONSTRAINT [DF__HomeBanne__Displ__778AC167]  DEFAULT ((99)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[HomeBanner] ADD  CONSTRAINT [DF__HomeBanne__Creat__7B5B524B]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tbl_Department] ADD  DEFAULT (newid()) FOR [DeptId]
GO
ALTER TABLE [dbo].[tbl_Department] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tbl_Department] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tbl_Department] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[tbl_Department] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tbl_Department] ADD  DEFAULT ('Admin') FOR [Updatedby]
GO
ALTER TABLE [dbo].[tbl_Department] ADD  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tbl_Department] ADD  DEFAULT ('Published') FOR [Status]
GO
ALTER TABLE [dbo].[tbl_Role] ADD  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[tbl_Role] ADD  CONSTRAINT [DF_tbl_Role_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tbl_Role] ADD  CONSTRAINT [DF_tbl_Role_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tbl_Role] ADD  CONSTRAINT [DF_tbl_Role_CreatedBy]  DEFAULT ('Admin') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[tbl_Role] ADD  CONSTRAINT [DF_tbl_Role_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tbl_Role] ADD  CONSTRAINT [DF_tbl_Role_Updatedby]  DEFAULT ('Admin') FOR [Updatedby]
GO
ALTER TABLE [dbo].[tbl_Role] ADD  CONSTRAINT [DF_tbl_Role_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tbl_User_Details] ADD  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[tbl_User_Details] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tbl_User_Details] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[tbl_User_Details] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[tbl_User_Details] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tbl_User_Details] ADD  DEFAULT ('Admin') FOR [Updatedby]
GO
ALTER TABLE [dbo].[tbl_User_Details] ADD  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tbl_User_Details] ADD  DEFAULT ('published') FOR [Status]
GO
ALTER TABLE [dbo].[Testimonials] ADD  CONSTRAINT [DF_Testimonials_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[ConvertTableIntoCSharpModel]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ConvertTableIntoCSharpModel]  
(  
     @TableName SYSNAME ,  
     @CLASSNAME VARCHAR(500)   
)  
AS  
BEGIN  
    DECLARE @Result VARCHAR(MAX)  
  
    SET @Result = @CLASSNAME + @TableName + '  
{'  
  
SELECT @Result = @Result + '  
    public ' + ColumnType + NullableSign + ' ' + ColumnName + ' { get; set; }'  
FROM  
(  
    SELECT   
        REPLACE(col.NAME, ' ', '_') ColumnName,  
        column_id ColumnId,  
        CASE typ.NAME   
            WHEN 'bigint' THEN 'long'  
            WHEN 'binary' THEN 'byte[]'  
            WHEN 'bit' THEN 'bool'  
            WHEN 'char' THEN 'string'  
            WHEN 'date' THEN 'DateTime'  
            WHEN 'datetime' THEN 'DateTime'  
            WHEN 'datetime2' then 'DateTime'  
            WHEN 'datetimeoffset' THEN 'DateTimeOffset'  
            WHEN 'decimal' THEN 'decimal'  
            WHEN 'float' THEN 'float'  
            WHEN 'image' THEN 'byte[]'  
            WHEN 'int' THEN 'int'  
            WHEN 'money' THEN 'decimal'  
            WHEN 'nchar' THEN 'char'  
            WHEN 'ntext' THEN 'string'  
            WHEN 'numeric' THEN 'decimal'  
            WHEN 'nvarchar' THEN 'string'  
            WHEN 'real' THEN 'double'  
            WHEN 'smalldatetime' THEN 'DateTime'  
            WHEN 'smallint' THEN 'short'  
            WHEN 'smallmoney' THEN 'decimal'  
            WHEN 'text' THEN 'string'  
            WHEN 'time' THEN 'TimeSpan'  
            WHEN 'timestamp' THEN 'DateTime'  
            WHEN 'tinyint' THEN 'byte'  
            WHEN 'uniqueidentifier' THEN 'Guid'  
            WHEN 'varbinary' THEN 'byte[]'  
            WHEN 'varchar' THEN 'string'  
            ELSE 'UNKNOWN_' + typ.NAME  
        END ColumnType,  
        CASE   
            WHEN col.is_nullable = 1 and typ.NAME in ('bigint', 'bit', 'date', 'datetime', 'datetime2', 'datetimeoffset', 'decimal', 'float', 'int', 'money', 'numeric', 'real', 'smalldatetime', 'smallint', 'smallmoney', 'time', 'tinyint', 'uniqueidentifie
r')   
            THEN '?'   
            ELSE ''   
        END NullableSign  
    FROM SYS.COLUMNS col join sys.types typ on col.system_type_id = typ.system_type_id AND col.user_type_id = typ.user_type_id  
    where object_id = object_id(@TableName)  
) t  
ORDER BY ColumnId  
SET @Result = @Result  + '  
}'  
  
print @Result  
  
END 



GO
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorsXml]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE[dbo].[ELMAH_GetErrorsXml]  
  
(  
    @Application NVARCHAR(60),  
    @PageIndex INT = 0,  
    @PageSize INT = 15,  
    @TotalCount INT OUTPUT  
  
)  
  
AS  
  
SET NOCOUNT ON  
  
DECLARE @FirstTimeUTC DATETIME  
DECLARE @FirstSequence INT  
DECLARE @StartRow INT  
DECLARE @StartRowIndex INT  
SELECT  
  
@TotalCount = COUNT(1)  
  
FROM  
  
    [ELMAH_Error]  
  
WHERE  
  
    [Application] = @Application  
SET @StartRowIndex = @PageIndex * @PageSize + 1  
IF @StartRowIndex <= @TotalCount  
  
BEGIN  
  
SET ROWCOUNT @StartRowIndex  
  
SELECT  
  
@FirstTimeUTC = [TimeUtc],  
  
    @FirstSequence = [Sequence]  
  
FROM  
  
    [ELMAH_Error]  
  
WHERE  
  
    [Application] = @Application  
  
ORDER BY  
  
    [TimeUtc] DESC,  
    [Sequence] DESC  
  
END  
  
ELSE  
  
BEGIN  
  
SET @PageSize = 0  
  
END  
  
SET ROWCOUNT @PageSize  
  
SELECT  
  
errorId = [ErrorId],  
  
    application = [Application],  
    host = [Host],  
    type = [Type],  
    source = [Source],  
    message = [Message],  
    [user] = [User],  
    statusCode = [StatusCode],  
    time = CONVERT(VARCHAR(50), [TimeUtc], 126) + 'Z'  
  
FROM  
  
    [ELMAH_Error] error  
  
WHERE  
  
    [Application] = @Application  
  
AND  
  
    [TimeUtc] <= @FirstTimeUTC  
  
AND  
  
    [Sequence] <= @FirstSequence  
  
ORDER BY  
  
    [TimeUtc] DESC,  
  
    [Sequence] DESC  
  
FOR  
  
XML AUTO 

GO
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorXml]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE[dbo].[ELMAH_GetErrorXml]  
  
(  
  
    @Application NVARCHAR(60),  
    @ErrorId UNIQUEIDENTIFIER  
  
)  
  
AS  
  
SET NOCOUNT ON  
SELECT  
  
    [AllXml]  
FROM  
  
    [ELMAH_Error]  
WHERE  
  
    [ErrorId] = @ErrorId  
AND  
    [Application] = @Application  

GO
/****** Object:  StoredProcedure [dbo].[ELMAH_LogError]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE[dbo].[ELMAH_LogError]  
  
(  
  
    @ErrorId UNIQUEIDENTIFIER,    
    @Application NVARCHAR(60),    
    @Host NVARCHAR(30),    
    @Type NVARCHAR(100),  
    @Source NVARCHAR(60),    
    @Message NVARCHAR(500),  
    @User NVARCHAR(50),   
    @AllXml NTEXT,    
    @StatusCode INT,   
    @TimeUtc DATETIME  
  
)  
  
AS  
  
SET NOCOUNT ON  
  
INSERT  
  
INTO  
  
    [ELMAH_Error]
(  
  
    [ErrorId],   
    [Application],   
    [Host],  
    [Type],  
    [Source],  
    [Message],    
    [User],    
    [AllXml],    
    [StatusCode],    
    [TimeUtc]  
  
)  
  
VALUES  
  
    (  
  
    @ErrorId,  
    @Application,    
    @Host,    
    @Type,    
    @Source,   
    @Message,    
    @User,   
    @AllXml,   
    @StatusCode,   
    @TimeUtc  
  
) 

GO
/****** Object:  StoredProcedure [dbo].[GetCurrentUserId]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[GetCurrentUserId]
(
   @Email nvarchar(max)
)
AS
BEGIN
SELECT UserId FROM tbl_User_Details WHERE Email =@Email
END
GO
/****** Object:  StoredProcedure [dbo].[SelectDataPassByViewEmployee]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SelectDataPassByViewEmployee]
(
   @EmpId  INT

)

AS
BEGIN 
SELECT EmpName,Email,Phone FROM tblEmployee WHERE EmpId =@EmpId

END

GO
/****** Object:  StoredProcedure [dbo].[UpdateEmployeeDetails]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[UpdateEmployeeDetails]
(
	@EmpId	    INT,
	@EmpName	varchar(64),
	@Email		varchar(64),
	@Phone		varchar(16)
)
AS
BEGIN
UPDATE tblEmployee
SET
		EmpName = @EmpName,	
		Email	= @Email,		
		Phone	= @Phone
WHERE	EmpId	= @EmpId

END
GO
/****** Object:  StoredProcedure [dbo].[upsCheckEmail]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure  [dbo].[upsCheckEmail]
(
	@Email		varchar(64)
)	
AS
BEGIN
SELECT Email FROM tblEmployee WHERE Email = @Email
END
GO
/****** Object:  StoredProcedure [dbo].[upsDeleteDeprtment]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[upsDeleteDeprtment]  
(  
   @Id int  
)  
AS  
BEGIN  
Update tbl_Department set IsActive =0, IsDelete =1 ,Status ='Trash' Where Id=@Id  
END  
SELECT IDENT_CURRENT('tbl_Department')  
GO
/****** Object:  StoredProcedure [dbo].[upsDeleteSelectedRecord]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[upsDeleteSelectedRecord]
(
   
   @EmpId int,
   @IsActiveDelete Bit
)
AS
BEGIN
Update  tblEmployee SET  IsActiveDelete = @IsActiveDelete  WHERE EmpId = @EmpId

End
GO
/****** Object:  StoredProcedure [dbo].[upsDeleteUser]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[upsDeleteUser]        
(        
  @Id int       
         
)        
AS        
BEGIN        
Update tbl_User_Details set IsActive=0, IsDelete =1, Status='Trash'   Where Id =@Id        
End 
SELECT IDENT_CURRENT('tbl_User_Details')
GO
/****** Object:  StoredProcedure [dbo].[upsEmailCheck]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[upsEmailCheck]
(
 @Email nvarchar(max)
)
AS
BEGIN
Select Email from tbl_User_Details Where Email =@Email
End
GO
/****** Object:  StoredProcedure [dbo].[upsGetAllDepartmentList]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  Proc [dbo].[upsGetAllDepartmentList]  
AS  
BEGIN  
SELECT *FROM tbl_Department  Where IsActive=1 and IsDelete =0 and Status='Published'
END 
GO
/****** Object:  StoredProcedure [dbo].[upsGetAllDetails]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[upsGetAllDetails]

AS
BEGIN
Select *from Posts
END
GO
/****** Object:  StoredProcedure [dbo].[upsGetAllUser]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[upsGetAllUser]
(
 @IsActive bit,
 @IsDelete bit
)
AS
BEGIN
Select * from tbl_Role Where IsActive =@IsActive and IsDelete=@IsDelete
End
GO
/****** Object:  StoredProcedure [dbo].[upsGetDepartmentById]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc  [dbo].[upsGetDepartmentById]
(

 @Id int
)
AS
BEGIN
SELECT *FROM tbl_Department WHERE Id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[upsGetLastId]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[upsGetLastId]
  
AS
BEGIN
Select Max(Id) from tbl_User_Details
END
GO
/****** Object:  StoredProcedure [dbo].[upsGetLastRoleId]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[upsGetLastRoleId]

AS
BEGIN
 Select Max(Id) from tbl_Role
END
GO
/****** Object:  StoredProcedure [dbo].[upsGetRoleIdByRoleName]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[upsGetRoleIdByRoleName]
(
   @RoleName	nvarchar(max)
)
AS
BEGIN 
SELECT RoleId FROM tbl_Role WHERE RoleName =@RoleName
END
GO
/****** Object:  StoredProcedure [dbo].[upsGetRoleName]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[upsGetRoleName]
AS
BEGIN
SELECT * FROM tbl_Role 
END
GO
/****** Object:  StoredProcedure [dbo].[upsGetUserbyId]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[upsGetUserbyId]
(
 @id bigint
)
AS
BEGIN
Select * from tbl_Role Where Id =@id
End
GO
/****** Object:  StoredProcedure [dbo].[upsGetUserList]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[upsGetUserList]  
AS  
BEGIN  
SELECT * FROM tbl_User_Details Where IsDelete =0 and IsActive=1 and Status='Published' 
END  
GO
/****** Object:  StoredProcedure [dbo].[upsInsertEmployeeDetails]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[upsInsertEmployeeDetails]
	
	@EmpName	varchar(64),
	@Email		varchar(64),
	@Phone		varchar(16)
AS
BEGIN
INSERT
INTO	tblEmployee
(
		EmpName,	
		Email,		
		Phone	
)
VALUES		
(
		@EmpName,	
		@Email,		
		@Phone
)	
END

GO
/****** Object:  StoredProcedure [dbo].[upsLogin]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[upsLogin]  
(
 @Email nvarchar(max)
)
AS  
BEGIN   
 SELECT Email, Password,Name from tbl_User_Details  WHERE Email = @Email
END  
GO
/****** Object:  StoredProcedure [dbo].[upsMappingUserRoleId]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[upsMappingUserRoleId]
(
   @UserId nvarchar(128),
   @RoleId nvarchar(128)
)
AS 
BEGIN
INSERT INTO tbl_UsersInRole
(
    UserId ,
    RoleId 
)
VALUES
(
  @UserId ,
  @RoleId 
)
END
Select SCOPE_IDENTITY();
GO
/****** Object:  StoredProcedure [dbo].[upsRoleName]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[upsRoleName]
(
 @RoleName nvarchar(max)
)
AS
BEGIN
Select RoleName from tbl_Role Where RoleName =@RoleName
End
GO
/****** Object:  StoredProcedure [dbo].[upsSaveDepartmetDetail]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[upsSaveDepartmetDetail]  
(  
 @Id    int,  
 @DeptName  nvarchar(max),   
 @DeptSalary  bigint  
)  
AS  
BEGIN  
   IF EXISTS(SELECT * from tbl_Department WHERE Id=@Id )  
   BEGIN  
   UPDATE tbl_Department SET DeptName=@DeptName, DeptSalary=@DeptSalary  WHERE Id=@Id
   END  
   ELSE  
   BEGIN  
   INSERT INTO tbl_Department (DeptName ,DeptSalary)VALUES(@DeptName,@DeptSalary)  
   END  
   SELECT IDENT_CURRENT('tbl_Department')  
END  
GO
/****** Object:  StoredProcedure [dbo].[upsSaveRole]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[upsSaveRole]
(
			@Id int,
			@RoleName	nvarchar(max)
			
)
AS 
BEGIN
     IF EXISTS(SELECT * FROM tbl_Role Where RoleName=@RoleName) 
	 BEGIN
		 UPDATE tbl_Role SET RoleName=@RoleName WHERE Id=@Id
		 
	 END
	 
ELSE
	 BEGIN
		INSERT INTO tbl_Role (RoleName) VALUES (@RoleName)
		
	END
	SELECT IDENT_CURRENT('tbl_Role')
END
GO
/****** Object:  StoredProcedure [dbo].[upsSaveUserDetails]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[upsSaveUserDetails]    
(    
 @Id   int=0,    
 @Name  nvarchar(max),  
 @Email  nvarchar(max),    
 @Password  nvarchar(max),    
 @Phone  nvarchar(max),    
 @Department nvarchar(max),    
 @EmpImage nvarchar(max)    
)    
AS     
BEGIN     
  IF EXISTS(SELECT * FROM tbl_User_Details  WHERE Id=@Id)    
  BEGIN    
   UPDATE tbl_User_Details SET [Name]=@Name, Email=@Email,[Password]=@Password,Phone=@Phone,Department=@Department,EmpImage=@EmpImage WHERE Id =@Id    
  END    
ELSE    
  BEGIN    
      INSERT INTO tbl_User_Details( [Name], Email,[Password],Phone,Department,EmpImage)Values(@Name,@Email,@Password,@Phone,@Department,@EmpImage)    
   END    
   SELECT IDENT_CURRENT('tbl_User_Details')    
END 
GO
/****** Object:  StoredProcedure [dbo].[upsSelectEmployeeDetails]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[upsSelectEmployeeDetails]
(
 @IsActiveDelete bit
)
AS
BEGIN
SELECT *
FROM	tblEmployee Where IsActiveDelete =@IsActiveDelete
End
GO
/****** Object:  StoredProcedure [dbo].[upsSelectRoleId]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[upsSelectRoleId]
(
  
   @Id bigint
   
   
)
AS
BEGIN
SELECT RoleId FROM tbl_Role WHERE Id =@Id
END
GO
/****** Object:  StoredProcedure [dbo].[upsSelectUserDetailsByEmail]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[upsSelectUserDetailsByEmail]
(
  @Email nvarchar(max)

)
AS
BEGIN
SELECT * FROM tbl_User_Details WHERE Email =@Email
END

GO
/****** Object:  StoredProcedure [dbo].[upsSelectUserId]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[upsSelectUserId]
(
  
   @Id bigint
   
   
)
AS
BEGIN
SELECT UserId FROM tbl_User_Details WHERE Id =@Id
END
GO
/****** Object:  StoredProcedure [dbo].[upsUserDetailsGetById]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[upsUserDetailsGetById]
(
  @Id int

)
AS
BEGIN
     SELECT * FROM tbl_User_Details WHERE Id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetRoleNameByUserId]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetRoleNameByUserId]  
@UserId NVARCHAR(50)  
AS  
BEGIN  
   
 IF EXISTS(SELECT Id FROM tbl_User_Details Where UserId = @UserId AND IsDelete = 0)  
 BEGIN  
    
  SELECT ISNULL(r.RoleName, '') AS RoleName FROM tbl_User_Details u   
  INNER JOIN tbl_UsersInRole uir ON u.UserId = uir.UserId  
  INNER JOIN tbl_Role r ON r.RoleId = uir.RoleId  
  Where u.UserId = @UserId  
  
 END  
  
 ELSE  
 BEGIN  
  select '' AS RoleName  
 END  
  
END
GO
/****** Object:  StoredProcedure [dbo].[uspGetUserDetailsById]    Script Date: 07/21/2022 15:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[uspGetUserDetailsById]
(
   @Id int
)
AS
BEGIN
SELECT * FROM tbl_User_Details WHERE Id=@Id
END
GO
