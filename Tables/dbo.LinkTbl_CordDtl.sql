CREATE TABLE [dbo].[LinkTbl_CordDtl]
(
[COrdDtlCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[OrdDtl] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SgOrdNo] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cat] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Source Cd] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ItemDt] [datetime] NULL,
[Ordrd] [float] NULL,
[Net Price] [float] NULL,
[GpriceDD] [float] NULL,
[InvCostDD] [float] NULL,
[TaxDD] [float] NULL,
[ShipHandDD] [float] NULL,
[Base#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InvId] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LongDescTx] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Inet Ord ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POS] [float] NULL,
[Dtl Seq] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Order Date] [datetime] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_LinkTbl_Cord_Dtl_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LinkTbl_CordDtl] ADD CONSTRAINT [PK_LinkTbl_CordDtl] PRIMARY KEY CLUSTERED  ([COrdDtlCtr]) ON [PRIMARY]
GO
