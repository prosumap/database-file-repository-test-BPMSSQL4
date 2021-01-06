CREATE TABLE [dbo].[LinkTbl_Cl_Hdr]
(
[ORDHDR] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Srccd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Alternate Source Code] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Order Date] [datetime] NULL,
[Item Value] [float] NULL,
[EntBy] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cust] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_LinkTbl_Cl_Hdr_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LinkTbl_Cl_Hdr] ADD CONSTRAINT [PK_LinkTbl_Cl_Hdr] PRIMARY KEY CLUSTERED  ([ORDHDR]) ON [PRIMARY]
GO
