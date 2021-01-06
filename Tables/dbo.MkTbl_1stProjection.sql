CREATE TABLE [dbo].[MkTbl_1stProjection]
(
[1stProjCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[OFFER_ID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUBCAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STYLE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COLOR DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SIZE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VERSION_NO] [float] NULL,
[OFFERED DEMAND $] [float] NULL CONSTRAINT [DF_MkTbl_1stProjection_OFFERED DEMAND $] DEFAULT ((0)),
[DEMAND COST] [float] NULL CONSTRAINT [DF_MkTbl_1stProjection_DEMAND COST] DEFAULT ((0)),
[DEMAND UNITS] [float] NULL CONSTRAINT [DF_MkTbl_1stProjection_DEMAND UNITS] DEFAULT ((0)),
[UNIT_PRICE] [float] NULL,
[COST_EA] [float] NULL CONSTRAINT [DF_MkTbl_1stProjection_COST_EA] DEFAULT ((0)),
[OH U] [float] NULL CONSTRAINT [DF_MkTbl_1stProjection_OH U] DEFAULT ((0)),
[OO U] [float] NULL CONSTRAINT [DF_MkTbl_1stProjection_OO U] DEFAULT ((0)),
[HELD REQ U] [float] NULL CONSTRAINT [DF_MkTbl_1stProjection_HELD REQ U] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_1stProjection] ADD CONSTRAINT [PK_MkTbl_1stProjection] PRIMARY KEY CLUSTERED  ([1stProjCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection].[CAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', 'COLUMN', N'CAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection].[COLOR DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', 'COLUMN', N'COLOR DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection].[COST_EA]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', 'COLUMN', N'COST_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection].[DEMAND COST]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', 'COLUMN', N'DEMAND COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection].[DEMAND UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', 'COLUMN', N'DEMAND UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection].[HELD REQ U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', 'COLUMN', N'HELD REQ U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection].[OFFER_ID]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', 'COLUMN', N'OFFER_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection].[OFFERED DEMAND $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', 'COLUMN', N'OFFERED DEMAND $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection].[OH U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', 'COLUMN', N'OH U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection].[OO U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', 'COLUMN', N'OO U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection].[SIZE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', 'COLUMN', N'SIZE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection].[STYLE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', 'COLUMN', N'STYLE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection].[SUBCAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', 'COLUMN', N'SUBCAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection].[UNIT_PRICE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', 'COLUMN', N'UNIT_PRICE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_1stProjection].[VERSION_NO]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_1stProjection', 'COLUMN', N'VERSION_NO'
GO
