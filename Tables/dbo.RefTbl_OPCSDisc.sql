CREATE TABLE [dbo].[RefTbl_OPCSDisc]
(
[DiscCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[ACCTPAY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VNAME1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VendorNo] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InvoiceNo] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InvoiceAmt] [float] NULL,
[PO CASH] [float] NULL,
[GrossRecd] [float] NULL,
[CashRecd] [float] NULL,
[PayDate] [datetime] NULL,
[COMMENTS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_OPCSDisc_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_OPCSDisc] ADD CONSTRAINT [RefTbl_OPCSDisc$PrimaryKey] PRIMARY KEY CLUSTERED  ([DiscCtr]) ON [PRIMARY]
GO
