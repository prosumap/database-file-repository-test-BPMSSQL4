SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		Tomas Luna
-- Create date: 12/21/19
-- From DB_OPCS.accdb
-- To replace qMkTbl_EventPerformance
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd390ApdEventPerformance] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO MkTbl_EventPerformance
                         (Catalog, Status, Date, Dmnd_Units, Dmnd_Cost$, Dmnd_Net$, Dmnd_Gross$, Ord_Fiscal_Wk, Ord_Fiscal_Month#, Ord_Fiscal_Month, Ord_Fiscal_Qtr, Ord_Fiscal_Year, Ord_Season, Ord_YYYYWK)
SELECT        vwDailyUpdSlct_DailyOrder.Line_Catalog AS Catalog, vwDailyUpdSlct_DailyOrder.Status, vwDailyUpdSlct_DailyOrder.Item_Date AS Date, SUM(vwDailyUpdSlct_DailyOrder.Dmnd_Units) AS Dmnd_Units, 
                         ROUND(SUM(vwDailyUpdSlct_DailyOrder.Dmnd_Cost$), 2) AS Expr1, ROUND(SUM(vwDailyUpdSlct_DailyOrder.Dmnd_Net$), 2) AS Expr2, ROUND(SUM(vwDailyUpdSlct_DailyOrder.Dmnd_Gross$), 2) AS Expr3, 
                         vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Wk, vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Month#, vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Month, vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Qtr, 
                         vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Year, vwDailyUpdSlct_DailyOrder.Ord_Season, vwDailyUpdSlct_DailyOrder.Ord_YYYYWK
FROM            vwDailyUpdSlct_DailyOrder INNER JOIN
                         MkTbl_SKUMaster ON vwDailyUpdSlct_DailyOrder.INV10 = MkTbl_SKUMaster.Sku AND vwDailyUpdSlct_DailyOrder.Line_Catalog = MkTbl_SKUMaster.OFFER_ID
GROUP BY vwDailyUpdSlct_DailyOrder.Line_Catalog, vwDailyUpdSlct_DailyOrder.Status, vwDailyUpdSlct_DailyOrder.Item_Date, vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Month#, vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Month, 
                         vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Qtr, vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Year, vwDailyUpdSlct_DailyOrder.Ord_Season, vwDailyUpdSlct_DailyOrder.Ord_YYYYWK, 
                         vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Wk
ORDER BY Catalog, vwDailyUpdSlct_DailyOrder.Status, Date

END
GO
