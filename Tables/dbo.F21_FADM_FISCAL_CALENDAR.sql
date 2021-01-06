CREATE TABLE [dbo].[F21_FADM_FISCAL_CALENDAR]
(
[COMPANY_ID] [nvarchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CALENDAR_SEQ] [float] NOT NULL,
[FISCAL_YEAR] [float] NOT NULL,
[FISCAL_WEEK] [float] NULL,
[WEEK_BEGIN_DATE] [datetime] NULL,
[WEEK_END_DATE] [datetime] NULL,
[PERIOD_GROUP] [float] NOT NULL,
[CREATED_DATETIME] [datetime] NULL,
[WEEK_DESCRIPTION] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LAST_UPDATED_DATETIME] [datetime] NULL,
[LAST_UPDATED_BY] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MASTERSCHEDULING_NOTES] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FISCAL_MONTH] [float] NULL,
[FISCAL_QUARTER] [float] NULL,
[HIST_CALENDAR_SEQ] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[F21_FADM_FISCAL_CALENDAR] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$F21_FADM_FISCAL_CALENDAR$COMPANY_ID$disallow_zero_length] CHECK ((len([COMPANY_ID])>(0)))
GO
ALTER TABLE [dbo].[F21_FADM_FISCAL_CALENDAR] ADD CONSTRAINT [PK_F21_FADM_FISCAL_CALENDAR] PRIMARY KEY CLUSTERED  ([COMPANY_ID], [CALENDAR_SEQ], [FISCAL_YEAR], [PERIOD_GROUP]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FADM_FISCAL_CALENDAR]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FADM_FISCAL_CALENDAR', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FADM_FISCAL_CALENDAR].[CALENDAR_SEQ]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FADM_FISCAL_CALENDAR', 'COLUMN', N'CALENDAR_SEQ'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FADM_FISCAL_CALENDAR].[COMPANY_ID]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FADM_FISCAL_CALENDAR', 'COLUMN', N'COMPANY_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FADM_FISCAL_CALENDAR].[CREATED_DATETIME]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FADM_FISCAL_CALENDAR', 'COLUMN', N'CREATED_DATETIME'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FADM_FISCAL_CALENDAR].[FISCAL_MONTH]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FADM_FISCAL_CALENDAR', 'COLUMN', N'FISCAL_MONTH'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FADM_FISCAL_CALENDAR].[FISCAL_QUARTER]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FADM_FISCAL_CALENDAR', 'COLUMN', N'FISCAL_QUARTER'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FADM_FISCAL_CALENDAR].[FISCAL_WEEK]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FADM_FISCAL_CALENDAR', 'COLUMN', N'FISCAL_WEEK'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FADM_FISCAL_CALENDAR].[FISCAL_YEAR]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FADM_FISCAL_CALENDAR', 'COLUMN', N'FISCAL_YEAR'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FADM_FISCAL_CALENDAR].[HIST_CALENDAR_SEQ]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FADM_FISCAL_CALENDAR', 'COLUMN', N'HIST_CALENDAR_SEQ'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FADM_FISCAL_CALENDAR].[LAST_UPDATED_BY]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FADM_FISCAL_CALENDAR', 'COLUMN', N'LAST_UPDATED_BY'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FADM_FISCAL_CALENDAR].[LAST_UPDATED_DATETIME]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FADM_FISCAL_CALENDAR', 'COLUMN', N'LAST_UPDATED_DATETIME'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FADM_FISCAL_CALENDAR].[MASTERSCHEDULING_NOTES]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FADM_FISCAL_CALENDAR', 'COLUMN', N'MASTERSCHEDULING_NOTES'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FADM_FISCAL_CALENDAR].[PERIOD_GROUP]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FADM_FISCAL_CALENDAR', 'COLUMN', N'PERIOD_GROUP'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FADM_FISCAL_CALENDAR].[WEEK_BEGIN_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FADM_FISCAL_CALENDAR', 'COLUMN', N'WEEK_BEGIN_DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FADM_FISCAL_CALENDAR].[WEEK_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FADM_FISCAL_CALENDAR', 'COLUMN', N'WEEK_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FADM_FISCAL_CALENDAR].[WEEK_END_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FADM_FISCAL_CALENDAR', 'COLUMN', N'WEEK_END_DATE'
GO