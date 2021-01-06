SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [dbo].[vwDailyUpdSlct_Cl_OrdSrcCd_2]
AS
SELECT        LTRIM(RTRIM(dbo.vwDailyUpdSlct_Cl_OrdSrcCd_1.CordHdr)) AS [ORDER #], dbo.vwDailyUpdSlct_Cl_OrdSrcCd_1.[Order Date], dbo.vwDailyUpdSlct_Cl_OrdSrcCd_1.Srccd AS [SOURCE CD], 
                         dbo.LinkTbl_Source_New.Descrption AS [SOURCE DESC], CASE WHEN [Alternate Source Code] IS NULL THEN '' ELSE LEFT([Alternate Source Code], 3) + '*' + RIGHT([Alternate Source Code], Len([Alternate Source Code]) - 3) 
                         END AS [ALT SOURCE CD], dbo.vwDailyUpdSlct_Cl_OrdSrcCd_1.[Item Value] AS [DEMAND $], dbo.vwDailyUpdSlct_Cl_OrdSrcCd_1.EntBy AS [SALES REP], dbo.vwDailyUpdSlct_Cl_OrdSrcCd_1.Cust AS [CUSTOMER #]
FROM            dbo.vwDailyUpdSlct_Cl_OrdSrcCd_1 LEFT OUTER JOIN
                         dbo.LinkTbl_Source_New ON dbo.vwDailyUpdSlct_Cl_OrdSrcCd_1.Srccd = dbo.LinkTbl_Source_New.OpcsSrcBp
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vwDailyUpdSlct_Cl_OrdSrcCd_1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 240
               Right = 289
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LinkTbl_Source_New"
            Begin Extent = 
               Top = 21
               Left = 322
               Bottom = 213
               Right = 532
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2295
         Table = 3945
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_Cl_OrdSrcCd_2', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_Cl_OrdSrcCd_2', NULL, NULL
GO
