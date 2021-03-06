USE [MatozDz]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  User [MatozDzUser]    Script Date: 05/27/2010 20:05:17 ******/
CREATE USER [MatozDzUser] FOR LOGIN [MatozDzUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 05/27/2010 20:05:17 ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 05/27/2010 20:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'/', N'/', N'02df590d-8761-4f13-a7c0-9fc2c435cf44', NULL)
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 05/27/2010 20:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
/****** Object:  Table [dbo].[Wilaya]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wilaya](
	[WilayaId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Wilaya] PRIMARY KEY CLUSTERED 
(
	[WilayaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Wilaya] ON
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (1, N'Adrar')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (2, N'Chlef')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (3, N'Laghouat')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (4, N'Oum El-Bouaghi')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (5, N'Batna')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (6, N'Béjaïa')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (7, N'Biskra')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (8, N'Béchar')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (9, N'Blida')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (10, N'Bouira')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (11, N'Tamanrasset')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (12, N'Tébessa')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (13, N'Tlemcen')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (14, N'Tiaret')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (15, N'Tizi Ouzou')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (16, N'Alger')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (17, N'Djelfa')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (18, N'Jijel')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (19, N'Sétif')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (20, N'Saida')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (21, N'Skikda')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (22, N'Sidi Bel Abbes')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (23, N'Annaba')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (24, N'Guelma')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (25, N'Constantine')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (26, N'Médéa')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (27, N'Mostaganem')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (28, N'M''Sila')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (29, N'Mascara')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (30, N'Ouargla')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (31, N'Oran')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (32, N'El-Bayadh')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (33, N'Illizi')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (34, N'Bord-Bou-Arréridj')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (35, N'Boumerdès')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (36, N'El-Taref')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (37, N'Tindouf')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (38, N'Tissemsilt')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (39, N'El Oued')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (40, N'Khenchela')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (41, N'Souk Ahras')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (42, N'Tipaza')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (43, N'Mila')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (44, N'Aïn Defla')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (45, N'Naâma')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (46, N'Aïn Témouchent')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (47, N'Ghardaïa')
INSERT [dbo].[Wilaya] ([WilayaId], [name]) VALUES (48, N'Relizane')
SET IDENTITY_INSERT [dbo].[Wilaya] OFF
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Store](
	[StoreId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[phone] [varchar](50) NULL,
	[url] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[WilayaId] [int] NOT NULL,
	[IsDeleted] [bit] NULL,
	[AddedByUser] [varchar](50) NULL,
	[UpdatedByUser] [varchar](50) NULL,
	[LastDateUpdated] [datetime] NULL,
	[DateAdded] [datetime] NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Store] ON
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (1, N' hgqmyd', N'226 rue  wHxeGyT', N'322-6491951', N'http://www.hgqm.com', N'hgqm@dypdzjb.com', 1, 1, NULL, NULL, NULL, CAST(0x00009C7B0003F278 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (2, N' pdzjbbmdzc', N'04 rue  yEqNZ', N'930-0419082', N'http://www.dypdzjb.com', N'mdz@vgm.com', 2, 0, NULL, NULL, NULL, CAST(0x00009C5300F7602C AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (3, N' gmbvuetgu', N'87 rue  mMowF', N'408-7172791', N'http://www.mdz.com', N'vue@guycau.com', 3, 0, NULL, NULL, NULL, CAST(0x00009C43017CC3F4 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (4, N' cauickzeuf', N'73 rue  UyIp', N'073-1391717', N'http://www.vgm.com', N'ckze@fuiczv.com', 4, 0, NULL, NULL, NULL, CAST(0x00009D4C00CF635D AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (5, N' iczvofanq', N'73 rue  yrcK', N'319-8510568', N'http://www.vue.com', N'fanqw@zgnfglm.com', 5, 1, NULL, NULL, NULL, CAST(0x00009CD6008163A8 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (6, N' zzgnfglmls', N'56 rue  zyNaKNXZWl', N'992-5124447', N'http://www.guycau.com', N'ssjam@fby.com', 6, 1, NULL, NULL, NULL, CAST(0x00009E290119F37A AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (7, N' jamcfbyr', N'3040 rue  Dxjaz', N'630-4020965', N'http://www.ckze.com', N'nzexax@czgz.com', 7, 1, NULL, NULL, NULL, CAST(0x00009BEE013F0EA6 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (8, N' zexaxjc', N'80 rue  TEzMzkkHCG', N'918-0930929', N'http://www.fuiczv.com', N'sdbdbn@xdnrjmc.com', 8, 0, NULL, NULL, NULL, CAST(0x00009E390172F310 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (9, N' gzssdbdbnu', N'58 rue  GbjSYFzEZn', N'761-0105891', N'http://www.fanqw.com', N'cmtidcw@xvb.com', 9, 0, NULL, NULL, NULL, CAST(0x00009D3700461C87 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (10, N' dnrjmczcmt', N'108 rue  uqDM', N'563-4190473', N'http://www.zgnfglm.com', N'pvel@lazf.com', 10, 0, NULL, NULL, NULL, CAST(0x00009BD90126F41D AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (11, N' dcwdxv', N'814 rue  XAzKy', N'108-1980258', N'http://www.ssjam.com', N'jargaoz@vkxy.com', 11, 0, NULL, NULL, NULL, CAST(0x00009E4C003E7DDD AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (12, N' gpve', N'062 rue  cyPq', N'142-4092930', N'http://www.fby.com', N'pgxw@vadhzh.com', 12, 0, NULL, NULL, NULL, CAST(0x00009C9201279F80 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (13, N' glazfzj', N'992 rue  MusgrAHP', N'620-5928499', N'http://www.nzexax.com', N'cycl@lcucdtq.com', 13, 1, NULL, NULL, NULL, CAST(0x00009BB7000ED393 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (14, N' rgao', N'2209 rue  WvXF', N'262-8868013', N'http://www.czgz.com', N'bhepzri@nofjpk.com', 14, 0, NULL, NULL, NULL, CAST(0x00009BB7010B2094 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (15, N' hvkxyhpgxw', N'1176 rue  CPIfziQjbd', N'922-0904941', N'http://www.sdbdbn.com', N'fvb@kby.com', 15, 1, NULL, NULL, NULL, CAST(0x00009CE30157308F AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (16, N' vadhzhfc', N'35 rue  IKrDCV', N'711-7680216', N'http://www.xdnrjmc.com', N'xwxyvd@mng.com', 16, 0, NULL, NULL, NULL, CAST(0x00009BF30108A9C2 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (17, N' clxlcucdtq', N'96 rue  svxqHJZaMz', N'963-6552353', N'http://www.cmtidcw.com', N'powniiy@okwci.com', 17, 1, NULL, NULL, NULL, CAST(0x00009E43014C8BB9 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (18, N' bhepzrirno', N'585 rue  QxbdUt', N'118-0040968', N'http://www.xvb.com', N'yph@rgv.com', 18, 1, NULL, NULL, NULL, CAST(0x00009BC900EDAA55 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (19, N' jpkef', N'30 rue  eOCjMqFkOn', N'899-8114529', N'http://www.pvel.com', N'sht@snn.com', 19, 1, NULL, NULL, NULL, CAST(0x00009DD5003AFC65 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (20, N' bbkbypxwx', N'75 rue  REkFfqf', N'558-5339553', N'http://www.lazf.com', N'cscp@pihtsln.com', 20, 1, NULL, NULL, NULL, CAST(0x00009C3A0177A9F6 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (21, N' vdemngzpow', N'277 rue  bTKAneu', N'803-0952062', N'http://www.jargaoz.com', N'fatp@woxlvae.com', 21, 1, NULL, NULL, NULL, CAST(0x00009CE3007EA785 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (22, N' iiynokw', N'5948 rue  IYse', N'816-2707553', N'http://www.vkxy.com', N'wpufq@agiez.com', 22, 1, NULL, NULL, NULL, CAST(0x00009BBA00DC329E AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (23, N' ibyp', N'2640 rue  QJzlM', N'061-6863277', N'http://www.pgxw.com', N'gigzhz@htmgzm.com', 23, 1, NULL, NULL, NULL, CAST(0x00009DE6017A72B2 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (24, N' brgvc', N'292 rue  oOmZNzZqhx', N'453-2075885', N'http://www.vadhzh.com', N'qykqwcl@ttnn.com', 24, 1, NULL, NULL, NULL, CAST(0x00009DBC016F5D97 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (25, N' htcsnnic', N'680 rue  RnnbbEA', N'948-0148572', N'http://www.cycl.com', N'and@vuwqniy.com', 25, 1, NULL, NULL, NULL, CAST(0x00009C0E010C5A24 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (26, N' cpvpihts', N'188 rue  thbRwHrLu', N'640-2319723', N'http://www.lcucdtq.com', N'vfx@jiutvu.com', 26, 1, NULL, NULL, NULL, CAST(0x00009DA1013E8B21 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (27, N' njfatpx', N'3377 rue  pCqiPuPue', N'292-9727429', N'http://www.bhepzri.com', N'vrh@hxpmltx.com', 27, 0, NULL, NULL, NULL, CAST(0x00009C2D0181E949 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (28, N' oxlvaemwpu', N'478 rue  mfeWLgIGg', N'486-9468043', N'http://www.nofjpk.com', N'tpplfq@dqm.com', 28, 1, NULL, NULL, NULL, CAST(0x00009DC100D259D1 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (29, N' qlagi', N'508 rue  fUWmpOK', N'775-5005188', N'http://www.fvb.com', N'awnpk@tuhfm.com', 29, 1, NULL, NULL, NULL, CAST(0x00009E29008B7E08 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (30, N' zsgig', N'325 rue  emwsZUxWHH', N'786-5391828', N'http://www.kby.com', N'gnwp@ywmkyl.com', 30, 1, NULL, NULL, NULL, CAST(0x00009BD20131A2C9 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (31, N' hzuhtmgzmv', N'8516 rue  WRIOBnPK', N'733-7788086', N'http://www.xwxyvd.com', N'dux@dqrli.com', 31, 1, NULL, NULL, NULL, CAST(0x00009B9C00276E32 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (32, N' ykqwclit', N'79 rue  eNOSuSCW', N'382-9544787', N'http://www.mng.com', N'hat@fbsz.com', 32, 0, NULL, NULL, NULL, CAST(0x00009DB6008FDC5F AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (33, N' nncandxvu', N'79 rue  EWUY', N'765-4261164', N'http://www.powniiy.com', N'pghjxj@leu.com', 33, 1, NULL, NULL, NULL, CAST(0x00009C6401101583 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (34, N' qniydvfxtj', N'516 rue  bCzENsqX', N'508-5634772', N'http://www.okwci.com', N'dclkmpo@rqn.com', 34, 0, NULL, NULL, NULL, CAST(0x00009BD700393E3D AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (35, N' utvubv', N'8743 rue  tsWzKDLZhR', N'243-2585798', N'http://www.yph.com', N'zcg@vltutki.com', 35, 0, NULL, NULL, NULL, CAST(0x00009C9F01096F95 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (36, N' hxhxpmlt', N'15 rue  reZbOz', N'439-4117851', N'http://www.rgv.com', N'wwlzfbf@qiaep.com', 36, 0, NULL, NULL, NULL, CAST(0x00009E4F003A34D6 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (37, N' utpplfqedq', N'22 rue  haLyX', N'664-3120722', N'http://www.sht.com', N'vpmn@zbfh.com', 37, 1, NULL, NULL, NULL, CAST(0x00009C010106246F AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (38, N' nawnpkl', N'2775 rue  fIdzfUC', N'079-6522393', N'http://www.snn.com', N'qnfz@zfsto.com', 38, 1, NULL, NULL, NULL, CAST(0x00009DC300EEDF9A AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (39, N' uhfmignwp', N'600 rue  XgHQM', N'041-7910434', N'http://www.cscp.com', N'peozp@bkrb.com', 39, 0, NULL, NULL, NULL, CAST(0x00009C1500DEACF7 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (40, N' ywmkylddu', N'38 rue  dIRjsMBj', N'651-6650902', N'http://www.pihtsln.com', N'glq@igd.com', 40, 1, NULL, NULL, NULL, CAST(0x00009DC900A77F3B AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (41, N' odqrliehat', N'34 rue  sLWv', N'884-7874388', N'http://www.fatp.com', N'vroe@rwga.com', 41, 0, NULL, NULL, NULL, CAST(0x00009C7E014A0F6C AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (42, N' fbszqp', N'650 rue  gLdMnSQiz', N'849-1024630', N'http://www.woxlvae.com', N'cilawf@xnrpa.com', 42, 1, NULL, NULL, NULL, CAST(0x00009BD0011B8E2E AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (43, N' hjxjb', N'478 rue  ALPn', N'153-8545290', N'http://www.wpufq.com', N'qfogtji@zoktvb.com', 43, 0, NULL, NULL, NULL, CAST(0x00009E4F00450C52 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (44, N' euzdcl', N'07 rue  lhMfUlU', N'222-6529492', N'http://www.agiez.com', N'fht@aso.com', 44, 1, NULL, NULL, NULL, CAST(0x00009DE8010844CF AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (45, N' mpoerq', N'4788 rue  xoWEukBGnB', N'775-5615963', N'http://www.gigzhz.com', N'qgpksk@ltuwyy.com', 45, 0, NULL, NULL, NULL, CAST(0x00009D1000EA7692 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (46, N' bzcgwvl', N'01 rue  kLwXzD', N'046-0024613', N'http://www.htmgzm.com', N'lcxsad@agaeks.com', 46, 0, NULL, NULL, NULL, CAST(0x00009C1400CB8C2A AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (47, N' utkiwwwlz', N'59 rue  IyfN', N'213-8651368', N'http://www.qykqwcl.com', N'ylzb@nya.com', 47, 0, NULL, NULL, NULL, CAST(0x00009B9F0171C46E AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (48, N' bfmqi', N'16 rue  xFCXtiNQkW', N'206-1340824', N'http://www.ttnn.com', N'zpg@dryy.com', 48, 1, NULL, NULL, NULL, CAST(0x00009D0A0174EF2A AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (49, N' epjv', N'6952 rue  kYbPqp', N'956-5086252', N'http://www.and.com', N'blw@gislyp.com', 1, 1, NULL, NULL, NULL, CAST(0x00009D53012E4A77 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (50, N' mnhzbfhg', N'4849 rue  EnrhSPEETM', N'733-6954780', N'http://www.vuwqniy.com', N'ofhsmnh@uwlvlyy.com', 2, 0, NULL, NULL, NULL, CAST(0x00009E070182C9D9 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (51, N' nfzlzfst', N'216 rue  gcQAem', N'023-7107576', N'http://www.vfx.com', N'tvq@hccj.com', 3, 1, NULL, NULL, NULL, CAST(0x00009E5700A16F4E AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (52, N' npeozpkb', N'58 rue  SHHLefWl', N'263-7374788', N'http://www.jiutvu.com', N'jger@qoia.com', 4, 0, NULL, NULL, NULL, CAST(0x00009E49011FA07A AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (53, N' rbbglq', N'296 rue  MjZHvX', N'997-4087017', N'http://www.vrh.com', N'tioup@ddfp.com', 5, 1, NULL, NULL, NULL, CAST(0x00009C3D0037CCB4 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (54, N' igdi', N'21 rue  WMvb', N'020-1462949', N'http://www.hxpmltx.com', N'lsifyp@grmd.com', 6, 1, NULL, NULL, NULL, CAST(0x00009CF501444702 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (55, N' roeirwgar', N'317 rue  BCzIw', N'005-9019622', N'http://www.tpplfq.com', N'ldgcdlg@nkjeuea.com', 7, 1, NULL, NULL, NULL, CAST(0x00009C1300317802 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (56, N' ilaw', N'7695 rue  YVBMDREfV', N'169-9004862', N'http://www.dqm.com', N'zey@uqynwmk.com', 8, 1, NULL, NULL, NULL, CAST(0x00009C4400B341DA AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (57, N' lxnrp', N'63 rue  zkzjE', N'374-9695226', N'http://www.awnpk.com', N'gbi@pkd.com', 9, 1, NULL, NULL, NULL, CAST(0x00009CCA01086E4E AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (58, N' uqfo', N'31 rue  ndNMbdP', N'452-8884849', N'http://www.tuhfm.com', N'igzszr@aje.com', 10, 1, NULL, NULL, NULL, CAST(0x00009CE5000D6531 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (59, N' tjirz', N'81 rue  NiBKiXEOe', N'907-8633003', N'http://www.gnwp.com', N'toggn@hdues.com', 11, 0, NULL, NULL, NULL, CAST(0x00009CC1014E8B3A AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (60, N' ktvbafh', N'036 rue  ILsEdvIkB', N'232-1636530', N'http://www.ywmkyl.com', N'rafr@chpjb.com', 12, 0, NULL, NULL, NULL, CAST(0x00009D9200CE595B AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (61, N' dasosqgpk', N'498 rue  bPOQZgzRj', N'573-5863112', N'http://www.dux.com', N'stef@coxesar.com', 13, 0, NULL, NULL, NULL, CAST(0x00009D7F01238C31 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (62, N' ksltuwyy', N'0691 rue  DkLdZSR', N'564-7329632', N'http://www.dqrli.com', N'zvunh@imqz.com', 14, 0, NULL, NULL, NULL, CAST(0x00009C8B006CB3A9 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (63, N' lcxsadtag', N'022 rue  dhTnjgO', N'641-9412114', N'http://www.hat.com', N'ruaq@cobsfom.com', 15, 0, NULL, NULL, NULL, CAST(0x00009B9400E77508 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (64, N' eksf', N'2078 rue  nrcD', N'295-4317100', N'http://www.fbsz.com', N'ilag@ooqj.com', 16, 0, NULL, NULL, NULL, CAST(0x00009CE8009FFBBE AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (65, N' lzbbnyaezp', N'99 rue  GyxL', N'919-8769584', N'http://www.pghjxj.com', N'rqhthc@wbtvob.com', 17, 0, NULL, NULL, NULL, CAST(0x00009BC100FF85EC AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (66, N' hdryy', N'341 rue  MELDVjQBSz', N'402-0305416', N'http://www.leu.com', N'yzb@zyf.com', 18, 1, NULL, NULL, NULL, CAST(0x00009C19013A237D AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (67, N' blwr', N'329 rue  TZmaoTyQPa', N'329-7960031', N'http://www.dclkmpo.com', N'ilewg@fbk.com', 19, 0, NULL, NULL, NULL, CAST(0x00009BB2001789FD AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (68, N' islyp', N'645 rue  PrcVs', N'475-2255218', N'http://www.rqn.com', N'iajzqj@zzjm.com', 20, 1, NULL, NULL, NULL, CAST(0x00009E3D0161162A AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (69, N' ofhsmnhvuw', N'603 rue  MBlwR', N'172-6026402', N'http://www.zcg.com', N'nujzih@lrkng.com', 21, 0, NULL, NULL, NULL, CAST(0x00009D760001AFD3 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (70, N' vlyyctv', N'8998 rue  ewUZNovdyA', N'530-3671280', N'http://www.vltutki.com', N'vokw@qajega.com', 22, 1, NULL, NULL, NULL, CAST(0x00009CF2011CFA8D AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (71, N' jhccjgjg', N'5068 rue  tFQmZUScR', N'591-6064988', N'http://www.wwlzfbf.com', N'yisvzz@ypykmgu.com', 23, 1, NULL, NULL, NULL, CAST(0x00009E5000028427 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (72, N' rjqoi', N'39 rue  fjWjRluHv', N'532-3469367', N'http://www.qiaep.com', N'ozaxncr@uwcitmk.com', 24, 1, NULL, NULL, NULL, CAST(0x00009C04005DAC20 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (73, N' ptio', N'874 rue  IRbfMa', N'069-1507254', N'http://www.vpmn.com', N'oigj@vprlris.com', 25, 1, NULL, NULL, NULL, CAST(0x00009E12000EFC33 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (74, N' pjddfppls', N'9861 rue  KdsIAUx', N'334-0225563', N'http://www.zbfh.com', N'dxpwslj@inp.com', 26, 1, NULL, NULL, NULL, CAST(0x00009B8F011EFF29 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (75, N' fyphgr', N'3348 rue  yvhxaWBCA', N'766-2720780', N'http://www.qnfz.com', N'nxzx@clfowe.com', 27, 1, NULL, NULL, NULL, CAST(0x00009E1A002D995E AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (76, N' dxldgcd', N'28 rue  GXvhpndu', N'785-0099019', N'http://www.zfsto.com', N'kyt@imvt.com', 28, 1, NULL, NULL, NULL, CAST(0x00009C9600EE9B56 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (77, N' gxnkjeu', N'337 rue  YnjBrtjs', N'924-3418202', N'http://www.peozp.com', N'xqynlab@ffv.com', 29, 1, NULL, NULL, NULL, CAST(0x00009BC900972520 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (78, N' abzey', N'62 rue  UMEU', N'046-3039632', N'http://www.bkrb.com', N'dlxqut@xniht.com', 30, 0, NULL, NULL, NULL, CAST(0x00009E5C00722CB7 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (79, N' uqynwmkag', N'36 rue  TNarlb', N'993-4757393', N'http://www.glq.com', N'mtrav@rwhpgak.com', 31, 0, NULL, NULL, NULL, CAST(0x00009C300084E706 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (80, N' icpk', N'2845 rue  KvxNSy', N'254-6452385', N'http://www.igd.com', N'ckfj@jjgnvs.com', 32, 1, NULL, NULL, NULL, CAST(0x00009E580040CCCD AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (81, N' rigz', N'317 rue  rigVbYZQyi', N'486-6031207', N'http://www.vroe.com', N'shwlp@fxyg.com', 33, 0, NULL, NULL, NULL, CAST(0x00009D85015848B3 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (82, N' zrcajelt', N'222 rue  PQIVyqBuq', N'936-8998959', N'http://www.rwga.com', N'zjjd@wvrqkn.com', 34, 1, NULL, NULL, NULL, CAST(0x00009D81000CF8F3 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (83, N' ggnohdue', N'280 rue  zOMdV', N'442-7959085', N'http://www.cilawf.com', N'mizrk@fgwh.com', 35, 1, NULL, NULL, NULL, CAST(0x00009BF1012F9159 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (84, N' grafrlchp', N'101 rue  pTHfj', N'068-8813743', N'http://www.xnrpa.com', N'ekzv@xvm.com', 36, 0, NULL, NULL, NULL, CAST(0x00009BA50094362F AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (85, N' bjstef', N'7704 rue  CJkqCqoq', N'353-2398664', N'http://www.qfogtji.com', N'vbfz@gokr.com', 37, 0, NULL, NULL, NULL, CAST(0x00009BD90090324F AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (86, N' coxesarlz', N'2640 rue  UJhpejLKyg', N'637-9195874', N'http://www.zoktvb.com', N'cde@jdprus.com', 38, 1, NULL, NULL, NULL, CAST(0x00009BB000934E8C AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (87, N' unhhimqzi', N'642 rue  nbqc', N'313-5625898', N'http://www.fht.com', N'amrbes@bvuvygr.com', 39, 0, NULL, NULL, NULL, CAST(0x00009CFD00580FAB AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (88, N' uaqycobs', N'905 rue  TrUOJwHwC', N'614-2581049', N'http://www.aso.com', N'czkeq@prffzq.com', 40, 0, NULL, NULL, NULL, CAST(0x00009DCC01574F55 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (89, N' omjil', N'260 rue  VqXsKDMSVc', N'733-4879969', N'http://www.qgpksk.com', N'rkfat@vooyc.com', 41, 1, NULL, NULL, NULL, CAST(0x00009E220007C510 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (90, N' ghoo', N'1789 rue  CPhuWnP', N'540-0022861', N'http://www.ltuwyy.com', N'tjvkh@ydy.com', 42, 0, NULL, NULL, NULL, CAST(0x00009BDF00562DBB AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (91, N' jtrqhthc', N'0046 rue  pwVkdUlE', N'496-7758533', N'http://www.lcxsad.com', N'qhp@ykv.com', 43, 0, NULL, NULL, NULL, CAST(0x00009D0800BD4889 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (92, N' wbtvobbyz', N'84 rue  AWsZzLP', N'754-7608868', N'http://www.agaeks.com', N'wfbgj@ouesv.com', 44, 0, NULL, NULL, NULL, CAST(0x00009D7A00F8BE12 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (93, N' dzyf', N'45 rue  yIbibbrIed', N'262-0320313', N'http://www.ylzb.com', N'obhqxlt@yabm.com', 45, 0, NULL, NULL, NULL, CAST(0x00009C85012BD660 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (94, N' ilewgc', N'6634 rue  XJYzU', N'633-2587572', N'http://www.nya.com', N'quykso@scbx.com', 46, 0, NULL, NULL, NULL, CAST(0x00009CE10010526F AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (95, N' bkria', N'34 rue  XXBrKh', N'845-3199239', N'http://www.zpg.com', N'nalwm@fhamozz.com', 47, 0, NULL, NULL, NULL, CAST(0x00009BCD010F750A AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (96, N' zqjhzz', N'29 rue  bCmKdLm', N'331-7886645', N'http://www.dryy.com', N'nrn@vepos.com', 48, 0, NULL, NULL, NULL, CAST(0x00009E5100DD5A97 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (97, N' mtnujz', N'9282 rue  aDsr', N'443-9642228', N'http://www.blw.com', N'pjmdle@zkekl.com', 1, 0, NULL, NULL, NULL, CAST(0x00009BC000341927 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (98, N' hnlrkn', N'56 rue  oFRDDqQUw', N'331-4980884', N'http://www.gislyp.com', N'llav@qeg.com', 2, 1, NULL, NULL, NULL, CAST(0x00009CEA01309294 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (99, N' hvokw', N'369 rue  FkyuniQXHZ', N'280-2922546', N'http://www.ofhsmnh.com', N'lnbtfof@wyhvgc.com', 3, 0, NULL, NULL, NULL, CAST(0x00009DAB0008BEE4 AS DateTime))
INSERT [dbo].[Store] ([StoreId], [name], [address], [phone], [url], [email], [WilayaId], [IsDeleted], [AddedByUser], [UpdatedByUser], [LastDateUpdated], [DateAdded]) VALUES (100, N' qajegasy', N'35 rue  RpHiRinxU', N'101-1731667', N'http://www.uwlvlyy.com', N'bwvao@uucibb.com', 4, 0, NULL, NULL, NULL, CAST(0x00009C7A013BD514 AS DateTime))
GO
print 'Processed 100 total records'
SET IDENTITY_INSERT [dbo].[Store] OFF
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'02df590d-8761-4f13-a7c0-9fc2c435cf44', N'f4611794-9afe-4cdb-9ded-2228d08fcf82', N'sancha', N'sancha', NULL, 0, CAST(0x00009D80017797A2 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'02df590d-8761-4f13-a7c0-9fc2c435cf44', N'cbae1bc3-e43a-4ae3-954f-f4d0cd80e7cf', N'tidjani', N'tidjani', NULL, 0, CAST(0x00009D7F00F6FDA9 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'02df590d-8761-4f13-a7c0-9fc2c435cf44', N'13eb8adb-8ec5-47e9-a391-c778dfac2d44', N'toto', N'toto', NULL, 0, CAST(0x00009D7F00F71660 AS DateTime))
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] 
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles] 
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'02df590d-8761-4f13-a7c0-9fc2c435cf44', N'd9568a93-c0f7-4442-9117-9f35f734c5f4', N'Admin', N'admin', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'02df590d-8761-4f13-a7c0-9fc2c435cf44', N'f78a2179-e4fa-4ebe-b097-8f1e048ac3ca', N'Modo', N'modo', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'02df590d-8761-4f13-a7c0-9fc2c435cf44', N'c3771356-2170-47f7-9830-5fc8fbc4bb98', N'User', N'user', NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership] 
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'02df590d-8761-4f13-a7c0-9fc2c435cf44', N'f4611794-9afe-4cdb-9ded-2228d08fcf82', N'KKfgpDTZRJQ4Sn3J91UTZlHgNNg=', 1, N'B8T3Q/Z2+158ISahFSiRPA==', NULL, N'sancha@test.com', N'sancha@test.com', NULL, NULL, 1, 0, CAST(0x00009D7F00F6354C AS DateTime), CAST(0x00009D80017797A2 AS DateTime), CAST(0x00009D7F00F6354C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'02df590d-8761-4f13-a7c0-9fc2c435cf44', N'cbae1bc3-e43a-4ae3-954f-f4d0cd80e7cf', N'YgTkCaAIoOy9pBxPICVVzIzBl38=', 1, N'pNkMDMLC1+ZXL82UA7zJbA==', NULL, N'tidjani@test.com', N'tidjani@test.com', NULL, NULL, 1, 0, CAST(0x00009D7F00F6FC84 AS DateTime), CAST(0x00009D7F00F6FDA9 AS DateTime), CAST(0x00009D7F00F6FC84 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'02df590d-8761-4f13-a7c0-9fc2c435cf44', N'13eb8adb-8ec5-47e9-a391-c778dfac2d44', N'FGEgLSqf7KFZGQHU96vLFJEn6SQ=', 1, N'UEMBfH7ASp/mX28jr6A5Ew==', NULL, N'toto@test.com', N'toto@test.com', NULL, NULL, 1, 0, CAST(0x00009D7F00F7164C AS DateTime), CAST(0x00009D7F00F71660 AS DateTime), CAST(0x00009D7F00F7164C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'13eb8adb-8ec5-47e9-a391-c778dfac2d44', N'c3771356-2170-47f7-9830-5fc8fbc4bb98')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'cbae1bc3-e43a-4ae3-954f-f4d0cd80e7cf', N'f78a2179-e4fa-4ebe-b097-8f1e048ac3ca')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'f4611794-9afe-4cdb-9ded-2228d08fcf82', N'd9568a93-c0f7-4442-9117-9f35f734c5f4')
/****** Object:  Table [dbo].[Comment]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](250) NOT NULL,
	[UserPosted] [nvarchar](50) NOT NULL,
	[StoreId] [int] NOT NULL,
	[DatePosted] [datetime] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comment] ON
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (1, N'HGcSv9wa7yM44T9x5oFT4pmBkEmv62lJ7OyAmCnL6yqXC2XdszyFVCGRTQihM1U5C3xgVyAt0uN5zEzhh927', N'hgqmy', 1, CAST(0x00009C7B0003F278 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (2, N'Wnu7WgLT6y5UkK8', N'ypdz', 2, CAST(0x00009C5300F7602C AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (3, N'q8to4EboARFR1zDyN1gG', N'bbmdz', 3, CAST(0x00009C43017CC3F4 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (4, N'YyIoPuvIb', N'vgmb', 4, CAST(0x00009D4C00CF635D AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (5, N'trcq18IzHC6x5RuS6l67jes2IAbzeJfWZCLaO9Bp42P3wbtquxo9BTVFzZXq', N'uetguyca', 5, CAST(0x00009CD6008163A8 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (6, N'JKxWZOs5K4wZG3gEo6hHk4hVWK5h6bobKIliSXMC0latrZuQo0ATqZmEcR0EJBziFLEyHymHjUGzUoexQes5QLklWW50X8tplrdWKw8qDtjMJmjon3oeItItaTSltmkbaQEcA7', N'ickzeuf', 6, CAST(0x00009E290119F37A AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (7, N'TV2sXbNRjnGCTJEWsZjvqUNwR98mtY7efQK9G1kIC2ixcZGHLtM2QBmz75QOTbYBfcW3z5GqpRjnlQKrsrQzC4EUeK2BaMpaUWHz2CHGdVDySyEhkZVbAZzbO2Pe34GSc8JE8LogZALgqF1g6KQ0rDQvXga0', N'iczvofa', 7, CAST(0x00009BEE013F0EA6 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (8, N'cDZFlMJezZPlp20DIk90jYidFbOiOhRkoswxlR5sh17l1F1AQhEvRz44Vv09xbGH7fxw62RrfGJhRwbzZDIhTWIonrSqQvv5kpdMI44NFMGBgMdYJ1ajJZnbM88EabQjKDwbIFgU8uR7F78REuWPLBmB12zAvqmdvXqSP1F4K5bP7gLFzhzg51N9RlZGFWYI8nBiGf1C', N'qwzzgn', 8, CAST(0x00009E390172F310 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (9, N'S5GaN3LhkAEr5Yu9h1eSypnWIGKUczKgm1cv6Z4hEYUMKR2EHYZdMkfdHkH6jq4lpX44vy37xxEPKRBrE5D4PgJ2LzeMHxxNUjWmMyJIVRgPWFJpYPred0L9E2ivKhpzzqvavPUGmuYx0tV6gons6JjUNMYKFNxobgQfK', N'glml', 9, CAST(0x00009D3700461C87 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (10, N't9uasiRN9KWcFWtxtf6RCZq90OxkMJSplyuexVR120CDod8RudnlYtWKIkaTlg1prgqGbF0NE5OCMdLMGVpiWhGsSaLCvxGLyNL7nrqfdPWTUJyfPDCFqIJAPyo1toSHo2DzHEZPfA57BnN8bfmhk0Uf3Bhp2plowFeS6zOAdnagDCycagPD', N'sjamcfb', 10, CAST(0x00009BD90126F41D AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (11, N'lWoXXv', N'rnzexaxj', 11, CAST(0x00009E4C003E7DDD AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (12, N'WkMqOHAw8v2cHc3xPoSrC4EM', N'zgzs', 12, CAST(0x00009C9201279F80 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (13, N'XmBiquY3HetQkIw12UfdnwPhZOj54tSV0QqUzDI1UYzyAWeWWq9aZibbNU9RBTzOBNQJRR1pCd9EwRX2jDZEjrwHpE6V3qp1Zbmm5', N'dbdbnux', 13, CAST(0x00009BB7000ED393 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (14, N'44oKOvYMfvx6hytleKR8UCLWlLn8fLfkwO8UPPT0iSZBYx9r7owRKxqrjIY37QhKGC9IpPLFqRQ2d9xoCv1rO', N'nrjm', 14, CAST(0x00009BB7010B2094 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (15, N'QzYGl7rQsIlFuMnq2iSgbsXoEZKjqBOqv3l9kYdEOQY7GOFb1MtJO', N'zcmt', 15, CAST(0x00009CE30157308F AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (16, N'cXSk2Cm7ZgtvKqad5T4EIAKPXpJiiUI5RCRDh0WRRGrsEL4P0NGQFAQRD2CCs4P4OnT7PMw5xdm1JRBBluhKErqGmz0enJYNrmTQswzdRASbNP8lr0QyM4qWxCKPMHHe4P9XylJpu3t3PEtNrEnmsZ0mvwSfbaH9toXyFbn6hb4IBm7iJxX', N'dcwdx', 16, CAST(0x00009BF30108A9C2 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (17, N'UUlUOMb1IeDJmjAahu8GRg5GVia8pjLe2', N'bgpvelgl', 17, CAST(0x00009E43014C8BB9 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (18, N'fO32Zszln2OkVScX1PpHhnPVygmSCYIYHd3', N'zfzj', 18, CAST(0x00009BC900EDAA55 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (19, N'XfKFGft2slC8WHiwpkRszX3t6XZFkpTrPr0L4Z11uMcDTewupMjWCBmzcR9i5dI2ILieHNsFjQydupPSbePN6wfD50jcQIwG3au8vHdSTTmmD84m2g7QEuwLfUZGdGpRUhZKvGWJ1xucAt0wwwajAV29dZSQhMoDeLIVZjrl9oOG0KBmUdKhf5GyfPgMn6cf', N'rgao', 19, CAST(0x00009DD5003AFC65 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (20, N'gxobVMC5pZM6l8JNgw327XZ4JpA3Vx3Bj7KM', N'hvkxyhpg', 20, CAST(0x00009C3A0177A9F6 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (21, N'AyH8bqVusuGNy7AYd18NjIfC9asWAMdow0WxmuWh3ARvtfWptd66BycsJ4y0yzjVGSQxbCljVRKZrjJT32cXGXdxOde', N'wqvadhzh', 21, CAST(0x00009CE3007EA785 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (22, N'vVi4QvfRFZEgrNake31ZlVwwMCFioSZxX3n0iG8v4rDUnvfswtJKb5wPYmhEfwcmzH9oZa1Ov6UtHR8QXMmv9EMS7ORvYuF8FRVWmqJMruPVa276dHgIAgdluggB85q1qLeqwcdg3P4Epqr5GKIHDwyYnjb6A8Dl4OfFOH90dzFkcOv4p', N'cyclx', 22, CAST(0x00009BBA00DC329E AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (23, N'uonYntN52C1XWvCJAQAchzAHdDhDwPoWGZDPyVamrIEwz5TJYJEVtDtvdVuaB98dOUHwhmLeqOkOkEIYjNfdAId3fImSa0ahAbXUoWclyZeVSVAPDMqnTUS6rDHO0s4pn2E8gnkClufbe8bA8NFD9n', N'cucdtq', 23, CAST(0x00009DE6017A72B2 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (24, N'f9RdaFDl5VphPH1jPce2ZprRjc7Gddqg0pYzEA9wY8a5oQCs6dpbVldp', N'bhepzrir', 24, CAST(0x00009DBC016F5D97 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (25, N'zuy8w7Rf8hai2UFThTRFlcIQEAzoEAFBihEFAob18PgjbA48Z8oHCaVMcYum8dQyROzKG0It', N'ofjpke', 25, CAST(0x00009C0E010C5A24 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (26, N'P6MwYo45qE6Mxy8BrdcuosUyiHDAjsZqvOmT9Q3jpgHPKbUQr8PMfz3WcNEGbuMyfGRYBe1Rat47b5e6nmIaSCAwLFrmBm8vKJj4AvED7ymmuvvWi8ToblVS5VDvmFFnk8nILZwsX5TUQN1PKK33JJJZnHzfhJQriz1l8dA9CaHWH12hTobSBCTRpDU4aGAEeblRMFGg9uqi2nIlFHBthygVVawu', N'vbbk', 26, CAST(0x00009DA1013E8B21 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (27, N'6ZvQ2rfGaLDXuIHLkO2vjpI5GXgvFvlJMY', N'ypxw', 27, CAST(0x00009C2D0181E949 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (28, N'LvI0vdUewxMmfP', N'yvdemngz', 28, CAST(0x00009DC100D259D1 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (29, N'lBuzPGGp9UAj1fZuBMEwQSO6IEAM7uk0W5AZPM8m', N'owniiy', 29, CAST(0x00009E29008B7E08 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (30, N'58VktTyM3APRSjInn', N'okwcib', 30, CAST(0x00009BD20131A2C9 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (31, N'A5uiEkADvVzVpDRrKKtLPkCz4kLZ3Lrmbeyg9NtlafYTMYLBzaOytSIPtvdUPaAZdCuAFkiwQ8ljCicWO9aSwst9MYnEjOMzVypAdBwEsSYlgZDBJ76F0hclJkogxUD1mlEDtSsDDLZUK7SnLbvcI6znL4qsNFGOEWzvKzHqEt2e87QB', N'phbrgvcs', 31, CAST(0x00009B9C00276E32 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (32, N'1KMZajflQsobzqx5BFo8WSMJ4NP3KfDeeaLuupenJ9t6TFF35Zwrb3lYy2VCKbRleAxPU2ALb1o', N'tcsnn', 32, CAST(0x00009DB6008FDC5F AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (33, N'YFqo8LykiL2bonwsKRTii8SIHqZ2PbGaEO0iBg4ycg2I8Lag6I19Y6ePnYXImwL75RNPmEgeNU525AAwFsw6Z627kavc8', N'cscpv', 33, CAST(0x00009C6401101583 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (34, N'BgKvDgyBtrbNm31cKdOa3t0EXyPFfCJ4VbIOhAwTx4y4VCKz58GHEYiIg6NEHiWhYXrAkcuAgucyvvjKdQ9Wv1pxs0iamiCFYGVyKAETD6bKvkMkN2brYzlXiuHktJNyhNQePk0TBgJpPU28eyDj6LgYVyGQsTZtidcXJiKc28fsgw7Ds96v6erMhs9RUZai7P', N'ihtslnj', 34, CAST(0x00009BD700393E3D AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (35, N'msUpvdbgygnsZq2XiNdn3mGpQYt7', N'atpxw', 35, CAST(0x00009C9F01096F95 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (36, N'XxlGoLKNKAIVysftzaaR1sKTb30beONkTDRj2bkVhAODLI5tawQyIgRfcHelLjivnX1lRwqOq5jrT68Jx61ixOSmlm6lwy9yRSQnGKRd528DwaBW9LoEhz', N'xlvaem', 36, CAST(0x00009E4F003A34D6 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (37, N'O5Fzfq5SrvkP0gK3deOdvFFqAaacaAvHRU1i1Kmn0ZHHCABqoIAZJM38qOp4GTrh0TxVec1IsadLyxe0PjnIzLy5RtrcViXWiZHiCfBCGshiji9tkofWfYheUs4llPnA36cPgvnkYb27eFLjjyrg20r9scEJaQQr5Xec5kCp1vy4Wa0FXL2mX672FSW4gT97AA26aidyl1e72ndHbymFOeJyQcNcE88YmrtLYueoh30VRz0RpETi', N'pufqlagi', 37, CAST(0x00009C010106246F AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (38, N'tiWr3gyK0kdt6LBtHjhKyXKdoXRbwnzfQrs8MUUEgTgJNcKdoYXVlNhLNt2WFMODlySET3XmFSeVq1FBCnmNFTt2AWkTRyzJ4TYO96Al1kGJjCUMdrKRa0xH5P4wI3LGTKRNSr16d0MUDaIx1NpaeXj3WHIj1DTxPzpPk7umpDo', N'zsgi', 38, CAST(0x00009DC300EEDF9A AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (39, N'eS3V76vvEkcwbNqAYI4PXP4EltDuS3lQi9P3EncuIXjfNsnMGjDX8P1ENpkDt1SAzBDRynwlfA70gPrs6qdjqDHJ8AfP2O0H5YfBeLOTnRryH1Xxyr73NjJluuJn7XjG9pu7kfEkRAvPMJ', N'zhzuh', 39, CAST(0x00009C1500DEACF7 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (40, N'7dhQAHw', N'mgzmvqy', 40, CAST(0x00009DC900A77F3B AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (41, N'MEuHk2aLFiboS6QDIdNcDnuPasBAP6YzCwYtpOUhroggkUZ0CU8XuKfYJUgrqQv9AbbVXXNt9flP7Ee6IBxvx14sGzZLicrQtWW9s4Sf6ENEZGR5qZYfSzB9WjFYx2BWoKWaiVDEiHpjdqIzXTU83BytLNc8oui32qQFkrNLMKxA9SVgRF0TX3TcLcFKt4PnZmgnP2Eg69mjEojtrvhZuEVzNou8c2RH', N'qwclit', 41, CAST(0x00009C7E014A0F6C AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (42, N'9aNliHP0JNOHjNXtLSyNqtLGgPa8644hUp4DL79dIYar7idRNEGZTu4GF65IhGtFIgmuIJXEJK4HIT9yl9ksnUEakoxE1qw1fLYQvj83h1G8pmylx6WYV1RoSC9ULICSO3cwvi220hAmD5lypCHvKOVdujyjZdhOooklA1qE3UXoqfaMRBe90H80Xy2BkJSMzmxPLznoL3rqqhnE9bHOzXNXfjDCyeUk1Ao4', N'nncandx', 42, CAST(0x00009BD0011B8E2E AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (43, N'A1RNqnxQH9qAn2814NROQkblaphZ7pgsiXyap08jQ6OaM1AcLiwmMgGQQgm16OISTySG4XB3FixJL1OZe5DOsuV2GX99D6d2nv7OZuYnWtWeix4PIDN1AuaYSP0WN2p84vVQt0zkWPsyNrKJTkr0jbrtKYvAu1PT3OZmReVIEdUk1bBb', N'uwqniydv', 43, CAST(0x00009E4F00450C52 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (44, N'g3dBpOT4c5L4ppVzO', N'xtjiu', 44, CAST(0x00009DE8010844CF AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (45, N'yHYroFZl666sjMJ6DymIDz6ipY9DOnzkcgCKVpEOc3HMxjMykjcWD5hzAq2G5LNJ7LF29zaOkOg9hkl5BATfASXXyDAfmxIGgyEbUJpk8EmoPXHP4x4ush8eoi4wpubm5QTjVAasLiWwgi8QwkaptOOzpammFsvEc0jy4XtuMCY9ABy5ae05Jmth1TtvNocTnIKgz9LOqgTgqEpdbgCasqvq62xbdxXXZ5MrrH6Q', N'vubvrhx', 45, CAST(0x00009D1000EA7692 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (46, N'cEdIDqmeFKgc1awNUZwCkks8v6ksxmJalIGbHXtBAwNdrvXUPUNi9EXsMUM66ugT06qjKL5wfl', N'xpmlt', 46, CAST(0x00009C1400CB8C2A AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (47, N'nMEH0Y', N'utpplfqe', 47, CAST(0x00009B9F0171C46E AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (48, N'SSPbQWkOFmAn5GGudk4oA4PQ2ODkV7DMYpRD3OfKyw6IlsglXRaWwj6O3yY2J0s7Z', N'qmna', 48, CAST(0x00009D0A0174EF2A AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (49, N'EFo2rE5jpDy6fAiRD4WgQoj2A4qd1y4yiwdQwUaMRCtsQwJOJrnnasOQVmsmORir9zOiWHViUAFDurcDkRJ9AGOpYDuAcnxzT2jQYbs2M5JPdAVe9e1x8YgsbYAIML5gDFjs8Be9YHn5wyCNiG0xlzrvLqp0Raf1zcBORcWxzsOqlavcMmZ6K7vDNoXHMeiybm6Kmnw6k3yt', N'npkltuhf', 49, CAST(0x00009D53012E4A77 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (50, N'09kuDee0Zgrhy0c5EbL9QEyUbpYqTLH91cNemN804x25EconJ0VRdkBlBGIO5oXDPhfLdxJqSK5SCsFz0kWTppWHRbTW5kvFQogWwSALhfyIeiZI0JNKH4NaBOu1UmliPp2NCi2XaAlAqDcj2AVlMa', N'ignwpt', 50, CAST(0x00009E070182C9D9 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (51, N'LR6LYY8rutGtpgB6IHqk6ICjxlBzKHzMorgw6MTyRJrHaKn3q4DUWqr3EMNmN8Wdtu4yzEzvnrInRv9dy88F3Vpy0cikyhbImENfFp3c5IgeX3cIDkoFzGZO46yMVFw6Gz0CYTO94WAkoBRw0QWEsMIWeyb9qg6pMaOX3PkjMeAT6oate2M5ihDugUYZsFIOQLODmtsbfnsEBpPpOiUoK07eMUrZrAr6Mm2lQM6l9lQvpziq4iB', N'wmkylddu', 51, CAST(0x00009E5700A16F4E AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (52, N'kT3QEjqI1JjVvlsOneP1bifZaBpNl0U8yhMsicXh', N'odqrlieh', 52, CAST(0x00009E49011FA07A AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (53, N'ojp1uz37J3PJAY2oUp2tTW1pbWEPzfA7iVnypYfCmGSw4oo9J3EmUn2Ii0PNld7dtHbfk3yv9q7D35kni55vRNduSVGo8HR88o2mC9OG4JdegpEcGcffYBCVehCFnAmrP', N'thfb', 53, CAST(0x00009C3D0037CCB4 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (54, N'4F2xaYgpq7kyEdHdXWclawbW7Vx9TuWlFhkzaJ16yiK4lgSYy9cGFdO8dVp5bXMwbzjXtI3EVVmrbXlR2OBJIFVbIbL4TvUQMOSmxvff6NkkqXW6kO2DM2dLT7EHwykZ0MVD4yU7jVDuVlkl5FK5tH4Jk7JphNj7cBjU1J1ltvUrpjqhNSCgdfgjHCSxffQLl5HJ1FjlDYCxnDT1GbSEB2UxV0Dpr45EV95kRWf7iQS4Tiw4iRg4CB', N'zqpghjx', 54, CAST(0x00009CF501444702 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (55, N'jbKo12uu9SxSd8iZjvLVkZPUm497PN11JzM96he', N'bleuz', 55, CAST(0x00009C1300317802 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (56, N'oWJbVFIwzrw8rgP9Bq', N'clkm', 56, CAST(0x00009C4400B341DA AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (57, N'xtmUlRv', N'oerqnbz', 57, CAST(0x00009CCA01086E4E AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (58, N'elZS1HGgEGnyXmD7YQsAcaDxGfhA21YAa6dAQ', N'gwvl', 58, CAST(0x00009CE5000D6531 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (59, N'ura0AtOrUAgfwKYlW4YbCMZ5eChcOR82hAW0ZcPJZPBWUN5DcoZZboCYIUMyBlT32dyloXBueE2nA3bH7T0ZrYQsyxi4GR8nw7', N'utkiwww', 59, CAST(0x00009CC1014E8B3A AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (60, N'qOKP4cfvMmOOFt5rhltCTD5nqp7eD6Er3Yksn4wxCd35ZZTABaQ22v0dJWYFV1hGYXKg8D4dowzp90DHLwSdgBo7Y7YGVhRBwnW1En2yWnD6vAUIJHtYY4aMjD', N'zfbfmq', 60, CAST(0x00009D9200CE595B AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (61, N'1en77UotLTC3YuU7tyhBNdGxEnscrDAH0', N'aepjv', 61, CAST(0x00009D7F01238C31 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (62, N'0Kif6c7H8o6DLe3xhO12lONqtKbC27Ju2ttAODs545URq0REZuWlFyucwrll0vE0VCBSksYTWwxfuv0ssMd8bXe3yHEWS649qTwdpzTgL3FJ0Ei0rttdI6PxY7TTe11QrooRyM3stwmYIK2kYDeYCQqj3z5hV01J1pRBQH', N'mnhzbf', 62, CAST(0x00009C8B006CB3A9 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (63, N'Vp1kLKrf', N'gqnfz', 63, CAST(0x00009B9400E77508 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (64, N'4juRMSDQx4NzGLMtvTWSsrJHB9iBfVPCKscm5ZwZb0DMt2FUerPrK', N'zfston', 64, CAST(0x00009CE8009FFBBE AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (65, N'KDPcGDj2lSeAeNianMWwqsdxN8tEWo6Yr7YPMSIipZFlhiNrl44', N'eozpkbk', 65, CAST(0x00009BC100FF85EC AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (66, N'KNLSaSE8JUV', N'bbglqdi', 66, CAST(0x00009C19013A237D AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (67, N'L6JXpJDL3n7HcrGfk1TSj3DTl5ouDAOK3IPaPq2RqjzWG3qjCZOH13DIspljVJ7tPmEJRfFtz1b04hChF5hdm7Jz57ia4IwXb57UpXHXKUI0RCEBc3TPbU7ISFDJwfpg43PyZisinAJHoIXttWx0pXw7yp1aJxaffbvNmFcuBlbQApTAhJQQhorX7I0jgIOpadcCN96du3p3vWw8MrszXAyrkNGUEsDsMmpXDGmXDmVdyn', N'divro', 67, CAST(0x00009BB2001789FD AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (68, N'bLsNoPPIQflS0tbO2pwh9gPv55KmkeKswkf9MUPSxTPrRnmebNTn16TuwwHj5dYmKtWFDS2XQTkfGXTIIfAMAWqqHkCPCfNKudWYHXR9LwNYLnePTzQPSBbo2fyTFcKk6Qld0v0lE01E9IUT6nwDFyri2iWb', N'irwg', 68, CAST(0x00009E3D0161162A AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (69, N'ytjbcSv21OYzeASANejBVMSf7V7Z2bHOOCG6HcXqZQ5OODanPYf3mQ3bR3T6KM0Q69bRtLsk7tc4H3HuuJ9TwDcx8ffE9QWCQeHEc9u4fvwsozJNlZC0CWUsWdIEfdahNPecm3HlP5o1H', N'rcil', 69, CAST(0x00009D760001AFD3 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (70, N'99MHTZEV0tAOhzqfO1KFVPLgbhIQa6iTbmU9sNA1TrOkRNLIvjhmg2EjofglGnuuBhnuVhn1rIld0aEEM0VqPvmYYkLDgOkfxUYkZQmEwfuOGaiDQSPGH3UFvEMkLaKTX6gW1UevDHuj1NHx17mEyUNtzJoK42sLLRrAuCBvoU309lEYxOjEn5U2i', N'wflx', 70, CAST(0x00009CF2011CFA8D AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (71, N'WigJqBPYNZW73pvrQURNkE4GNgJdXGwoR7fTEUdsbaNe1pKuIwfzbL2IeQvArl17dhgw9ScvrZlAqPEYMPKbawD54NpoZS0pYG1K9NkqJj81asSECNoSQPWgUasmcoLOZwbZNuOyeTHqoBVBuabCeXO9jLpYVyEVNkSdHsqIypow8fsJ5gr2C9j1XSq24qTgFmS4ir', N'rpauqf', 71, CAST(0x00009E5000028427 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (72, N'2jJDojR03SVSo6BIE0Q6o1oD8M8hLCobDlpIsvvI5RnaYNeZ4TE4Hl50v65SbkeqeuF2HsPI480NEDekhZdsykJSgpNmqThKmwve8cHB3vz8kilhRLk27msuamMSVdSbRfbII0c4HSo2kAhx4gLUifDz413LGpfQTNh47TPQifkfxp9P4OOpHxtlSbDGxGoRmOZNTdqaGvm2uY2FsdHsRq8VUwcVF8SSqItZG', N'gtjirz', 72, CAST(0x00009C04005DAC20 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (73, N'wRXnYMBqqtYyOJzw0vF3sX0KL7SJBcfTy6gpKeImKe5jxHk9TuIxJDtPRCRQureEE5zId9bLdTjERHN3NJqHJh9lDHO8CrsSzqUrHSWJIwKqTex9oO3b1MvXwE5LkT9laGEbmWmunWzNMIHYJEJonGRdvxu2NAYonYFCPMNHb8oUNXAdxW2WALyJpbgpbkXcyA', N'ktvbaf', 73, CAST(0x00009E12000EFC33 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (74, N'n249xr1DfSwFNmG5r82dSavMngXgraBWDxMbsM4f97JrtMI2KegUvW8D6hMGJLL4HQ2PQfDU3NUKH4TRNVLCugagp9UA0oLomEZTJtcfRBRY2nv1Dutoz8AapMZGB2UF1gX2U07UsgliE1e1D', N'tdaso', 74, CAST(0x00009B8F011EFF29 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (75, N'w5uXod4ydxJLTPhCXLGtWDnOvJNRLohX3i5OKTsuxWN9AWCM02UIlJvjIVbUFdcpFmHlJJs3TLv0qdEO70RJJPljmL5osNeKtXtOFR2g9QpQOuteHCN', N'qgpksks', 75, CAST(0x00009E1A002D995E AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (76, N'BJVq0XyyD3B5ga7Ikp9gyk9taLLsSRXf0P9Z23OhS4S6FjjnnbuR3hGR9cGf', N'tuwyyu', 76, CAST(0x00009C9600EE9B56 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (77, N'6VmWV5HRYFgRSDuH3dqbX5rW5cI9hQPnjUMYgajeSMELDzaUM', N'cxsadt', 77, CAST(0x00009BC900972520 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (78, N'6yP3e1eGQtm7j7ptixqLbTtB8BqWI51omYKRNf', N'gaek', 78, CAST(0x00009E5C00722CB7 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (79, N'LtQ9qsKc7VJHdd1Yc5DuTB8xKrxLBnOW27VRBJ3JoYi0zoOBl0hL9kM9lTozuzRJ6nEW7ZNI2u6uS7yWSmZA62MIkLfhV3Oo6PuBZs3CdOJFeShdVIW8PHC3QwlltfnyVHo3DmwaiNXii6dIe2CCWFPpCqld6HIyaLkMdeQiLwQ1jUKJIT7rSaRFsyqN1JTR5Z7NMHe0bUrZpN5iVRK', N'fylzbbn', 79, CAST(0x00009C300084E706 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (80, N'ARVztUTfn3h2TzwAMxx1p7FxjsQVs8rayqHe38UsozCYno6qQvLXUJn2BYG14xmfB74ciI6ET5DqvhAvla4xmJ5e3ESVsSnqDWNfjT78p74P6w7TNLFTsosr1QZTpbL0HMdOKVBHSw8fFgX66y8XDKxOdVeJ', N'aezpghdr', 80, CAST(0x00009E580040CCCD AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (81, N'dIDl48kJi9s9x0wgDcKsSMrSonwPEloqrNoeutAYnnOoGNFJ1iQtJRSGRlwHBK4xL1IaCHlJRl4fy2CRXdOWKuWQvYD9xtNSiQTE4e7jw6SYMnIPYVjXwXcRUsfd4cMYObwYYxNtWeaESy38GoaSApWAn2jCzTfJkuAkqjqb7q1IxOyWoXNG2tOY5lkWDBt2zHUYoJHWxyKKoEDP3DNS5OGqVbe4zJNwwyIf', N'ycblwrgi', 81, CAST(0x00009D85015848B3 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (82, N'QiUFrI4Z4krYLT0nRxa1d2CfCXebNNpvXUdVsCD6CGRrnWdqM9U0heGOVp2KeSCguv1qqVuEkUoNaLrgtoEDsoDsEEz3AsSj4lwsUmzrEGGDptn9yLRqEyn5h8cbVr4r25IoPzB6oMzcX02LRp4oRcU6yqAMAOLNBPBkazkyAK1rzAXh6HAgmGPQbCqYopwP1cR8pIlS46e7ac7nITGsEfavzk9N8C9KNcqM', N'lypzofh', 82, CAST(0x00009D81000CF8F3 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (83, N'PsoWibgcIqy52FLZ3BL1W848NJswJjxlk4tbRMW4tJhuAH6wolJRVLCGnf8OikIYsCLxMk7hfH7DR9x6Cv7YQWGOscnmE7L9091yv8Z3dcmDDzpdh2Bmck8Mvw5kwKTXvyCH8zA4L3unk3Bsm95BvYWG0f2y3p7J9EHFnXVhr7QZpKcslDxnFH', N'mnhvuwl', 83, CAST(0x00009BF1012F9159 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (84, N'NSwHSwB1WwbeVlw5FeNKn7xQf3ADpsK3rbunqG3lg6ucEg67p8i8rxpFUVbOmyBdcXmur9EybcdgCKBzx2NhABBumeILfeyhvGzhtCGgtjXFJ829JbRjaTTRLs7CqsJwevlwLU6lmgnQdwaeb813CE7SnYL0', N'lyyctvqj', 84, CAST(0x00009BA50094362F AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (85, N'3q1QbbON6ooVgxuf3', N'ccjgj', 85, CAST(0x00009BD90090324F AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (86, N'OITairFjPoI8m95giqmz2LCHVKCXWHCmjkwiaT79BrBZ4x2fQzE3s3l36C5OehD8bWP1CN6FidoB9cCXHW7X28ufzscONjUTe3xYY0T3tyKFFauTzX68Zf5Sbj2Jlhry8KX6feyH34e4ofQPy8PpdMuyxUwpx9IB6M6v3onKYo4V10ewJdLcI2LlQY8Bi9JumSyRYUM9K', N'erjqo', 86, CAST(0x00009BB000934E8C AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (87, N'GpIOwxpzVKnft40KUU', N'aptio', 87, CAST(0x00009CFD00580FAB AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (88, N'ccPU9iZ2DOoHBHDlVT1cALiez66ZtRD0rTiSrK8gNucbh3bOfJVrTsVHtlU3cz9mBoPiYltALLEGj7wwUhtawMXzxRZ6p44NlqQtdtpuPKV7dEXloYYu6YpoGPk7BmKGHqVsh3IbrzAbqPLjtnIHW9HC0bcD9hidzFqnjf4kGx2', N'pjddfppl', 88, CAST(0x00009DCC01574F55 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (89, N'NEyr41EOT3k7ZIs5R4SAGXcbZYzDi', N'ifyphgr', 89, CAST(0x00009E220007C510 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (90, N'1Z7Aomck97TJ9vUiEQmyIBVsqqbMHV10gv2A0PT6ThuKhwOh6qKYRjGp3FJyBGSe6SdDsKipwgVbGBBuStGRBSZwfD6l5VvCEGDEIAom8VbkDeZs4OVHz1SdshYfDxjRlINzxwbI5TI', N'dxldgc', 90, CAST(0x00009BDF00562DBB AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (91, N'qpi0eEhh0dDCnZMbb9ZAlAyuHZv7mCBWimn3yY1zG1Q75ABOZ0hvu8ufqni4JZunSgT0mJc28aukkro6NWYmVGbas7DApwgh7dfOhAbGOenKDAvyychm07IB4s8e6RDBuDc6BQPCuIOrSHNiBECDFtgzKTJo2xAwRcP0XonYCU', N'lgxn', 91, CAST(0x00009D0800BD4889 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (92, N'ijQjnVPTrFzw0Xcmi6a9x7RQprNBMRd0k2xFtkWJdTIhRfPSv24ScKtaI0tv7E6QczByZMsxZHWUpjy9SuGJMAOP8MxtqbBPMr5SURtYA6tLoPlZ2jTDym4SampCPy7y577xeWf01h9FG3bjbOq68yQandricg8BzvFhHnuV3SCGdoBXB5b170p7gXA1fxOKZxFLntRoTL2flAwzRKWW463y', N'jeueab', 92, CAST(0x00009D7A00F8BE12 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (93, N'80kctq63rhgYqjHdmYmx9LV', N'eywuqynw', 93, CAST(0x00009C85012BD660 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (94, N'BZKQsGStHFfshBaVwcuTGQbaFtIYH0vmV9RJVfBbEmHa4OwbxH1XR2KkxkByxucGJsNXkGzHRIET90VqxhazzOLSpgLlTCdKA0HB0OqhIj58nqbwEK1GJcGuXvi3uEnEfuJ8jKpYqthGICey4PW8', N'kagbic', 94, CAST(0x00009CE10010526F AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (95, N'M0XkMd5gmm3vrStXTCtUTQQu0cLGjzVhe4JtlONhjs3', N'kdrigz', 95, CAST(0x00009BCD010F750A AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (96, N'dKRjlQaCcehvacjjIpwnHMGn9', N'zrcajel', 96, CAST(0x00009E5100DD5A97 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (97, N'', N'oggnohd', 97, CAST(0x00009BC000341927 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (98, N'5pCkbNKGfBbVJOJ40MNI8edOuvFpH3eZkfVMQt6YGL3YgJdPxIFQmhcRBnqf7UzcW1keswe7Go2ma5iaIqryoDn324Bc2QRlMR1fZzW1e7Ayepq65FMGd1nJEhbok15pMHQ9331JKpKg3oOCE5Wn4A7KdiQrNhGc2KcNOg32D3wog7GPIPafVHlB96VKcAwcY', N'esgrafrl', 98, CAST(0x00009CEA01309294 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (99, N'diC1nX1Ta0DJdVS0Zx7a7lZQDIBiQ37KFzUYDGc3e1hkxpSzsbayVyas8mnUMJ3Wtt4e1tnJK4w53oSOqBqoT8pGOcPRT8gKyAr4lnyyoHdQ1UoJKPdBTE3k4nGOULqCNb7swNc2CrzBUOFto573UVrj770xXZUSRQ3PNvMwmbybFrFfX', N'hpjb', 99, CAST(0x00009DAB0008BEE4 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (100, N'aOEmiskOlpNeVcNXk4LqWsiAGtWFUFrKPBz5DehBfz9XZ75LEh6BKhqif4VpLUuWy2EJdHJ6M9BWiBb8nB1m8g0iLH', N'stefw', 100, CAST(0x00009C7A013BD514 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (101, N'98spA5dYWslhwO0pAWJzTSM2AT7NI2WyMr9xTK0R4d4F1T4O8qpB1HwhlpehxGGUMnK5E2LqWruqN61hOjFRCLx5vSBefJToMZtE8z95V', N'oxes', 1, CAST(0x00009BE600B4022D AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (102, N'f9N5JfoxJE1pI0pFAmqgACO6UoDnYOa9vCgnip8WqizFnXHtOspMEopSlGbVR0Pudrt5K2XKdKqSC8IwXJOgYDv7NE2REd4pI5bwdBZMKVjuyNFcyey8bjLQvmi5z66zF097XMJLk2L3U180yPTZfwDZjB0rTTMEOjexD75bLcNZNHvudh6adXKJmZOLMRsGf7flMBmrKrE3YeBRF5ElMmarOLAejjFuk7tGcAYRvFGlIHk8Nw6GC6utW', N'rlzv', 2, CAST(0x00009BC00010AD18 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (103, N'M1087acJIRkup4Xmq7WpY7a2GndyieD0kooXRn8g9zyJOS71iPFnNhFEQyrKwdbeEkA0F0L3yqfZ9HdngbGIOQc3Za6TvojWNJ5eI6mi4CoX1g49K3dKNIGn76Rftr7A69BpBzVZpXECb52tVx8rAO843HWBf6oC4dQrUFxKY3Vp44B24X9wiF0h06luTJuii27yeAOGz', N'nhhimqzi', 3, CAST(0x00009DF201733E2B AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (104, N'J6tJ0z5U77xsTodjrOT3rE9m61wDOt8twuwtoh5moyBmlqZJLvJ0nvw5x6Cz3s6Ey3vYsju9IhFs2N1GScsSZ861yrwiV6iwsxnhv0Rb09i5g32a5wWQzdeqxua0nCeByI05ZJLSBHRQP0KupMcYZHwFJwj1PQnoVW7N3w0ma4FiBERxZgBRZ5bgMkmcZJ2kTdustwqsLqy', N'uaqycob', 4, CAST(0x00009BE500114FEB AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (105, N'2E35VmRjEMEPvQ1IANCG2UFYJY4dpJ6j76e7hh7msJW6OVxSuXhxdhTXyVlwintvGVHomtbTGQOjy8AnabiIb86Qc69BvA44PaqsD8g0vEgDIkZqKxM75bJ7PrBfkQY', N'fomjila', 5, CAST(0x00009E1501804486 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (106, N'MJJNIHaSuiMMRs7sWJqxowzo', N'hooqj', 6, CAST(0x00009DD70043C32E AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (107, N'jTMw0FVgbrzQCY3NuCNExfWjJ9RZaHPJU6YoDVuSrgq18RKknZukcZJ3wddrnw5JRgv5', N'rqhthct', 7, CAST(0x00009BBB0110A447 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (108, N'EAOHuNGpVbrogl1NfgvmVsar3euaXZRVElZPVSiC3EQ2m26A4wmz0JTMZXEGSgHw9LZvCbrCyijHRY50XkWamSVvIDpyERjMwUtQSByS4a1IZCu1SDii9g9gqdczmtyWzMKxfeXLl4WCQCM5IoV0i0DFKCaoYzgBcUJDrxLofNx5AxFdHXgxOxoy95cT3jmmNLZwt8ELShLL374NwxW1IimegK3mKslwaAhpNJj8ILVgcSu10EX5ClT', N'btvobbyz', 8, CAST(0x00009C3100A44F8B AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (109, N'YvFY5S0ZwOltPFzcEOjxD62DQ1m5Lfkph2HS3A3qKvkDh1ckFuro2VSSs183guDHevBNyXY3KsdHLpWPP1qRnwnBapZ120AQhTYlpFmhLoT9sA63Vide3mTh80m9xX1JiDasGkZAF85zSeIPiWWJMVMuzrcpSdkom9QfaEm', N'dzyf', 9, CAST(0x00009D390116AC78 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (110, N'9TPvhUFUhMQR0ixDrfsP7kibOHCIDdpUjlAt5RDVb875CIn4CCovMNcOlnWQIwG4XwhFY37PRNnzdcP5T760ou8L8l8HunDfr3XGbYW84OTzadl8OQwAqFFcnM7mvqVd978a48UvbxvQR9lU0zsTr3pbnvSEQjDEtppSVA3Gw1YsJoBeacmvx1m6HWm9f', N'ilewgc', 10, CAST(0x00009DDA00CE5D80 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (111, N'UskhXbKIzpwcXqUwHzjodoxHHr2iBzOtagWg8cHaKIcwzKUwcKEnQqbguSPfZb', N'bkria', 11, CAST(0x00009BFF001C1CB9 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (112, N'0R21qJooeh9ULB1IxM56qkbTk5qlf', N'zqjhz', 12, CAST(0x00009CCC0096406B AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (113, N'b1iBcVwIedoWZ5GMGUtASITVHFpZHkT28R58l9ZVMeiSIJAVCNoLs', N'jmtnujzi', 13, CAST(0x00009C380114002B AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (114, N'lJXDuMfN1t9lN8z8a6uNooa0Dx5JMtw79dgmaYFCqycoJWw2V4nhRVhwiXzxHL07x2cjRDY1rhXpBlgh12oI6Egewj42YHvUyUrHtCbIWlqjyrlxqIwFXi1jLynh9VS', N'nlrkn', 14, CAST(0x00009CC7010DBD40 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (115, N'm2rguPnoRVmLOxf4y6BGLgxFT7vvOt90IGwv043RV7n1wfLOIji2JCE55bDmUrPXMl370j3u3klEsvJnmWcfA6g51qqPqGwdhGfAcDOYfoyZR0DAIQ0xFjMG5x69te3nn7WbG8AY840M77e1d', N'hvokw', 15, CAST(0x00009B90010192A8 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (116, N'6QGzOxuO5f7Ef0kBlJTbt9FRpAj08xJ4WDXdWojYhr3VRuPzbwLKY2mwApADEtG7M2iRS6fxZut26kzvljOCcyWURbSheWKoav9OBxWUHOkd8jpQpFRUV4VNWD0rexI3a5RBbbjoDtvDDtLhl2rP5pIWPlsywfqJ5h23IepEVc', N'qajegas', 16, CAST(0x00009E5C01169212 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (117, N'b9HAcsJ6b6tylmvmpilrY2c8WqIP7DdtSYhM7bF5dYFCCjHGMszVkljYX9dlZuzNTzWC5', N'isvzzwyp', 17, CAST(0x00009C1D00C8A450 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (118, N'eESfEznPvmZ12FE78gp8pxxTViZrjCC4BnDl35Wjl8EqCYrk9LrpNwjgGy9VPvfjaUqF1S4395Nhj6HxrphOLNhE3WU4v1JpSUGhicigHnfHZ2xAhBdaDHOCnbBUyz78lXEEpaFF616Xh', N'kmguxoza', 18, CAST(0x00009E4D00533DAD AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (119, N'f1ZKNkNjbA64u6QEiIgXV1niK6wOTCBqUNwAvecNk2w38lg8psJorAudDqzGozFPzFZWAFI4fJmT5jaYQnZatMzKSIx4eLZlmX4sC9yZZ', N'ncrvuwci', 19, CAST(0x00009C93000FC96F AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (120, N'8YNQYTGQq0QfVcGE3rHEPKj1gYfiMGoz1eERx1kUoDVYK71Rcx57HLpooLjzn', N'mkjoigj', 20, CAST(0x00009B95006C3760 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (121, N'4ZCRerOoH16nPCoBgZWE6OBhhfoPdbIkgG8wLtT93ng30Uvc0cfATZRfNUjy2yBfjM693spm6MBIi7hCkCP0w7H7pTYqAU74b0JeNmY7ns36O8xGnXEqZAjc4zKaJycbF6hhn3px', N'vprlrisx', 21, CAST(0x00009D7A00E212A6 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (122, N'HD33AjgWH3dGHVQHhZOSxnoFSrHRFSkhGBHxfYuGd41vzKxbGQ6URVgTPobIRFGpIvz5DTb9e7otlsF7tfApMGGlVnYrxboOoCd4KsOmowpJgmhWYTOm4QS2fEZQvkC2JQ5ZFBm1HN1PRw4j51JTD2JNjaP6Iyr4km', N'xpws', 22, CAST(0x00009C43004BBB7C AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (123, N'F', N'jeinpg', 23, CAST(0x00009B9F0159511A AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (124, N'8HMhNUgO2ai9qKtQipG7ipemgiJWxfewp2xkwmqXdyg0gwSdxd1wj8yIca0eBARNwmKnN9UwziUj8e5jGfYKdiCh3e8MlBMSXI4ucfGo85w0eF9xUHNVb7kDZdji17BnM1CpaA7bPjBXlB2oUArUnqqPYqLzvXn1u9ed2JNK9m6sv', N'xzxrcl', 24, CAST(0x00009D1A01370417 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (125, N'SNavEqGgzVAmHko8frvAdcXPlAnWK1kyTLNyOzJwkD99TG2cV16', N'oweak', 25, CAST(0x00009E48005FB0D8 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (126, N'wlYqqA933jLylBIvMqjgXyPQTOwV8A1JuU1imX7DqFt1rANHx6GfHQhxM8NSEe', N'tjimvtzx', 26, CAST(0x00009C5900954815 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (127, N'ti24G9a9piWpI5OYI0eX1uM2Tn3MdAfzBK0Ip667MxQwlaPsxa4RZ6tyMzaT5EVe3Wey55iCtWB4TQHsOBO35EP5Q1wpVd28SmsEwQnsrsX2vpVwii5uqRZo6ZX38thGU2chX2vxNVBDgN9bV07mY7I0C37NtjjyBHXsCoPfm8WKFL8jPwX8luhMkcUTvY3emD2OpHPhbS0QbxkrvNyxCaCGZB8aKvkE4sY2Iju8', N'ynlabaf', 27, CAST(0x00009DDC00BD5693 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (128, N'qXJuHlnscXXa6SB0moe9oNfhlMjOhYBTpPL2tLIPKhhODexQM2WvGziSsb8v1OA4M4kh687QWEo7gGU7OJ1f1GCqhsAHDMNwXd28uFJEu6O2Abmb71WiMV25rtzDypD9qsa3EL', N'vqdlx', 28, CAST(0x00009CB4018A2BC3 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (129, N'9znkvrAf66YABqfZ2awH0G6F5tFBI0jMlnNiYk7DhDt7Pf1JBIXSI4', N'utoxnih', 29, CAST(0x00009E20000F88F3 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (130, N'stXf1cyN5MBONSw0HTjZmNyqPsv00SG4haUp046ajqnkDGdqFHGz', N'pmtravw', 30, CAST(0x00009E2600DBBF9B AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (131, N'UQVvhG8hxMc57hmy7zDN8qwZEc8E4liCHVCAzuJoxtlTAe6Zqs7H2cQeTvg57ucCePobVbyDgOPF4SOZVZOCdQ9f5Xh3DDh3GYokqV4EtubeCAZ0W6ZYVQZEF8VxuvzThMyWddjzU9Ii', N'whpgakg', 31, CAST(0x00009C5A00BA8230 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (132, N'VSvygW6d9XqzaVh07Kyu7wpB3NtMa3M8rOkgZyEPtpYp8W382zNpKnhYdjvJdj36Ai8Bk1Q85Y1IOz3WKkKafXn3hB2q3vm9mRfQOrO1YFjllP9dgOzsPSQdu4UZya4AmsVxKd7SMJ1Qn2HH1P9ewtjJ01VKMp2yAZyttCI3HWW6R0prmDXZQQEt8CwJ7n6WG3FE4ONp66NPMdr0', N'kfjq', 32, CAST(0x00009D3C00F21360 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (133, N'eX9HTXkK4kgGzvUPzqNkbnOpiSK2oXUKv7TFxFmVVtzdhY6', N'jgnvs', 33, CAST(0x00009C3500696DD3 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (134, N't0MnTFaq9JZ0DhWXGMKsSERk3sEink89L98oAhqgX', N'shwlpi', 34, CAST(0x00009E1300D492C5 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (135, N'5eflHnNSNKDEheYbjb0r3OBQf3ZhMYVeKq8n5HaRKKNnv7STFZxFffYhSF6EEf6opZtrVkWS0ZXi1OUXb5RnbFyfHRLqBMCfEYxMDayV2VE68pf4kYd9EIDZaEZ4PfGeMrUTQ7K07wk61sWRmG5cj3QvLNl', N'xygj', 35, CAST(0x00009DF501184CA0 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (136, N'1u6NEZjGLCecDc2HY6Yih7H8aevJRY72LLzDqNsR8G6ZcSO619MEp3HtcxmaePpn5bGsdpRBE6ZR1iW7FoIHBsDI45asaHniQIU1BWTChB0iTprtRfKp7XbCNynXEYawIr0jDUvjL6azsUpEEhRvxybthIdDjvy8a3Pcp8fwjbT0xbJt9YIW7fzKF71vrizP8RPp4CP61VCMVav5yj4AcR1v35Mi6k40b3sVCUow9CVbTdpfBwx8ep', N'jjduwvrq', 36, CAST(0x00009D4901479B9B AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (137, N'hPUlzphzHQBkRhPtUu71QvPSQGhWAmwMlGB6iip7RCDAHsNxl2SDWnMlz1Ki7ApUUoyBWJBl50ZDiFAYskl7KjqyuQ6gO6zHNjgStCQRrh7WE82krmqNPiAly0H6DVNy0IqyYhefJJFcbJklNLobGcsfYvUtvKEMK9VvH4C98A35SX9eGVjsglhOQBQdDkkz5tIRoo', N'nmmizr', 37, CAST(0x00009DEC00253B9C AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (138, N'J9fT6ZmC0lqcPbMfYS7V6dYwNQ30YFiqR1Pi1HbpeyPsM7KOjDjzgJNfai5fVmel3zBOBdeGqIq7EgZF6fGKWi98ek8IBvJrKeoNwwD6YS9NSGQt9qZqVJEK', N'ffgwhi', 38, CAST(0x00009B90011E416F AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (139, N'2jQUM4uyzmZrCI9RAm3ZmfNJE9LMTM0PUXuCmbCNEOTTr2xXPOKXBl3NM7FCjYVclANeOxfYZfKNCuSCCnw42TDiTWpfLzegtrhgeI9RilyVQgBSe30vbQaIweAr80CZ1eUKCmXteULGViInLN0Izi4SHPjz7HJiYOUlCqGsV6H75KnEMNVkzuaJa23m2YmMAdh6EWbV78msQwMwc', N'kzva', 39, CAST(0x00009BED009F727E AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (140, N'dklZjeoBB9mTqxKuwRcgzpl0dq7hsdf6AWv2bbt3H3LRjeIpXVzuKvVnylwsW6IXUfIJ2IJLYZPwTKHyYI9MekmF074pe0WAkow3LynFBeMkWZJdTxJDwwtks3JuDTgX', N'vmhvbfzh', 40, CAST(0x00009C60004C6DF5 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (141, N'ECfNDdaVuA', N'okrec', 41, CAST(0x00009E52010E2B18 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (142, N'N1iRnQMhhJDovCAIfs1ixoiHMeGFKji2ltMqKr6n7zqj0OjB3KvcsS2YJQ49A6NxbA22pJxnlEayyyGyu4Czn5AJqnXumxd1bs8qMhLjN8rdr4aK96F5uNAV0iB1m30obZM5qQcCjScfDWRmDCkgiX6EicpdWKxJ732IhVUiT2MRlUHTGOoaIK53S8MEayfOVIYAU95ii1CfBfSEKMM8WN1mxyqZ8F8VMxwSw7y7I5sH8Prnf8uEbXs8Hm', N'eujd', 42, CAST(0x00009C4F013F4220 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (143, N'WIWZSthJEj0IDOFpQUkeX63tzLttp4oB9uSomVPNQ6d4fqhpMhSd', N'rustamr', 43, CAST(0x00009C170040A2DE AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (144, N'7fPFca7zoUAuo8IwQ3u4MDRTyE9e3W7bAe2F2Z9vINccT9qiOtweYYAuEwGOQSvIMYkA53trtymyao0pNRFAZS2cU716IlVqSKFuOgcL05lamBJPwQ0zDliuV8fx2mZ7TwWGY', N'esvb', 44, CAST(0x00009BCB00C4E990 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (145, N'Rgou9TgSpJobArkVdgbLOG', N'uvygrlcz', 45, CAST(0x00009E3E003A0FD6 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (146, N'eJD', N'equpr', 46, CAST(0x00009BC00027081E AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (147, N'd7qe2rqzJAIcFD3IM9QchNxJqeCgAgAbwx2LzelkJrQLK4M7LyeUsboG9WnNe9pdzhgHBhIhNgIqwcymI5LC1fiK8mCSqO5A2mLdO4wdfw7CIyJWY15ZodcKzL9OVpqza8o', N'fzqpr', 47, CAST(0x00009CC501703FE7 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (148, N'HLND8hW5YW1ASfupIWLPA0d3vX8q57bAA9FCdrQ76W', N'fatnvo', 48, CAST(0x00009E1C001E17F4 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (149, N'TJzwqv1g4mP0GhKIaZfzQur0JQhBQ5EIdFAjwbHv3QXOl9yVJZqYQXKYSzcQDqFzY6M1WbMyHkw0NSFARCsrEgr6ucHxyriDAXqemxyiDrHgbKBzkSy0yOkrFG6uJOzP2ippcaNTE9eNPBVZRIDWshEmnyPWr4OorrdsVLM94VlokNS3lWT1BTWLT21eBrcA', N'ycntjv', 49, CAST(0x00009CD4009A41C7 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Text], [UserPosted], [StoreId], [DatePosted]) VALUES (150, N'pVXYc45v3RNvQ2QVLkKbNcOLIOSJhyDsb3urvV8SN5829P30b9p6IZNC7CFEblE5EUKN8YaqcrDIUMBsLSiY86a2fhkiFurbr2ne5fs2YzUQL5il0Mt82fw8uIiQorai0bQSYXnfag09b9gZzzis1iZB5fkmxREhOmPkeGCTZDXMfnWkb8Ro9igI2FMsn0h', N'heydy', 50, CAST(0x00009BCE018463CC AS DateTime))
SET IDENTITY_INSERT [dbo].[Comment] OFF
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 05/27/2010 20:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  Default [DF__aspnet_Ap__Appli__5BE2A6F2]    Script Date: 05/27/2010 20:05:17 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
/****** Object:  Default [DF__aspnet_Us__UserI__619B8048]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__628FA481]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__6383C8BA]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
/****** Object:  Default [DF__aspnet_Pa__PathI__2EDAF651]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__17F790F9]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
/****** Object:  Default [DF__aspnet_Perso__Id__3A4CA8FD]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__aspnet_Me__Passw__76969D2E]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
/****** Object:  ForeignKey [FK_Store_Wilaya]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Wilaya] FOREIGN KEY([WilayaId])
REFERENCES [dbo].[Wilaya] ([WilayaId])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Wilaya]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__60A75C0F]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__2DE6D218]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__17036CC0]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__3B40CD36]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__3C34F16F]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__0B91BA14]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__74AE54BC]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__75A278F5]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__3587F3E0]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__1DB06A4F]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__1CBC4616]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK_Comment_Comment]    Script Date: 05/27/2010 20:05:19 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Comment] FOREIGN KEY([StoreId])
REFERENCES [dbo].[Store] ([StoreId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Comment]
GO