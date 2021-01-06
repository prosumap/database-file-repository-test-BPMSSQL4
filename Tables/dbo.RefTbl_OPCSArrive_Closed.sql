CREATE TABLE [dbo].[RefTbl_OPCSArrive_Closed]
(
[PO_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ARRIVAL_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXP_IN_HOUSE_DATE] [datetime] NULL,
[EXP_SHIP_DATE] [datetime] NULL,
[LAST_MOD_DATE] [datetime] NULL,
[LAST_MOD_TIME] [datetime] NULL,
[ALLOCATION_APPROVED] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TRANSPORTATION_MODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_OPCSArrive_Closed_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_OPCSArrive_Closed] ADD CONSTRAINT [RefTbl_OPCSArrive_Closed$PrimaryKey] PRIMARY KEY CLUSTERED  ([PO_ID]) ON [PRIMARY]
GO
