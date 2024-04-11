

CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]



CREATE TABLE [dbo].[History](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[InformationMovieId] [int] NOT NULL,
	[WatchedDate] [datetime] NOT NULL,
	[SecondsCount] [int] NOT NULL,
 CONSTRAINT [PK_History] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



CREATE TABLE [dbo].[InformationMovie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [nvarchar](100) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[ImageLink] [nvarchar](100) NULL,
	[Tag] [nvarchar](20) NOT NULL,
	[Durations] [int] NOT NULL,
 CONSTRAINT [PK_InformationMovie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]




CREATE TABLE [dbo].[ReviewVideo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [nvarchar](100) NOT NULL,
	[InformationReviewVideoId] [int] NOT NULL,
 CONSTRAINT [PK_ReviewVideo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]




CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [varchar](500) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Avatar] [varchar](500) NULL,
	[SubUserId] [varchar](500) NULL,
	[TagSocialNetwork] [varchar](20) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]



CREATE TABLE [dbo].[WatchList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[UserId] [int] NOT NULL,
	[ItemCount] [int] NOT NULL,
 CONSTRAINT [PK_WatchList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



CREATE TABLE [dbo].[WatchListItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WatchListId] [int] NOT NULL,
	[InformationMovieId] [int] NOT NULL,
 CONSTRAINT [PK_WatchListDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]



ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_InformationMovie] FOREIGN KEY([InformationMovieId])
REFERENCES [dbo].[InformationMovie] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_InformationMovie]



ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_User]



ALTER TABLE [dbo].[ReviewVideo]  WITH CHECK ADD  CONSTRAINT [FK_ReviewVideo_InformationMovie] FOREIGN KEY([InformationReviewVideoId])
REFERENCES [dbo].[InformationMovie] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[ReviewVideo] CHECK CONSTRAINT [FK_ReviewVideo_InformationMovie]




ALTER TABLE [dbo].[WatchList]  WITH CHECK ADD  CONSTRAINT [FK_WatchList_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ALTER TABLE [dbo].[WatchList] CHECK CONSTRAINT [FK_WatchList_User]




ALTER TABLE [dbo].[WatchListItem]  WITH CHECK ADD  CONSTRAINT [FK_WatchListDetail_WatchList] FOREIGN KEY([WatchListId])
REFERENCES [dbo].[WatchList] ([Id])
ALTER TABLE [dbo].[WatchListItem] CHECK CONSTRAINT [FK_WatchListDetail_WatchList]




ALTER TABLE [dbo].[WatchListItem]  WITH CHECK ADD  CONSTRAINT [FK_WatchListItem_InformationMovie] FOREIGN KEY([InformationMovieId])
REFERENCES [dbo].[InformationMovie] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[WatchListItem] CHECK CONSTRAINT [FK_WatchListItem_InformationMovie]

