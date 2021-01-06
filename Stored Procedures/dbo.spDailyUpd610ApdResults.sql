SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		Tomas Luna
-- Create date: 5/12/2020
-- Description:	Part of Weekly Update 8 routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd610ApdResults] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

-- Replaces qDel_MkTbl_Results
truncate table MkTbl_Results
--WHERE        (Date >= GETDATE() - 15)

-- Replaces qApp_MkTbl_Results
INSERT INTO MkTbl_Results
                         (Department, Class, Style, INV5, Color, INV7, Size, INV10, Status, Event, [Last Event], Units, Cost$, Net$, Gross$, Fiscal_Year, Fiscal_Month#, Fiscal_Wk#, Date, Type)
SELECT        MkTbl_LastEvent.Department, MkTbl_LastEvent.Class, MkTbl_LastEvent.Style, MkTbl_LastEvent.INV5, MkTbl_LastEvent.Color, MkTbl_LastEvent.INV7, MkTbl_LastEvent.Size, MkTbl_LastEvent.INV10, 
                         vwDailyUpdSlct_DailyOrder.Status, vwDailyUpdSlct_DailyOrder.Line_Catalog AS Event, MkTbl_LastEvent.[Last Event], SUM(vwDailyUpdSlct_DailyOrder.Dmnd_Units) AS Units, 
                         ROUND(SUM(vwDailyUpdSlct_DailyOrder.Dmnd_Cost$), 2) AS Cost$, ROUND(SUM(vwDailyUpdSlct_DailyOrder.Dmnd_Net$), 2) AS Net$, ROUND(SUM(vwDailyUpdSlct_DailyOrder.Dmnd_Gross$), 2) AS Gross$, 
                         vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Year AS Fiscal_Year, vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Month# AS Fiscal_Month#, vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Wk AS Fiscal_Wk#, 
                         vwDailyUpdSlct_DailyOrder.Item_Date AS Date, 'Order' AS Type
FROM            vwDailyUpdSlct_DailyOrder RIGHT OUTER JOIN
                         MkTbl_LastEvent ON vwDailyUpdSlct_DailyOrder.INV10 = MkTbl_LastEvent.INV10
GROUP BY MkTbl_LastEvent.Department, MkTbl_LastEvent.Class, MkTbl_LastEvent.Style, MkTbl_LastEvent.INV5, MkTbl_LastEvent.Color, MkTbl_LastEvent.INV7, MkTbl_LastEvent.Size, MkTbl_LastEvent.INV10, 
                         vwDailyUpdSlct_DailyOrder.Status, vwDailyUpdSlct_DailyOrder.Line_Catalog, MkTbl_LastEvent.[Last Event], vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Year, vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Month#, 
                         vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Wk, vwDailyUpdSlct_DailyOrder.Item_Date
ORDER BY MkTbl_LastEvent.Department, MkTbl_LastEvent.Class, MkTbl_LastEvent.INV10, vwDailyUpdSlct_DailyOrder.Status, Event, MkTbl_LastEvent.[Last Event], Fiscal_Year, Fiscal_Month#, Fiscal_Wk#, Date
--HAVING        (vwDailyUpdSlct_DailyOrder.Item_Date >= GETDATE() - 15)

/* Replaces qApp_MkTbl_Results_Ship*/
INSERT INTO MkTbl_Results
                         (Department, Class, Style, INV5, Color, INV7, Size, INV10, Status, Event, [Last Event], Units, Cost$, Net$, Gross$, Fiscal_Year, Fiscal_Month#, Fiscal_Wk#, Date, Type)
SELECT        MkTbl_LastEvent.Department, MkTbl_LastEvent.Class, MkTbl_LastEvent.Style, MkTbl_LastEvent.INV5, MkTbl_LastEvent.Color, MkTbl_LastEvent.INV7, MkTbl_LastEvent.Size, MkTbl_LastEvent.INV10, MkTbl_DailyShip.Status, 
                         MkTbl_DailyShip.Line_Catalog AS Catalog, MkTbl_LastEvent.[Last Event], SUM(MkTbl_DailyShip.Ship_Units) AS Ship_Units, ROUND(SUM(MkTbl_DailyShip.Ship_Cost$), 2) AS Ship_Cost$, 
                         ROUND(SUM(MkTbl_DailyShip.Ship_Net$), 2) AS Ship_Net$, ROUND(SUM(MkTbl_DailyShip.Ship_Gross$), 2) AS Ship_Gross$, MkTbl_DailyShip.Ship_Fiscal_Year, MkTbl_DailyShip.Ship_Fiscal_Month#, 
                         MkTbl_DailyShip.Ship_Fiscal_Wk, MkTbl_DailyShip.Ship_Date, 'Shipped' AS Type
FROM            MkTbl_DailyShip INNER JOIN
                         MkTbl_LastEvent ON MkTbl_DailyShip.INV10 = MkTbl_LastEvent.INV10
GROUP BY MkTbl_LastEvent.Department, MkTbl_LastEvent.Class, MkTbl_LastEvent.Style, MkTbl_LastEvent.INV5, MkTbl_LastEvent.Color, MkTbl_LastEvent.INV7, MkTbl_LastEvent.Size, MkTbl_LastEvent.INV10, MkTbl_DailyShip.Status, 
                         MkTbl_DailyShip.Line_Catalog, MkTbl_LastEvent.[Last Event], MkTbl_DailyShip.Ship_Fiscal_Year, MkTbl_DailyShip.Ship_Fiscal_Month#, MkTbl_DailyShip.Ship_Fiscal_Wk, MkTbl_DailyShip.Ship_Date
ORDER BY MkTbl_LastEvent.Department, MkTbl_LastEvent.Class, MkTbl_LastEvent.INV10, MkTbl_DailyShip.Status, Catalog, MkTbl_LastEvent.[Last Event], MkTbl_DailyShip.Ship_Fiscal_Year, MkTbl_DailyShip.Ship_Fiscal_Month#, 
                         MkTbl_DailyShip.Ship_Fiscal_Wk, MkTbl_DailyShip.Ship_Date
--HAVING        (MkTbl_DailyShip.Ship_Date >= GETDATE() - 15)

-- Replaces qApp_MkTbl_Results_Rtn
INSERT INTO MkTbl_Results
                         (Department, Class, Style, INV5, Color, INV7, Size, INV10, Status, Event, [Last Event], Units, Cost$, Net$, Gross$, Fiscal_Wk#, Fiscal_Month#, Fiscal_Year, Date, Type)
SELECT        MkTbl_LastEvent.Department, MkTbl_LastEvent.Class, MkTbl_LastEvent.Style, MkTbl_LastEvent.INV5, MkTbl_LastEvent.Color, MkTbl_LastEvent.INV7, MkTbl_LastEvent.Size, MkTbl_LastEvent.INV10, MkTbl_DailyRtn.Status, 
                         MkTbl_DailyRtn.Line_Catalog AS Catalog, MkTbl_LastEvent.[Last Event], SUM(MkTbl_DailyRtn.Rtn_Units) AS Rtn_Units, ROUND(SUM(MkTbl_DailyRtn.Rtn_Cost$), 2) AS Rtn_Cost$, ROUND(SUM(MkTbl_DailyRtn.Rtn_Net$), 2) 
                         AS Rtn_Net$, ROUND(SUM(MkTbl_DailyRtn.Rtn_Gross$), 2) AS Rtn_Gross$, MkTbl_DailyRtn.Rtn_Fiscal_Wk, MkTbl_DailyRtn.Rtn_Fiscal_Month#, MkTbl_DailyRtn.Rtn_Fiscal_Year, MkTbl_DailyRtn.Rtn_Date, 
                         'Return' AS Type
FROM            MkTbl_LastEvent INNER JOIN
                         MkTbl_DailyRtn ON MkTbl_LastEvent.INV10 = MkTbl_DailyRtn.INV10
GROUP BY MkTbl_LastEvent.Department, MkTbl_LastEvent.Class, MkTbl_LastEvent.Style, MkTbl_LastEvent.INV5, MkTbl_LastEvent.Color, MkTbl_LastEvent.INV7, MkTbl_LastEvent.Size, MkTbl_LastEvent.INV10, MkTbl_DailyRtn.Status, 
                         MkTbl_DailyRtn.Line_Catalog, MkTbl_LastEvent.[Last Event], MkTbl_DailyRtn.Rtn_Fiscal_Wk, MkTbl_DailyRtn.Rtn_Fiscal_Month#, MkTbl_DailyRtn.Rtn_Fiscal_Year, MkTbl_DailyRtn.Rtn_Date
ORDER BY MkTbl_LastEvent.Department, MkTbl_LastEvent.Class, MkTbl_LastEvent.INV10, MkTbl_DailyRtn.Status, Catalog, MkTbl_LastEvent.[Last Event], MkTbl_DailyRtn.Rtn_Fiscal_Year, MkTbl_DailyRtn.Rtn_Fiscal_Month#, 
                         MkTbl_DailyRtn.Rtn_Fiscal_Wk, MkTbl_DailyRtn.Rtn_Date
--HAVING        (MkTbl_DailyRtn.Rtn_Date >= GETDATE() - 15)

-- Replaces qApp_MkTbl_Results_Exch
INSERT INTO MkTbl_Results
                         (Department, Class, Style, INV5, Color, INV7, Size, INV10, Status, Event, [Last Event], Units, Cost$, Net$, Gross$, Fiscal_Wk#, Fiscal_Month#, Fiscal_Year, Date, Type)
SELECT        MkTbl_LastEvent.Department, MkTbl_LastEvent.Class, MkTbl_LastEvent.Style, MkTbl_LastEvent.INV5, MkTbl_LastEvent.Color, MkTbl_LastEvent.INV7, MkTbl_LastEvent.Size, MkTbl_LastEvent.INV10, MkTbl_DailyExch.Status, 
                         MkTbl_DailyExch.Line_Catalog AS Catalog, MkTbl_LastEvent.[Last Event], SUM(MkTbl_DailyExch.Exch_Units) AS Exch_Units, ROUND(SUM(MkTbl_DailyExch.Exch_Cost$), 2) AS Exch_Cost$, 
                         ROUND(SUM(MkTbl_DailyExch.Exch_Net$), 2) AS Exch_Net$, ROUND(SUM(MkTbl_DailyExch.Exch_Gross$), 2) AS Exch_Gross$, MkTbl_DailyExch.Exch_Fiscal_Wk, MkTbl_DailyExch.Exch_Fiscal_Month#, 
                         MkTbl_DailyExch.Exch_Fiscal_Year, MkTbl_DailyExch.Exch_Date, 'Exchange' AS Type
FROM            MkTbl_LastEvent INNER JOIN
                         MkTbl_DailyExch ON MkTbl_LastEvent.INV10 = MkTbl_DailyExch.INV10
GROUP BY MkTbl_LastEvent.Department, MkTbl_LastEvent.Class, MkTbl_LastEvent.Style, MkTbl_LastEvent.INV5, MkTbl_LastEvent.Color, MkTbl_LastEvent.INV7, MkTbl_LastEvent.Size, MkTbl_LastEvent.INV10, MkTbl_DailyExch.Status, 
                         MkTbl_DailyExch.Line_Catalog, MkTbl_LastEvent.[Last Event], MkTbl_DailyExch.Exch_Fiscal_Wk, MkTbl_DailyExch.Exch_Fiscal_Month#, MkTbl_DailyExch.Exch_Fiscal_Year, MkTbl_DailyExch.Exch_Date
ORDER BY MkTbl_LastEvent.Department, MkTbl_LastEvent.Class, MkTbl_LastEvent.INV10, MkTbl_DailyExch.Status, Catalog, MkTbl_LastEvent.[Last Event], MkTbl_DailyExch.Exch_Fiscal_Year, MkTbl_DailyExch.Exch_Fiscal_Month#, 
                         MkTbl_DailyExch.Exch_Fiscal_Wk, MkTbl_DailyExch.Exch_Date
--HAVING        (MkTbl_DailyExch.Exch_Date >= GETDATE() - 15)


END
GO
