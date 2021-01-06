CREATE TABLE [dbo].[RefTbl_OpcsVdr_Type]
(
[VENDORADDRFL] [float] NOT NULL,
[Vendor] [float] NOT NULL,
[Vendor Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[E-mail Address] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_OpcsVdr_Type_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_OpcsVdr_Type] ADD CONSTRAINT [RefTbl_OpcsVdr_Type$PrimaryKey] PRIMARY KEY CLUSTERED  ([Vendor], [VENDORADDRFL]) ON [PRIMARY]
GO
