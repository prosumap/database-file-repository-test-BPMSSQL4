CREATE TABLE [dbo].[RefTbl_OPCSPO]
(
[POCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[POBP] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Item No] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[F21reqid] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Approveddt] [datetime] NULL,
[EXPDATE] [datetime] NULL,
[Ordqq] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPO_Ordqq] DEFAULT ((0)),
[QtyRecd] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPO_QtyRecd] DEFAULT ((0)),
[CX] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPO_CX] DEFAULT ((0)),
[Unitcostdd] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPO_Unitcostdd] DEFAULT ((0)),
[Terms] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Discountdd] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPO_Discountdd] DEFAULT ((0)),
[Discountpc] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPO_Discountpc] DEFAULT ((0)),
[RecdDate] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_OPCSPO_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_OPCSPO] ADD CONSTRAINT [RefTbl_OPCSPO$PrimaryKey] PRIMARY KEY CLUSTERED  ([POCtr]) ON [PRIMARY]
GO
