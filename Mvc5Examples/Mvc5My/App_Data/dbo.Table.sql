﻿CREATE TABLE [dbo].[MyTable1]
(
	[KeChengID] NCHAR(3) NOT NULL,
	[KeChengName] NVARCHAR(30) NOT NULL,
	PRIMARY KEY CLUSTERED ([KeChengID] ASC)
)
GO

CREATE TABLE [dbo].[MyTable2]
(
	[StudentID] NCHAR(8) NOT NULL,
	[StudentName] NVARCHAR(30) NOT NULL,
	[RuXueShiJian] DATE NULL,
	PRIMARY KEY CLUSTERED ([StudentID] ASC)
)
GO

CREATE TABLE [dbo].[MyTable3]
(
	[StudentID] NCHAR(8) NOT NULL,
	[KeChengID] NCHAR(3) NOT NULL,
	[Grade] INT NOT  NULL,
	[ID] INT IDENTITY(1,1) NOT NULL,
	PRIMARY KEY CLUSTERED ([ID] ASC),
	CONSTRAINT [FK_MyTable3_MyTable2] FOREIGN KEY ([StudentID])
		REFERENCES [dbo].[MyTable2] ([StudentID]),
	CONSTRAINT [FK_MyTable3_MyTable1] FOREIGN KEY ([KeChengID])
		REFERENCES [dbo].[MyTable1] ([KeChengID])
)