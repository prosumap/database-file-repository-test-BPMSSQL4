CREATE TABLE [dbo].[RefTbl_OPCSChrgbk]
(
[ACCTPAY ] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNAME1 ] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VENDOR NUMBER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RECEIPT NUMBER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RECEIPT DATE] [datetime2] (0) NULL,
[RECEIPT AMOUNT] [float] NULL,
[COMMENTS ] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DESC ] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_OPCSChrgbk_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_OPCSChrgbk] ADD CONSTRAINT [RefTbl_OPCSChrgbk$PrimaryKey] PRIMARY KEY CLUSTERED  ([ACCTPAY ]) ON [PRIMARY]
GO
