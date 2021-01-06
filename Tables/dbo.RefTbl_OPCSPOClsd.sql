CREATE TABLE [dbo].[RefTbl_OPCSPOClsd]
(
[POCLCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[POCLOSEDBP] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Item No] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[F21reqid] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Approveddt] [datetime] NULL,
[Date Due] [datetime] NULL,
[Ordqq] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPOClsd_Ordqq] DEFAULT ((0)),
[QtyRecd] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPOClsd_QtyRecd] DEFAULT ((0)),
[CX] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPOClsd_CX] DEFAULT ((0)),
[Unitcostdd] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPOClsd_Unitcostdd] DEFAULT ((0)),
[Terms] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Discountdd] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPOClsd_Discountdd] DEFAULT ((0)),
[Discountpc] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPOClsd_Discountpc] DEFAULT ((0)),
[DateRecd] [datetime] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_OPCSPOClsd_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_OPCSPOClsd] ADD CONSTRAINT [RefTbl_OPCSPOClsd$PrimaryKey] PRIMARY KEY CLUSTERED  ([POCLCtr]) ON [PRIMARY]
GO
