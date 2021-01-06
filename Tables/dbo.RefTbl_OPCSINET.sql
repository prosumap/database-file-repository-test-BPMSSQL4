CREATE TABLE [dbo].[RefTbl_OPCSINET]
(
[INETSKUSO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Cat#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Statuscd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Inetpricedd] [float] NULL,
[Catpricedd] [float] NULL,
[Cost] [float] NULL,
[Ohqq] [float] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_OPCSINET_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_OPCSINET] ADD CONSTRAINT [RefTbl_OPCSINET$PrimaryKey] PRIMARY KEY CLUSTERED  ([INETSKUSO]) ON [PRIMARY]
GO
