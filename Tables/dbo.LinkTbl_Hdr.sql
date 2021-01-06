CREATE TABLE [dbo].[LinkTbl_Hdr]
(
[OrdHdr] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Srccd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Alternate Source Code] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Order Date] [datetime] NULL,
[Item Value] [float] NULL,
[EntBy] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cust] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_LinkTbl_Hdr_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LinkTbl_Hdr] ADD CONSTRAINT [LinkTbl_Hdr$PrimaryKey] PRIMARY KEY CLUSTERED  ([OrdHdr]) ON [PRIMARY]
GO
