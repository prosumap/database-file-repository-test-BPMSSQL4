CREATE TABLE [dbo].[RefTbl_Vdr_Main]
(
[VENDORFL] [float] NOT NULL,
[Nametx] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Autoccemailtx] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_Vdr_Main_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_Vdr_Main] ADD CONSTRAINT [RefTbl_Vdr_Main$PrimaryKey] PRIMARY KEY CLUSTERED  ([VENDORFL]) ON [PRIMARY]
GO
