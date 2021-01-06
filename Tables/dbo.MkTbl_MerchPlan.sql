CREATE TABLE [dbo].[MkTbl_MerchPlan]
(
[OFFER_ID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUBCAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STYLE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COLOR DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SIZE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VERSION_NO] [float] NULL,
[GROSS DEMAND] [float] NULL,
[NET DEMAND] [float] NULL,
[DEMAND COST] [float] NULL,
[DEMAND UNITS] [float] NULL,
[UNIT_PRICE] [float] NULL,
[COST_EA] [float] NULL,
[OH U] [float] NULL,
[OO U] [float] NULL,
[HELD REQ U] [float] NULL,
[Id] [numeric] (18, 0) NOT NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_MerchPlan_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_MerchPlan] ADD CONSTRAINT [SSMA_PK$MkTbl_MerchPlan] PRIMARY KEY NONCLUSTERED  ([Id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[CAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'CAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[COLOR DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'COLOR DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[COST_EA]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'COST_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[DEMAND COST]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'DEMAND COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[DEMAND UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'DEMAND UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[GROSS DEMAND]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'GROSS DEMAND'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[HELD REQ U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'HELD REQ U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[NET DEMAND]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'NET DEMAND'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[OFFER_ID]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'OFFER_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[OH U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'OH U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[OO U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'OO U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[SIZE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'SIZE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[STYLE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'STYLE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[SUBCAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'SUBCAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[UNIT_PRICE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'UNIT_PRICE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_MerchPlan].[VERSION_NO]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_MerchPlan', 'COLUMN', N'VERSION_NO'
GO
