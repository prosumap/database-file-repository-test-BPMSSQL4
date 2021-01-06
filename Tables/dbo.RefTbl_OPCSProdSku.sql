CREATE TABLE [dbo].[RefTbl_OPCSProdSku]
(
[PrdoSkuCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[INV] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Base#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BP Base] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Upccd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description 1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Spec 1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Spec 2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POS Date] [datetime] NULL,
[Cost] [float] NULL,
[On Hand Qty] [float] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_OPCSProdSku_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_OPCSProdSku] ADD CONSTRAINT [RefTbl_OPCSProdSku$PrimaryKey] PRIMARY KEY CLUSTERED  ([PrdoSkuCtr]) ON [PRIMARY]
GO
