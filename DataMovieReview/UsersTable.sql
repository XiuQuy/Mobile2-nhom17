SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [Avatar], [SubUserId], [TagSocialNetwork]) VALUES (1, N'Do Le Huy', N'dolehuy222@gmail.com', N'1234567', NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [Avatar], [SubUserId], [TagSocialNetwork]) VALUES (2, N'Bich Ngoc', N'bichngoc123@gmail.com', N'bichngoc123', NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [Avatar], [SubUserId], [TagSocialNetwork]) VALUES (3, N'kim phung', N'kimphung@gmail.com', N'kimphung123', NULL, NULL, NULL)

SET IDENTITY_INSERT [dbo].[Users] OFF
